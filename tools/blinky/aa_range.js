inlets = 1;
outlets = 2;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps

var index0 = 0.0;
var index1 = 0.0;
var width = 0.0;

var b = 5; // background color

var them = new Array(steps);


function bcolor(x) {
	b = x;
}


function range(x,y) { // x is min, y is max -> could add auto peak finder so 
	for(i=0;i<steps;i++) them[i] = 0; //set all to 0

	index0 = Math.floor(x); //index is input rounded down
	index1 = Math.floor(y);
	
	for(i=index0;i<index1;i++) them[i] = 15;

	them[index0] = Math.floor(15-15*(x-(index0)));
	them[index1-1] = Math.floor(15*(y-(index1)));

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
	
//	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}


function rwidth(x,y) { // x is centre location. y is width
	for(i=0;i<steps;i++) them[i] = 0; //set all to 0
	
	width = Math.abs(y);
	index0 = steps-Math.floor(x-width/2); //index is input rounded down
	index1 = steps-Math.floor(x+width/2);
	
	for(i=index1;i<index0;i++) them[i] = 15;

	them[index0] = Math.floor(15-15*(x-width/2-(steps-index0)));
	them[index1] = Math.floor(15*(x+width/2-(steps-index1)));

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
	
//	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}


function steps(x) { // set length via message
	steps = x;
}


function bang() { // bang refires current state
	outlet(0,them); // outputs anti-aliased slider
	
	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}	