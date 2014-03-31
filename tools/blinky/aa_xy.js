inlets = 1;
outlets = 2;

if(jsarguments.length>1) xdim = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) ydim = jsarguments[2]; // 2nd argument is direction (0: lights start at zero, 1: lights start at max)
if(jsarguments.length>3) direction = jsarguments[3]; // 2nd argument is direction (0: lights start at zero, 1: lights start at max)

var xindex = 0.0;
var yindex = 0.0;
var b = 5;

var them = new Array(xdim*ydim);


function bcolor(x) {
	b = x;
}


function locate(x,y) { // accepts 0 to 8/16 input *2 dims
	
	for(i=0;i<(xdim*ydim);i++) them[i] = 0; //set all to 0

	xindex = Math.floor(x); //index is input rounded down
	yindex = Math.floor(y); //index is input rounded down
	
	for(i=0;i<ydim;i++) {
		them[xindex+(ydim*i)] = 15-Math.floor(15*(x-xindex));
		them[xindex+(ydim*i)+1] = 15-them[xindex+(ydim*i)]; // as above but wraps to width
	}
	
	for(i=0;i<xdim;i++) {
		them[i+(xdim*yindex)] = Math.max(15-Math.floor(15*(y-yindex)),them[i+(xdim*yindex)]);
		them[i+(xdim*yindex)+xdim] = Math.max(15-them[i+(xdim*yindex)],them[i+(xdim*yindex)+xdim]); // as above but wraps to width
	}


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