inlets = 1;
outlets = 3;

var i;
var xoffset = 0.0;
var xindex = 0.0; // 
var yoffset = 0.0;
var yindex = 0.0; // 
var xBox = 8;
var yBox = 8;
var gridArea = 64;

var width = 1.0; // how wide a range the leds fade out over
var line = new Array(16); // the ideal row of values
var line2 = new Array(16); // the ideal row of values
var point = new Array(2); // chooses which slider in a multislider to attach to

var those = new Array(256); // working array
var them = new Array(64); // the full output of variable brightness levels
var them2 = new Array(64);
var them3 = new Array(64);
var them4 = new Array(64);


function bounds(xs, ys) {
	xBox = xs;
	yBox = ys;
	gridArea = xs*ys;
}

function xy(x, y, w) {
	xindex = Math.floor(x)+1; // rounds input (0.-64.) down to the nearest integer then adds 1 (1-64)
	xoffset = (x+1) % xindex; // wraps index around 0 to 64 to allow increasing input to cycle
	yindex = Math.floor(y)+1;
	yoffset = (y+1) % yindex;

	width = w; // creates variable & fills with input2 from list
	
	outlet(1,0); // sends a '0' out the middle outlet after a new value is received
	
	for(i=0;i<64;i++) them[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<64;i++) them2[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<64;i++) them3[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<64;i++) them4[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<gridArea;i++) those[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<xBox;i++) line[i] = 0; // fills 'them' array with zeroes
	for(i=0;i<yBox;i++) line2[i] = 0; // fills 'them' array with zeroes
	
	for(i=0;i<w;i++) { // fills a 16wide col of bits
		line[0] = (xBox+i+xindex-Math.floor(w/2))%xBox+1;
		line[1] = (-Math.cos(((1+i-xoffset)/width)*Math.PI*2.0) +1)/2;
		
		for(j=0;j<w;j++) { // fills a 16wide row of bits
			line2[0] = (yBox+j+yindex-Math.floor(w/2))%yBox+1;
			line2[1] = (-Math.cos(((1+j-yoffset)/width)*Math.PI*2.0) +1)/2;
			
			those[0] = ((gridArea-1-xBox)+line[0]+(xBox*line2[0]))%gridArea;
			those[1] = Math.floor((line[1]*line2[1])*15.5);


//			if(xBox==16) { // full 16wide rows
//				them[(
//			}
//			else {// only 8wide
				for(i=0;i<8;i++) {
					
				them[those[0]] = those[1];

				them[(those[0])%gridArea] = those[1];

			}
		}
	}
	//if(xBox==8 && yBox==8) {
		outlet(2,them); // sends the full 64 number array out the right outlet
	//}
	
}
