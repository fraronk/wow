local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("PetsMountsHBFA") then return end
ZygorGuidesViewer.GuideMenuTier = "BFA"
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Highmountain Thunderhoof",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258060},
model={81113},
condition_end=function() return hasmount(258060) end,
description="This mount is acquired by completing the \"Allied Races: Highmountain Tauren\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip You must progress through the Highmountain guide until you earn the "Ain't No Mountain High Enough" achievement.
Earn the "Ain't No Mountain High Enough" Achievement |achieve 10059
step
Load the "Highmountain" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Highmountain"
|tip Click the line above to load the guide.
|tip Completing certain quests in Highmountain award reputation with the Highmountain Tribe.
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Completing world quests in Highmountain award reputation with the Highmountain Tribe.
Use Highmountain Tribe Reputation Insignias
|tip These are awarded from Order Hall missions, Highmountain Tribe emissary quests, and world quests in Highmountain.
|tip These can also be chosen from "The Kirin Tor of Dalaran" emissary quest.
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##141341 |only if itemcount(141341) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##139024 |only if itemcount(139024) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146944 |only if itemcount(146944) >= 1
Use Your Highmountain Tribe Insignia |use Highmountain Tribe Insignia##146938 |only if itemcount(146938) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##141990 |only if itemcount(141990) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##147412 |only if itemcount(147412) >= 1
Use Your Greater Highmountain Tribe Insignia |use Greater Highmountain Tribe Insignia##150928 |only if itemcount(150928) >= 1
Gain Exalted Reputation with the Highmountain Tribe |achieve 12292
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain Tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Highmountain Tauren.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(49614)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(49614)
step
talk Baine Bloodhoof##125285
accept A Feast for Our Kin##48066 |goto 38.17,81.10
step
Enter the building |goto Thunder Bluff/0 59.84,51.69 < 7 |walk
talk Baine Bloodhoof##93844
turnin A Feast for Our Kin##48066 |goto 61.65,52.10
step
talk Baine Bloodhoof##129914
|tip Wait for the dialogue to complete.
accept Shadow Over Thunder Bluff##48067 |goto Thunder Bluff/0 61.52,51.75
step
kill Shadow of Uul##125141+ |q 48067/2 |goto 55.36,51.33
kill Dark Tendril##125136+ |q 48067/1 |goto 55.36,51.33
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Shadow Over Thunder Bluff##48067 |goto 55.20,51.05
accept Dark Forces##49756 |goto 55.20,51.05
step
kill Qy'telek##130726
|tip He walks around.
Slay Qy'telek |q 49756/1 |goto 38.17,61.81
step
talk Baine Bloodhoof##130773
|tip Next to you.
turnin Dark Forces##49756 |goto 38.04,60.65
accept Return to Highmountain##48079 |goto 38.04,60.65
step
talk Mayla Highmountain##108434
turnin Return to Highmountain##48079 |goto Thunder Totem/6 68.82,71.21
step
talk Spiritwalker Graysky##105085
accept Dark Tales##41884 |goto 68.38,72.97
step
Follow the path |goto Highmountain/0 36.58,65.92 < 10 |only if walking
Follow the path |goto 37.43,66.55 < 15 |only if walking
Follow the path |goto 38.73,67.99 < 15 |only if walking
Enter the building |goto 38.65,68.66 < 7 |walk
talk Spiritwalker Graysky##125454
turnin Dark Tales##41884 |goto 38.51,69.10
accept Walking in Their Footsteps##41764 |goto 38.51,69.10
step
click Water of Vision##248865
Use the Water of Vision |q 41764/1 |goto 38.53,69.17
step
Leave the building |goto 38.66,68.64 < 7 |walk
Follow the path |goto 39.57,69.43 < 7 |walk
Follow the path |goto 40.28,71.22 < 15 |only if walking
Enter the cave |goto 41.45,72.57 < 10 |walk
Follow the path |goto 42.01,72.77 < 10 |walk
Follow the path |goto 42.34,72.33 < 10 |walk
kill Shadow of Uul##125141+ |q 41764/3 |goto 43.52,73.29
kill Shadow Lurker##105069+ |q 41764/2 |goto 43.52,73.29
step
Follow the path |goto 43.67,74.02 < 10 |walk
Follow the path up |goto 44.19,74.95 < 7 |walk
Follow the path |goto 44.12,75.96 < 7 |walk
Follow the path |goto 44.98,76.40 < 10 |walk
Follow the path |goto 45.64,75.85 < 10 |walk
Follow the path |goto 46.25,74.80 < 10 |walk
click Bitestone Ward
Place the Bitestone Ward |q 41764/4 |goto 46.16,73.66
step
talk Spiritwalker Graysky##125454
turnin Walking in Their Footsteps##41764 |goto 38.51,69.10
accept Shadow of the Sepulcher##48185 |goto 38.51,69.10
step
Follow the path |goto 53.17,45.95 < 10 |only if walking
Follow the path |goto 54.36,46.73 < 10 |only if walking
Follow the path down |goto 54.63,45.69 < 10 |only if walking
Follow the path |goto 56.31,45.61 < 10 |only if walking
Enter the building |goto 56.81,46.05 < 7 |walk
talk Spiritwalker Graysky##125459
turnin Shadow of the Sepulcher##48185 |goto 57.01,46.21
accept Minions of the Darkness##41799 |goto 57.01,46.21
step
click Water of Vision##248865
Use the Water of Vision |q 41799/1 |goto 57.05,46.16
step
kill Dark Spirit##104872+
|tip Use the abilities on your bar.
Slay #12# Dark Spirits |q 41799/2 |goto 55.98,45.52
step
Enter the cave |goto 55.15,44.27 < 7 |walk
Follow the path |goto 54.61,43.62 < 7 |walk
Follow the path |goto 54.46,43.11 < 7 |walk
Follow the path |goto 54.65,42.71 < 7 |walk
Follow the path |goto 55.11,41.88 < 7 |walk
Follow the path |goto 54.53,41.71 < 7 |walk
Follow the path |goto 54.37,42.83 < 7 |walk
Follow the path |goto 54.98,43.34 < 7 |walk
Follow the path |goto 55.31,42.14 < 7 |walk
Follow the path |goto 55.01,41.24 < 7 |walk
kill Shadowy Tendril##130418+ |q 41799/3 |goto 54.74,41.15
step
Enter the cave |goto 55.21,41.84 < 7 |walk
kill Shadow of the Darkness##132090 |q 41799/4 |goto 55.36,40.85
step
click Sepulcher Ward
Place the Sepulcher Ward |q 41799/5 |goto 54.74,40.62
step
talk Spiritwalker Graysky##125459
turnin Minions of the Darkness##41799 |goto 57.01,46.21
accept Huln's Mountain##48190 |goto 57.01,46.21
step
Follow the path |goto 58.56,64.47 < 7 |only if walking
Cross the bridge |goto 57.92,63.60 < 7 |only if walking
Follow the path up |goto 57.22,63.34 < 10 |only if walking
Follow the path up |goto 56.11,63.55 < 10 |only if walking
Follow the path up |goto 54.83,63.69 < 10 |only if walking
Follow the path |goto 53.42,63.46 < 10 |only if walking
talk Spiritwalker Graysky##125466
turnin Huln's Mountain##48190 |goto 53.32,64.01
accept Servants of the Darkness##41800 |goto 53.32,64.01
step
clicknpc Spiritwalker Graysky##125829
Use the Water of Vision |q 41800/1 |goto 53.32,64.01
step
Follow the path |goto 53.97,64.84 < 10 |only if walking
Cross the bridge |goto 53.70,65.84 < 7 |only if walking
kill Necrodark Defiler##104888+ |q 41800/2 |goto 53.16,66.45
step
Follow the path |goto 52.63,66.61 < 10 |walk
kill Necrogg the Darkspeaker##104890
|tip He patrols up and down the hill
Slay Necrogg the Darkspeaker |q 41800/3 |goto 52.46,67.44
step
Follow the path up |goto 52.39,69.08 < 10 |only if walking
Follow the path up |goto 52.98,69.43 < 10 |only if walking
Enter the building |goto 53.23,69.35 < 7 |only if walking
click Snowmane Ward##3365
Place the Snowmane Ward |q 41800/4 |goto 53.33,69.48
step
talk Spiritwalker Graysky##125466
turnin Servants of the Darkness##41800 |goto 53.32,64.01
accept How Fares Ebonhorn?##48434 |goto 53.32,64.01
step
talk Spiritwalker Ebonhorn##124252
turnin How Fares Ebonhorn?##48434 |goto Thunder Totem/6 67.77,71.40
step
talk Mayla Highmountain##108434
accept Curse of the Necrodark##41815 |goto 68.72,71.03
step
Follow the path down |goto Highmountain/0 56.00,85.20 < 7 |only if walking
Cross the water |goto 55.34,84.21 < 15 |only if walking
Follow the path up |goto 56.07,82.00 < 10 |only if walking
Follow the path |goto 56.46,80.99 < 10 |only if walking
Follow the path |goto 56.03,80.03 < 10 |only if walking
Follow the path |goto 54.61,80.33 < 10 |only if walking
Follow the path up |goto 52.38,83.64 < 10 |only if walking
Follow the path up |goto 52.38,85.75 < 10 |only if walking
Follow the path up |goto 53.60,87.50 < 10 |only if walking
Cross the bridge |goto 56.22,89.05 < 7 |only if walking
talk Baine Bloodhoof##130423
turnin Curse of the Necrodark##41815 |goto 56.49,89.23
accept Ice and Shadow##41840 |goto 56.49,89.23
step
talk Jale Rivermane##97662
accept Whispers of the Darkness##41882 |goto 56.46,89.33
stickystart "Collect_Shadowice_Shards"
step
clicknpc Highmountain Protector##132212+
Free #6# Highmountain Protectors |q 41882/1 |goto 57.01,90.90
step
label "Collect_Shadowice_Shards"
Kill Necrodark enemies around this area
collect Shadowice Shard##136400 |q 41840/1 |goto 57.67,92.72
step
talk Spiritwalker Ebonhorn##105213
turnin Whispers of the Darkness##41882 |goto 57.55,92.34
turnin Ice and Shadow##41840 |goto 57.55,92.34
accept The Final Ward##41841 |goto 57.55,92.34
step
Enter the cave |goto 57.40,92.28 < 7 |walk
Follow the path |goto 57.12,92.13 < 7 |walk
click Summit Ward
Place the Summit Ward |q 41841/1 |goto 56.49,91.44
step
talk Spiritwalker Ebonhorn##105213
turnin The Final Ward##41841 |goto 56.81,92.02
accept The Darkness##48403 |goto 56.81,92.02
step
Leave the cave |goto 57.49,92.32 < 7 |walk
kill Uul'gyneth##126001 |q 48403/1 |goto 57.87,91.07
step
Follow the path |goto 57.43,92.71 < 7 |only if walking
Follow the path up |goto 57.10,92.17 < 7 |only if walking
Follow the path up |goto 56.86,92.63 < 7 |only if walking
talk Mayla Highmountain##104997
turnin The Darkness##48403 |goto 56.66,92.71
step
talk Baine Bloodhoof##126134
accept Together We Are the Horde!##48433 |goto 56.71,92.76
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin Together We Are the Horde!##48433 |goto 37.77,81.16
step
learnmount Highmountain Thunderhoof##258060 |use Highmountain Thunderhoof##155662 |future
step
_Congratulations!_
You Collected the "Highmountain Thunderhoof" Mount.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Pets & Mounts Guide\\Mounts\\Ground Mounts\\Achievement Mounts\\Nightborne Manasaber",{
author="support@zygorguides.com",
startlevel=110.0,
keywords={"ground, mount, battle, of, azeroth, achievement, horde"},
mounts={258845},
model={74032},
condition_end=function() return hasmount(258845) end,
description="This mount is acquired by completing the \"Allied Races: Nightborne\" achievement.",
},[[
step
accept The Call for Allies##49930 |goto Dalaran L/10 72.46,45.94
|tip You will accept this quest automatically.
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Call for Allies##49930 |goto 37.77,81.16
step
Load the "Suramar (110)" Leveling Guide |confirm |next "Zygor's Leveling Guides\\Legion (100-110)\\Suramar (110)"
|tip Click the line above to load the guide.
|tip You must progress through the Suramar guide until you earn the Insurrection achievement.
Earn the "Insurrection" Achievement |achieve 11340
step
Load the "World Quests" Daily Guide |confirm |next "Zygor's Dailies Guides\\Legion\\World Quests"
|tip Click the line above to load the guide.
|tip Complete world quests in Suramar to gain reputation.
About Ancient Mana:
|tip Click various objects on the ground all around Suramar to collect Ancient Mana.
|tip You can track the objects on your minimap by using the Mana Divining Stone.
|tip You get the Mana Divining Stone as a quest reward shortly into the Suramar (110) leveling guide.
|tip The best area of Suramar to collect Ancient Mana is Twilight Vineyards.
Feed Ancient Mana to These Nightfallen NPC's:
|tip First Arcanist Thalyssra
|tip Arcanist Valtrois
|tip Chief Telemancer Oculeth
|tip Their locations change as you complete quests in the Suramar (110) leveling guide.
Gain Exalted Reputation with the Nightfallen |goto Suramar/0 36.51,46.80 |region suramar_shalaran |achieve 10778
step
talk Lady Sylvanas Windrunner##126065
accept A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Liadrin##126062
Ask her _"What do we know about the nightborne?"_
Speak with Liadrin About the Nightborne |q 50242/2 |goto Orgrimmar/1 37.98,80.56
step
talk Baine Bloodhoof##125285
Ask him _"What do we know about the Hightmountain tauren?"_
Speak with Baine About the Highmountain tauren |q 50242/1 |goto 38.18,81.10
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50242/3 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
turnin A Choice of Allies##50242 |goto 37.77,81.16
step
talk Lady Sylvanas Windrunner##126065
accept A Second Ally For the Cause##50254 |goto Orgrimmar/1 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
Tell her _"I am ready to pursue our next ally."_
|tip Select Nightborne Elves.
Choose an Ally to Pursue |q 50254/1 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Sylvanas Windrunner##126065
turnin A Second Ally For the Cause##50254 |goto 37.77,81.15
|only if completedq(48433)
step
talk Lady Liadrin##126062
accept Thalyssra's Estate##49973 |goto 37.98,80.56
step
talk Lady Liadrin##131478
turnin Thalyssra's Estate##49973 |goto Suramar/0 65.88,63.72
accept Silvermoon City##49613 |goto 65.88,63.72
step
talk Lady Liadrin##130133
turnin Silvermoon City##49613 |goto Silvermoon City/0 58.12,19.88
accept Remember the Sunwell##49354 |goto 58.12,19.88
step
click Portal to the Sunwell |goto 53.95,19.49
Enter the Scenario |scenariostart |q 49354 |future |q 49354 |future
step
Meet with Liadrin |scenariogoal Meet with Liadrin.##1/38106 |goto Shrine of the Eclipse/1 61.10,71.48 |q 49354 |future
step
Follow the path |goto 56.52,73.29 < 7 |walk
Walk with Thalyssra |scenariogoal Walk with Thalyssra##2/38160 |goto 50.09,66.13 |q 49354 |future
step
Kill enemies around this area
Defeat the Sunwell Guardians |scenariogoal Defeat the Sunwell Guardians##3/38161 |goto 50.09,66.13 |q 49354 |future
step
kill Aruun the Darkener##129659 |scenariogoal Aruun the Darkener slain##4/38162 |goto 48.69,66.06 |q 49354 |future
step
Close the Void Rift |scenariogoal Void rift closed##5/38519 |q 49354 |future
|tip Wait for the dialogue to complete.
step
Follow the path |goto 58.09,65.52 < 7 |walk
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |q 49354 |future
step
click Silvermoon Translocator |goto 62.30,67.03
Leave the Sunwell |scenariogoal Leave the Sunwell##6/38163 |goto Silvermoon City/0 58.25,19.35 < 1000 |noway |c |q 49354 |future
step
talk Lady Liadrin##130133
turnin Remember the Sunwell##49354 |goto 58.45,19.09
accept The Nightborne##49614 |goto 58.45,19.09
step
Enter the building |goto Orgrimmar/1 38.59,80.10 < 7 |walk
talk Lady Sylvanas Windrunner##126065
turnin The Nightborne##49614 |goto 37.77,81.16
step
learnmount Nightborne Manasaber##258845 |use Nightborne Manasaber##156487 |future
step
_Congratulations!_
You Collected the "Nightborne Manasaber" Mount.
]])
