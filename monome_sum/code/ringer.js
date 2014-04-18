inlets = 1;
outlets = 3;

var rCount = 2;
var select = 0;
var bx, by;

function key(x,y,s) { // key input to the grid
	if(s==1) { // only respond to presses
		select = Math.floor(x/rCount) * rCount; // quantize the x offset to arc divisions
		if(bx==8) select = select+ Math.floor(y/(by/2))*8; // only 8 wide so need to split y dimension
		newSelection();
		drawGrid();
	}
}

function gsize(x,y) { // how big is the grid
	bx = x;
	by = y;
}

function asize(x) { // how many rings does the arc have
	rCount = x;
}

function drawGrid() { // draw the current ring selection
	if(bx>8) {
		outlet(0,"/b_rings/grid/led/all",0);
		for(i=0;i<rCount;i++) outlet(0,"/b_rings/grid/led/col",select+i,0,255,255);
	}
	else { // only 8 wide so draw separate halfs
		if(by==16) { // 16 high so still use led/col
			outlet(0,"/b_rings/grid/led/all",0);
			for(i=0;i<rCount;i++) outlet(0,"/b_rings/grid/led/col",i+select%8,8*Math.floor(select/8),255,255);
		}
		else { // 8x8 so must draw individual cells
			outlet(0,"/b_rings/grid/led/all",0);
			for(i=0;i<4;i++) {
				for(j=0;j<rCount;j++) outlet(0,"/b_rings/grid/led/set",j+select%8,i+4*Math.floor(select/8),1);
			}
		}
	}
}

function newSelection() outlet(1,select);

function delta(x,c) { // arc input
	outlet(2,x+select,c);
}