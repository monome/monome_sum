/*

batch_mlr

2 channels only
each channel has 1 row of display
- volume slider at end
- auto-match number of steps to grid size (auto-adjust octave)
- octave auto-adjusts for closest to 1. possible
- loop/slice option per row

preset row parameters such that the only UI is dropfiles & volume sliders:
1: f0, +,  , l
2: f0, 0, r, l
3: f0, 0,  , s

4: f1, 0,  , s
5: f1, 0, r, l
6: f1, -,  , l
7: f1, -, r, l

8: f0, -, r, l
9: f0, -,  , l
10: f0, +, r, l
11: f0, 0,  , l

12: f1, 0,  , l
13: f1
14: f1
15: f1

*/

// INIT //

// MAX I/O //
inlets = 1; // grid/key
outlets = 5; // 2* mlr channels, 2* pattern recs, led out

// VARIABLES // 
var boundX = 8;
var boundY = 8;
var tempo = 100;
var tempoms = 600;
var lastch = 0;
var outBM = 0;
var vb = 0;

// ARRAYS // 
var count = new Array(15);
var playR = new Array(2);
var playS = new Array(2);
var sSpeed = new Array(2);
var fLength = new Array(2);
var rGate = new Array(2);
var rpGate = new Array(2);
var pLength = new Array(2);
var loopMode = new Array(2);
var playL = new Array(2);
var playG = new Array(2);
var sampleR = new Array(2);
var sampleP = new Array(2);
var inner0 = new Array(16);
var inner1 = new Array(16);

pLength[0] = 8;
pLength[1] = 16;

// INIT ALL ARRAYS TO 0/1 //
for(i=0;i<2;i++) {
	sSpeed[i] = 1;
	fLength[i] = 0;
	rGate[i] = 0;
	rpGate[i] = 0;
	playR[i] = 0;
	playS[i] = 0;
	playL[i] = 0;
	playG[i] = 0;
	loopMode[i] = 0;
	sampleR[i] = 0;
	sampleP[i] = 0;
}
for(i=0;i<15;i++) {
	count[i] = 0;
	inner0[i] = 0;
	inner1[i] = 0;
}

// TIMERS FOR PATTERN RECS //
var tsk0 = new Task(pRec0, this); // pattern0 timer
var tsk1 = new Task(pRec1, this); // pattern1 timer


// FUNCTIONS //

function bounds(x,y) {
	// receives size of connected grid
	boundX = x;
	boundY = y;
}

function key(x,y,s) {
	// 
	if(y>0) {
		// normal sample playback rows
		count[y-1] = count[y-1]+(2*s-1); // increment button counter for each row
		if(s==1 && count[y-1]==1) {  // first press so trigger playback
			sTrig(y-1,x);
		}
		else if(s==1 && count[y-1]==2) { // second press so set inner-loop
			if((y-1)<3 && playR[0]==(y-1)) {
				sLoop(y-1,x);
			}
			else if((y-1)<7 && playR[1]==(y-1)) {
				sLoop(y-1,x);
			}
			// add more else ifs for 15rows
			else {
				// otherwise just treat it as a normal sTrig as it's a different row
				sTrig(y-1,x);
			}
		}
	}
	
	else {
		// top-row, special functions
		if(x<2 && s==1) stoprow(x); // stop row on press of first 2 buttons
		else if(x>3 && x<6 && s==1) pattern(x-4); // run pattern recorder
	}
}

function file(index, length) {
	// collect information about currently loaded audio files
	fLength[index] = length; // dumps new file length into array
	speedCalc(); // call a new speed calculation
}

function speedCalc() {
	// recalculates playback speed for all rows
	for(i=0;i<2;i++) { // calculate every row whenever the function is called
		sSpeed[i] = tempo/(60000/((fLength[i] / boundX)));
		
		if(sSpeed[i]) { // multiply by 0.5 or 2 if the resultant speed is outside of 0.7 to 1.41
			while(sSpeed[i]<0.70) sSpeed[i] = sSpeed[i]*2;
			while(sSpeed[i]>1.41) sSpeed[i] = sSpeed[i]/2;
		}

		outlet(i, "speed", sSpeed[i]);
	}
	
	// then calculate timer for pattern recorders
	tsk0.interval = pLength[0]*tempoms; // could *.99 these if notes are getting duplicated on rollover
	tsk1.interval = pLength[1]*tempoms;
}

function stoprow(ch) {
	// called whenever pressing top row button
	outlet(ch, "stop");
	if(vb==0) outlet(4,"/b_mlr/grid/led/set", ch, 0, 0);
	else outlet(4,"/b_mlr/grid/led/level/set", ch, 0, 5);

	playG[ch] = 0; // mark the channel as off to gate leds & redraw

	if(ch==0) {
		for(i=0;i<3;i++) outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
	}
	else { // ch ==1
		for(i=3;i<7;i++) outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
	}
}

