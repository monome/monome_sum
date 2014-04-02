inlets = 2;
outlets = 6;

var c = 0; //'count' variable - how many are pressed?
var rc = 0; // count in route mode
var now0 = new Array(16); //stores the state of each button 16x16
var now1 = new Array(16); //stores the state of each button 16x16 (grid2)
var route = 0; //whether the 15,0 button is pressed
var routeWait = 0; //if route is pressed
var routeWaitHistory = 0; //previous routeWait
// size of 1st device is global & broadcast
var g2x = 0;
var g2y = 0;
var xGrid = 8; // should initialise at 0
var yGrid = 8; // should initialise at 0
var whichkey = 0;
var whichrx = 0;
var whichry = 0;
var whichdev = -1;
var mWait = 0;

var rMaster = -1;
var rToggle = 0;
var keyLocation = 0;

// Global (Max namespace) variables
glob = new Global("routinginfo");
glob.gMeta = 0;
glob.g1x = 8; // broadcast x-size of 1st device - should initialise at 0 for starters
glob.g1y = 8; // should initialise at 0
glob.gridtiling = 0;
glob.rLock = 0;
glob.selHistory = 0;
glob.selCurrent = 0;
glob.rDevice = -1;
glob.rQuad = -1;
glob.joined = 1;
glob.rWidth = -1;
glob.rHeight = -1;

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
			(0,"/serialosc/device",x,y,z); //mirrored to output 1
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
			glob.g1y = y;
		}

		if (inlet == 1) {
			g2x = x;
			g2y = y;
		}
		
	// then add both grids together to find composite dimensions
	// need to account for grid tiling in horizontal or vertical dimension
		if (glob.gridtiling == 0) { // grids are joined horizontally
			xGrid = glob.g1x + g2x; // adds devices side by side for max-x
				// then we find the larger y-value of the 2 devices
				// is there a way to do this with a simple 'maximum' type command rather than a conditional?
				// something like: yGrid = maximum(glob.g1y,g2y);
			if(glob.g1y>g2y) yGrid = glob.g1y
			else yGrid = g2y
		}
		else { // grids are joined vertically
			yGrid = glob.g1y + g2y;
			if(glob.g1x>g2x) xGrid = glob.g1x
			else xGrid = g2x
		}

	// then check if the devices are joined in the router
		if(glob.joined==0) { // if devices are independent or 1 device is split
			if(g2x>0) { // and there are 2 devices physically present
				glob.gMeta = 1;
				if (inlet==0) outlet(0,"/sys/size",x,y) // send /size to grid1
				else outlet(1,"/sys/size",x,y); // send /size to grid2
			}
			else { // only 1 device present
				if((glob.g1y==8) && (glob.glx == 8)) { // only 8x8 device (ie. 64)
					glob.gMeta = 0; // 1 device to 1 app
					outlet(0,"/sys/size",x,y); // echo size to output
				}
				if((glob.g1y==8) && (glob.g1x == 16)) { // horizontal 128
					glob.gMeta = 2; // horizontal split
					outlet(0,"/sys/size",(x/2),y);
					outlet(1,"/sys/size",(x/2),y);
				}
				if((glob.g1y==16) && (glob.g1x == 16)) { // 256
					glob.gMeta = (glob.gridtiling + 2); // sets mode for vertical or horizontal split
					outlet(0,"/sys/size",(x/(-glob.gridtiling+2)),(y/(glob.gridtiling+1)));
					outlet(1,"/sys/size",(x/(-glob.gridtiling+2)),(y/(glob.gridtiling+1)));
				}
				if((glob.g1y==16) && (glob.g1x == 8)) { // vertical 128
					glob.gMeta = 3; // vertical split
					outlet(0,"/sys/size",x,(y/2));
					outlet(1,"/sys/size",x,(y/2));
				}
			}
		}
		else { // joined==1, 2 devices are attached to 1 application
			glob.gMeta = 0; // devices are joined, hence 2 devices to a single application
			outlet(0,"/sys/size",xGrid,yGrid); // when devices are joined, send a composite size
		}

		outlet(5,xGrid,yGrid);
	}



	if(a == "/manager/grid/key") { // is the input a key press?

	// first we fill the arrays with the current state of all presses
	// these aren't actively used at this stage, but just a saved bitmap of the current state
/*		if(inlet==0){
			if(z == 1) now0[x][y] = 1;
		}

		if(inlet==1){
			if(z == 1) now1[x][y] = 1;
		}
*/		
		
	// this section determines composite device size & chooses customised route key
	// then accumulates all presses excluding the router key

		if(whichkey==0) { // normal useage (not setting route key)
			
			if(glob.rDevice == -1) { // if no route key, don't check conditions, just route to output
				c = c + ((z*2)-1); // add number to current press count
				rHandle(x,y,z); // send to output handler
			}
			else { // if there is a route key..
				if(inlet==glob.rDevice && x==glob.rWidth && y==glob.rHeight) { // it is the router key
						if(c==0) {
						routeWait = z;
						if(z==1) outlet(4,1);
						else newSelection();
						routeWaitHistory = routeWait;
					}
					isRouter(z); // run the split/spanner
				}
				else { // all other input
					c = c + ((z*2)-1); // add number to current press count
					rHandle(x,y,z);
				}
			}
		}
		else { //route-key location setting. 
			if(z==1) { // responds to presses only - need to add 'none' when re-selecting same
				if(glob.rWidth == x && glob.rHeight == y && glob.rDevice == inlet) {
						// if same as previous selection, deselect and remove route key
					glob.rWidth = -1;
					glob.rHeight = -1;
					glob.rDevice = -1; 
					glob.rQuad = -1;
					outlet(3,-1,-1,-1,-1);
				}
				else { // if it's a new key, update the router to the new key
					glob.rWidth = x;
					glob.rHeight = y;
					glob.rDevice = inlet; // set which device is the router
					glob.rQuad = Math.floor(glob.rWidth/8)+(2*Math.floor(glob.rHeight/8));
					outlet(3,x,y,inlet,glob.rQuad);
				}
				
				// then call an update to the display
				outlet(4,2); // calls route-key location display in led-router.js
			}
		}

		if(mWait==1 && c==0) { // if the manual waitFlag is raised and the count has hit zero, execute the app change
			// execute the manual routing
			newSelection();
			outlet(0,"/sys/size",xGrid,yGrid); // update size to full grid
			routeWaitHistory = 0; // clean-up > let memory bit know it's in app-mode too
			mWait = 0;
		}
	}


		// sends tilt messages to appropriate outlet based upon routing setup
	if(a=="/manager/tilt") { // i:<which sensor>,i:<x>,i:<y>,i:<z>
		if(routeWait == 0) { // only send tilt info when not in route mode
			if(glob.gMeta==0) { // only one app addressed
				if (inlet == 0) { // only send tilt from 1st device
					outlet(0,"/manager/tilt",x,y,z,n);
				}
			}
			if(glob.gMeta==1) { // 2 devices to 2 apps
				if (inlet == 0) { // 1st device tilt to 1st app tilt
					outlet(0,"/manager/tilt",x,y,z,n);
				}
				if (inlet == 1) { // 2nd device tilt to 2nd app tilt
					outlet(1,"/manager/tilt",x,y,z,n);
				}
			}
			if((glob.gMeta==2) || (glob.gMeta==3)) { // 1 device to 2 apps
				outlet(0,"/manager/tilt",x,y,z,n); // only send output to 1st outlet (left app)
			}
		}
//		else // add tilt-to-router-app code here if tilt is to be used internally for router selection
	}
}


