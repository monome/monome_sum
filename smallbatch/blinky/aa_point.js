inlets = 1;
outlets = 3;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) wrap = jsarguments[2]; // 2nd argument sets wrap behaviour

var index = 0.0;

var them = new Array(steps);

function point(x) { // accepts 0 to 8/16 input
	for(i=0;i<steps;i++) them[i] = 0; //set all to 0 or 15 re:direction

	index = Math.floor(x); //index is input rounded down
	them[index] = -Math.floor(15*(index-x)-.01); // .01 is to avoid weird overflow edge case

	if(wrap) them[(index+steps-1)%(steps)] = 15-them[index]; // lights next lower cell with remainder of '15' charge
	else them[index-1] = 15-them[index]; // as above but wraps to width

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased line pointer
	
	
}