function pattern(index) {
	// presses into the pattern recorder
	outlet(index+2, "erase"); // send 'erase' message to seq
	if(rGate[index]==0 && rpGate[index]==0) {
		rGate[index] = 1; // arm the recording
	}
	else { // recording is armed / in progress / playing back
		if(index==0) tsk0.cancel(); // cancel relevant timer
		else tsk1.cancel();
		rGate[index] = 0; // disarm recorder
		rpGate[index] = 0; // turn off press input
	}
	
	if(vb==0) outlet(4,"/b_mlr/grid/led/set", index+4, 0, rGate[index]);
	else outlet(4,"/b_mlr/grid/led/level/set", index+4, 0, rGate[index]*10+5);
}

function pLed(index, state) {
	// led feedback for pattern recorders
	if(vb==0) outlet(4,"/b_mlr/grid/led/set", index+4, 0, state);	
	else outlet(4,"/b_mlr/grid/led/level/set", index+4, 0, state*10+5);
} 

function pLength(index,length) {
	// input a change to the pattern recorder length
	pLength[index] = length; // change length
	speedCalc(); // call speed calculation
}

function sTrig(row, step) { // sample trigger. called when physically pressing a key
	if(row<3) {
		// top 3 rows - outlet0
		outlet(0, "play", step/boundX, sSpeed[0], 0, 1, row);
		playR[0] = row;
		playS[0] = step;
		loopMode[0] = 0;
		lastch = 0; // set flag for second group
		playG[0] = 1;
	}
	else {
		// bottom 4 rows - outlet1
		outlet(1, "play", step/boundX, sSpeed[1], 0, 1, row);
		playR[1] = row;
		playS[1] = step;
		loopMode[1] = 0;
		lastch = 1; // set the flag for 2nd group
		playG[1] = 1;
	}
		
		// below is data sent to pattern recorders
	for(i=0;i<2;i++) { // iterate over both pattern recorders
		if(rGate[i]==1) {
			// the pattern is currently armed, but no recording yet
			rGate[i] = 0;
			if(i==0) tsk0.repeat(2); // set timer to run once
			else tsk1.repeat(2); // as above for 2nd timer
			rpGate[i] = 3;
		}
		if(rpGate[i]>1) {
			// the recording gate is open, so send input to the pattern recorder
			outlet(i+2, "press", row, step);
		}
	}
		// lastly send led commands for stop buttons
	if(vb==0) outlet(4,"/b_mlr/grid/led/set", lastch, 0, 1);
	else outlet(4,"/b_mlr/grid/led/level/set", lastch, 0, 15);
}

function sLoop(row, step) {
	if(row<3) {
		outlet(0, "play", -1, sSpeed[0], playS[0]/boundX, step/boundX, row);
		playL[0] = step;
		loopMode[0] = 1;
	}
	else {
		outlet(1, "play", -1, sSpeed[1], playS[1]/boundX, step/boundX, row);
		playL[1] = step;
		loopMode[1] = 1;
	}
}
	// note: rpGate[] has 3 states:
	// 0: recording is stopped, no loop placback
	// 1: recording is complete, loop is playing
	// 2/3: recording has begun, counter waits for interval then moves to mode1
function pRec0() rpGate[0]--;  // called when pRec0 has finished recording -> no more presses allowed
function pRec1() rpGate[1]--; // called when pRec1 has finished recording

function rTrig(row, step) { // sample trigger. called by a pattern recorder.
	if(row<3) {
		outlet(0, "play", step/boundX, sSpeed[0], 0, 1, row); // top 3 rows
		if(vb==0) outlet(4,"/b_mlr/grid/led/set", 0, 0, 1); // led command for stop button
		else outlet(4,"/b_mlr/grid/led/level/set", 0, 0, 15); // led command for stop button (vb)
		playG[0] = 1;
	}
	else {
		outlet(1, "play", step/boundX, sSpeed[1], 0, 1, row); // anything below top3
		if(vb==0) outlet(4,"/b_mlr/grid/led/set", 1, 0, 1); // led command for stop button
		else outlet(4,"/b_mlr/grid/led/level/set", 1, 0, 15); // led command for stop button
		playG[1] = 1;
	}
}

function bpm(bpm) {
	tempo = bpm; // grabs bpm from master patch
	tempoms = 60000/tempo;
	speedCalc(); // call a new speed calculation
}