function rHandle(x,y,z) {
// this function determines whether the current press count is zero (ie. only route key held)
// uses the 'routeWait' and 'route' messages to avoid switching outlets until no presses
// this deals with avoiding hanging notes in applications, or non-fired app changes in the router




		// when not in routing mode send the /key presses to the appropriate output
	if(routeWait == 0) {
		if(glob.gMeta == 0) { // addressing only 1 app, w/ only 1 device, or w/ a composite device
			if(inlet==0) outlet(0,"/manager/grid/key",x,y,z); //sends 1st device out left outlet
			else outlet(0,"/manager/grid/key",(x+((-glob.gridtiling+1)*glob.g1x)),(y+(glob.gridtiling*glob.g1y)),z); //sends 2nd device to 1st outlet offset
		}
		if(glob.gMeta == 1) { // when 2 devices are assigned to separate apps
			if(inlet==0) outlet(0,"/manager/grid/key",x,y,z); //sends 1st device out left outlet
			else outlet(1,"/manager/grid/key",x,y,z); //sends 2nd device out 2nd outlet
		}
		if(glob.gMeta == 2) { // horizontal tiling
			if(x<8) {
				outlet(0,"/manager/grid/key",x,y,z); //sends left half out first outlet
			}
			else outlet(1,"/manager/grid/key",(x-8),y,z); //sends right half out 2nd to left outlet
		}
		if(glob.gMeta == 3) { // vertical tiling
			if(y<8) {
				outlet(0,"/manager/grid/key",x,y,z); //sends left half out first outlet
			}
			else outlet(1,"/manager/grid/key",x,(y-8),z); //sends right half out 2nd to left outlet
		}
	}
	else rSelect(x,y,z); // when in route mode, send the grid input to rSelect function

	// when the count hits zero, execute the most recent change in 'route' status (ie. switch app now)
	if(c == 0) {

		routeWait = route; // update internal route setting to match physical key
		if(routeWaitHistory==1 && routeWait==0) newSelection(); // call the 'outlet2' now because we've left route mode.
		else if(routeWaitHistory==0 && routeWait==1) outlet(4,1); // switched to the router
		routeWaitHistory = routeWait; // update memory bit to new value
	}

}


