inlets = 1;
outlets = 3;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) thresh = jsarguments[2]; // 2nd argument sets threshold of comparator (58 is very close to 1:1)
if(jsarguments.length>3) div = jsarguments[3]; // 3rd argument sets number of choices (2/4/8/16)
if(jsarguments.length>4) mem = jsarguments[4]; // 4th arg sets whether the js stores & displays float vals [0.,1.]for each seg

var index = 0.0;
var li = 0;
var le = 0;
var seld = 0; // the new output selection, sent only after moving sufficient distance (ctr) from sold
var ctr = 0; // a counter of delta increments


var them = new Array(steps);
var vald = new Array(div); // array for storing display vals

for (i=0;i<div;i++) vald[i] = 0; // initialise div array to 0


function select(x) {
	ctr = ctr+x; // add input delta to count
	if(ctr > thresh) { // increment count when passing above 100
		seld = (seld+1)%div; // wrap to [0,15] range
		outlet(2,seld); // send new count out 3rd outlet
		ctr = 0; // reset count to avoid jitter on transitions
		display(); // call display update
		if(mem) outputVal();
	}
	else if(ctr < -thresh) { // decrement count when passing below -100
		seld = (16+seld-1)%div; // wrap to [0,15] range
		outlet(2,seld); // send new count out 3rd outlet
		ctr = 0; // reset count to avoid jitter on transitions
		display(); // call display update
		if(mem) outputVal();
	}
}


function val(x) {
	vald[seld] = x;
	display();
}


function outputVal() {
	outlet(1,vald[seld]);
}


function display() {
	for(i=0;i<steps;i++) them[i] = 0; //set all to 0

	if(mem) { // memory is stored so only display edges
		for(j=0;j<div;j++) {
			for(i=0;i<(64/div)-2;i++) { // first we draw value content
				them[j*(64/div)+i+1] = Math.floor(15*vald[j]);
			}
		}
		
				// then we overlay the currently selection markers
		them[seld*(64/div)] = 15;
		them[(1+seld)*(64/div)-1] = 15;		
	}
	else { // no memory stored, so display full range
		for(i=0;i<(64/div);i++) {
			them[seld*(64/div)+i] = 15;
		}

	}
	
	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased line pointer
}


function bang() {
	display();
}