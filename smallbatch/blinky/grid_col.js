inlets = 1;
outlets = 3;

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

	index = Math.floor(x); //index is input rounded down

	for(i=0;i<index;i++) them[i] = b-direction*b; // could set this to 'b' to allow slider colour to be changed

	if(direction==0) {
		them[index] = -Math.floor(15*(index-x-.01)); // .01 is to avoid weird overflow edge case
		them[index-1] = Math.max(15-them[index],b); // as above but wraps to width
	}
	else {
		them[index] = 15-Math.floor(-15*(index-x-.01)); // .01 is to avoid weird overflow edge case
		them[index+1] = Math.max(15-them[index],b); // as above but wraps to width
	}

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
	
	
}