function rSelect(x,y,z) {
// this function receives all key info when the device is in router mode
// here is where we handle the actual app switching, and format data output
// it remembers the last 2 pressed columns

	// match the device & quadrant of input presses
	if(inlet==glob.rDevice && (Math.floor(x/8)+(2*Math.floor(y/8)))==glob.rQuad) { // then it is in router quadrant

		// then shift values to normalise 0-7
		x = x-(8*(Math.floor(glob.rWidth/8)));
		y = y-(8*(Math.floor(glob.rHeight/8)));
		
/*
		if(y==0 && z==1) { // if top row lock left grid to the x value
			glob.selCurrent = x;

				// if history selection is same as current sel'n treat as a normal select
			if(glob.selHistory == glob.selCurrent) {
				glob.joined = 1;
				glob.rLock = 0;
			}
			else {
				glob.joined = 0;
				glob.rLock = 1;
			}
		}
		else if(y==1 && z==1) { // if 2nd row lock right grid to x value (need to update number of grids?)
			glob.selHistory = x;

				// if history selection is same as current sel'n treat as a normal select
			if(glob.selHistory == glob.selCurrent) {
				glob.joined = 1;
				glob.rLock = 0;
			}
			else {
				glob.joined = 0;
				glob.rLock = 1;
			}


		}
		else if(y>1) */{ // lower row press meaning absolute selection / multi-press double selection
				// update history to old current, but avoid history & current being the same
			if(z==1 && glob.selCurrent != x) glob.selHistory = glob.selCurrent;
//			glob.selHistory = glob.selCurrent;

				// start a count of how many presses in the router range
			rc = rc + ((z*2)-1);

			if(z==1 && rc==1) { // if only press so far, select single app
				glob.joined = 1;
				glob.selCurrent = x;
			}
			else if(z==1 && rc>1) { // if more than one press, set the newest press to selCurrent
				if(xGrid>8 || yGrid>8) glob.joined = 0;
				glob.selCurrent = x;
			}
			glob.rLock = 0;
		}
		
	if(z==1) outlet(4,1); // update router display when it changes

	}
}


function newSelection() {
	// this function is called when leaving route mode and all buttons have been released
	// it sends the current selection including info re: joined, & rLock.

	// then send a list out representing the last 2 selects
	if(glob.joined==1) outlet(2,glob.selCurrent)
	else outlet(2,glob.selCurrent,glob.selHistory)
	
	outlet(4,0); //return to play mode
}



