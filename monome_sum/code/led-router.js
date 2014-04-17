inlets = 2;
outlets = 2;

var lAll = 0;
var rGate = 1; // the status of the router gate, triggered 
var apps = 0; // bitmask of loaded apps


// Global (Max namespace) variables
glob = new Global("routinginfo");
glob.gMeta = 0;
glob.g1x = 0; // this is the x-dimension of the 1st attached device
glob.g1y = 0; // this is the y-dimension of the 1st attached device
glob.gridtiling = 0;
glob.rLock = 0; // whether the route page has locked values
glob.selHistory = 0;
glob.selCurrent = 0;
glob.rDevice = -1;
glob.rQuad = -1;
glob.joined = 1;
glob.rWidth = -1;
glob.rHeight = -1;


// need to have sOSC() args go to 't' to deal with /led/map command which takes address&10args
function sOSC(a,x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa) { // a=osc address, b-t = data


  // this entire function is enclosed inside of a if statement: if(rGate==1)
  if(rGate==1) { // only process the sOSC commands if in application mode

  // should create a call for /sys/info for apps that request it in case they don't respond to initialisation
	
	if(a=="/manager/grid/led/set") { // i:<x>, i:<y>, i:<state>
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
		  if(inlet==0) { // ignore messages from 2nd app
			if(x<glob.g1x && y<glob.g1y) { // the press is within the range of the left most device
				outlet(0,"/manager/grid/led/set",x,y,z);
			}
			else if(glob.gridtiling==0 && x>(glob.g1x-1)) outlet(1,"/manager/grid/led/set",(x-glob.g1x),y,z); // horizontal & outside 1st device range
			else if(glob.gridtiling==1 && y>(glob.g1y-1)) outlet(1,"/manager/grid/led/set",x,(y-glob.g1y),z); // vertical
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/set",x,y,z); // inlet0=outlet0
			else outlet(1,"/manager/grid/led/set",x,y,z); // inlet0=outlet0
		}
		else if(glob.gMeta==2) { // 1 device split horizontally
			if(inlet==0) {
				if(x<8) outlet(0,"/manager/grid/led/set",x,y,z); // stops overflow into 2nd quad
			}
			else outlet(0,"/manager/grid/led/set",(x+8),y,z);
		}
		else if(glob.gMeta==3) { // 1 device split vertically
			if(inlet==0) {
				if(y<8) outlet(0,"/manager/grid/led/set",x,y,z); // stops overflow into bottom quads
			}
			else outlet(0,"/manager/grid/led/set",x,(y+8),z);
		}
	}
	
	
	else if(a=="/manager/grid/led/all") { // i:<all state>
		if(x==0) lAll = 0;
		else lAll = 255;

		if(glob.gMeta==0) { // only one application so will be inlet==0 only
		  if(inlet==0) { // ignore messages from 2nd application
			outlet(0,"/manager/grid/led/all",x); // send to both outlets (even if only one attached)
			outlet(1,"/manager/grid/led/all",x);
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/all",x); // inlet0=outlet0
			else outlet(1,"/manager/grid/led/all",x);
		}
		else if(glob.gMeta==2) { // landcape128 from 2 apps
			if(inlet==0) { // left half of physical grid
				// send a /led/map of 1st quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/map",0,0,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
				if(glob.g1y>8) outlet(0,"/manager/grid/led/map",0,8,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
			}
			else { // right half of physical grid
				// send a /led/map of 2nd quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/map",8,0,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
				if(glob.g1y>8) outlet(0,"/manager/grid/led/map",8,8,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
			}
		}
		else if(glob.gMeta == 3) { // portrait128/256 from 2 apps
			if(inlet==0) { // top half of physical grid
				// send a /led/map to 1/2 quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/map",0,0,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
				if(glob.g1x>8) outlet(0,"/manager/grid/led/map",8,0,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
			}
			else { // bottom half of physical grid
				// send a /led/map of 3/4 quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/map",0,8,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
				if(glob.g1y>8) outlet(0,"/manager/grid/led/map",8,8,lAll,lAll,lAll,lAll,lAll,lAll,lAll,lAll);
			}
		}
	}
	
	else if(a=="/manager/grid/led/level/all") { // i:<all state>
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
			if(inlet==0) { // ignore messages from 2nd application
				outlet(0,"/manager/grid/led/level/all",x); // send to both outlets (even if only one attached)
				outlet(1,"/manager/grid/led/level/all",x);
			}
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/level/all",x); // inlet0=outlet0
			else outlet(1,"/manager/grid/led/level/all",x);
		}
		else if(glob.gMeta==2) { // landcape128 from 2 apps
			if(inlet==0) { // left half of physical grid
				// send a /led/map of 1st quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/level/map",0,0,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
				if(glob.g1y>8) outlet(0,"/manager/grid/led/level/map",0,8,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
			}
			else { // right half of physical grid
				// send a /led/map of 2nd quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/level/map",8,0,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
				if(glob.g1y>8) outlet(0,"/manager/grid/led/level/map",8,8,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
			}
		}
		else if(glob.gMeta == 3) { // portrait128/256 from 2 apps
			if(inlet==0) { // top half of physical grid
				// send a /led/map to 1/2 quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/level/map",0,0,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
				if(glob.g1x>8) outlet(0,"/manager/grid/led/level/map",8,0,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
			}
			else { // bottom half of physical grid
				// send a /led/map of 3/4 quad, set to 0 or 255 for on/off
				outlet(0,"/manager/grid/led/level/map",0,8,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
				if(glob.g1x>8) outlet(0,"/manager/grid/led/level/map",8,8,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x);
			}
		}
	}
	
	
	else if(a=="/manager/grid/led/map") { // i:<x-offset>, i:<y-offset>, i:[8 led/rows]
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
		  if(inlet==0) { // need to ignore 2nd application
			if((x<glob.g1x) && (y<glob.g1y)) outlet(0,"/manager/grid/led/map",x,y,z,n,o,p,q,r,s,t); // in range of 1st device then echo out
			else if(glob.gridtiling==0 && x>(glob.g1x-1)) outlet(1,"/manager/grid/led/map",(x-glob.g1x),y,z,n,o,p,q,r,s,t); // remove offset
			else if(glob.gridtiling==1 && y>(glob.g1y-1)) outlet(1,"/manager/grid/led/map",x,(y-glob.g1y),z,n,o,p,q,r,s,t); // remove offset
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/map",x,y,z,n,o,p,q,r,s,t); // echo out
			else outlet(1,"/manager/grid/led/map",x,y,z,n,o,p,q,r,s,t);
		}
		else if(glob.gMeta==2) { // 2 apps split horizontally
			if(x==0) { // only accept left-side maps
				if(inlet==0) outlet(0,"/manager/grid/led/map",0,y,z,n,o,p,q,r,s,t);
				else outlet(0,"/manager/grid/led/map",8,y,z,n,o,p,q,r,s,t); // shift to right
			}
		}
		else if(glob.gMeta == 3) { // horizontal mode
			if(y==0) { // only accept top-side maps
				if(inlet==0) outlet(0,"/manager/grid/led/map",x,0,z,n,o,p,q,r,s,t);
				else outlet(0,"/manager/grid/led/map",x,8,z,n,o,p,q,r,s,t); // shift to bottom
			}
		}
	}

	///////// VARBRIGHTS


	if(a=="/manager/grid/led/level/set") { // i:<x>, i:<y>, i:<level>
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
		  if(inlet==0) { // ignore messages from 2nd app
			if(x<glob.g1x && y<glob.g1y) { // the press is within the range of the left most device
				outlet(0,"/manager/grid/led/level/set",x,y,z);
			}
			else if(glob.gridtiling==0 && x>(glob.g1x-1)) outlet(1,"/manager/grid/led/level/set",(x-glob.g1x),y,z); // horizontal & outside 1st device range
			else if(glob.gridtiling==1 && y>(glob.g1y-1)) outlet(1,"/manager/grid/led/level/set",x,(y-glob.g1y),z); // vertical
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/level/set",x,y,z); // inlet0=outlet0
			else outlet(1,"/manager/grid/led/level/set",x,y,z); // inlet0=outlet0
		}
		else if(glob.gMeta==2) { // 1 device split horizontally
			if(inlet==0) {
				if(x<8) outlet(0,"/manager/grid/led/level/set",x,y,z); // stops overflow into 2nd quad
			}
			else outlet(0,"/manager/grid/led/level/set",(x+8),y,z);
		}
		else if(glob.gMeta==3) { // 1 device split vertically
			if(inlet==0) {
				if(y<8) outlet(0,"/manager/grid/led/level/set",x,y,z); // stops overflow into bottom quads
			}
			else outlet(0,"/manager/grid/led/level/set",x,(y+8),z);
		}
	}




	else if(a=="/manager/grid/led/level/map") { // ridiculous. sorry. please help me make this more elegant & faster?!?!
		if(glob.gMeta==0 && inlet==0) { // only one application so will be inlet==0 only
			if(x<glob.g1x && y<glob.g1y) outlet(0,"/manager/grid/led/level/map",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
			else if(glob.gridtiling==0 && x>(glob.g1x-1)) outlet(1,"/manager/grid/led/level/map",x-glob.g1x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
			else if(glob.gridtiling==1 && y>(glob.g1y-1)) outlet(1,"/manager/grid/led/level/map",x,y-glob.g1y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/level/map",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
			else outlet(1,"/manager/grid/led/level/map",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
		}
		else if(glob.gMeta==2) { // horizontal split
			if(x==0) { //any x-offset would push grid out of range
				if(inlet==0) outlet(0,"/manager/grid/led/level/map",0,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
				else outlet(0,"/manager/grid/led/level/map",8,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
			}
		}
		else if(glob.gMeta == 3) { // vertical split
			if(y==0) { //any x-offset would push grid out of range
				if(inlet==0) outlet(0,"/manager/grid/led/level/map",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
				else outlet(0,"/manager/grid/led/level/map",x,8,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa);
			}
		}
	}


	else if(a=="/manager/grid/led/row") { // i:<x-offset>, i:<y-row>, i:<bitmask>, i:<bitmask2>
		if(glob.gMeta==0) { // only one application so use inlet==0 only
			if(inlet==0) { // ignore second app
				if(glob.g1x==8) { // if the 1st device attached is 8wide
					if(x<8) { // and the /led/row message applies to that grid
						if(glob.gridtiling == 0) { // horizontal
							outlet(0,"/manager/grid/led/row",x,y,z); // send 1st bitmask to left grid
							outlet(1,"/manager/grid/led/row",x,y,n); // send 2nd bitmask to right grid
						}
						else { // vertical
							if(y < glob.g1y) outlet(0,"/manager/grid/led/row",x,y,z); // send 1st bitmask to left grid
							else outlet(1,"/manager/grid/led/row",x,y-glob.g1y,z,n);
						}
					}
					else if(glob.gridtiling == 0) { // there is an offset added to the message & horizontal
						outlet(1,"/manager/grid/led/row",(x-8),y,z,n); // send double-bitmask to right grid
					}
					else if(glob.gridtiling == 1 && y > glob.g1y) { // x-offset & vertical & below 1st device
						outlet(1,"/manager/grid/led/row",x,y-glob.g1y,z); // send double-bitmask to right grid
					}
				}
				else if(glob.g1x==16) { // if the 1st device attached is 16 wide
					if(y<glob.g1y) { // to deal with vertical mode, check if the y-offset pushes it to 2nd device
						if(x==0) { // and the /led/row applies to the left quad
							outlet(0,"/manager/grid/led/row",0,y,z,n); // send double bitmask to left grid
						}
						else if(x==8) { // and the /led/row applies to the right quad
							outlet(0,"/manager/grid/led/row",8,y,z); // send 1st bitmask to left grid
							if(glob.gridtiling == 0) outlet(1,"/manager/grid/led/row",0,y,n); // send 2nd bitmask to right grid
						}
						else if(x>8 && glob.gridtiling == 0) { // and the /led/row applies to the right grid
							outlet(1,"/manager/grid/led/row",(x-16),y,z,n); // send double bitmask to right grid
						}
					}
					else { // y offset is out of range of device 1, so send to device 2 minus offset
						if(x==0 && glob.gridtiling == 1) { // and the /led/row applies to the left quad
							outlet(1,"/manager/grid/led/row",0,y-glob.g1y,z,n); // send double bitmask to 2nd grid
						}
						else if(x==8 && glob.gridtiling == 1) { // and the /led/row applies to the right quad
							outlet(1,"/manager/grid/led/row",8,y-glob.g1y,z); // send 1st bitmask only
						}
					}
				}
			}
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/row",x,y,z,n);
			else outlet(1,"/manager/grid/led/row",x,y,z,n);
		}
		else if(glob.gMeta==2) { // horizontal split
			if(x==0) { //any x-offset would push grid out of range
				if(inlet==0) outlet(0,"/manager/grid/led/row",0,y,z); // trim second half to stop overflow
				else outlet(0,"/manager/grid/led/row",8,y,z);
			}
		}
		else if(glob.gMeta == 3) { // vertical split
			if(inlet==0) {
				if(y<8) { // make sure to stop overflow into bottom grid
					outlet(0,"/manager/grid/led/row",x,y,z,n); // can be double bitmask for full width
				}
			}
			else outlet(0,"/manager/grid/led/row",x,(y+8),z,n); // can be double bitmask for full width
		}
	}


	else if(a=="/manager/grid/led/col") { // i:<x-col>, i:<y-offset>, i:<bitmask>, i:<bitmask2>
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
		  if(inlet==0) { // ignore 2nd app
			if(glob.g1y==8) { // d0 is 8 high
				if(y==0 && glob.gridtiling == 0) { // no offset & horizontal
					if(x<glob.g1x) outlet(0,"/manager/grid/led/col",x,y,z);
					else outlet(1,"/manager/grid/led/col",x-glob.g1x,y,z);
				}
				else if(y==0 && glob.gridtiling == 0) { // no offset & vertical
					outlet(0,"/manager/grid/led/col",x,y,z);
					outlet(1,"/manager/grid/led/col",x,y,n);
				}
				else if(y==8 && glob.gridtiling == 0 && x>glob.g1x) outlet(1,"/manager/grid/led/col",x-glob.g1x,y,z);
				else if(y==8 && glob.gridtiling == 1) outlet(1,"/manager/grid/led/col",x,(y-8),z,n);
			}
			if(glob.g1y==16) { // device is 16 high
				if(y==0) { // from the top
 					if(glob.gridtiling == 0) { // horizontal (vertical is out of range here)
 						if(x<glob.g1x) outlet(0,"/manager/grid/led/col",x,0,z,n); // in d0 range
						else outlet(1,"/manager/grid/led/col",x-glob.g1x,0,z,n); // in d1 range
					}
				}
				else if(y==8) {
					if(glob.gridtiling == 0) { // horizontal
						if(x<glob.g1x) outlet(0,"/manager/grid/led/col",x,8,z);
						else outlet(1,"/manager/grid/led/col",x,8,z);
					}
					else { // vertical
						if(x<glob.g1x) {
							outlet(0,"/manager/grid/led/col",x,8,z);
							outlet(1,"/manager/grid/led/col",x,0,n);
						}
						else outlet(1,"/manager/grid/led/col",x,0,n);
					}
				}
				else if(y>8) { // bigger than 16 >> always on 2nd device
					if(glob.gridtiling == 1) outlet(1,"/manager/grid/led/col",x,(y-16),z,n);
				}
			}
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/col",x,y,z,n);
			else outlet(1,"/manager/grid/led/col",x,y,z,n);
		}
		else if(glob.gMeta==2) { // landcape128 from 2 apps
			if(inlet==0) {
				if(x==0) outlet(0,"/manager/grid/led/col",0,y,z,n); // stop 2nd half overflow
			}
			else if(x==0) outlet(0,"/manager/grid/led/col",8,y,z,n); //move 2nd app 8 to the right
		}
		else if(glob.gMeta == 3) { // portrait128/256 from 2 apps
			if(y==0) { // only allowed if no y-offset (as it would be out of range)
				if(inlet==0) outlet(0,"/manager/grid/led/col",x,0,z); // second bitmask is trimmed
				else outlet(0,"/manager/grid/led/col",x,8,z);
			}
		}	
	}


	else if(a=="/manager/grid/led/level/row") { // i:<x-offset>, i:<y-row>, i:<bitmask>, i:<bitmask2>
		if(glob.gMeta==0) { // only one application so use inlet==0 only
		  if(inlet==0) { // ignore second app
			if(glob.g1x==8) { // if the 1st device attached is 8wide
				if(x<8) { // and the /led/row message applies to that grid
					if(glob.gridtiling == 0) { // horizontal
						outlet(0,"/manager/grid/led/level/row",x,y,z,n,o,p,q,r,s,t); // send 1st bitmask to left grid
						outlet(1,"/manager/grid/led/level/row",x,y,z,u,v,w,aa,bb,cc,dd,ee); // send 2nd bitmask to right grid
					}
					else { // vertical
						if(y < glob.g1y) outlet(0,"/manager/grid/led/level/row",x,y,z,n,o,p,q,r,s,t); // send 1st bitmask to left grid
						else outlet(1,"/manager/grid/led/level/row",x,y-glob.g1y,u,v,w,aa,bb,cc,dd,ee);
					}
				}
				else if(glob.gridtiling == 0) { // there is an offset added to the message & horizontal
					outlet(1,"/manager/grid/led/level/row",(x-8),y,z,n,o,p,q,r,s,t,n); // send double-bitmask to right grid
				}
				else if(glob.gridtiling == 1 && y > glob.g1y) { // x-offset & vertical & below 1st device
					outlet(1,"/manager/grid/led/level/row",x,y-glob.g1y,z,n,o,p,q,r,s,t); // send double-bitmask to right grid
				}
			}
			if(glob.g1x==16) { // if the 1st device attached is 16 wide
				if(y<glob.g1y) { // to deal with vertical mode, check if the y-offset pushes it to 2nd device
					if(x==0) { // and the /led/level/row applies to the left quad
						outlet(0,"/manager/grid/led/level/row",0,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // send double bitmask to left grid
					}
					else if(x==8) { // and the /led/level/row applies to the right quad
						outlet(0,"/manager/grid/led/level/row",8,y,z,n,o,p,q,r,s,t); // send 1st bitmask to left grid
						if(glob.gridtiling == 0) outlet(1,"/manager/grid/led/level/row",0,y,u,v,w,aa,bb,cc,dd,ee); // send 2nd bitmask to right grid
					}
					else if(x>8 && glob.gridtiling == 0) { // and the /led/level/row applies to the right grid
						outlet(1,"/manager/grid/led/level/row",(x-16),y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // send double bitmask to right grid
					}
				}
				else { // y offset is out of range of device 1, so send to device 2 minus offset
					if(x==0 && glob.gridtiling == 1) { // and the /led/level/row applies to the left quad
						outlet(1,"/manager/grid/led/level/row",0,y-glob.g1y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // send double bitmask to 2nd grid
					}
					else if(x==8 && glob.gridtiling == 1) { // and the /led/level/row applies to the right quad
						outlet(1,"/manager/grid/led/level/row",8,y-glob.g1y,z,n,o,p,q,r,s,t); // send 1st bitmask only
					}
					
				}
			}
		  }
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/level/row",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
			else outlet(1,"/manager/grid/led/level/row",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
		}
		else if(glob.gMeta==2) { // horizontal split
			if(x==0) { //any x-offset would push grid out of range
				if(inlet==0) outlet(0,"/manager/grid/led/level/row",0,y,z,n,o,p,q,r,s,t); // trim second half to stop overflow
				else outlet(0,"/manager/grid/led/level/row",8,y,z,n,o,p,q,r,s,t);
			}
		}
		else if(glob.gMeta == 3) { // vertical split
			if(inlet==0) {
				if(y<8) { // make sure to stop overflow into bottom grid
					outlet(0,"/manager/grid/led/level/row",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // can be double bitmask for full width
				}
			}
			else outlet(0,"/manager/grid/led/level/row",x,(y+8),z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // can be double bitmask for full width
		}
	}


	else if(a=="/manager/grid/led/level/col") { // i:<x-col>, i:<y-offset>, i:<bitmask>, i:<bitmask2>
		if(glob.gMeta==0) { // only one application so will be inlet==0 only
			if(inlet==0) { // ignore 2nd app
				if(glob.g1y==8) { // d0 is 8 high
					if(y==0 && glob.gridtiling == 0) { // no offset & horizontal
						if(x<glob.g1x) outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t);
						else outlet(1,"/manager/grid/led/level/col",x-glob.g1x,y,z,n,o,p,q,r,s,t);
					}
					else if(y==0 && glob.gridtiling == 1) { // no offset & vertical
						outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t);
						outlet(1,"/manager/grid/led/level/col",x,y,u,v,w,aa,bb,cc,dd,ee);
					}
					else if(y==8 && glob.gridtiling == 0 && x>glob.g1x) outlet(1,"/manager/grid/led/level/col",x-glob.g1x,y,z,n,o,p,q,r,s,t);
					else if(y==8 && glob.gridtiling == 1) outlet(1,"/manager/grid/led/level/col",x,(y-8),z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
				}
				if(glob.g1y==16) { // device is 16 high
					if(y==0) { // from the top
	 					if(glob.gridtiling == 0) { // horizontal
	 						if(x<glob.g1x) outlet(0,"/manager/grid/led/level/col",x,0,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // in d0 range
							else outlet(1,"/manager/grid/led/level/col",x-glob.g1x,0,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // in d1 range
						}
						else { // vertical tiling
	 							outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t);
								//outlet(0,"/manager/grid/led/level/col",x,y,u,v,w,aa,bb,cc,dd,ee);
							}
							else { // first grid is 
								outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t);
								outlet(1,"/manager/grid/led/level/col",x,y,u,v,w,aa,bb,cc,dd,ee);	
							}
	 					}
					}
					else if(y==8) {
						if(glob.gridtiling == 0) { // horizontal
							if(x<glob.g1x) outlet(0,"/manager/grid/led/level/col",x,8,z,n,o,p,q,r,s,t);
							else outlet(1,"/manager/grid/led/level/col",x,8,z,n,o,p,q,r,s,t);
						}
						else { // vertical
							if(x<glob.g1x) {
								outlet(0,"/manager/grid/led/level/col",x,8,z,n,o,p,q,r,s,t);
								outlet(1,"/manager/grid/led/level/col",x,0,u,v,w,aa,bb,cc,dd,ee);
							}
							else outlet(1,"/manager/grid/led/level/col",x,0,u,v,w,aa,bb,cc,dd,ee);
						}
					}
					else if(y>8) { // bigger than 16 >> always on 2nd device
						if(glob.gridtiling == 1) outlet(1,"/manager/grid/led/level/col",x,(y-16),z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
					}
				}
			}
		}
		else if(glob.gMeta==1) { // 2 apps & 2 devices
			if(inlet==0) outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
			else outlet(1,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee);
		}
		else if(glob.gMeta==2) { // landcape128 from 2 apps
			if(inlet==0) {
				if(x<8) outlet(0,"/manager/grid/led/level/col",x,y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); // stop 2nd half overflow
			}
			else outlet(0,"/manager/grid/led/level/col",(x+8),y,z,n,o,p,q,r,s,t,u,v,w,aa,bb,cc,dd,ee); //move 2nd app 8 to the right
		}
		else if(glob.gMeta == 3) { // portrait128/256 from 2 apps
			if(y==0) { // only allowed if no y-offset (as it would be out of range)
				if(inlet==0) outlet(0,"/manager/grid/led/level/col",x,0,z,n,o,p,q,r,s,t); // second bitmask is trimmed
				else outlet(0,"/manager/grid/led/level/col",x,8,z,n,o,p,q,r,s,t);
			}
		}	
	}





	

	else if(a=="/manager/grid/led/intensity") { // i:<intensity>
		if(glob.gMeta==1) {
			if(inlet==0) outlet(0,"/manager/grid/led/intensity",x);
			else outlet(1,"/manager/grid/led/intensity",x);
		}
		else {
			if(inlet==0) outlet(0,"/manager/grid/led/intensity",x);
		}		
	}


	else if(a=="/manager/tilt/set") { // i:<n-sensor>, i:<state>
		if(glob.gMeta==1) {
			if(inlet==0) outlet(0,"/manager/tilt/set",x,y);
			else outlet(1,"/manager/tilt/set",x,y);
		}
		else {
			if(inlet==0) outlet(0,"/manager/tilt/set",x,y);
		}
	}
  }
}


function route(i) { // this function is called when the router changes modes
	if(i==0) { // if switching TO application mode
		clearDisplay();
		rGate = 1;
	}
	else if(i==1){ // switching TO the router
		rGate = 0;
		clearDisplay();
		drawRouter();
	}
	else if(i==2){ // setting the route-key location
		rGate = 0;
		clearDisplay();
		drawLocation();
	}	
}


function clearDisplay() { // this function simply sends a /led/all message to all devices
	outlet(0,"/manager/grid/led/all",0);
	outlet(1,"/manager/grid/led/all",0);
}


function drawRouter() { // draw the led display for route mode, and accept updates to 
		 // clear relevant quad -> unnecessary due to clearDisplay() being run first
//	outlet(glob.rDevice,"/manager/grid/led/map",glob.rQuad,0,0,0,0,0,0,0,0);

	if(glob.rLock == 1 && glob.joined == 1) { // if locked && both devices joined
		// only display a single top led
		outlet(glob.rDevice,"/manager/grid/led/set",glob.selCurrent+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2)),1);
	}
	else if(glob.rLock == 1 && glob.joined == 0) { // if locked && devices separate
		// display 2 leds up top
		outlet(glob.rDevice,"/manager/grid/led/set",glob.selCurrent+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2)),1);
		outlet(glob.rDevice,"/manager/grid/led/set",glob.selHistory+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2))+1,1);
	}
	else if(glob.rLock == 0 && glob.joined == 1) { // if unlocked && both devices joined
		// display full bar
		outlet(glob.rDevice,"/manager/grid/led/col",glob.selCurrent+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2)),255);
	}
	else if(glob.rLock == 0 && glob.joined == 0) { // if unlocked && devices separate
		// display 2 half bars
		outlet(glob.rDevice,"/manager/grid/led/col",glob.selCurrent+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2)),15);
		outlet(glob.rDevice,"/manager/grid/led/col",glob.selHistory+8*(glob.rQuad%2),8*(Math.floor(glob.rQuad/2)),240);
	}
	
		// then draw a full row displaying which cells are currently mappable to destinations
	outlet(glob.rDevice,"/manager/grid/led/row",8*(glob.rQuad%2),7+8*(Math.floor(glob.rQuad/2)),apps);
}


function drawLocation() {
		// check to make sure there is a route-key
		// then draw an led to show location
	if(glob.rDevice > -1) outlet(glob.rDevice,"/manager/grid/led/set",glob.rWidth,glob.rHeight,1);
}


function hasApp(x, b) { // receives the index of any cell with a currently stored app
	// receives [app index] [bool] from each app when it changes
	if(b) apps = apps | 1<<x; // set the bit
	else apps = apps & ~(1<<x); // clear the bit
}

