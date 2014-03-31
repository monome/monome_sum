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
var oute = new Array(64);

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

	if(xdim==8 && ydim==8) { // 8x8 only
		outlet(0,0,0,them); // outputs anti-aliased slider
	}
	else if(xdim==16 && ydim==8) { //16x8
		for(i=0;i<8;i++) { // calculate 1st quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[j+(16*i)];
			}
		}
		outlet(0,0,0,oute); // send out 1st quad

		for(i=0;i<8;i++) { // calculate 2nd quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[8+j+(16*i)];
			}
		}
		outlet(0,8,0,oute); // send out 2nd quad
	}
	else if(xdim==8 && ydim==16) { // 8x16
		for(i=0;i<64;i++) { // calculate 1st quadrant
			oute[i] = them[i];
		}
		outlet(0,0,0,oute); // send out 1st quadrant message
		
		for(i=0;i<64;i++) { // calculate 3rd quadrant
			oute[i] = them[i+64];
		}
		outlet(0,0,8,oute); // send out 3rd quadrant message
	}
	else if(xdim==16 && ydim==16) { //16x16
		for(i=0;i<8;i++) { // calculate 1st quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[j+(16*i)];
			}
		}
		outlet(0,0,0,oute); // send out 1st quad

		for(i=0;i<8;i++) { // calculate 2nd quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[8+j+(16*i)];
			}
		}
		outlet(0,8,0,oute); // send out 2nd quad

		for(i=0;i<8;i++) { // calculate 3rd quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[64+j+(16*i)];
			}
		}
		outlet(0,0,8,oute); // send out 3rd quad

		for(i=0;i<8;i++) { // calculate 4th quadrant
			for(j=0;j<8;j++) {
				oute[j+(8*i)] = them[72+j+(16*i)];
			}
		}
		outlet(0,8,8,oute); // send out 4th quad
	}
}


function steps(x) { // set length via message
	steps = x;
}