// this function is run anytime there is input to the designated router key
function isRouter(z) { 
	route = z; // set the 'route' state to the status of the route key
	
	if(route==0) { // if the route key has just been released
		if(glob.joined == 1) { // if there is only 1 app being addressed
			glob.gMeta = 0; // only one application attached to full meta grid
			outlet(0,"/sys/size",xGrid,yGrid);
			}
		else { // 2 apps being addressed
				// if 2 devices, the two selected apps will be directed to each one
			if(g2x>0) { // if there are 2 devices physically present
				glob.gMeta = 1; // glob.selHistory to left grid, glob.selCurrent to right grid
				outlet(0,"/sys/size",glob.g1x,glob.g1y) // send /size to grid1
				outlet(1,"/sys/size",g2x,g2y); // send /size to grid2
			}

				// this determines how the device splitting will work if only 1 device
			else {
					//glob.gMeta: 0=singleapp, 1=2devices-to-2-apps, 2=h-split, 3=v-split
				if((glob.g1y==8) && (glob.glx == 8)) { // only 8x8 device (ie. 64)
					glob.gMeta = 0; // 1 device to 1 app
					outlet(0,"/sys/size",glob.g1x,glob.g1y); // echo size to output
				}
				if((glob.g1y==8) && (glob.g1x == 16)) { // horizontal 128
					glob.gMeta = 2; // horizontal split
					outlet(0,"/sys/size",(glob.g1x/2),glob.g1y);
					outlet(1,"/sys/size",(glob.g1x/2),glob.g1y);
				}
				if((glob.g1y==16) && (glob.g1x == 16)) { // 256
					glob.gMeta = (glob.gridtiling + 2); // sets mode for vertical or horizontal split
					outlet(0,"/sys/size",(glob.g1x/(-glob.gridtiling+2)),(glob.g1y/(glob.gridtiling+1)));
					outlet(1,"/sys/size",(glob.g1x/(-glob.gridtiling+2)),(glob.g1y/(glob.gridtiling+1)));
				}
				if((glob.g1y==16) && (glob.g1x == 8)) { // vertical 128
					glob.gMeta = 3; // vertical split
					outlet(0,"/sys/size",glob.g1x,(glob.g1y/2));
					outlet(1,"/sys/size",glob.g1x,(glob.g1y/2));
				}
			}
		}
	}
}


function manual(i,j) { // this function allows an integer index to overwrite the current routing (via mouse)

		// need to add a 'shift-click' option here for selecting 2 devices through the on-screen UI
		// problem is there's no way to know whether to split 2 devices, 1 devices vert/horz
		// will also need to duplicate the /sys/size messaging from the isRouter() function

	glob.joined = 1; // force devices to be joined as can only select 1 app via mouse
	glob.gMeta = 0; // only one application attached to full meta grid
	glob.selCurrent = i; // set the current app selection

	if(c==0) {
		newSelection();
		outlet(0,"/sys/size",xGrid,yGrid); // update size to full grid
		routeWaitHistory = 0; // clean-up > let memory bit know it's in app-mode too
	}
	else mWait = 1; // set the wait flag for a manual change

}


function tiling(i) {
		// 0=horizontal, 1=vertical
	glob.gridtiling = i;

		// here we re-calculate grid tiling after changing the horz/vert setting

	if (glob.gridtiling == 0) { // grids are joined horizontally
		xGrid = glob.g1x + g2x; // adds devices side by side for max-x
			// then we find the larger y-value of the 2 devices
			// is there a way to do this with a simple 'maximum' type command rather than a conditional?
			// something like: yGrid = maximum(glob.g1y,g2y);
		if(glob.g1y>g2y) yGrid = glob.g1y
		else yGrid = g2y
	}
	else { // grids are joined vertically
		yGrid = glob.g1y + g2y;
		if(glob.g1x>g2x) xGrid = glob.g1x
		else xGrid = g2x
	}
}




function mapping(x) {
		// sets mode as to whether currently mapping the route key.
	whichkey = x;
	if(whichkey==0) {
		newSelection();
	}
	else {
		outlet(4,2); // calls route-key location in led-router.js
	}
	
	routeWait = 0;
	routeWaitHistory = 0;
}

function setMapping(x,y,z,n) {
	// here we set a mapping key from a preset
	//if(glob.g1x<x && z==0) glob.rWidth = x-8; >> these are nice but have issues if devices not yet attached
	//else if(g2x<x && z==1) glob.rWidth = x-8;
	glob.rWidth = x;
	glob.rHeight = y;
	glob.rDevice = z; // set which device is the router
	glob.rQuad = n;
}