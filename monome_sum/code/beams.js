inlets = 1; // grid input, ramp time
outlets = 3; // current value, col states, ramp flag, led out

// define global variables and set defaults
var tsk = new Task(mytask, this); // our main task
var tgrain = 100; // set time grain for calculations at 50ms
var focus = 0; // is the monome device in focus

var tx = 0;
var g = 35; // 35 is perfect level for slider interpolation!
var bx =  16;
var f = 0.995;
var dx = new Array(16); // change since last output
var x = new Array(16); // current output
var xN = new Array(16); // current output normalised 0 to 1.
var pointk = new Array(16); // the slider destination
var bcols = new Array(16); // key count for each column
var tramp = new Array(16); // timer for each column
var ton = new Array(16);
var frics = new Array(16); // individual friction for each slider
var outBM = 0; // bitmask memory for led/col out



var steps = 8;
var cols = 16;
var them = new Array(128);
var themish = new Array(64); // temporary buffer for /led/level/map displays
var index = new Array(16);
var b = 0;
var direction = 1;
var vb = 0;


for(i=0;i<16;i++) pointk[i] = 0; // initialise pointk to 0.
for(i=0;i<16;i++) bcols[i] = 0; // initialise bcols to 0.
for(i=0;i<16;i++) dx[i] = 0; // initialise pointk to 0.
for(i=0;i<16;i++) x[i] = 1; // initialise bcols to 0.
for(i=0;i<16;i++) xN[i] = 0; // initialise bcols to 0.
for(i=0;i<16;i++) ton[i] = 0; // initialise triggers to off
for(i=0;i<16;i++) frics[i] = 0.85; // initialise friction to 0.8 for nice initial level


tsk.interval = tgrain; // initialise interval to timegrain
tsk.repeat(); // starts the task and repeats indefinitely

function stop() {
    //tsk.cancel(); // allow a 'stop' message to stop the timer
    focus = 0;
}

function start() {
    //tsk.repeat(); // allows a 'start' message to restart the timer
    focus = 1;
}

function grr(val) { // gravity 0-1. , g=35 is best for sliders
    val = 1 - val;
    g = val*1000 + 4;
}

function fric(val) { // friction 0-1.
    val = 1 - val;
    f = ((val * 200) + 800) / 1000;
}

function point(kx,ky,state) { // all /grid/key input
    if(bcols[kx]==0 && state ==1) { // if old column count was 0, and the new input is a press, then it's a new trigger event
        // a new press has occured which we need to watch, so reset the time accum to 0 & start counting
        tramp[kx] = 0; // set timer to 0
        ton[kx] = 1; // turn on timer
    }

    if(bcols[kx]==1 && state ==0) { // if old column count was 1, and the new input is a release, then the counter should be stopped
        ton[kx] = 0; // turn off timer
    }

    bcols[kx] = bcols[kx] + (2*state-1); // then increment key counter for each column
    if(state) pointk[kx] = bx-ky; // if a press, set the relevant sliders level
    //bang(); // call a recalc.

}

function bounds(xb, yb) { // /sys/size message, (x,y)
    
    /* note that this if/for loop is not currently functioning. values are still being truncated when switching */

    if(yb!=steps) { // when changing y-size must scale the stored values to avoid edge case issues
        for(i=0;i<xb;i++) {
            pointk[i] = pointk[i] * (yb/steps);
            x[i] = x[i] * (yb/steps);
        }
    }

    bx = yb; // try without subtracting rounding error
    steps = yb;
    cols = xb;

post(yb,xb);
post();

    //them.length = cols*steps; // update size of output array for full size
}

function varibright(vari) {
    vb = vari;
}

