{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 10.0, 59.0, 738.0, 596.0 ],
		"bglocked" : 0,
		"defrect" : [ 10.0, 59.0, 738.0, 596.0 ],
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
					"text" : "oct shift (direct mode)",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 230.0, 113.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "transpose mode",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 194.0, 77.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input device",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 157.0, 77.0, 17.0 ],
					"id" : "obj-3",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chscalsat",
					"outlettype" : [ "int", "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 3,
					"patching_rect" : [ 272.0, 202.0, 60.0, 17.0 ],
					"id" : "obj-4",
					"fontname" : "Arial",
					"numoutlets" : 2,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 10.0, 59.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 10.0, 59.0, 600.0, 426.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 167.0, 175.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : "mode"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 63.0, 175.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 0,
									"comment" : "key"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 73.0, 63.0, 15.0, 15.0 ],
									"id" : "obj-3",
									"numoutlets" : 1,
									"comment" : "key"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 333.0, 58.0, 15.0, 15.0 ],
									"id" : "obj-4",
									"numoutlets" : 1,
									"comment" : "degree"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 203.0, 55.0, 15.0, 15.0 ],
									"id" : "obj-5",
									"numoutlets" : 1,
									"comment" : "mode"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadmess 0",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 126.0, 98.0, 60.0, 17.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "coll cmod",
									"outlettype" : [ "", "", "", "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 98.0, 50.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 4,
									"coll_data" : 									{
										"count" : 7,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 2 ]
											}
, 											{
												"key" : 2,
												"value" : [ 4 ]
											}
, 											{
												"key" : 3,
												"value" : [ 5 ]
											}
, 											{
												"key" : 4,
												"value" : [ 7 ]
											}
, 											{
												"key" : 5,
												"value" : [ 9 ]
											}
