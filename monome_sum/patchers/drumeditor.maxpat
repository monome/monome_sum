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
		"rect" : [ 4.0, 44.0, 1676.0, 980.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.0,
		"default_fontface" : 0,
		"default_fontname" : "Helvetica Neue",
		"gridonopen" : 0,
		"gridsize" : [ 18.0, 6.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 0,
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
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 108.0, 138.0, 33.0, 19.0 ],
					"text" : "mtof"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 144.0, 186.0, 70.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 18.0, 533.0, 82.0, 19.0 ],
					"text" : "727.17 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 144.0, 162.0, 95.0, 19.0 ],
					"presentation_rect" : [ 18.0, 509.0, 0.0, 0.0 ],
					"text" : "sprintf set %f ms"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.8, 0.4, 1.0 ],
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x86"
						}
,
						"rect" : [ 416.0, 221.0, 703.0, 646.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 13.0,
						"default_fontface" : 0,
						"default_fontname" : "Lekton-Bold",
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 738.0, 342.0, 213.0, 19.0 ],
									"restore" : [ 378 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::volume @invisible 1",
									"varname" : "u574006553"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 17,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 2,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 3,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 4,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 5,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 6,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : "reserve",
												"value" : [ 68, 0.0, -0.183673, 3.297959, 6271.926758, 3.053061, 16.0, 74.0, 1, 0, 1, 100.0, 4.0, 0.5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 8,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 9,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 10,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 11,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 12,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 13,
												"value" : [ 5, 0.0, 0.0, 0.0, 150.0, 1.644444, 0.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 14,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
, 											{
												"key" : 15,
												"value" : [ 0, 0.0, 0.0, 0.0, 130.81279, 0.881633, 1.0, 0.0, 0.016949, 0.016949, -0.016949, 378.0, 0.19339, 0, 1.0, 727.167358, 0.05, -0.725169 ]
											}
 ]
									}
,
									"color" : [ 1.0, 0.4, 0.4, 1.0 ],
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 612.0, 540.0, 94.0, 19.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll drumSounds"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 612.0, 510.0, 71.0, 20.0 ],
									"text" : "prepend #1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 828.0, 444.0, 229.0, 19.0 ],
									"restore" : [ -0.725169 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::env-shape @invisible 1",
									"varname" : "u653006555"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 810.0, 420.0, 226.0, 19.0 ],
									"restore" : [ 0.05 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::env-slope @invisible 1",
									"varname" : "u711006557"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 792.0, 396.0, 230.0, 19.0 ],
									"restore" : [ 727.167358 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::env-length @invisible 1",
									"varname" : "u897006559"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 18,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 594.0, 474.0, 248.5, 19.0 ],
									"text" : "pak i f 0. f 0. 0. 0. 0. 0. 0. 0. f f i 1. f f f"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 756.0, 366.0, 229.0, 19.0 ],
									"restore" : [ 0.19339 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::resonance @invisible 1",
									"varname" : "u026006561"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 720.0, 318.0, 224.0, 19.0 ],
									"restore" : [ -0.016949 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::env2mod @invisible 1",
									"varname" : "u202006563"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 702.0, 294.0, 217.0, 19.0 ],
									"restore" : [ 0.016949 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::envtofilt @invisible 1",
									"varname" : "u444006565"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 684.0, 270.0, 229.0, 19.0 ],
									"restore" : [ 0.016949 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::envtopitch @invisible 1",
									"varname" : "u979006567"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 666.0, 246.0, 221.0, 19.0 ],
									"restore" : [ 0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::fm-index @invisible 1",
									"varname" : "u858006569"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 648.0, 222.0, 217.0, 19.0 ],
									"restore" : [ 1.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::fmtimes @invisible 1",
									"varname" : "u660006571"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 630.0, 198.0, 228.0, 19.0 ],
									"restore" : [ 0.881633 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::svf-morph @invisible 1",
									"varname" : "u660006573"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 612.0, 174.0, 217.0, 19.0 ],
									"restore" : [ 150.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::cutoffhz @invisible 1",
									"varname" : "u094006575"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 594.0, 150.0, 233.0, 19.0 ],
									"restore" : [ 0.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::waveshape @invisible 1",
									"varname" : "u852006577"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 540.0, 78.0, 199.0, 19.0 ],
									"restore" : [ 5 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::note @invisible 1",
									"varname" : "u295006579"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 558.0, 102.0, 204.0, 19.0 ],
									"restore" : [ 0.0 ],
									"saved_object_attributes" : 									{
										"parameter_enable" : 0
									}