function mytask() {
    // the timed function which occurs repeatedly

    for(i=0;i<cols;i++) {
        // increment any timer for a currently held column
        if(ton[i]==1) {
            tramp[i] = tramp[i] + 1; // add 1 to current ramp time
            if(tramp[i]>15) tramp[i] = 15; // limit to 15
            frics[i] = (tramp[i] + 85) / 100; // limit overall friction to 1. for infinite slide
        }

        dx[i] = dx[i] + (pointk[i] - x[i]) / g; // dx is the previous dx + (input - currentOut) / gravity
        //dx = dx + (tx / g); // adds tilt influence
        dx[i] = dx[i] * frics[i];
        x[i] = x[i] + dx[i];
        // force range [0, steps]
        if(x[i]>steps) x[i] = steps;
        else if(x[i]<0) x[i] = 0;

    }


    for(i=0;i<cols;i++) {
        xN[i] = (x[i]-(steps/2))/((steps-1)/2)-1/(steps-1);
    }


    if(cols==8) {
        for(i=0;i<8;i++) x[i+8] = x[i];
    }

    
    outlet(0,xN); // sends the full array of current slider levels normalised 0 to 1.

    if(focus) {
        if(vb) aa_draw(); // if variable brightness, use aa_draw for antialiasing
        else draw(); // if non-vb just send out raw led/map messages.
    }
}

function draw() { // draw with /grid/led/map without aa
    for(i=0;i<cols;i++) {
        outBM = Math.floor(1<<(steps-x[i])+0.5);
        outlet(2, i, 0, 255&outBM, (65280&outBM)>>8); // output bitmask for non-vb -- need to add direction option
    }
}

function aa_draw() { // draws the x array in the monome /grid/led/level/map format with anti-aliasing
    for(i=0;i<steps*cols;i++) them[i] = direction*b; //set all leds to 0 or background colour depending direction

    for(j=0;j<cols;j++) { // iterate for each column (j)

        index[j] = steps-Math.floor(x[j]); //index is x (current location) rounded down to int

        for(i=0;i<index[j];i++) them[j+(i*steps)] = b-direction*b; // shades from 0 to level with 'b' colour

        if(direction==0) {
            them[index[j]*steps+j] = 15-Math.floor(15*(x[j]-(steps-index[j]))); // .01 is to avoid weird overflow edge case
            them[index[j]*steps+j-steps] = Math.max(15-them[index[j]*steps+j],b); // as above but wraps to width
        }
        else {
            them[index[j]*steps+j-steps] = Math.floor(15*(x[j]-(steps-index[j]))); // .01 is to avoid weird overflow edge case
            them[index[j]*steps+j] = Math.max(15-them[index[j]*steps+j-steps],b); // as above but wraps to width
        }
    }

    them.length = steps*cols; // culls extraneous added cells
    
    //outlet(1,them); // outputs anti-aliased slider

    if(steps==8 && cols==8) outlet(1,0,0,them); // outputs anti-aliased slider
    
    else if(steps==8 && cols==16) {
        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j];
            }
        }
        outlet(1,0,0,themish);
        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j+8];
            }
        }
        outlet(1,8,0,themish);
    }

    else if(steps==16 && cols==8) {
        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*8+j];
            }
        }
        outlet(1,0,0,themish);

        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*8+j+64];
            }
        }
        outlet(1,0,8,themish);
    }

    else if(steps==16 && cols==16) {
        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j];
            }
        }
        outlet(1,0,0,themish);

        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j+128];
            }
        }
        outlet(1,0,8,themish);

        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j+8];
            }
        }
        outlet(1,8,0,themish);

        for(i=0;i<8;i++) {
            for(j=0;j<8;j++) {
                themish[i*8+j] = them[i*16+j+136];
            }
        }
        outlet(1,8,8,themish);
    }
}

function bcolor(x) { // allows background colour of monome slider to be changed
    b = x;
}

function uiSet(x,ta,tb) {
    // receives input from the UI when a timbre slider is changed directly
    // set pointk[x] to the destination from bx to 0
    pointk[x*2] = (steps/2)*(ta+1); // 1 to 8??
    pointk[x*2+1] = (steps/2)*(tb+1); // 1 to 8??
}

