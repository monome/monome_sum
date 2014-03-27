inlets = 1;
outlets = 2;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) direction = jsarguments[2]; // 2nd argument is direction (0: lights start at zero, 1: lights start at max)

var index = 0.0;
var b = 5;

var them = new Array(steps);


function bcolor(x) {
	b = x;
}


function line(x) { // accepts 0 to 8/16 input
	for(i=0;i<steps;i++) them[i] = direction*b; //set all to 0 or 15 re:direction

	index = steps-Math.floor(x); //index is input rounded down

	for(i=0;i<index;i++) them[i] = b-direction*b; // could set this to 'b' to allow slider colour to be changed

	if(direction==0) {
		them[index+1] = 15-Math.floor(15*(x-(steps-index))); // .01 is to avoid weird overflow edge case
		them[index] = 15;
		them[index-1] = Math.max(15-them[index],b); // as above but wraps to width
	}
	else {
		them[index-1] = Math.floor(15*(x-(steps-index))); // .01 is to avoid weird overflow edge case
		them[index] = 15;
		them[index+1] = Math.max(15-them[index-1],b); // as above but wraps to width
	}

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
	
	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}


function steps(x) { // set length via message
	steps = x;
}


function bang() { // bang refires current state
	outlet(0,them); // outputs anti-aliased slider
	
	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}	