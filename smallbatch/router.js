inlets = 2;
outlets = 4;

var c = 0; //'count' variable - how many are pressed?
var wait = 0; //true if count is non-zero > wait before changing mode
var now0 = new Array(16); //stores the state of each button 16x16
var now1 = new Array(16); //stores the state of each button 16x16 (grid2)
var route = 0; //whether the 15,0 button is pressed
var routeWait = 0; //if route is pressed
var routeWaitHistory = 0; //previous routeWait
// x-size of 1st device is global & broadcast
var g1y = 8; // should initialise at 0
var g2x = 0;
var g2y = 0;
var xGrid = 16; // should initialise at 0
var yGrid = 8; // should initialise at 0
var joined = 1;
var selHistory = 0;
var selCurrent = 0;

// Global (Max namespace) variables
glob = new Global("routinginfo");
glob.gMeta = 0;
glob.g1x = 16; // broadcast x-size of 1st device - should initialise at 0 for starters



for (var i = 0; i<16; i++) {
    now0[i] = new Array(16);
    now1[i] = new Array(16);
}


function sOSC(a,x,y,z,n) { // a=osc address, b,c,d,e = data

// newly connected devices alerted from the serialosc server

/*

// this whole section is commented out for the router context
// the router handles adding & removing devices, and need not re-populate the client serialoscs
// they will still do so on their own

	if(a=="/serialosc/device") { //from server: s:<device id>,s:<type>,i:<port>
		if (inlet == 0) { // inlet==0 means the device connected to 1st inlet
			outlet(0,"/serialosc/device",x,y,z); //mirrored to output 1
		}

		if (inlet == 1) { // inlet==1 means the device connected to 2nd inlet
			outlet(1,"/serialosc/device",x,y,z); //mirrored to output 2
		}
	}


	if(a=="/serialosc/add") { //from server: s:<device id>
		if (inlet == 0) {
			outlet(0,"/serialosc/add",x,y);
		}

		if (inlet == 1) {
			outlet(1,"/serialosc/add",x,y);
		}
	}


	if(a=="/serialosc/remove") { //from server: s:<device id>
		if (inlet == 0) {
			outlet(0,"/serialosc/remove",x,y);
		}

		if (inlet == 1) {
			outlet(1,"/serialosc/remove",x,y);
		}
	}

*/




// information about the current port connection to serialosc server
// these messages are received in response to a /sys/info request
// upon max patch initialisation, the serialosc.maxpat will trigger this command

/*
// none of this is needed for the router as the router sends all additional port params as necessary
	if(a=="/sys/port") { // <i:destination port>
		if (inlet == 0) {
			outlet(0,"/sys/port",x);
		}

		if (inlet == 1) {
			outlet(1,"/sys/port",x);
		}
	}


	if(a=="/sys/host") { // <s:destination host>
		if (inlet == 0) {
			outlet(0,"/sys/host",x);
		}

		if (inlet == 1) {
			outlet(1,"/sys/host",x);
		}
	}


	if(a=="/sys/id") { // s:<device id>
		if (inlet == 0) {
			outlet(0,"/sys/id",x);
		}

		if (inlet == 1) {
			outlet(1,"/sys/id",x);
		}
	}
/*

/*
// no prefix handling in router - app-prefixes must remain static for routing to work correctly
	if(a=="/sys/prefix") { // s:<prefix>
		if (inlet == 0) {
			outlet(0,"/sys/prefix",x);
		}

		if (inlet == 1) {
			outlet(1,"/sys/prefix",x);
		}
	}
*/

/*
// no rotation handling - grids are already prepared in head patch and 'size' is sent to setup app params
	if(a=="/sys/rotation") { // i:<rotation>
		if (inlet == 0) {
			outlet(0,"/sys/rotation",x);
		}

		if (inlet == 1) {
			outlet(1,"/sys/rotation",x);
		}
	}
*/

	if(a=="/sys/size") { // i:<size x>,i:<size y>
		if (inlet == 0) {
			glob.g1x = x; // fill variables (eg. glob.g1x) for connected device size
			g1y = y;
		}

		if (inlet == 1) {
			g2x = x;
			g2y = y;
		}
		
	// then add both grids together to find composite dimensions
		xGrid = glob.g1x + g2x; // adds devices side by side for max-x
	// then we find the larger y-value of the 2 devices
	// is there a way to do this with a simple 'maximum' type command rather than a conditional?
	// something like: yGrid = maximum(g1y,g2y);
		if(g1y>g2y) yGrid = g1y
		else yGrid = g2y

	// then check if the devices are joined in the router
		if(joined==0) { // if devices are independent or 1 device is split
			if(g2x>0) { // and there are 2 devices physically present
				glob.gMeta = 1;
				if (inlet==0) outlet(0,"/sys/size",x,y) // send /size to grid1
				else outlet(1,"/sys/size",x,y); // send /size to grid2
			}
			else { // only 1 device present
				if(g1y>8) { // and the device is 16y or greater (ie. 256, vertical 128)
					glob.gMeta = 3;
					outlet(0,"/sys/size",x,(y/2));
					outlet(1,"/sys/size",x,(y/2));
				}
				else { // only 8y
					if(glob.g1x>8) { // but the device is at least 16 wide (ie. horizontal 128)
						glob.gMeta = 2;
						outlet(0,"/sys/size",(x/2),y);
						outlet(1,"/sys/size",(x/2),y);
					}
					else {
						glob.gMeta = 0;
						outlet(0,"/sys/size",x,y); // only 8x8 device (ie. 64)
					}
				}
			}
		}
		else {
			glob.gMeta = 0;
			outlet(0,"/sys/size",xGrid,yGrid); // when devices are joined, send a composite size
		}
	}



	if(a == "/manager/grid/key") { // is the input a key press?

	// first we fill the arrays with the current state of all presses
	// these aren't actively used at this stage, but just a saved bitmap of the current state
		if(inlet==0){
			if(z == 1) now0[x][y] = 1;
		}

		if(inlet==1){
			if(z == 1) now1[x][y] = 1;
		}
		
		
	// this section determines composite device size & chooses top-right key of right most device
	// then accumulates all presses excluding the router key
		
		if(g2x == 0) { // if is there only one device attached,
			if(x == (glob.g1x-1) && y == 0) // route button input
				isRouter(z); // run the split/spanner
			else { // all other input
				c = c + ((z*2)-1);
				rHandle(x,y,z);
			}
		}
		else { // this case occurs when there are 2 grid devices attached
			if(inlet==1){ // if the press is the 2nd device...
				if(x == (g2x-1) && y == 0) // and is the router key..
					isRouter(z); // run the split/spanner
				else { // but not route key..
					c = c + ((z*2)-1); // add number to current press count
					rHandle(x,y,z);
				}
			}
			else { // is 1st device
				c = c + ((z*2)-1); // add any press to the counter
				rHandle(x,y,z);
			}
		}

//	post(wait,c,route,routeWait);
//	post();


	}


		// sends tilt messages to appropriate outlet based upon routing setup
	if(a=="/manager/tilt") { // i:<which sensor>,i:<x>,i:<y>,i:<z>
		if(routeWait == 0) { // only send tilt info when not in route mode
			if(glob.gMeta==0) { // only one app addressed
				if (inlet == 0) { // only send tilt from 1st device
					outlet(0,"/manager/tilt",b,c,d,e);
				}
			}
			if(glob.gMeta==1) { // 2 devices to 2 apps
				if (inlet == 0) { // 1st device tilt to 1st app tilt
					outlet(0,"/manager/tilt",b,c,d,e);
				}
				if (inlet == 1) { // 2nd device tilt to 2nd app tilt
					outlet(1,"/manager/tilt",b,c,d,e);
				}
			}
			if(glob.gMeta==2) { // landscape128 split into 2 apps
				outlet(0,"/manager/tilt",b,c,d,e); // only send output to 1st outlet (left app)
			}
			if(glob.gMeta==2) { // portrait128/256 split into 2 apps top/bottom
				outlet(0,"/manager/tilt",b,c,d,e); // only send output to 1st outlet (top app)
			}
		}
//		else // add tilt-to-router-app code here if tilt is to be used internally for router selection
	}




}