, 											{
												"key" : 6,
												"value" : [ 11 ]
											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"embed" : 1
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "% 12",
									"outlettype" : [ "int" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 152.0, 32.0, 17.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p satori",
									"outlettype" : [ "int" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 5,
									"patching_rect" : [ 60.0, 129.0, 102.0, 17.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 8.0, 317.0, 618.0, 573.0 ],
										"bglocked" : 0,
										"defrect" : [ 8.0, 317.0, 618.0, 573.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 113.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-1",
													"numoutlets" : 1,
													"comment" : "pitch input"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 166.0, 40.0, 15.0, 15.0 ],
													"id" : "obj-2",
													"numoutlets" : 1,
													"comment" : "key in select"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "" ],
													"numinlets" : 0,
													"patching_rect" : [ 205.0, 42.0, 15.0, 15.0 ],
													"id" : "obj-3",
													"numoutlets" : 1,
													"comment" : "mode input select"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"patching_rect" : [ 254.0, 41.0, 15.0, 15.0 ],
													"id" : "obj-4",
													"numoutlets" : 1,
													"comment" : "key out select"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"outlettype" : [ "int" ],
													"numinlets" : 0,
													"patching_rect" : [ 290.0, 41.0, 15.0, 15.0 ],
													"id" : "obj-5",
													"numoutlets" : 1,
													"comment" : "mode output select"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0 0 0 0 0 0 0",
													"outlettype" : [ "int", "int", "int", "int", "int", "int", "int" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 154.0, 190.0, 101.0, 17.0 ],
													"id" : "obj-6",
													"fontname" : "Arial",
													"numoutlets" : 7
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Satori 1.1 by Matthew Davidson",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 130.0, 23.0, 162.0, 17.0 ],
													"id" : "obj-7",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 7",
													"outlettype" : [ "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 153.0, 241.0, 92.0, 17.0 ],
													"id" : "obj-8",
													"fontname" : "Arial",
													"numoutlets" : 7
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 2 4 5 7 9 11",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 148.0, 267.0, 105.0, 17.0 ],
													"id" : "obj-9",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 165.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-10",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 277.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-11",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 249.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-12",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 221.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-13",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 193.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-14",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 137.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-15",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 109.0, 433.0, 27.0, 17.0 ],
													"id" : "obj-16",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 153.0, 221.0, 27.0, 17.0 ],
													"id" : "obj-17",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "lyd",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 89.0, 338.0, 22.0, 17.0 ],
													"id" : "obj-18",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "phy",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 87.0, 313.0, 23.0, 17.0 ],
													"id" : "obj-19",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "dor",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 87.0, 291.0, 23.0, 17.0 ],
													"id" : "obj-20",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "ion",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 87.0, 268.0, 22.0, 17.0 ],
													"id" : "obj-21",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "mxo",
													"linecount" : 2,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 363.0, 23.0, 27.0 ],
													"id" : "obj-22",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "aeo",
													"linecount" : 2,
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 89.0, 390.0, 23.0, 27.0 ],
													"id" : "obj-23",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "loc",
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 91.0, 413.0, 23.0, 17.0 ],
													"id" : "obj-24",
													"fontname" : "Arial",
													"numoutlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "-",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 137.0, 72.0, 27.0, 17.0 ],
													"id" : "obj-25",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "pack 0 0",
													"outlettype" : [ "" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 152.0, 164.0, 46.0, 17.0 ],
													"id" : "obj-26",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 12",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 151.0, 116.0, 29.0, 17.0 ],
													"id" : "obj-27",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 12",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 151.0, 140.0, 32.0, 17.0 ],
													"id" : "obj-28",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "% 12",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 152.0, 96.0, 32.0, 17.0 ],
													"id" : "obj-29",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll mods",
													"outlettype" : [ "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 239.0, 166.0, 50.0, 17.0 ],
													"id" : "obj-30",
													"fontname" : "Arial",
													"numoutlets" : 4,
													"coll_data" : 													{
														"count" : 49,
														"data" : [ 															{
																"key" : 0,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 1,
																"value" : [ 0, 0, -1, 0, 0, 0, -1 ]
															}
, 															{
																"key" : 2,
																"value" : [ 0, -1, -1, 0, 0, -1, -1 ]
															}
, 															{
																"key" : 3,
																"value" : [ 0, 0, 0, 1, 0, 0, 0 ]
															}
, 															{
																"key" : 4,
																"value" : [ 0, 0, 0, 0, 0, 0, -1 ]
															}
, 															{
																"key" : 5,
																"value" : [ 0, 0, -1, 0, 0, -1, -1 ]
															}
, 															{
																"key" : 6,
																"value" : [ 0, -1, -1, 0, -1, -1, -1 ]
															}
, 															{
																"key" : 10,
																"value" : [ 0, 0, 1, 0, 0, 0, 1 ]
															}
, 															{
																"key" : 11,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 12,
																"value" : [ 0, -1, 0, 0, 0, -1, 0 ]
															}
, 															{
																"key" : 13,
																"value" : [ 0, 0, 1, 1, 0, 0, 1 ]
															}
, 															{
																"key" : 14,
																"value" : [ 0, 0, 1, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 15,
																"value" : [ 0, 0, 0, 0, 0, -1, 0 ]
															}
, 															{
																"key" : 16,
																"value" : [ 0, -1, 0, 0, -1, -1, 0 ]
															}
, 															{
																"key" : 20,
																"value" : [ 0, 1, 1, 0, 0, 1, 1 ]
															}
, 															{
																"key" : 21,
																"value" : [ 0, 1, 0, 0, 0, 1, 0 ]
															}
, 															{
																"key" : 22,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 23,
																"value" : [ 0, 1, 1, 1, 0, 1, 1 ]
															}
, 															{
																"key" : 24,
																"value" : [ 0, 1, 1, 0, 0, 1, 0 ]
															}
, 															{
																"key" : 25,
																"value" : [ 0, 1, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 26,
																"value" : [ 0, 0, 0, 0, -1, 0, 0 ]
															}
, 															{
																"key" : 30,
																"value" : [ 0, 0, 0, -1, 0, 0, 0 ]
															}
, 															{
																"key" : 31,
																"value" : [ 0, 0, -1, -1, 0, 0, -1 ]
															}
, 															{
																"key" : 32,
																"value" : [ 0, -1, -1, -1, 0, -1, -1 ]
															}
, 															{
																"key" : 33,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 34,
																"value" : [ 0, 0, 0, -1, 0, 0, -1 ]
															}
, 															{
																"key" : 35,
																"value" : [ 0, 0, -1, -1, 0, -1, -1 ]
															}
, 															{
																"key" : 36,
																"value" : [ 0, -1, -1, -1, -1, -1, -1 ]
															}
, 															{
																"key" : 40,
																"value" : [ 0, 0, 0, 0, 0, 0, 1 ]
															}
, 															{
																"key" : 41,
																"value" : [ 0, 0, -1, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 42,
																"value" : [ 0, -1, -1, 0, 0, -1, 0 ]
															}
, 															{
																"key" : 43,
																"value" : [ 0, 0, 0, 1, 0, 0, 1 ]
															}
, 															{
																"key" : 44,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 45,
																"value" : [ 0, 0, -1, 0, 0, -1, 0 ]
															}
, 															{
																"key" : 46,
																"value" : [ 0, -1, -1, 0, -1, -1, 0 ]
															}
, 															{
																"key" : 50,
																"value" : [ 0, 0, 1, 0, 0, 1, 1 ]
															}
, 															{
																"key" : 51,
																"value" : [ 0, 0, 0, 0, 0, 1, 0 ]
															}
, 															{
																"key" : 52,
																"value" : [ 0, -1, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 53,
																"value" : [ 0, 0, 1, 1, 0, 1, 1 ]
															}
, 															{
																"key" : 54,
																"value" : [ 0, 0, 1, 0, 0, 1, 0 ]
															}
, 															{
																"key" : 55,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
, 															{
																"key" : 56,
																"value" : [ 0, -1, 0, 0, -1, 0, 0 ]
															}
, 															{
																"key" : 60,
																"value" : [ 0, 1, 1, 0, 1, 1, 1 ]
															}
, 															{
																"key" : 61,
																"value" : [ 0, 1, 0, 0, 1, 1, 0 ]
															}
, 															{
																"key" : 62,
																"value" : [ 0, 0, 0, 0, 1, 0, 0 ]
															}
, 															{
																"key" : 63,
																"value" : [ 0, 1, 1, 1, 1, 1, 1 ]
															}
, 															{
																"key" : 64,
																"value" : [ 0, 1, 1, 0, 1, 1, 0 ]
															}
, 															{
																"key" : 65,
																"value" : [ 0, 1, 0, 0, 1, 0, 0 ]
															}
, 															{
																"key" : 66,
																"value" : [ 0, 0, 0, 0, 0, 0, 0 ]
															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"embed" : 1
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 239.0, 128.0, 27.0, 17.0 ],
													"id" : "obj-31",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 239.0, 147.0, 27.0, 17.0 ],
													"id" : "obj-32",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "delay 2",
													"outlettype" : [ "bang" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 239.0, 109.0, 41.0, 17.0 ],
													"id" : "obj-33",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"outlettype" : [ "bang" ],
													"numinlets" : 1,
													"patching_rect" : [ 239.0, 92.0, 15.0, 15.0 ],
													"id" : "obj-34",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 10",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 239.0, 73.0, 30.0, 17.0 ],
													"id" : "obj-35",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+",
													"outlettype" : [ "int" ],
													"fontsize" : 9.0,
													"numinlets" : 2,
													"patching_rect" : [ 190.0, 483.0, 27.0, 17.0 ],
													"id" : "obj-36",
													"fontname" : "Arial",
													"numoutlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"numinlets" : 1,
													"patching_rect" : [ 190.0, 505.0, 15.0, 15.0 ],
													"id" : "obj-37",
													"numoutlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 2 3 5 7 9 10",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 149.0, 289.0, 105.0, 17.0 ],
													"id" : "obj-38",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1 3 5 7 8 10",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 147.0, 311.0, 105.0, 17.0 ],
													"id" : "obj-39",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 2 4 6 7 9 11",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 144.0, 336.0, 105.0, 17.0 ],
													"id" : "obj-40",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 2 4 5 7 9 10",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 148.0, 361.0, 105.0, 17.0 ],
													"id" : "obj-41",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 2 3 5 7 8 10",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 149.0, 385.0, 105.0, 17.0 ],
													"id" : "obj-42",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route 0 1 3 5 6 8 10",
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"fontsize" : 9.0,
													"numinlets" : 1,
													"patching_rect" : [ 149.0, 407.0, 105.0, 17.0 ],
													"id" : "obj-43",
													"fontname" : "Arial",
													"numoutlets" : 8
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-6", 6 ],
													"destination" : [ "obj-11", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 6 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 5 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-32", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 5 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-35", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 4 ],
													"destination" : [ "obj-13", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 4 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 3 ],
													"destination" : [ "obj-14", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 3 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-15", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 6 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 5 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 4 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 2 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 3 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-16", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr ($i1+$i2)%7",
									"outlettype" : [ "" ],
									"hidden" : 1,
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 191.0, 100.0, 91.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-10", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-9", 4 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "input key and mode",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 173.0, 100.0, 17.0 ],
					"id" : "obj-5",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 2",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 3,
					"patching_rect" : [ 388.0, 314.0, 49.0, 17.0 ],
					"id" : "obj-6",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "oct",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 444.0, 173.0, 42.0, 17.0 ],
					"id" : "obj-7",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s gome_mode_shift",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 388.0, 337.0, 97.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s gome_key_shift",
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 280.0, 337.0, 90.0, 17.0 ],
					"id" : "obj-9",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "degree",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 400.0, 173.0, 42.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"textcolor2" : [ 0.121569, 0.121569, 0.121569, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.121569, 0.121569, 0.121569, 1.0 ],
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"items" : [ "C", ",", "C#/Db", ",", "D", ",", "D#/Eb", ",", "E", ",", "F", ",", "F#/Gb", ",", "G", ",", "G#/Ab", ",", "A", ",", "A#/Bb", ",", "B" ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"patching_rect" : [ 270.0, 186.0, 46.0, 17.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"id" : "obj-11",
					"fontname" : "Arial",
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+",
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 299.0, 289.0, 27.0, 17.0 ],
					"id" : "obj-12",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"items" : [ 0, ",", 12, ",", 24, ",", 36, ",", 48, ",", 60, ",", 72, ",", 84 ],
					"numinlets" : 1,
					"patching_rect" : [ 446.0, 186.0, 34.0, 17.0 ],
					"id" : "obj-13",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"textcolor2" : [ 0.121569, 0.121569, 0.121569, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.121569, 0.121569, 0.121569, 1.0 ],
					"bgcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"items" : [ "ionian", ",", "dorian", ",", "phrygian", ",", "lydian", ",", "mixolydian", ",", "aeolian", ",", "locrian" ],
					"framecolor" : [ 0.015686, 0.015686, 0.015686, 1.0 ],
					"discolor" : [ 0.439216, 0.439216, 0.439216, 1.0 ],
					"numinlets" : 1,
					"hltcolor" : [ 0.905882, 0.905882, 0.905882, 1.0 ],
					"patching_rect" : [ 318.0, 186.0, 74.0, 17.0 ],
					"togcolor" : [ 0.552941, 0.552941, 0.552941, 1.0 ],
					"id" : "obj-14",
					"fontname" : "Arial",
					"bgcolor2" : [ 0.917647, 0.917647, 0.917647, 1.0 ],
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"items" : [ "I", ",", "II", ",", "III", ",", "IV", ",", "V", ",", "VI", ",", "VII" ],
					"numinlets" : 1,
					"patching_rect" : [ 401.0, 186.0, 33.0, 17.0 ],
					"id" : "obj-15",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p chxlat",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 521.0, 238.0, 46.0, 17.0 ],
					"id" : "obj-16",
					"fontname" : "Arial",
					"numoutlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 514.0, 347.0, 600.0, 426.0 ],
						"bglocked" : 0,
						"defrect" : [ 514.0, 347.0, 600.0, 426.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numinlets" : 1,
									"patching_rect" : [ 104.0, 141.0, 15.0, 15.0 ],
									"id" : "obj-1",
									"numoutlets" : 0,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"outlettype" : [ "int" ],
									"numinlets" : 0,
									"patching_rect" : [ 60.0, 39.0, 15.0, 15.0 ],
									"id" : "obj-2",
									"numoutlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "6",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 156.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-3",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "5",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 140.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-4",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "4",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 124.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-5",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "3",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 108.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-6",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "2",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 92.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-7",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "1",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 76.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-8",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "0",
									"outlettype" : [ "" ],
									"fontsize" : 9.0,
									"numinlets" : 2,
									"patching_rect" : [ 60.0, 85.0, 16.0, 15.0 ],
									"id" : "obj-9",
									"fontname" : "Arial",
									"numoutlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 36 38 40 41 43 45 47",
									"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
									"fontsize" : 9.0,
									"numinlets" : 1,
									"patching_rect" : [ 60.0, 60.0, 128.0, 17.0 ],
									"id" : "obj-10",
									"fontname" : "Arial",
									"numoutlets" : 8
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-10", 6 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 5 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 4 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 3 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 2 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 12.0,
						"default_fontname" : "Arial",
						"default_fontsize" : 12.0,
						"fontname" : "Arial"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"items" : [ "ionian", ",", "dorian", ",", "phrygian", ",", "lydian", ",", "mixolydian", ",", "aeolian", ",", "locrian" ],
					"numinlets" : 1,
					"patching_rect" : [ 322.0, 227.0, 70.0, 17.0 ],
					"menumode" : 2,
					"id" : "obj-17",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"items" : [ "C", ",", "C#/Db", ",", "D", ",", "D#/Eb", ",", "E", ",", "F", ",", "F#/Gb", ",", "G", ",", "G#/Ab", ",", "A", ",", "A#/Bb", ",", "B" ],
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 227.0, 51.0, 17.0 ],
					"menumode" : 2,
					"id" : "obj-18",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.87451, 0.87451, 0.87451, 1.0 ],
					"items" : [ "Maj7", ",", -7, "(n13)", ",", -7, "(b9)", ",", "Maj7", "(#11)", ",", "dom7", ",", -7, ",", -7, "(b9", "b5)" ],
					"numinlets" : 1,
					"patching_rect" : [ 395.0, 227.0, 77.0, 17.0 ],
					"menumode" : 2,
					"id" : "obj-19",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"items" : [ "off", ",", "chord", "scale", ",", "direct", "access" ],
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 207.0, 88.0, 17.0 ],
					"id" : "obj-20",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "switch 2",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 3,
					"patching_rect" : [ 280.0, 314.0, 49.0, 17.0 ],
					"id" : "obj-21",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess 5",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ -4.0, 219.0, 60.0, 17.0 ],
					"id" : "obj-22",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "split 47",
					"outlettype" : [ "int", "int" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 3,
					"patching_rect" : [ 521.0, 215.0, 100.0, 17.0 ],
					"id" : "obj-23",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"items" : [ -60, ",", -48, ",", -36, ",", -24, ",", -12, ",", 0, ",", 12, ",", 24, ",", 36, ",", 48, ",", 60 ],
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 243.0, 34.0, 17.0 ],
					"id" : "obj-24",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "+",
					"outlettype" : [ "int" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 611.0, 238.0, 27.0, 17.0 ],
					"id" : "obj-25",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "notein",
					"outlettype" : [ "int", "int", "int" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 521.0, 167.0, 92.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Arial",
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "stripnote",
					"outlettype" : [ "int", "int" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 521.0, 191.0, 51.0, 17.0 ],
					"id" : "obj-27",
					"fontname" : "Arial",
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"outlettype" : [ "int", "", "" ],
					"types" : [  ],
					"fontsize" : 9.0,
					"items" : [ "IAC Driver Bus 1", ",", "Faderport", ",", "to MaxMSP 1", ",", "to MaxMSP 2" ],
					"numinlets" : 1,
					"patching_rect" : [ 132.0, 170.0, 100.0, 17.0 ],
					"id" : "obj-28",
					"fontname" : "Arial",
					"numoutlets" : 3
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
					"patching_rect" : [ 77.0, 29.0, 106.0, 17.0 ],
					"id" : "obj-29",
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
					"patching_rect" : [ 150.0, 53.0, 52.0, 17.0 ],
					"id" : "obj-30",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "-1",
					"outlettype" : [ "" ],
					"hidden" : 1,
					"fontsize" : 9.0,
					"numinlets" : 2,
					"patching_rect" : [ 150.0, 77.0, 19.0, 15.0 ],
					"id" : "obj-31",
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
					"patching_rect" : [ 114.0, 100.0, 46.0, 17.0 ],
					"id" : "obj-32",
					"fontname" : "Arial",
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "output chord scale",
					"fontsize" : 9.0,
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 214.0, 100.0, 17.0 ],
					"id" : "obj-33",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"border" : 1,
					"bgcolor" : [ 0.784314, 0.760784, 0.792157, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 253.0, 159.0, 254.0, 106.0 ],
					"id" : "obj-34",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "transpose options",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontsize" : 9.0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 128.0, 128.0, 181.0, 17.0 ],
					"id" : "obj-35",
					"fontname" : "Arial",
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"rounded" : 0,
					"bgcolor" : [ 0.290196, 0.082353, 0.309804, 1.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 107.0, 108.0, 459.0, 38.0 ],
					"id" : "obj-36",
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
					"patching_rect" : [ 95.0, 67.0, 462.0, 327.0 ],
					"id" : "obj-37",
					"numoutlets" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-24", 1 ],
					"destination" : [ "obj-25", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 1 ],
					"destination" : [ "obj-27", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-6", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-6", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 1 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-4", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-21", 2 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 1 ],
					"destination" : [ "obj-12", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-21", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 1,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
