inlets = 1;
outlets = 2;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) cols = jsarguments[2]; // 2nd argument is number of cols
if(jsarguments.length>3) direction = jsarguments[3]; // 3rd argument is direction (0: lights start at zero, 1: lights start at max)

var index = new Array(cols);
var b = 5;

var them = new Array(steps*cols);


function bcolor(x) {
	b = x;
}


function line(x) { // accepts 0 to 8/16 input
	for(j=0;j<cols;j++) {
		for(i=0;i<steps;i++) them[i+(j*steps)] = direction*b; //set all to 0 or 15 re:direction

		index[i+(j*steps)] = steps-Math.floor(x); //index is input rounded down

		for(i=0;i<index[i+(j*steps)];i++) them[i+(j*steps)] = b-direction*b; // could set this to 'b' to allow slider colour to be changed

		if(direction==0) {
			them[index[i+(j*steps)]] = 15-Math.floor(15*(x-(steps-index[i+(j*steps)]))); // .01 is to avoid weird overflow edge case
			them[index[i+(j*steps)]-1] = Math.max(15-them[index[i+(j*steps)]],b); // as above but wraps to width
		}
		else {
			them[index[i+(j*steps)]-1] = Math.floor(15*(x-(steps-index[i+(j*steps)]))); // .01 is to avoid weird overflow edge case
			them[index[i+(j*steps)]] = Math.max(15-them[index[i+(j*steps)]-1],b); // as above but wraps to width
		}
	}

	them.length = steps*cols; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
	
	//outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}


function bounds(x,y) { // set length via message
	steps = x;
	cols = y;
}


function bang() { // bang refires current state
	outlet(0,them); // outputs array of anti-aliased sliders in 8x8 grids
	
	//outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}	