function rHandle(x,y,z) {
// this function determines whether the current press count is zero (ie. only route key held)
// uses the 'wait' and 'routeWait' and 'route' messages to avoid switching outlets until no presses
// this deals with avoiding hanging notes in applications, or non-fired app changes in the router

	// wait flag is high when count is zero (ie. no keys pressed)
	wait = !c

	// when not in routing mode send the /key presses to the appropriate output
	// should add the switching / shifting in here for alternate arrangements
	
	if(routeWait == 0) {
		if(glob.gMeta == 0) { // addressing only 1 app, w/ only 1 device, or w/ a composite device
			if(inlet==0) outlet(0,"/manager/grid/key",x,y,z); //sends 1st device out left outlet
			if(inlet==1) outlet(0,"/manager/grid/key",(x+glob.g1x),y,z); //sends 2nd device to 1st outlet w/ x-offset of 1st device width
		}
		if(glob.gMeta == 1) { // when 2 devices are assigned to separate apps
			if(inlet==0) outlet(0,"/manager/grid/key",x,y,z); //sends 1st device out left outlet
			if(inlet==1) outlet(1,"/manager/grid/key",x,y,z); //sends 2nd device out 2nd to left outlet
		}

// could dynamically code these so non 8x8 grid shapes could be used
// eg: if(x<8) would become if(x<(glob.g1x/2))
// and outlet(1,a,(x-8),y,z) would become outlet(1,a,(x-(glob.g1x/2)),y,z)

		if(glob.gMeta == 2) { // splitting a landscape 128 into 2 apps side by side
			if(x<8) {
				outlet(0,"/manager/grid/key",x,y,z); //sends left half out first outlet
			}
			else outlet(1,"/manager/grid/key",(x-8),y,z); //sends right half out 2nd to left outlet
		}
		if(glob.gMeta == 3) { // splitting a portrait 128 / 256 into 2 apps above/below each other
			if(y<8) {
				outlet(0,"/manager/grid/key",x,y,z); //sends left half out first outlet
			}
			else outlet(1,"/manager/grid/key",x,(y-8),z); //sends right half out 2nd to left outlet
		}
	}
	else rSelect(x,y,z); // when in route mode, send the grid input to rSelect function


	// when the count hits zero, execute the most recent change in 'route' status (ie. switch app now)
	if(wait == 1) {
		routeWait = route;
	}

	// then send a boolean flag which starts a refresh of the display in the new mode
	rGates(routeWait); // update max to the current status of the switch (after wait checking)

}



