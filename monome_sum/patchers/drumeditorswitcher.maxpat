{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x86"
		}
,
		"rect" : [ 413.0, 90.0, 575.0, 254.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"args" : [ 15 ],
					"hidden" : 1,
					"id" : "obj-3",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[14]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 8.0, 150.0, 20.0 ],
					"text" : "release window flags"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 141.0, 6.0, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 594.5, 207.0, 291.0, 18.0 ],
					"text" : "window flags grow, window flags zoom, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 4,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 906.5, 221.0, 99.0, 58.0 ],
					"text" : "window flags nogrow, window flags nozoom, window exec"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 69.0, 19.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 992.0, 89.0, 57.0, 20.0 ],
					"text" : "onebang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 39.0, 32.5, 18.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-43",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 13.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"patching_rect" : [ 742.75, 68.0, 32.5, 20.0 ],
					"text" : "t i b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 663.5, 133.0, 191.0, 20.0 ],
					"text" : "sprintf script show drumeditor[%d]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 887.0, 45.0, 34.0, 20.0 ],
					"text" : "t b 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 887.0, 13.0, 60.0, 20.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 888.0, 104.0, 73.0, 20.0 ],
					"text" : "counter"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 888.0, 75.0, 46.0, 20.0 ],
					"text" : "uzi 15"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 863.0, 133.0, 186.0, 20.0 ],
					"text" : "sprintf script hide drumeditor[%d]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 14 ],
					"hidden" : 1,
					"id" : "obj-21",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[13]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 12 ],
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[12]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 11 ],
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[11]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 10 ],
					"hidden" : 1,
					"id" : "obj-18",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[10]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 9 ],
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[9]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 8 ],
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[8]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 7 ],
					"hidden" : 1,
					"id" : "obj-15",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[7]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 6 ],
					"hidden" : 1,
					"id" : "obj-14",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[6]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 5 ],
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[5]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 4 ],
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[4]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 3 ],
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[3]"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 2 ],
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[2]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 838.0, 181.0, 69.0, 20.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"args" : [ 1 ],
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "drumeditor.maxpat",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 115.25, 534.0, 221.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 17.0, 46.5, 550.0, 196.0 ],
					"varname" : "drumeditor[0]"
				}

			}
, 			{
				"box" : 				{
					"border" : 1,
					"bordercolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"borderoncolor" : [ 0.701961, 0.701961, 0.701961, 1.0 ],
					"clicktabcolor" : [ 1.0, 0.8, 0.4, 0.7 ],
					"clicktextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : "Andale Mono",
					"fontsize" : 9.0,
					"hovertabcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"htabcolor" : [ 1.0, 0.8, 0.4, 0.7 ],
					"htextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-34",
					"margin" : 10,
					"maxclass" : "tab",
					"multiline" : 0,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 15.0, 63.75, 534.0, 28.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 14.5, 547.0, 29.0 ],
					"rounded" : 0.0,
					"spacing_x" : 2.0,
					"spacing_y" : 2.0,
					"tabcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"tabs" : [ "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15" ],
					"truncate" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.8, 0.8, 0.8, 0.6 ],
					"border" : 1,
					"bordercolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"id" : "obj-45",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 789.0, 243.0, 36.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 47.0, 545.0, 192.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.2 ],
					"bordercolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 804.0, 258.0, 36.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 9.0, 557.0, 236.0 ],
					"rounded" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ]
	}

}