,
									"text" : "pattr @bindto parent::noise @invisible 1",
									"varname" : "u497006581"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 11 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 12 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 17 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 3 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 4 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 5 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 6 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 7 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 8 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 9 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 10 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 16 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 15 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-86", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 774.0, 432.0, 79.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Lekton-Bold",
						"default_fontsize" : 13.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Lekton-Bold",
						"fontsize" : 13.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p store-in-coll",
					"varname" : "patcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 13.0,
					"frgb" : 0.0,
					"id" : "obj-216",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.0, 30.0, 51.0, 36.0 ],
					"presentation" : 1,
					"presentation_linecount" : 6,
					"presentation_rect" : [ 515.0, 93.0, 19.0, 94.0 ],
					"text" : "volume"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-36",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 774.0, 114.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 517.0, 6.0, 14.0, 180.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x86"
						}
,
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 166.0, 69.0, 19.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 154.0, 32.5, 19.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 128.0, 32.5, 17.0 ],
									"text" : "#1\n"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 11.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 100.0, 57.0, 19.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 245.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 122.0, 72.0, 30.0, 19.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "Arial",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p nr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 774.0, 360.0, 66.0, 19.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-22",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 772.0, 302.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 110.0, 30.0, 116.0, 24.0 ],
					"text" : "#1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-212",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 152.0, 102.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 513.0, 6.0, 18.0, 180.0 ],
					"setminmax" : [ 1.0, 800.0 ],
					"settype" : 0,
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "volume"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.0, 222.0, 150.0, 19.0 ],
					"text" : "<- value stored in pattr"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-23",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 990.0, 12.0, 365.0, 186.0 ],
					"text" : "below are the note input handlers for each app. they were originally 1 poly~ with dynamic voice handling but there were issues with apps stealing notes in a non-logical way.\n\nthe voice count has been chosen for the most logical use of processing power.\n\nthe poly~ object:\nleft inlet is for target messages & the main parameter list\n\nmiddle inlet updates parameters whenever there's a change in the UI but before a new note is triggered\n\nright inlet: receives updates as to the current beams state"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-15",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 30.0, 150.0, 45.0 ],
					"text" : "a bunch of panels for the subtle gradient over each slider"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-43",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 324.0, 222.0, 50.0, 19.0 ],
					"varname" : "fmtimes"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 642.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 213.0, 124.0, 74.0, 19.0 ],
					"text" : "env->"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-98",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 756.0, 90.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 124.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-63",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 642.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 124.0, 59.0, 18.0 ],
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "envtofilt"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 306.0, 102.0, 32.5, 19.0 ],
					"text" : "+ 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 42.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 212.0, 6.0, 74.0, 19.0 ],
					"text" : "env->"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 156.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 469.0, 6.0, 60.0, 19.0 ],
					"text" : "env->"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-39",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 594.0, 19.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.0, 124.0, 74.0, 19.0 ],
					"text" : "Q"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-99",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 288.0, 396.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 466.0, 82.0, 65.0, 19.0 ],
					"text" : "slope"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-97",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.0, 396.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 404.0, 82.0, 60.0, 19.0 ],
					"text" : "shape"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.0, 299.0, 44.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 213.0, 66.0, 60.0, 19.0 ],
					"text" : "noise"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-81",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.0, 72.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 6.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-80",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 72.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 387.0, 82.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-79",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 126.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 82.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-77",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 90.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 124.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-76",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.0, 126.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 6.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-75",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 90.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 66.0, 59.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.0, 222.0, 37.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 221.0, 88.0, 37.0, 19.0 ],
					"text" : "sine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 118.0, 222.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 161.0, 88.0, 50.0, 19.0 ],
					"text" : "square"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 222.0, 37.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 88.0, 37.0, 19.0 ],
					"text" : "sine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 52.0, 222.0, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 118.0, 88.0, 30.0, 19.0 ],
					"text" : "tri"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 222.0, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 62.0, 87.0, 30.0, 19.0 ],
					"text" : "saw"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 114.0, 30.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 50.0, 72.0, 19.0 ],
					"text" : "0 %"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-128",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 432.0, 42.0, 63.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 447.0, 50.0, 63.0, 19.0 ],
					"text" : "FM index"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 162.0, 116.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 28.0, 102.0, 19.0 ],
					"text" : "10 Hz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 456.0, 70.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 168.0, 82.0, 19.0 ],
					"text" : "727.17 ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 396.0, 396.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 461.0, 168.0, 67.0, 19.0 ],
					"text" : "length"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-54",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 162.0, 384.0, 24.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 233.0, 146.0, 33.0, 19.0 ],
					"text" : "LP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-53",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 126.0, 384.0, 24.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 179.0, 146.0, 31.0, 19.0 ],
					"text" : "BR"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 90.0, 384.0, 24.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.0, 146.0, 31.0, 19.0 ],
					"text" : "HP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-51",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 384.0, 24.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.0, 146.0, 32.0, 19.0 ],
					"text" : "BP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 384.0, 24.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 7.0, 146.0, 33.0, 19.0 ],
					"text" : "LP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 42.0, 96.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 416.0, 28.0, 118.0, 19.0 ],
					"text" : "FM multiplier"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 294.0, 264.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 28.0, 89.0, 19.0 ],
					"text" : "1.00 x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 108.0, 63.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 200.0, 28.0, 50.0, 19.0 ],
					"text" : " pitch"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-74",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 72.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 168.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-73",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 108.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 50.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-72",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 126.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 28.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-71",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.0, 108.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 28.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-70",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 720.0, 108.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 88.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-69",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 756.0, 72.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 146.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bordercolor" : [ 0.5, 0.5, 0.5, 0.0 ],
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-24",
					"ignoreclick" : 1,
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 558.0, 56.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 168.0, 50.0, 19.0 ],
					"triangle" : 0,
					"varname" : "cutoffhz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"frgb" : 0.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 456.0, 50.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 168.0, 71.0, 19.0 ],
					"text" : "cutoff"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-61",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 42.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 6.0, 59.0, 18.0 ],
					"setminmax" : [ -4.0, 4.0 ],
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "envtopitch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-48",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 433.0, 156.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 6.0, 59.0, 18.0 ],
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "env2mod"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-46",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 588.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 132.0, 124.0, 59.0, 18.0 ],
					"setminmax" : [ 0.05, 0.99 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "resonance"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 354.0, 68.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 122.0, 97.0, 24.0 ],
					"text" : "filter"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-3",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 240.0, 187.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 88.0, 245.0, 18.0 ],
					"setminmax" : [ 0.0, 4.0 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "waveshape"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 684.0, 186.0, 59.5, 19.0 ],
					"restore" : 					{
						"cutoffhz" : [ 150.0 ],
						"env-length" : [ 727.167358 ],
						"env-shape" : [ -0.725169 ],
						"env-slope" : [ 0.05 ],
						"env2mod" : [ -0.016949 ],
						"envtofilt" : [ 0.016949 ],
						"envtopitch" : [ 0.016949 ],
						"fm-index" : [ 0 ],
						"fm-mult" : [ 0 ],
						"fmtimes" : [ 1.0 ],
						"noise" : [ 0.0 ],
						"note" : [ 5 ],
						"resonance" : [ 0.19339 ],
						"svf-filt" : [ 150.0 ],
						"svf-morph" : [ 0.881633 ],
						"volume" : [ 378 ],
						"waveshape" : [ 0.0 ]
					}