function rSelect(x,y,z) {
// this function receives all key info when the device is in router mode
// here is where we handle the actual app switching, and format data output
// it remembers the last 2 pressed columns


// here we join both devices to create 1 large selection surface
	if(z==1) { //if the input is a press
		// first we shift selCurrent into the selHistory for memory
		selHistory = selCurrent;

		// then we update selCurrent to the new input
		if(inlet==0) selCurrent = x;
		if(inlet==1) selCurrent = (x+glob.g1x);
	}

	// then send a list out representing the last 2 selects
	if(joined==1) outlet(2,selCurrent)
	else outlet(2,selCurrent,selHistory)
}




// this function is run anytime there is input to the designated router key
function isRouter(z) { 
	route = z; // set the 'route' state to the status of the route key
	wait = !c; // 'wait' is true when no other keys are pressed
	routeWait = route; // set the 'routeWait' command to the new 'route' state
	if(route==0) { // if the route key has just been released
		if(wait == 1) { // if there are no keys pressed when the router is released...

			joined = 1; // all available grids are routed to selCurrent
			glob.gMeta = 0; // only one application attached to full meta grid
			outlet(0,"/sys/size",xGrid,yGrid);
			}
		else { // if there are keys held when the route-key is released
			if(c==1) { // if only one key, then treat as normal, updating to one app w/ composite grid
				joined = 1;
				glob.gMeta = 0; // only one application attached to full meta grid
				outlet(0,"/sys/size",xGrid,yGrid);
			}
			else { // if more than 1 key are held
				joined = 0; // devices are not joined, and dealt with separately

	// if 2 devices the two selected apps will be directed to each one
				
				if(g2x>0) { // if there are 2 devices physically present
					glob.gMeta = 1; // selHistory to left grid, selCurrent to right grid
					outlet(0,"/sys/size",glob.g1x,g1y) // send /size to grid1
					outlet(1,"/sys/size",g2x,g2y); // send /size to grid2
				}

	// this determines how the device splitting will work if only 1 device

				else { // only 1 device present
					if(g1y>8) { // and the device is 16y or greater (ie. 256, vertical 128)
						glob.gMeta = 3; // split is through y axis for grids above/below each other
						outlet(0,"/sys/size",glob.g1x,(g1y/2));
						outlet(1,"/sys/size",glob.g1x,(g1y/2));
					}
					else { // only 8y
						if(glob.g1x>8) { // but the device is at least 16 wide (ie. horizontal 128)
							glob.gMeta = 2; // split is through x axis for grids side by side
							outlet(0,"/sys/size",(glob.g1x/2),g1y);
							outlet(1,"/sys/size",(glob.g1x/2),g1y);
						}
						else {
							glob.gMeta = 0; // can't split device, so only selCurrent can be assigned
							outlet(0,"/sys/size",glob.g1x,g1y); // only 8x8 device (ie. 64)
						}

	//glob.gMeta: 0=singleapp, 1=2devices-to-2-apps, 2=h128-split, 3=v128-split or 256-split

					}
				}
			}
		}
	}
	rGates(routeWait); // tell max if 'routeWait' flag has changed as a result
}

function rGates(i) { // this function is run to update max of router status
	if(routeWaitHistory!=i) outlet(3, i); // send routeWait status out 3rd outlet, only when it changes
	routeWaitHistory = i; // set the 'history' to the current version
}



function manual(i) { // this function allows an integer index to overwrite the current routing
	joined = 1; // force devices to be joined as can only select 1 app via mouse
	glob.gMeta = 0; // only one application attached to full meta grid
	outlet(2, i); // send inputted integer out as the new app selection
	outlet(0,"/sys/size",xGrid,yGrid); // update size to full grid
	outlet(3, 0); // let patch know it's in app-mode
	routeWaitHistory = 0; // clean-up > let memory bit know it's in app-mode too
}


	