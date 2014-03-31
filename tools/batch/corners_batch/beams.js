inlets = 3; // grid input, ramp time
outlets = 4; // current value, col states, ramp flag, led out

// define global variables and set defaults
var tsk = new Task(mytask, this); // our main task
var tgrain = 33; // set time grain for calculations at 33ms

var tx = 0;
var g = 100;
var bx =  8;
var f = 0.995;
var dx = new Array(16); // change since last output
var x = new Array(16); // current output
var pointk = new Array(16); // the slider destination
var bcols = new Array(16); // key count for each column

for(i=0;i<16;i++) pointk[i] = 0; // initialise pointk to 0.
for(i=0;i<16;i++) bcols[i] = 0; // initialise bcols to 0.
for(i=0;i<16;i++) dx[i] = 0; // initialise pointk to 0.
for(i=0;i<16;i++) x[i] = 0; // initialise bcols to 0.

tsk.interval = tgrain; // initialise interval to timegrain
tsk.repeat(); // starts the task and repeats indefinitely

function stop() {
    tsk.cancel(); // allow a 'stop' message to stop the timer
}

function start() {
    tsk.repeat(); // allows a 'start' message to restart the timer
}

function grr(val) { // gravity 0-1.
    val = 1 - val;
    g = val*1000 + 4;
}

function fric(val) { // friction 0-1.
    val = 1 - val;
    f = ((val * 200) + 800) / 1000;
}

function point(kx,ky,state) { // all /grid/key input
    bcols[kx] = bcols[kx] + (2*bcols[state]-1); // increment key counter for each column
    if(state) pointk[kx] = ky; // if a press, set the relevant sliders level
    //bang(); // call a recalc.
}

function bounds(xb, yb) { // /sys/size message, (x,y)
    //bx = yb - 0.5; // use y-dim to set vertical bounds
    bx = yb; // try without subtracting rounding error
    //pointk.length = xb; // set array sizes to match grid size
    //bcols.length = xb; // set array sizes to match grid size
}

// where corners runs on a continuous bang due to it's nature
// beams should have 2 inlets that each cause output separately
// left inlet is for pressed row, instantaneous which begins ramp
// when ramp is complete (tested in js) sends flag out right outlet to stop metro
// right inlet takes the hold time of the button
// if it's above a threshold then the lfo will be affected
// regardless of a short press, the metro will continually bang it until the flag is outlet
// if above the threshold max ignores the flag and keeps banging to maintain the lfo
// this bang is at visuals rate (60fps?) and output is smoothed by line~

function ramp(c, rt) { // metro bang with hold time as input
    // receives a list of (column, time since hold started)
}

function draw(col){
    // call bang but a specific row only

    dx[col] = dx[col] + (pointk[col] - x[col] + 0.5) / g;
    //dx = dx + (tx / g); // adds tilt influence
    dx[col] = dx[col] * f;
    x[col] = x[col] + dx[col];
    // force range [0, bx]
    if(x[col]>bx) x[col] = bx;
    if(x[col]<0) x[col] = 0;

    outlet(0,col,x[col]);
}

function mytask() {
    // the timed function which occurs repeatedly
    // calculate 

    for(i=0;i<16;i++) {
        dx[i] = dx[i] + (pointk[i] - x[i] + 0.5) / g;
        //dx = dx + (tx / g); // adds tilt influence
        dx[i] = dx[i] * f;
        x[i] = x[i] + dx[i];
        // force range [0, bx]
        if(x[i]>bx) x[i] = bx;
        if(x[i]<0) x[i] = 0;

        outlet(1,i,pointk[i]-x[i]); // sends current difference 

        //outlet(0,i,x[i]);
    }

    outlet(0,x);    
}

function bang() { // run calculation
 
    // should be possible to only run this calculation on values that have changed?!
    // call directly rather than in a for loop

        //   dx = dy = 0;
    for(i=0;i<16;i++) {
        dx[i] = dx[i] + (pointk[i] - x[i] + 0.5) / g;
        //dx = dx + (tx / g); // adds tilt influence
        dx[i] = dx[i] * f;
        x[i] = x[i] + dx[i];
        // force range [0, bx]
        if(x[i]>bx) x[i] = bx;
        if(x[i]<0) x[i] = 0;

        outlet(1,i,pointk[i]-x[i]); // sends current difference 

        //outlet(0,i,x[i]);
    }

    outlet(0,x);
}

function hold() {
    // here we create the timer 
}