,
					"text" : "autopattr",
					"varname" : "u801006639"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-161",
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 648.0, 186.0, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.0, 90.0, 90.0, 19.0 ],
					"text" : "sprintf set %i %"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 138.0, 96.0, 19.0 ],
					"text" : "sprintf set %d Hz"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.0, 432.0, 95.0, 19.0 ],
					"text" : "sprintf set %f ms"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 294.0, 432.0, 32.5, 19.0 ],
					"text" : "!/ 1."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "float" ],
					"patching_rect" : [ 294.0, 462.0, 32.5, 19.0 ],
					"text" : "t b f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "float" ],
					"patching_rect" : [ 504.0, 432.0, 46.0, 19.0 ],
					"text" : "t b b f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-102",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 432.0, 60.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 50.0, 245.0, 18.0 ],
					"setminmax" : [ 0.0, 100.0 ],
					"settype" : 0,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "fm-index"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-101",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 396.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 168.0, 245.0, 18.0 ],
					"setminmax" : [ 1.0, 2000.0 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "env-length"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-100",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 504.0, 396.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 387.0, 82.0, 59.0, 18.0 ],
					"setminmax" : [ -0.995, 0.995 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "env-shape"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 468.0, 528.0, 98.0, 19.0 ],
					"text" : "sprintf 2 %f 0. %f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 360.0, 492.0, 32.5, 19.0 ],
					"text" : "/ 2."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 360.0, 432.0, 32.5, 19.0 ],
					"text" : "t f f"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 360.0, 528.0, 104.0, 19.0 ],
					"text" : "sprintf 1 %f 1.4 %f"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-49",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 402.0, 180.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 146.0, 245.0, 18.0 ],
					"setminmax" : [ 0.0, 4.0 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "svf-morph"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-44",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 306.0, 66.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 28.0, 245.0, 18.0 ],
					"setminmax" : [ -4.0, 4.0 ],
					"settype" : 0,
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "fm-mult"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 324.0, 192.0, 33.0, 19.0 ],
					"text" : "/ 16."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.0, 240.0, 85.0, 19.0 ],
					"text" : "sprintf set %f x"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 306.0, 132.0, 32.5, 19.0 ],
					"text" : "t 1 i"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Helvetica Neue",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 306.0, 162.0, 33.0, 19.0 ],
					"text" : "<< 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 270.0, 360.0, 87.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 80.0, 119.0, 24.0 ],
					"text" : "envelope"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 306.0, 12.0, 107.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 4.0, 120.0, 24.0 ],
					"text" : "modulation"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 198.0, 68.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 64.0, 125.0, 24.0 ],
					"text" : "timbre"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"frgb" : 0.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.0, 12.0, 59.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 4.0, 121.0, 24.0 ],
					"text" : "pitch"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-14",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 102.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 28.0, 245.0, 18.0 ],
					"setminmax" : [ 0.0, 110.0 ],
					"settype" : 0,
					"signed" : 1,
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "note"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-105",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 252.0, 396.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 450.0, 82.0, 59.0, 18.0 ],
					"setminmax" : [ 0.01, 0.95 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "env-slope"
				}

			}
