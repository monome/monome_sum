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
		"rect" : [ 772.0, 44.0, 647.0, 672.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Andale Mono",
		"gridonopen" : 0,
		"gridsize" : [ 18.0, 6.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-14",
					"items" : [ "vco", ",", "svf", ",", "fm" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 214.0, 158.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 72.0, 216.0, 158.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 53.0, 189.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 192.0, 150.0, 20.0 ],
					"text" : "flin"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 72.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 540.0, 66.0, 150.0, 20.0 ],
					"text" : "tempo"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 486.0, 66.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 486.0, 66.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 48.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 468.0, 48.0, 150.0, 20.0 ],
					"text" : "master settings"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 90.0, 150.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 90.0, 150.0, 20.0 ],
					"text" : "corners"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/corners" ],
					"id" : "obj-38",
					"maxclass" : "bpatcher",
					"name" : "serialosc.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"offset" : [ -80.0, -64.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 141.0, 493.0, 321.0, 36.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 54.0, 96.0, 36.0, 12.0 ],
					"varname" : "serialosc"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-187",
					"items" : [ "vco", ",", "svf", ",", "fm" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 52.0, 633.5, 158.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 224.0, 108.0, 158.0, 21.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-168",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 593.0, 606.0, 19.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 128.0, 19.0, 20.0 ],
					"text" : "y"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-166",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 463.0, 670.0, 19.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 108.0, 19.0, 20.0 ],
					"text" : "x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-164",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 712.0, 464.0, 25.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 168.0, 25.0, 20.0 ],
					"text" : "dy"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-162",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 546.0, 512.0, 25.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 148.0, 25.0, 20.0 ],
					"text" : "dx"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-158",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 526.5, 633.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 128.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-160",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 571.5, 633.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 128.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-153",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 411.0, 633.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 108.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-155",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 456.0, 633.5, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 108.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-148",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 494.0, 478.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 148.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-150",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 539.0, 478.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 148.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-141",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 654.0, 431.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 162.0, 168.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-138",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 699.0, 431.0, 50.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.0, 168.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-4",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 198.0, 96.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.0, 434.0, 167.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 432.0, 198.0, 33.0 ],
					"text" : "synthesis"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "bpatcher",
					"name" : "_synthitime.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 384.0, 128.0, 128.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 444.0, 605.0, 202.0 ],
					"varname" : "_synthitime"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 24.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 27.0, 167.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 5.0, 198.0, 33.0 ],
					"text" : "∆master"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.8, 0.4, 0.2 ],
					"id" : "obj-5",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 51.0, 56.0, 53.0, 34.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 30.0, 612.0, 624.0 ]
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "_synthitime.maxpat",
				"bootpath" : "/Users/Trent/Documents/Monome/llllllll/smallbatch/batch",
				"patcherrelativepath" : "./batch",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "poly.synthitime~.maxpat",
				"bootpath" : "/Users/Trent/Documents/Monome/llllllll/smallbatch/batch",
				"patcherrelativepath" : "./batch",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "serialosc.maxpat",
				"bootpath" : "/Applications/Max 6.1/patches",
				"patcherrelativepath" : "../../../../../../Applications/Max 6.1/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
