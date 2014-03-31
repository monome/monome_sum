// mesh: meta-event-recorder
// nestable recorder with looping

inlets = 1;
outlets = 1;

var boundX = 8; //current grid view width
var boundY = 8; //current grid view height
var maxX = 8; //maximum potential grid width
var maxY = 8; //maximum potential grid height
var fixLength = 0; //when true, columns have pre-set length parameters (else, can have custom length)
var loopLen = 0; //loop length multiplier & boolean flag for any loop key
var loopClear = 0; // clear flag

var mState = new Array(maxX*(maxY-1));

for(i=0;i<maxX*(maxY-1);i++) mState[i] = 0; // initialise all cells to empty state

function gridKey(x,y,s) {
	if(y==0) {
		// navigation row
		// functions: loop, clear, clear all, 
		// 0: loop the cell
		// 
		if(x < boundX/2) {
			// left-half
			// which key sets the 'loopLen' flag
			if(s==1) loopLen = 1<<(y+1); // a press sets the loop multiplier to 1,2,4,8 etc
			else loopLen = 0; // a release sets loopLen to 0.
		}
		else {
			// right-half
			// sets 'clear' flag
			clear = s;
		}
	}
	else {
		// normal presses to pattern recorders
		// all patterns have default length
		rPress((maxX-boundX)/2+x+maxX*(y-1),s); // formats for 0-indexed array of cells
			// when viewing a smaller portion, displays the middle section
	}
}

function sysSize(x,y) {
	// size of currently connected grid (but not the max possible size)
	boundX = x;
	boundY = y;
}

function batchSize(x,y) {
	// maximum size of meta-grid connected in batch
	maxX = x;
	maxY = y;
}

function focus(x) {
	// receives 'focus' message from serialosc
	if(x==1) {
		// redraw the led display here
	}
}

function rPress(locate,state) {
	// process the main key data

	// if event is in left half & in a full cell, send data out to recorder (outlet1)

	// manage state of each recorder internally and store array of current settings
	if(loopClear != 0) {
		// normal press
		switch(mState[locate]) {
			case 0: // currently empty: press arms for recording
			if(state==1){ 
				//set onebang
				outlet(1, "target" locate, "gate" 1); // send gate-open to relevant recorder
				mState[locate] = 1;
				outlet(1, "target" locate, "len" loopLen); // send targeted poly a length multiplier, ignore 0 in patcher
			}
			[break;]

			case 1: // armed: press disables recording if nothing yet received
			if(state==1) {
				mState[locate] = 0;
			}
			[break;]

			case 2: // recording: alerted directly from max when list is received.
				// any press causes the recording to be ended and played back
			if(state==1) {
				outlet(1, "target" locate, "end"); // send 'end' to relevant recorder
				mState[locate] = 5;
			}
			[break;]
			
			case 3: // full-stopped
			[break;]

			case 4: // full-playback: this is called directly from max for set-length recordings when the recording is complete
			if(loopLen>0) outlet(1, "target" locate, "loop" 0); // turn off loop if holding loop key while retrigger
			else { // else retrigger playback and re-enter overdub mode
				outlet(1, "target" locate, "play"); // restart playback
				mState[locate] = 5; // re-enter overdub
			}
			[break;]
			
			case 5: // full-overdub
			outlet(1, "target" locate, "gate" 0); // send gate-close to relevant recorder
			mState[locate] = 4; // go to playback mode
			[break;]
		}
	}
	else if(state==1) {
		// press while clear is held
	}
}




