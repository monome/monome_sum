{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 201.0, 673.0, 600.0, 426.0 ],
		"bglocked" : 0,
		"defrect" : [ 201.0, 673.0, 600.0, 426.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ch",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 187.0, 47.0, 68.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "destination",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 71.0, 47.0, 68.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"textcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15, ",", 16 ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"patching_rect" : [ 187.0, 60.0, 29.0, 17.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"textcolor2" : [ 0.0, 0.0, 0.0, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"items" : [ "AU DLS Synth 1", ",", "IAC Driver Bus 1", ",", "Faderport", ",", "from MaxMSP 1", ",", "from MaxMSP 2" ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"patching_rect" : [ 71.0, 60.0, 115.0, 17.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r g_output",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 0.0, -45.0, 57.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s mac",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 198.0, 117.0, 36.0, 17.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s map",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 116.0, 115.0, 36.0, 17.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "MIDI output",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 53.0, 25.0, 113.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"outlettype" : [ "bang" ],
					"numinlets" : 1,
					"patching_rect" : [ 54.0, 60.0, 16.0, 16.0 ],
					"id" : "obj-9",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gome_init",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 217.0, -96.0, 62.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r gome_midi_refresh",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 0,
					"patching_rect" : [ 72.0, -114.0, 106.0, 17.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 0",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 216.0, -55.0, 60.0, 17.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "midiinfo",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 93.0, -38.0, 46.0, 17.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"outlettype" : [ "bang" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 97.0, -63.0, 52.0, 17.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"bgcolor" : [ 0.290196, 0.082353, 0.309804, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 39.0, 5.0, 342.0, 36.0 ],
					"id" : "obj-15",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"border" : 1,
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ -17.0, 14.0, 374.0, 253.0 ],
					"id" : "obj-16",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 1 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
