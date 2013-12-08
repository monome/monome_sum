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
				"name" : "synthitime.json",
				"bootpath" : "/Users/Trent/Documents/Monome/llllllll/smallbatch/batch",
				"patcherrelativepath" : "./batch",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}
