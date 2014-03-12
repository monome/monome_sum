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
		"rect" : [ 557.0, 405.0, 640.0, 480.0 ],
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
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 72.0, 78.0, 111.0, 20.0 ],
					"text" : "r globalBpmOut"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "/b_mlr" ],
					"id" : "obj-27",
					"maxclass" : "bpatcher",
					"name" : "serialosc.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"offset" : [ -91.0, -64.0 ],
					"outlettype" : [ "", "int", "", "" ],
					"patching_rect" : [ 15.0, 15.0, 309.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 15.0, 15.0, 93.0, 26.0 ],
					"varname" : "serialosc"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "serialosc.maxpat",
				"bootpath" : "/Applications/Max 6.1/patches",
				"patcherrelativepath" : "../../../../../../Applications/Max 6.1/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