, 			{
				"box" : 				{
					"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 36.358368, 1.4, 0, -0.725169, 727.167358, 0.0, 0, -0.725169 ],
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 0.0 ],
					"bordercolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"clickadd" : 0,
					"clickmove" : 0,
					"clicksustain" : 0,
					"domain" : 2000.0,
					"gridcolor" : [ 0.501961, 0.501961, 0.501961, 0.5 ],
					"id" : "obj-59",
					"ignoreclick" : 1,
					"linecolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"maxclass" : "function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 570.0, 108.0, 50.0 ],
					"pointcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 104.0, 245.0, 60.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"id" : "obj-139",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 648.0, 216.0, 36.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-6",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 294.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 195.0, 66.0, 59.0, 18.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "noise"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-68",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 684.0, 90.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 168.0, 245.0, 14.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"border_bottom" : 0,
					"border_left" : 0,
					"border_right" : 0,
					"border_top" : 0,
					"contdata" : 1,
					"ghostbar" : 75,
					"id" : "obj-26",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 18.0, 474.0, 90.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.0, 168.0, 245.0, 18.0 ],
					"setminmax" : [ 150.0, 9000.0 ],
					"slidercolor" : [ 1.0, 0.8, 0.4, 1.0 ],
					"thickness" : 1,
					"varname" : "svf-filt"
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.85 ],
					"border" : 1,
					"bordercolor" : [ 1.0, 1.0, 1.0, 0.75 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 0.4 ],
					"id" : "obj-82",
					"maxclass" : "panel",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 666.0, 156.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 104.0, 245.0, 60.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"angle" : 90.0,
					"bgcolor" : [ 0.901961, 0.901961, 0.901961, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"grad1" : [ 1.0, 1.0, 1.0, 0.6 ],
					"grad2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-83",
					"maxclass" : "panel",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 468.0, 606.0, 36.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 264.0, 104.0, 245.0, 60.0 ],
					"rounded" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-27",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1442.0, 612.0, 206.0, 141.0 ],
					"text" : "this whole section is for manually editing drum sounds. this should be implemented as an instance of the full synthitime patch where you can visually edit the sound params for each drum and see a graphical representation thereof"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1460.0, 798.0, 565.0, 18.0 ],
					"text" : "30 0.2 1. 3.99 970. 0.3 11.55 0.02 0.7 0.1 2.5 250. 0.9 0 1. 1200. 0.02 -0.85"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 12.0,
					"frgb" : 0.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1460.0, 780.0, 150.0, 20.0 ],
					"text" : "kcik"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-125", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-111", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-111", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-125", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-129", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-130", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ]
	}

}
