inlets = 2;
outlets = 6;

var c = 0; //'count' variable - how many are pressed?
var wait = 0; //true if count is non-zero > wait before changing mode
var now0 = new Array(16); //stores the state of each button 16x16
var now1 = new Array(16); //stores the state of each button 16x16 (grid2)
var route = 0; //whether the 15,0 button is pressed
var routeWait = 0; //if route is pressed
var routeWaitHistory = 0; //previous routeWait
// size of 1st device is global & broadcast
var g2x = 0;
var g2y = 0;
var xGrid = 16; // should initialise at 0
var yGrid = 8; // should initialise at 0
var whichkey = 0;
var whichrx = 0;
var whichry = 0;
var whichdev = -1;
var rWidth = -1;
var rHeight = -1;
var rMaster = -1;
var rToggle = 0;
var keyLocation = 0;

// Global (Max namespace) variables
glob = new Global("routinginfo");
glob.gMeta = 0;
glob.g1x = 16; // broadcast x-size of 1st device - should initialise at 0 for starters
glob.g1y = 8; // should initialise at 0
glob.gridtiling = 0;
glob.rLock = 0;
glob.selHistory = 0;
glob.selCurrent = 0;
glob.rDevice = -1;
glob.rQuad = -1;
glob.joined = 1;

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
				if((gly==8) && (glob.glx == 8)) { // only 8x8 device (ie. 64)
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
		if(inlet==0){
			if(z == 1) now0[x][y] = 1;
		}

		if(inlet==1){
			if(z == 1) now1[x][y] = 1;
		}
		
		
	// this section determines composite device size & chooses customised route key
	// then accumulates all presses excluding the router key

		if(whichkey==0) { // normal useage (not setting route key)
			if(glob.rDevice == -1) { // if no route key, don't check conditions, just route to output
				c = c + ((z*2)-1); // add number to current press count
				rHandle(x,y,z); // send to output handler
			}
			else { // if there is a route key..
				if(inlet==glob.rDevice && x==rWidth && y==rHeight) { // it is the router key
					isRouter(z); // run the split/spanner
				}
				else { // all other input
					c = c + ((z*2)-1);
					rHandle(x,y,z);
				}
			}
		}
		else { //route-key location setting. 
			if(z==1) { // responds to presses only - need to add 'none' when re-selecting same
				rWidth = x;	
				rHeight = y;
				glob.rDevice = inlet; // set which device is the router
				glob.rQuad = Math.floor(rWidth/8)+(2*Math.floor(rHeight/8));
			}
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
// uses the 'wait' and 'routeWait' and 'route' messages to avoid switching outlets until no presses
// this deals with avoiding hanging notes in applications, or non-fired app changes in the router

	// wait flag is high when count is zero (ie. no keys pressed)
	wait = !c

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



/*
	if((inlet==0 && (x/8)==rWidth0 && (y/8)==rHeight0) || (inlet==1 && (x/8)==rWidth1 && (y/8)==rHeight1)) { // then it is in router quadrant
		// data in here matches the router
	}
	else // data out here does not match the router quadrant
*/


	if(z==1) { //if the input is a press

		// if dynamically routing, shift glob.selCurrent into the glob.selHistory 
//		if(glob.rLock==0) glob.selHistory = glob.selCurrent; >> being handled inside the 'dynamic routing' ifs only.

		// match the device & quadrant of input presses
		if(inlet==glob.rDevice && (Math.floor(x/8)+(2*Math.floor(y/8)))==glob.rQuad) { // then it is in router quadrant

			// then shift values to normalise 0-7
			x = x-(8*(Math.floor(rWidth/8)));
			y = y-(8*(Math.floor(rHeight/8)));
			
			glob.rLock = 1; // assume lock. reset to no-lock inside lower else.
			if(y==0) glob.selCurrent = x; // if top row lock left grid to the x value
			else if(y==1) glob.selHistory = x; // if 2nd row lock right grid to x value (need to update number of grids?)
			else {
				glob.selHistory = glob.selCurrent;
				glob.selCurrent = x;
				glob.rLock = 0;
			}
		}
		else rMaster(x,y,1); // data out here does not match the router quadrant
	}
	else { // z==0: is a release >> need to check it isn't a route-quadrant input
		if(inlet==glob.rDevice && (Math.floor(x/8)+(2*Math.floor(y/8)))==glob.rQuad) {} // ignore router quad
		else rMaster(x,y,0); // if not a router quadrant release then send to rMaster out
	}
	
	// then send a list out representing the last 2 selects
	if(glob.joined==1) outlet(2,glob.selCurrent)
	else outlet(2,glob.selCurrent,glob.selHistory)
}

/*
function rMaster(x,y,z) {
	// here send out the non-routing presses for a 'master page' that displays when holding router
	// trick here is to manage the arrangements of quads elegantly
	
	// if 1 8x8 grid, nothing will arrive
	// if no router, there can be no master page
	// 
	// always look for a quad on the same device as the router
	
	if(keyLocation==1) { // router is on device0 >> look for a free quad on device0
		if(glob.g1x>8) { // if there is a free horizontal neighbour
			if(keyleftright==0) outlet(4,(x-8),y,z) // and router at left, send right quad out starting x=0
			else outlet(4,x,y,z)
		}
		else if(glob.g1y>8) { // if no additional width, look for a vertical 128
			if(keyupdown==0) outlet(4,x,(y-8),z)
			else outlet(4,x,y,z)
		}
		else if(g2x>0) outlet(4,x,y,z) // device0 is 8x8. allow device1 to control master
	}
	else if(keyLocation==2) { // if router is on 2nd device
		if(g2x>8) { // if there is a free horizontal neighbour
			if(keyleftright==0) outlet(4,(x-8),y,z) // and router at left, send right quad out starting x=0
			else outlet(4,x,y,z)
		}
		else if(g2y>8) { // if no additional width, look for a vertical 128
			if(keyupdown==0) outlet(4,x,(y-8),z)
			else outlet(4,x,y,z)
		}
		else outlet(4,x,y,z) // device1 is 8x8. allow device0 to control master
	}	
	else { // router is on both grids. look for free grid on device0
		if(glob.g1x>8) {
			if(keyleftright==0) outlet(4,(x-8),y,z)
			else outlet(4,x,y,z)
		}
		else if(glob.g1y>8) { // if no additional width, look for a vertical 128
			if(keyupdown==0) outlet(4,x,(y-8),z)
			else outlet(4,x,y,z)
		}
		if(g2x>8) { // if device0 is 8x8 look for a larger device1
			if(keyleftright==0) outlet(4,(x-8),y,z) // and router at left, send right quad out starting x=0
			else outlet(4,x,y,z)
		}
		else if(g2y>8) { // if no additional width, look for a vertical 128
			if(keyupdown==0) outlet(4,x,(y-8),z)
			else outlet(4,x,y,z)
		}
	}
}
*/


// this function is run anytime there is input to the designated router key
function isRouter(z) { 
	route = z; // set the 'route' state to the status of the route key
	wait = !c; // 'wait' is true when no other keys are pressed
	routeWait = route; // set the 'routeWait' command to the new 'route' state
	if(route==0) { // if the route key has just been released
		if(wait == 1) { // if there are no keys pressed when the router is released...

			glob.joined = 1; // all available grids are routed to glob.selCurrent
			glob.gMeta = 0; // only one application attached to full meta grid
			outlet(0,"/sys/size",xGrid,yGrid);
			}
		else { // if there are keys held when the route-key is released
			if(c==1) { // if only one key, then treat as normal, updating to one app w/ composite grid
				glob.joined = 1;
				glob.gMeta = 0; // only one application attached to full meta grid
				outlet(0,"/sys/size",xGrid,yGrid);
			}
			else { // if more than 1 key are held
				glob.joined = 0; // devices are not joined, and dealt with separately

	// if 2 devices the two selected apps will be directed to each one
				
				if(g2x>0) { // if there are 2 devices physically present
					glob.gMeta = 1; // glob.selHistory to left grid, glob.selCurrent to right grid
					outlet(0,"/sys/size",glob.g1x,glob.g1y) // send /size to grid1
					outlet(1,"/sys/size",g2x,g2y); // send /size to grid2
				}

	// this determines how the device splitting will work if only 1 device

				else { // only 1 device present

	//glob.gMeta: 0=singleapp, 1=2devices-to-2-apps, 2=h-split, 3=v-split

					if((glob.gly==8) && (glob.glx == 8)) { // only 8x8 device (ie. 64)
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
		}
	}
	rGates(routeWait); // tell max if 'routeWait' flag has changed as a result
	outlet(4, routeWait); // send routeWait status out 4th outlet
}


function rGates(i) { // this function is run to update max of router status
	if(routeWaitHistory!=i) outlet(3, i); // send routeWait status out 3rd outlet, only when it changes
	routeWaitHistory = i; // set the 'history' to the current version
}


function manual(i) { // this function allows an integer index to overwrite the current routing
	glob.joined = 1; // force devices to be joined as can only select 1 app via mouse
	glob.gMeta = 0; // only one application attached to full meta grid
	outlet(2, i); // send inputted integer out as the new app selection
	outlet(0,"/sys/size",xGrid,yGrid); // update size to full grid
	outlet(3, 0); // let patch know it's in app-mode
	routeWaitHistory = 0; // clean-up > let memory bit know it's in app-mode too
}


function tiling(i) {
		// 0=horizontal, 1=vertical
	glob.gridtiling = i;
}


function setRLoc(x) {
	if(x==0) { // when releasing, resend the current selection >> should force grid led update
		if(glob.joined==1) outlet(2,glob.selCurrent)
		else outlet(2,glob.selCurrent,glob.selHistory)
	}
//	else() // currently in route-key-mapping mode.
// need to trigger a redraw of the current map location > probably need to send a message in max to the led-route.js	
}



function mapping(x) {
	whichkey = x;
}