function pPos(group, row, pos) {
	// updates the current playback position of each group
	// use to draw led response
	
	if(playG[group]==1) { // only allow output if the group is active (protects against timing edge case)

		if(vb==0) {
			outBM = Math.floor(1<<(pos*boundX)); // make a bitmask of the currently playing step
		
			outlet(4,"/b_mlr/grid/led/row", 0, row+1, 255&outBM, (65280&outBM)>>8); // light the just updated row
			if(group==0) {
				for(i=0;i<3;i++) {
					if(i!=row) {
						outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
					}
				}
				sampleR[0] = row;
				sampleP[0] = pos;
			}
			else { // group ==1
				for(i=3;i<7;i++) { // iterate through 4 rows
					if(i!=row) {
						outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
					}
				}
				sampleR[1] = row;
				sampleP[1] = pos;
			}
		}
		else { // varibright
			if(group==0) {
				for(i=0;i<16;i++) inner0[i] = 0; // set array to all zeroes
				inner0.length = boundX; // resize array
				if(loopMode[0] == 1) { // if there's an inner loop draw a low bright brace
					for(i=playS[0];i<(playL[0]);i++) inner0[i] = 5;
				}
				inner0[Math.floor(pos*boundX)] = 15;
				outlet(4,"/b_mlr/grid/led/level/row",0,row+1,inner0);
				for(i=0;i<3;i++) { // clean up other rows
					if(i!=row) {
						outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
					}
				}
				sampleR[0] = row;
				sampleP[0] = pos;				
			}
			else { // group = 1
				for(i=0;i<16;i++) inner1[i] = 0; // set array to all zeroes
				inner1.length = boundX; // resize array
				if(loopMode[1] == 1) { // if there's an inner loop draw a low bright brace
					for(i=playS[1];i<(playL[1]);i++) inner1[i] = 5;
				}
				inner1[Math.floor(pos*boundX)] = 15;
				outlet(4,"/b_mlr/grid/led/level/row",0,row+1,inner1);
				for(i=3;i<7;i++) { // clean up other rows
					if(i!=row) {
						outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
					}
				}
				sampleR[1] = row;
				sampleP[1] = pos;				
			}
		}
	}
}

function redraw() {
	// redraw the current led state
	if(vb==0) { // mono led draw (non vb)
		// stop channel buttons
		for(i=0;i<2;i++) {
			if(playG[i]==1) {
				outlet(4,"/b_mlr/grid/led/set", i, 0, 1);
				outBM = Math.floor(1<<(sampleP[i]*boundX)); // make a bitmask of the currently playing step
				outlet(4,"/b_mlr/grid/led/row", 0, sampleR[i]+1, 255&outBM, (65280&outBM)>>8); // light the sample playback led
			}
		}
	
		// pattern recorders
		for(i=0;i<2;i++) {
			if(rpGate[i] > 0) outlet(4,"/b_mlr/grid/led/set",i+4, 0, 1);
		}
	}
	else { // variable brightness redraw

		// stop channel buttons
		for(i=0;i<2;i++) {
			if(playG[i]==1) {
				outlet(4,"/b_mlr/grid/led/level/set", i, 0, 15); // group is playing

				if(i==0) { // redraw the 1st group
					for(i=0;i<16;i++) inner0[i] = 0; // set array to all zeroes
					inner0.length = boundX; // resize array
					if(loopMode[0] == 1) { // if there's an inner loop draw a low bright brace
						for(i=playS[0];i<(playL[0]);i++) inner0[i] = 5;
					}
					inner0[Math.floor(sampleP[0]*boundX)] = 15;
					outlet(4,"/b_mlr/grid/led/level/row",0,sampleR[0]+1,inner0);
					for(i=0;i<3;i++) { // clean up other rows
						if(i!=sampleR[0]) {
							outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
						}
					}
				}
				else { // group = 1
					for(i=0;i<16;i++) inner1[i] = 0; // set array to all zeroes
					inner1.length = boundX; // resize array
					if(loopMode[1] == 1) { // if there's an inner loop draw a low bright brace
						for(i=playS[1];i<(playL[1]);i++) inner1[i] = 5;
					}
					inner1[Math.floor(sampleP[1]*boundX)] = 15;
					outlet(4,"/b_mlr/grid/led/level/row",0,sampleR[1]+1,inner1);
					for(i=3;i<7;i++) { // clean up other rows
						if(i!=sampleR[1]) {
							outlet(4,"/b_mlr/grid/led/row", 0, i+1, 0, 0);
						}
					}
				}
			}
			else outlet(4,"/b_mlr/grid/led/level/set", i, 0, 5); // groups are off
		}

		// pattern recorders
		for(i=0;i<2;i++) {
			if(rpGate[i] > 0) outlet(4,"/b_mlr/grid/led/level/set",i+4, 0, 15); // pattern on
			else outlet(4,"/b_mlr/grid/led/level/set",i+4, 0, 5); // pattern off (draw low bright)
		}
	}
}

function varib(x){
 	vb=x; // grab variable brightness state
	post(vb);
	post();
}