local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("EventsH") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return completedq(12492) end,
description="\nThis guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Tapper Swindlekeg##24711
accept Welcome to Brewfest!##11447 |goto Durotar/0 41.58,18.45
step
talk Ram Master Ray##24497
accept Now This is Ram Racing... Almost.##11409 |goto 42.61,17.84
step
As you run around on the ram:
|tip Use the Giddyup! ability to trot for 8 seconds.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so to keep the ram running at the speed just above the slow default speed.
Maintain a Trot for 8 seconds |q 11409/1
step
As you run around on the ram:
|tip Use the Giddyup! ability to trot for 8 seconds.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the Ram Canter for 8 seconds, use the Giddyup! ability a little more often than when you made the Ram Trot.
Maintain a Canter for 8 seconds |q 11409/2
step
As you run around on the ram:
|tip Use the Giddyup! ability to trot for 8 seconds.
|tip The ram runs slow by default.
|tip You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds.
|tip To make the Ram Gallop, just spam use the Giddyup! ability.
Maintain a Gallop for 8 seconds |q 11409/3
step
talk Ram Master Ray##24497
turnin Now This is Ram Racing... Almost.##11409 |goto 42.61,17.84
accept There and Back Again##11412 |goto 42.61,17.84
step
Get a Keg From Bok Dropcertain Here [50.62,13.48]
|tip Use the Giddyup! ability.
|tip Run as fast as you can without making your Ram stop from being too tired.
|tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level.
|tip He will throw you a keg when you get close.
|tip Just get near him and you will throw the keg to him automatically.
Deliver 3 Kegs |q 11412/1 |goto 42.69,17.72
step
talk Ram Master Ray##24497
turnin There and Back Again##11412 |goto 42.61,17.84
step
talk Driz Tumblequick##24510
accept A New Supplier of Souvenirs##29396 |goto 42.69,17.71 |or
accept Another Year, Another Souvenir.##13931 |goto 42.69,17.71 |or
|tip These quests may not be available to you if you have a stein already.
Click Here to Continue |confirm
step
talk Bizzle Quicklift##27216
accept Chug and Chuck!##12191 |goto 41.57,17.67
step
click Alcohol-Free Brewfest Sampler##186189
|tip They looks like mugs of beer on the small tables on either side of you.
use the Alcohol-Free Brewfest Sampler##33096
Hit the S.T.O.U.T. #5# Times |q 12191/1 |goto 41.57,17.60
step
talk Bizzle Quicklift##27216
turnin Chug and Chuck!##12191 |goto 41.57,17.67
step
talk Glodrak Huntsniper##24657
accept Catch the Wild Wolpertinger!##11431 |goto 41.23,18.53
accept Pink Elekks On Parade##11120 |goto 41.23,18.53
step
talk Snipehunter Goro##155269
Ask him _"What are Synthebrew Goggles?"_
collect Synthebrew Goggles##46735 |q 11431 |goto Durotar/0 41.28,18.48
step
talk Blix Fixwidget##24495
turnin A New Supplier of Souvenirs##29396 |or |goto 41.06,16.95
turnin Another Year, Another Souvenir.##13931 |or |goto 41.06,16.95
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11431
step
clicknpc Wild Wolpertinger##23487
use the Wolpertinger Net##32907
|tip They look like rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11431/1 |goto 41.19,18.12
You can find more around here [goto 45.30,18.58]
step
talk Snipehunter Goro##155269
turnin Catch the Wild Wolpertinger!##11431 |goto 41.23,18.53
Earn the "Does Your Wolpertinger Linger?" Achievement |achieve 1936 |goto 41.23,18.53
step
talk Zidormi##141488
|tip In order to complete the Brewfest questline, you will need to speak with Zidormi to change the zone back to normal.
Ask her _"Can you show me what Tirisfal Glades was like before the Battle for Lordaeron?"_
Travel to the Past |condition ZGV.InPhase('Old Undercity') |goto Tirisfal Glades/0 69.45,62.80 |q 11120
step
clicknpc Tirisfal Pink Elekk##23530
use the Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
|tip They are found above Undercity, in Tirisfal Glades.
kill 3 Tirisfal Pink Elekk##23530 |q 11120/3 |goto Tirisfal Glades/0 62.45,67.47
step
clicknpc Eversong Pink Elekk##23531
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Eversong Pink Elekk##23531 |q 11120/1 |goto Eversong Woods/0 56.97,53.14
step
clicknpc Mulgore Pink Elekk##23529
use Elekk Dispersion Ray##32960
|tip Make sure you have the Synthebrew Goggles equipped.
kill 3 Mulgore Pink Elekk##23529 |q 11120/2 |goto Thunder Bluff/0 34.66,74.60
step
talk Snipehunter Goro##155269
turnin Pink Elekks On Parade##11120 |goto Durotar/0 41.23,18.53
step
Use the Dungeon Finder (press _I_) to queue for Coren Direbrew
|tip You will need to at least be level 46.
kill Coren Direbrew##23872
collect Direbrew's Dire Brew##38281 |n
use the Direbrew's Dire Brew##38281
accept Direbrew's Dire Brew##12492
Earn the  "Direbrewfest" Achievement |achieve 1683/3
step
talk La'gar Brewshout##155194a
turnin Direbrew's Dire Brew##12492 |goto 41.55,18.38
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="\nThis guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
talk Cort Gorestein##24498
accept Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.52,18.26 |next "ride"
|tip Click the line below if the quest isn't available.
Click Here to Continue |confirm
step
talk Ja'ron##24499
accept Bark for T'chali's Voodoo Brewery!##11408 |goto 40.29,16.98
step
label "ride"
Ride Your Ram into Orgrimmar |goto Orgrimmar/1 50.93,90.90 < 20 |c |q 11407
|tip Use the _Giddyup!_ ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest(11407)
step
Bark Outside the Auction House |q 11407/1 |goto 51.63,78.97
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Honor |q 11407/2 |goto 67.02,48.19
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Wisdom |q 11407/3 |goto 44.26,49.07
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Spirits |q 11407/4 |goto 37.68,75.48
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Ride Your Ram into Orgrimmar |goto 50.93,90.90 < 20 |c |q 11408
|tip Use the _Giddyup!_ ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest(11408)
step
Bark Outside the Auction House |q 11408/1 |goto 51.63,78.97
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Honor |q 11408/2 |goto 67.02,48.19
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Wisdom |q 11408/3 |goto 44.26,49.07
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
Bark in the Valley of Spirits |q 11408/4 |goto 37.68,75.48
|tip Use the _Giddyup!_ temporary ability as you run.
|tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.
|tip If you go too much faster than that, your ram will get tired and you will run out of time.
step
talk Cort Gorestein##24498
turnin Bark for Drohn's Distillery!##11407 |goto Durotar/0 40.52,18.26
step
talk Ja'ron##24499
turnin Bark for T'chali's Voodoo Brewery!##11408 |goto 40.29,16.98
step
click Dark Iron Mole Machine Wreckage
|tip You have to defend the three kegs at these locations in order for it to show up.
Click the Complimentary Brewfest Sampler Here [40.11,17.48]
Click the Complimentary Brewfest Sampler Here [40.33,16.81]
use the Complimentary Brewfest Sampler##33096
|tip Throw the Sampler's at the Dark Iron Dwarves and the Mole Machines.
accept This One Time, When I Was Drunk...##12192 |goto 40.80,17.51
step
talk Bizzle Quicklift##27216
turnin This One Time, When I Was Drunk...##12192 |goto 41.57,17.67
Earn the "Down With The Dark Iron" Achievement |achieve 1186
step
talk Ram Master Ray##24497
accept Brew For Brewfest##29393 |goto 42.61,17.83 < 10
step
Get a Keg From Bok Dropcertain Here |goto 50.48,13.57
|tip Use the Giddyup! ability.
|tip Run as fast as you can without making your Ram stop from being too tired.
|tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level.
|tip He will throw you a keg when you get close.
|tip Just get near him and you will throw the keg to him automatically.
Deliver As Many Kegs As You Can Within 4 Minutes to Ram Master Ray |goto 42.61,17.83
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return achieved() and achieved() and achieved() and achieved() and achieved() and achieved() and achieved() and achieved() and achieved() and achieved() end,
description="\nThis guide section will walk you through completing the achievements for the Brewfest event.",
},[[
step
talk Uta Roughdough##23603
buy The Essential Brewfest Pretzel##33043 |n
use The Essential Brewfest Pretzel##33043
Eat "The Essential Brewfest Pretzel" |achieve 1185/7 |goto Durotar/0 41.72,17.87
step
talk Agnes Farwithers##23604
buy Spiced Onion Cheese##34065 |n
use the Spiced Onion Cheese##34065
Eat the "Spiced Onion Cheese" |achieve 1185/4  |goto 41.03,18.44
step
talk Bron##23605
buy Dried Sausage##34063 |n
use the Dried Sausage##34063
Eat the "Dried Sausage" |achieve 1185/1 |goto 41.72,17.80
step
talk Bron##23605
buy Succulent Sausage##34064 |n
use the Succulent Sausage##34064
Eat the "Succulent Sausage" |achieve 1185/6 |goto 41.72,17.80
step
talk Bron##23605
buy Savory Sausage##33023 |n
use the Savory Sausage##33023
Eat the "Savory Sausage" |achieve 1185/3 |goto 41.72,17.80
step
talk Bron##23605
buy Pickled Sausage##33024 |n
use the Pickled Sausage##33024
Eat the "Pickled Sausage" |achieve 1185/2 |goto 41.72,17.80
step
talk Bron##23605
buy Spicy Smoked Sausage##33025 |n
use the Spicy Smoked Sausage##33025
Eat the "Spicy Smoked Sausage" |achieve 1185/5 |goto 41.72,17.80
step
talk Bron##23605
buy The Golden Link##33026 |n
use the The Golden Link##33026
Eat "The Golden Link" |achieve 1185/8 |goto 41.72,17.80
step
Earn "The Brewfest Diet" Achievement |achieve 1185
step
talk Blix Fixwidget##24495
buy Fresh Brewfest Hops##37750 |n
|tip You must be at least level 20 to buy these.
use the Fresh Brewfest Hops##37750
Earn the "Have Keg, Will Travel" Achievement |achieve 303 |goto 41.06,16.95
step
Load the "Brewfest Dailies" Guide |confirm |next "Events Guides\\Brewfest\\Brewfest Dailies"
|tip Click the line above to load the guide.
|tip These are earned by doing Brewfest Dailies.
collect 550 Brewfest Prize Token##37829
step
talk Blix Fixwidget##24495
buy "Brew of the Month" Club Membership Form##37599 |n
use the "Brew of the Month" Club Membership Form##37599
accept Brew of the Month Club##12306 |goto 41.06,16.95
step
talk Ray'ma##27489
turnin Brew of the Month Club##12306 |goto Orgrimmar/1 50.35,73.49
Earn the "Brew of the Month" Achievement |achieve 2796 |goto 50.35,73.49
step
If you are on the EU servers go here to buy your Wolpertinger Pet
talk Blix Fixwidget##24495
buy Wolpertinger's Tankard##32233 |n
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936 |goto 41.06,16.95
step
_Congratulations!_
You Earned the "Brewmaster" Title
step
Press _I_ and Queue for Coren Direbrew or Enter the Dungeon with your Group |q 12491 |future
step
kill Coren Direbrew##23872
Earn the "Dire Brewfest" Achievement |achieve 295
step
Earn the "Brewmaster" Achievement |achieve 1683
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |condition achieved(1260)
step
Fall from a high place without dying
|tip You must fall at least 65 yards and not die to recieve this achievement (flying up in the air and dismounting is a good way to do this.)
Earn the "Almost Blind Luck" Achievement |achieve 1260
step
talk Blix Fixwidget##24495 |goto 41.06,16.95
|tip Buying these 3 pieces will cost 350 coins.
|tip Buy 3 pieces of Brewfest gear.
Wear 3 pieces of brewfest gear, get drunk, and /dance in Dalaran.
Go to Dalarn and equip the items you bought, drink some brew and /dance
Earn the "Disturbing the Peace" Achievement |achieve 293
step
Collect Brew of the Month from the mail
|tip This achievement is given to players that have earned the Brew of the Month Club achievement.
|tip Every month these players will recieve a brew in the mail, simply take this brew out and drink it then you will be one step closer to getting this achievement.
|tip This achievment takes a year to get.
Earn the "Brew of the Year" Achievement |achieve 1183
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Battle for Azeroth\\The Burning of Teldrassil",{
author="support@zygorguides.com",
description="\nThis guide will help you assault Teldrassil on behalf of the Horde.",
condition_suggested=function() return level == 110 and not completedq(52981) end,
},[[
step
accept The Warchief Awaits##50476
|tip You will automatically accept this quest.
step
Follow the path |goto Undercity/0 52.05,64.52 < 5 |walk
Continue following the path |goto Undercity/0 46.32,72.88 < 5 |walk
Continue following the path |goto Undercity/0 45.29,78.11 < 5 |walk
Continue following the path |goto Undercity/0 46.20,83.81 < 5 |walk
Continue following the path |goto Undercity/0 48.81,87.79 < 5 |walk
Continue following the path |goto Undercity/0 52.44,89.43 < 5 |walk
Run up the stairs |goto 53.97,90.40 |goto Undercity/0 53.97,90.40 |only if walking
Follow the path |goto Undercity/0 54.76,94.39 < 5 |only if walking
Run up the stairs |goto Undercity/0 56.19,95.51 < 5 |only if walking
Run up the stairs |goto Undercity/0 57.19,93.29 < 5 |only if walking
talk Lady Sylvanas Windrunner##134554
turnin The Warchief Awaits##50476 |goto Undercity/0 58.14,91.88
accept The Warchief Commands##50642 |goto Undercity/0 58.10,91.88
step
talk High Overlord Saurfang##134574
turnin The Warchief Commands##50642 |goto Northern Barrens/0 50.88,46.00
accept A Quick Diversion##50646 |goto Northern Barrens/0 50.88,46.00
step
talk Lorash##134573
turnin A Quick Diversion##50646 |goto Ashenvale/0 38.91,55.30
accept Everybody Has a Price##50647 |goto Ashenvale/0 38.91,55.30
step
Eliminate #10# Guards |q 50647/1 |goto 36.15,50.64
|tip Use the "Marked!" ability on guards around this area.
|tip It appears as a button on the screen.
|tip You will be stealthed, so enemies won't attack you.
|tip You must not be mounted to do this.
step
Watch the dialogue
Return to the Outskirts of Astranaar |goto 38.92,55.35 < 7 |noway |c |q 50647
step
talk Lorash##134573
turnin Everybody Has a Price##50647 |goto 38.91,55.29
accept A Timely Arrival##50738 |goto 38.91,55.29
step
talk Lady Sylvanas Windrunner##135003
|tip She walks to this location.
turnin A Timely Arrival##50738 |goto 37.83,56.30
accept Zoram'gar Outpost##50740 |goto 37.83,56.30
step
Enter the building |goto 11.67,35.00 < 5 |walk
talk Dagrun Ragehammer##34303
|tip He walks around this area inside the building.
Tell him _"Warchief Sylvanas Windrunner requires your aid repairing her soldiers' weapons."_
Speak with the Weaponsmith |q 50740/3 |goto 11.56,35.36
step
Leave the building |goto 11.67,35.00 < 5 |walk
talk Commander Grimfang##34122
Tell him _"Commander, the warchief asks that you prepare your outpost for an incoming army."_
Speak with Commander Grimfang |q 50740/1 |goto 12.11,33.86
step
Enter the building |goto 12.86,34.12 < 3 |walk
talk Innkeeper Duras##43606
|tip Inside the building.
Tell her _"The warchief needs rations and lodging for an incoming army."_
Speak with the Innkeeper |q 50740/2 |goto 12.99,34.16
step
talk High Overlord Saurfang##134574
turnin Zoram'gar Outpost##50740 |goto 35.17,49.44
accept On The Prowl##50772 |goto 35.17,49.44
step
Meet Sylvanas Near the Entrance to Darkshore |q 50772/1 |goto Darkshore/0 44.07,90.46
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin On The Prowl##50772 |goto 44.08,90.50
accept Into the Woods##50800 |goto 44.08,90.50
step
Kill the enemies that attack in waves
Defeat #6# Ashenvale Huntresses |q 50800/1 |goto 44.08,90.50
step
talk Lady Sylvanas Windrunner##134554
turnin Into the Woods##50800 |goto 44.07,90.49
accept Ripe for the Picking##50823 |goto 44.07,90.49
step
talk High Overlord Saurfang##135443
turnin Ripe for the Picking##50823 |goto Ashenvale/0 12.13,33.75
step
talk Lady Sylvanas Windrunner##134554
accept A Quick Flyover##50837 |goto 12.02,33.77
step
talk Zarvik Blastwix##135501
Speak with Zarvik Blastwix |q 50837/1 |goto 11.82,33.26
step
talk Zarvik Blastwix##135501
Tell him _"Let's Fly."_
Board the Bombardier |invehicle |goto 11.82,33.26 |q 50837
stickystart "Destroy_Wisps"
step
kill Marked Tree##140924+
|tip Use the ability on your action bar.
|tip Aim near the bottom of them.
Fell #3# Marked Trees |q 50837/2 |goto Darkshore/0 41.60,90.63
step
label "Destroy_Wisps"
kill Wisp##141268+
|tip Use the ability on your action bar.
Destroy #30# Wisps |q 50837/3 |goto 41.60,90.63
step
Return to Zoram'gar Outpost |goto Ashenvale/0  12.23,33.21 < 7 |c |q 50837 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Quick Flyover##50837 |goto 12.02,33.78
accept An Unstoppable Force##50880 |goto 12.02,33.78
step
Meet Sylvanas at the Wall |q 50880/1 |goto Darkshore/0 44.00,90.18
step
Pass Through the Wall |q 50880/2 |goto 43.81,89.77
step
Watch the dialogue
talk Lady Sylvanas Windrunner##134554
turnin An Unstoppable Force##50880 |goto 42.84,87.43
accept Clearing Them Out##53604 |goto 42.84,87.43
accept A Glaive Misunderstanding##53605 |goto 42.84,87.43
stickystart "Kill_Darnassian_Archers"
step
use the Everburning Torch##158937
|tip Use it on Glaive Throwers around this area.
|tip They look like wooden artillery machines with purple wings on the ground around this area.
Burn #4# Glaive Throwers |q 53605/1 |goto 40.40,83.39
step
label "Kill_Darnassian_Archers"
Kill enemies around this area
Defeat #7# Night Elf Forces |q 53604/1 |goto 40.40,83.39
step
talk Lady Sylvanas Windrunner##134554
turnin Clearing Them Out##53604 |goto 42.43,82.06
turnin A Glaive Misunderstanding##53605 |goto 42.43,82.06
accept Blurred Vision##50878 |goto 42.43,82.06
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
kill 8 Sentry Owl##141359 |q 50878/1 |goto 42.36,78.18
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 50878/2 |goto 42.36,78.18
step
talk Lady Sylvanas Windrunner##135003
turnin Blurred Vision##50878 |goto 43.30,75.67
accept The Trees Have Ears##50879 |goto 43.30,75.67
step
kill Burning Ancient##141365 |q 50879/1 |goto 44.40,75.11
|tip You may need help with this.
step
talk Lady Sylvanas Windrunner##135003
turnin The Trees Have Ears##50879 |goto 43.30,75.67
step
Watch the dialogue
talk Lady Sylvanas Windrunner##135003
accept The Blackwood Den##52436 |goto 43.30,75.67
accept Aggressive Inspiration##53606 |goto 43.30,75.67
stickystart "Slay_Blackwood_Furbolgs"
step
click Horde Banner##289540
Plant the Northern Banner |q 53606/1 |goto 45.10,83.68
step
click Horde Banner##289540
Plant the Center Banner |q 53606/2 |goto 44.61,85.10
step
click Horde Banner##289540
Plant the Southern Banner |q 53606/3 |goto 44.39,86.53
step
label "Slay_Blackwood_Furbolgs"
Kill enemies around this area
Slay #10# Blackwood Furbolgs |q 52436/1 |goto 44.74,84.01
step
talk Lady Sylvanas Windrunner##134554
turnin The Blackwood Den##52436 |goto 43.32,84.71
turnin Aggressive Inspiration##53606 |goto 43.32,84.71
accept The Start of Something Good##52437 |goto 43.32,84.71
step
Meet Sylvanas at Nazj'vel |q 52437/1 |goto 35.78,84.79
step
talk Jux Burstkix##144346
turnin The Start of Something Good##52437 |goto 35.82,84.84
accept Fueling the Horde War Machine##53608 |goto 35.82,84.84
accept A Very Clear Message##53609 |goto 35.82,84.84
stickystart "Slay_Night_Elves"
step
click Azerite Deposit##297790+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53608/1 |goto 32.63,84.08
step
label "Slay_Night_Elves"
Kill enemies around this area
Slay #10# Night Elves |q 53609/1 |goto 32.63,84.08
step
talk Jux Burstkix##144346
turnin Fueling the Horde War Machine##53608 |goto 35.82,84.84
turnin A Very Clear Message##53609 |goto 35.82,84.84
accept A Gift of Azerite##53627 |goto 35.82,84.84
step
talk Zarvik Blastwix##135501
|tip He walks around this area.
turnin A Gift of Azerite##53627 |goto 44.60,86.54
accept A Wild Ride##52438 |goto 44.60,86.54
step
clicknpc Goblin Hellion##141847
Use the Goblin Hellion |q 52438/1 |goto 44.76,86.42
step
Ride the Goblin Hellion to Wildbend River |q 52438/2 |goto 41.15,69.32 |notravel
stickystart "Slay_Kaldorei_Forces"
step
kill 5 Awakened Ancient##140741 |q 52438/3 |goto 41.86,66.77
|tip Use the abilities on your action bar.
step
label "Slay_Kaldorei_Forces"
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #20# Kaldorei Forces |q 52438/4 |goto 41.86,66.77
step
Return to Lady Sylvanas Windrunner |goto 42.74,67.95 < 7 |c |q 52438 |notravel
step
talk Lady Sylvanas Windrunner##134554
turnin A Wild Ride##52438 |goto 42.70,67.75
accept A Looming Threat##52806 |goto 42.70,67.75
step
talk Lady Sylvanas Windrunner##134554
Ask her _"Where do we go from here, Warchief?"_
Speak with Sylvanas at the Blackwood Den |q 52806/1 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
turnin A Looming Threat##52806 |goto 44.70,86.78
step
talk Lady Sylvanas Windrunner##134554
accept Saurfang Returns##52967 |goto 44.70,86.78
step
talk High Overlord Saurfang##142310
turnin Saurfang Returns##52967 |goto 52.16,22.46
accept No Small Mercy##52970 |goto 52.16,22.46
accept Driving Them Out##53610 |goto 52.16,22.46
accept Seaside Rendezvous##52971 |goto 52.16,22.46
stickystart "Secure_Civilians"
stickystart "Slay_Lordanel_Defenders"
step
kill Ariel Stagguard##144345 |q 52971/2 |goto 51.73,17.76
|tip She walks around this area.
step
kill Caranne Briarbow##142749 |q 52971/1 |goto 46.73,18.79
step
label "Secure_Civilians"
talk Lor'danel Citizen##142408+
|tip They look like neutral NPCs cowering in fear on the ground around this area.
Tell them _"Come with us to safety. We will not harm you."_
Secure #8# Civilians |q 52970/1 |goto 50.80,19.30
step
label "Slay_Lordanel_Defenders"
Kill enemies around this area
Slay #15# Lor'danel Defenders |q 53610/1 |goto 49.00,19.56
step
talk High Overlord Saurfang##142310
turnin No Small Mercy##52970 |goto 52.16,22.45
turnin Driving Them Out##53610 |goto 52.16,22.45
turnin Seaside Rendezvous##52971 |goto 52.16,22.45
accept Killer Queen##52981 |goto 52.16,22.45
step
Find Saurfang in Northern Darkshore |q 52981/1 |goto 45.93,23.55
step
Watch the dialogue
Assist the Warchief |q 52981/2 |goto 46.07,24.31
step
Watch the dialogue
Follow Saurfang |q 52981/3 |goto 46.07,24.31
step
talk Lady Sylvanas Windrunner##144466
Tell her _"I am ready."_
Watch the dialogue
Speak with Sylvanas |q 52981/4 |goto 45.52,18.25
step
talk Lady Sylvanas Windrunner##144466
turnin Killer Queen##52981 |goto 45.51,18.24
step
_Lordaeron is under attack!_
Click Here to Load the "Battle for Lordaeron" Leveling Guide |confirm |next "Events Guides\\World Events\\Battle for Azeroth (110-120)\\The Battle for Lordaeron"
|only if not completedq(51796)
]])
