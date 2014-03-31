inlets = 1;
outlets = 2;

if(jsarguments.length>1) xdim = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) ydim = jsarguments[2]; // 2nd argument is direction (0: lights start at zero, 1: lights start at max)
if(jsarguments.length>3) direction = jsarguments[3]; // 2nd argument is direction (0: lights start at zero, 1: lights start at max)

var xindex = 0.0;
var yindex = 0.0;
var b = 5;

var them = new Array(xdim*ydim);
var dibs = new Array(4);

function bcolor(x) {
	b = x;
}


function locate(x,y) { // accepts 0 to 8/16 input *2 dims
	
	for(i=0;i<(xdim*ydim);i++) them[i] = 0; //set all to 0

	xindex = Math.floor(x); //index is input rounded down
	yindex = Math.floor(y); //index is input rounded down

		// calculate cell scalers
	dibs[0] = (x-xindex) * (y-yindex);
	dibs[1] = (1-(x-xindex)) * (y-yindex);
	dibs[2] = (x-xindex) * (1-(y-yindex));
	dibs[3] = (1-(x-xindex)) * (1-(y-yindex));

		// draw 4 nearest pixels
	them[xindex+(xdim*yindex)] = Math.floor(15*dibs[3]); // top-left
	them[xindex+(xdim*yindex)+1] = Math.floor(15*dibs[2]); // top-right
	them[xindex+(xdim*(yindex+1))] = Math.floor(15*dibs[1]); // bottom-left
	them[xindex+(xdim*(yindex+1))+1] = Math.floor(15*dibs[0]); // bottom-rt


	them.length = (xdim*ydim); // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased slider
}


function steps(x) { // set length via message
	steps = x;
}


function bang() { // bang refires current state
	outlet(0,them); // outputs anti-aliased slider
	
	outlet(1, 255-((1<<(steps-index))-1)); // output bitmask for non-vb	-- need to add direction option
}	