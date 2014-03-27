inlets = 1;
outlets = 3;

if(jsarguments.length>1) steps = jsarguments[1]; // first argument is either 8/16 steps
if(jsarguments.length>2) wrap = jsarguments[2]; // 2nd argument sets wrap behaviour


// is good but should add 1 cell of full bright at destination between 2 rounded cells
// particularly for arc where granularity is better

var index = 0.0;
var li = 0;
var le = 0;

var them = new Array(steps);

function slide(x) { // accepts 0 to 8/16 input
	li=x;
	lif=Math.floor(x);
	draw();
}

function slew(x) { // accepts 0 to 8/16 input
	le=x;
	lef=Math.floor(x);
	draw();
}

function draw() {
	for(i=0;i<steps;i++) them[i] = 0; //set all to 0 or 15 re:direction

	if(lef>lif) {
		for(i=lif;i<lef;i++) them[i] = 5;
		them[lef] = -Math.floor(5*(lef-le)-.01);
	}
	else if(lif>lef) {
		for(i=lef;i<lif;i++) them[i] = 5;
		them[lef] = 5-Math.floor(-5*(lef-le)-.01);
	}


	them[lif] = Math.max(-Math.floor(15*(lif-li)-.01),them[lif]); // .01 is to avoid weird overflow edge case
	them[lif-1] = Math.max(15-(-Math.floor(15*(lif-li)-.01)),them[lif-1]); // as above but wraps to width

	them.length = steps; // culls extraneous added cells
	outlet(0,them); // outputs anti-aliased line pointer		
}