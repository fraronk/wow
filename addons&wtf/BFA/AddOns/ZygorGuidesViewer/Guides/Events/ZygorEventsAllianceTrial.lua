local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("EventsA") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Quests",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return completedq(12491) end,
description="\nThis guide section will walk you through completing the quests for the Brewfest event.",
},[[
step
talk Dwarf Commoner##19148
accept Brewfest!##11441 |goto Ironforge/0 30.87,71.97
step
talk Ipfelkofer Ironkeg##24710
turnin Brewfest!##11441 |goto Dun Morogh/0 55.12,38.08
step
talk Boxey Boltspinner##27215
accept Chug and Chuck!##12022 |goto 54.67,38.10
step
click Alcohol-Free Brewfest Sampler##186189+
|tip They look like mugs of beer on the small tables inside this tent.
use the Alcohol-Free Brewfest Sampler##33096
Hit S.T.O.U.T. #5# Times |q 12022/1 |goto 54.74,37.92
step
talk Boxey Boltspinner##27215
turnin Chug and Chuck!##12022 |goto 54.67,38.10
step
talk Neill Ramstein##23558
accept Now This is Ram Racing... Almost.##11318 |goto 53.68,38.55
step
As you run around on the ram:
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip The ram runs slow by default. You have to use the Giddyup! ability to make it run at certain speeds for 8 seconds. To make the ram Trot for 8 seconds, use the Giddyup! ability every 2 seconds or so.
Maintain a Trot for 8 seconds |q 11318/1
step
As you run around on the ram:
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip To make the ram Canter for 8 seconds, use the Giddyup! ability a little more often than when you made the ram Trot.
Maintain a Canter for 8 seconds |q 11318/2
step
As you run around on the ram:
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip To make the ram Gallop, just spam the Giddyup! ability.
Maintain a Gallop for 8 seconds |q 11318/3
step
talk Neill Ramstein##23558
turnin Now This is Ram Racing... Almost.##11318
accept There and Back Again##11122 |goto 53.68,38.55
step
map Dun Morogh/0
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
Follow the waypoint path:
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the ram to run faster for longer.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver 3 Kegs in Under 4 Minutes |q 11122/1
step
talk Neill Ramstein##23558
turnin There and Back Again##11122 |goto 53.68,38.55
step
talk Goldark Snipehunter##23486
accept Catch the Wild Wolpertinger!##11117 |goto 55.06,37.71
step
talk Goldark Snipehunter##23486
Ask him _"What are Synthebrew Goggles?"_
collect Synthebrew Goggles##46735 |goto 55.06,37.71 |q 11117
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11117
step
use the Wolpertinger Net##32907
|tip Use it on Wild Wolpertingers.
|tip They look like small rabbits with antlers and wings running around on the ground around this area.
collect 5 Stunned Wolpertinger##32906 |q 11117/1 |goto 54.5,38.5
step
talk Goldark Snipehunter##23486
turnin Catch the Wild Wolpertinger!##11117 |goto 55.06,37.71
accept Pink Elekks On Parade##11118 |goto 55.06,37.71
step
talk Pol Amberstill##24468
accept A New Supplier of Souvenirs##29397 |goto 53.54,38.57
step
talk Belbi Quikswitch##23710
turnin A New Supplier of Souvenirs##29397 |goto 56.44,37.64
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Elwynn Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Elwynn Pink Elekk |q 11118/2 |goto Elwynn Forest/0 33.59,51.44
step
talk Zidormi##141489
Ask her _"Can you show me what Darkshore was like before the battle?"_
Travel to the Past |condition ZGV.InPhase('Old Darnassus') |goto Darkshore/0 48.86,24.46 |q 11118
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Teldrassil Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Azuremyst Pink Elekk |q 11118/3 |goto Darnassus/0 67.00,46.37
step
use the Synthebrew Goggles##46735
Equip the Synthebrew Goggles |havebuff 135977 |q 11118
step
use the Elekk Dispersion Ray##32960
|tip Use it on Azuremyst Pink Elekks around this area.
|tip They look like pink elephants with four horns around this area.
kill 3 Teldrassil Pink Elekk |q 11118/1 |goto The Exodar/0 79.18,57.47
step
talk Goldark Snipehunter##23486
turnin Pink Elekks On Parade##11118 |goto Dun Morogh/0 55.06,37.71
step
Press _I_ and Queue for Coren Direbrew or Enter the Dungeon with your Group |goto Blackrock Depths/2 0.00,0.00 < 1000 |q 12491 |future
|tip You must be level 46 or above to queue for this dungeon.
step
kill Coren Direbrew##23872
accept Direbrew's Dire Brew##12491
|tip You will automatically accept this quest after looting.
step
talk Ipfelkofer Ironkeg##24710
turnin Direbrew's Dire Brew##12491 |goto Dun Morogh/0 55.13,38.07
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Dailies",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
description="\nThis guide section will walk you through completing the daily quests for the Brewfest event.",
},[[
step
talk Becan Barleybrew##23627
accept Bark for the Barleybrews!##11293 |or |goto Dun Morogh/0 56.00,38.06
talk Daran Thunderbrew##23628
accept Bark for the Thunderbrews!##11294 |or |goto 56.00,38.06
|tip You will only be able to accept one of these quests per day.
step
Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
only if havequest (11293)
step
Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
only if havequest (11294)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark Outside the Bank |q 11293/1 |goto Ironforge/0 31.76,66.83
only if havequest (11293)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Military Ward |q 11293/2 |goto 61.12,80.00
only if havequest (11293)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Hall of Explorers |q 11293/3 |goto 65.54,24.24
only if havequest (11293)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Mystic Ward |q 11293/4 |goto 29.46,14.44
only if havequest (11293)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark Outside the Bank |q 11294/1 |goto 31.76,66.83
only if havequest (11294)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Military Ward |q 11294/2 |goto 61.12,80.00
only if havequest (11294)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Hall of Explorers |q 11294/3 |goto 65.54,24.24
only if havequest (11294)
step
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Just keep a Trot pace most of the time and only sometimes keep a Canter pace. If you go too much faster than that, your ram will get tired and you will run out of time.
Bark in the Mystic Ward |q 11294/4 |goto 29.46,14.44
only if havequest (11294)
step
talk Becan Barleybrew##23627
turnin Bark for the Barleybrews!##11293 |goto Dun Morogh/0 56.13,38.06
only if havequest (11293)
step
talk Daran Thunderbrew##23628
turnin Bark for the Thunderbrews!##11294 |goto 56.58,36.91
only if havequest (11294)
step
Wait for the Dark Iron Defense event to start
|tip You have to defend the three kegs at these locations in order to complete it.
Click the Alcohol-Free Brewfest Sampler here |goto 55.31,37.28
Click the Alcohol-Free Brewfest Sampler here |goto 55.73,38.17
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto 56.01,37.06
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto 54.67,38.10
step
talk Neill Ramstein##23558
accept Brew For Brewfest##29394 |goto 53.68,38.55
step
map Dun Morogh/0
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
Follow the waypoint path:
Use the "Giddyup!" ability
|tip It appears as a button on the screen.
|tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the ram to run faster for longer.
Flynn Firebrew will throw you a keg when you get close
Once you have a keg, run back and turn it in to Pol Amberstill
|tip Just get near him and you will throw the keg to him.
Deliver as many kegs as you can within 4 minutes
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Brewfest\\Brewfest Achievements",{
author="support@zygorguides.com",
condition_suggested=function() return isevent('Brewfest') end,
condition_end=function() return achieved(1185) and achieved(303) and achieved(1186) and achieved(2796) and achieved(1936) and achieved(295) and achieved(1683) and achieved(1260) and achieved(293) and achieved(1183) end,
description="\nThis guide section will walk you through completing the achievements for the Brewfest event.",
},[[
step
talk Arlen Lochlan##23522
buy 1 The Essential Brewfest Pretzel##33043 |n
use The Essential Brewfest Pretzel##33043
Eat "The Essential Brewfest Pretzel" |achieve 1185/7 |goto Dun Morogh/0 55.60,38.32
step
talk Anne Summers##23521
buy 1 Spiced Onion Cheese##34065 |n
use Spiced Onion Cheese##34065
Eat the "Spiced Onion Cheese" |achieve 1185/4 |goto 56.20,36.62
step
talk Keiran Donoghue##23481
buy 1 Dried Sausage##34063 |n
use Dried Sausage##34063
Eat the "Dried Sausage" |achieve 1185/1 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Succulent Sausage##34064 |n
use Succulent Sausage##34064
Eat the "Succulent Sausage" |achieve 1185/6 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Savory Sausage##33023 |n
use Savory Sausage##33023
Eat the "Savory Sausage" |achieve 1185/3 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Pickled Sausage##33024 |n
use Pickled Sausage##33024
Eat the "Pickled Sausage" |achieve 1185/2 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 Spicy Smoked Sausage##33025 |n
use Spicy Smoked Sausage##33025
Eat Spicy "Smoked Sausage" |achieve 1185/5 |goto 55.33,37.16
step
talk Keiran Donoghue##23481
buy 1 The Golden Link##33026 |n
use The Golden Link##33026
Eat The Golden Link |achieve 1185/8 |goto 55.33,37.16
step
Earn "The Brewfest Diet" Achievement |achieve 1185 |goto 55.33,37.16
step
talk Belbi Quikswitch##23710
buy 1 Fresh Brewfest Hops##37750 |n
|tip You must be at least level 20 to buy this.
use the Fresh Brewfest Hops##37750
Make your Mount Festive for Brewfest! |achieve 303 |goto 56.44,37.64
step
Wait for the Dark Iron Defense event to start
|tip You have to defend the three kegs at these locations in order to complete it.
Click the Alcohol-Free Brewfest Sampler here |goto 55.31,37.28
Click the Alcohol-Free Brewfest Sampler here |goto 55.73,38.17
use the Alcohol-Free Brewfest Sampler##33096
|tip Use it to throw it at the Dark Iron Dwarves and the Mole Machines around this area.
click Dark Iron Mole Machine Wreckage##189989
|tip It looks like a big metal gear laying on ground in the middle of the festival.
|tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
accept This One Time, When I Was Drunk...##12020 |goto 56.01,37.06
step
talk Boxey Boltspinner##27215
turnin This One Time, When I Was Drunk...##12020 |goto 54.71,38.05
step
Earn the "Down the with Dark iron" Achievement |achieve 1186 |goto 54.67,38.10
step
Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
collect 200 Brewfest Prize Token##37829 |achieve 2796
step
talk Belbi Quikswitch##23710
buy "Brew of the Month" Club Membership Form##37736 |n
use the "Brew of the Month" Club Membership Form##37736
accept Brew of the Month Club##12420 |goto 56.43,37.64
step
Enter the building |goto Ironforge/0 20.67,53.21 < 5 |walk
talk Larkin Thunderbrew##27478
|tip Inside the building.
turnin Brew of the Month Club##12420 |goto 18.77,53.29
step
Earn the "Brew of the Month" Achievement |achieve 2796 |goto 18.77,53.29
step
If you are on the EU servers go here to buy your Wolpertinger Pet
buy Wolpertinger's Tankard##32233 |n
Earn the "Does Your Wopertinger Linger?" Achievement |achieve 1936 |goto Dun Morogh/0 56.43,37.64
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
collect 350 Brewfest Prize Token##37829
talk Belbi Quikswitch##23710 |goto Dun Morogh/0 56.43,37.64
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
description="\nThis guide will help to defend Teldrassil against the incoming Horde attack..",
condition_suggested=function() return level == 110 and not completedq(53310) end,
},[[
step
accept A Short-Lived Peace##52058
|tip You will accept this quest automatically.
step
Enter the building |goto Stormwind City/0 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin A Short-Lived Peace##52058 |goto 85.90,31.57
accept The Horde Uprising##52060 |goto 85.90,31.57
step
Watch the dialogue
talk Master Mathias Shaw##139798
|tip Inside the building.
turnin The Horde Uprising##52060 |goto 85.15,32.35
accept A Disturbance in Ashenvale##52062 |goto 85.15,32.35
step
Follow the path |goto 83.88,30.57 < 5 |walk
Run up the stairs |goto 83.48,29.81 < 5 |only if walking
Follow the path |goto 83.34,29.54 < 5 |only if walking
click Portal to Astranaar##297575
Take the Portal to Astranaar |q 52062/1 |goto 82.68,26.84
step
Find Delaryn Summermoon |q 52062/2 |goto Ashenvale/0 35.86,50.43
step
talk Captain Delaryn Summermoon##134578
turnin A Disturbance in Ashenvale##52062 |goto 35.86,50.43
accept The Light of Elune##52072 |goto 35.86,50.43
accept Knives of the Forsaken##53616 |goto 35.86,50.43
stickystart "Kill_Forsaken_Assassins"
step
clicknpc Astranaar Sentinel##144282+
|tip They look like Night Elf corpses on the ground around this area.
Honor #6# Fallen Soldiers |q 52072/1 |goto 35.88,50.20
step
label "Kill_Forsaken_Assassins"
kill 8 Forsaken Assassin##140801 |q 53616/1 |goto 36.06,50.26
|tip They are stealthed around this area.
step
talk Captain Delaryn Summermoon##134578
turnin The Light of Elune##52072 |goto 35.86,50.43
turnin Knives of the Forsaken##53616 |goto 35.86,50.43
accept A Soft Glow##52116 |goto 35.86,50.43
step
Meet Malfurion at the Entrance to Darkshore |q 52116/1 |goto Darkshore/0 43.82,89.82
step
Watch the dialogue
talk Malfurion Stormrage##133693
turnin A Soft Glow##52116 |goto 43.58,89.25
accept Hidden Amongst the Leaves##52234 |goto 43.58,89.25
accept Mercy for the Mad##53617 |goto 43.58,89.25
stickystart "Kill_Frenzied_Blackwood_Furbolgs"
step
talk Druid of the Claw##140633+
|tip They look like friendly NPC's on the ground around this area.
|tip Some are shapeshifted in animal form and some look like night elves.
Tell them _"You must defend the Grove of the Ancients!"_
Dispatch #8# Druids |q 52234/1 |goto 42.07,77.29
step
label "Kill_Frenzied_Blackwood_Furbolgs"
kill 10 Frenzied Blackwood Furbolg##140686 |q 53617/1 |goto 41.72,76.89
step
talk Captain Delaryn Summermoon##134578
turnin Hidden Amongst the Leaves##52234 |goto 43.41,75.56
turnin Mercy for the Mad##53617 |goto 43.41,75.56
accept Garden Grove##52240 |goto 43.41,75.56
step
kill Monstrous Shredder##143562 |q 52240/1 |goto 43.98,75.34
|tip You may need help with this.
step
talk Captain Delaryn Summermoon##134578
turnin Garden Grove##52240 |goto 45.20,74.96
step
talk Onu##33072
accept Enraged Furbolgs##52245 |goto 45.41,74.85
step
talk Elder Brolg##140719
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brolg |q 52245/1 |goto 43.54,81.08
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
accept Elves in the Machine##53551
stickystart "Sabotage_Horde_Demolishers"
step
Enter the cave |goto 46.27,83.60 < 5 |walk
talk Gren Tornfur##140720
|tip Inside the cave.
Tell him _"Come with us to safety. We will not harm you."_
Rescue Gren Tornfur |q 52245/2 |goto 46.63,83.90
step
Leave the cave |goto 46.27,83.60 < 5 |walk
talk Elder Brownpaw##140721
Tell him _"Come with us to safety. We will not harm you."_
Rescue Elder Brownpaw |q 52245/3 |goto 46.47,85.73
step
label "Sabotage_Horde_Demolishers"
clicknpc Horde Demolisher##144103+
|tip They look like large siege vehicles on the ground around this area.
|tip Run away from them after you click them.
|tip Use the "Sleeping Powder" ability to put enemies to sleep.
|tip It appears as a button on the screen.
Sabotage #5# Horde Demolishers |q 53551/1 |goto 45.02,84.22
step
_Next to you:_
talk Captain Delaryn Summermoon##140728
turnin Elves in the Machine##53551
step
talk Onu##33072
turnin Enraged Furbolgs##52245 |goto 45.41,74.85
accept The Wake of Something New##52242 |goto 45.41,74.85
step
click Azerite Deposit##292886
Discover the Source of Onu's Pain |q 52242/1 |goto 34.66,85.17
step
talk Captain Delaryn Summermoon##134578
turnin The Wake of Something New##52242 |goto 34.73,85.11
accept Azerite Denial##53619 |goto 34.73,85.11
accept No Horde Allowed##53621 |goto 34.73,85.11
stickystart "Slay_Horde_Combatants"
step
click Azerite Deposit##292886+
|tip They look like black and silver rock clusters on the ground around this area.
Collect #6# Azerite |q 53619/1 |goto 32.63,84.08
step
label "Slay_Horde_Combatants"
Kill enemies around this area
Slay #10# Horde Combatants |q 53621/1 |goto 32.63,84.08
step
talk Captain Delaryn Summermoon##134578
turnin Azerite Denial##53619 |goto 34.73,85.11
turnin No Horde Allowed##53621 |goto 34.73,85.11
accept Malfurion Returns##52256 |goto 34.73,85.11
step
talk Malfurion Stormrage##133693
turnin Malfurion Returns##52256 |goto 42.30,66.80
accept "Rock" The World##52257 |goto 42.30,66.80
step
clicknpc Tree of Life##143861
Speak with Tree of Life |q 52257/1 |goto 42.09,66.86
step
Kill enemies around this area
|tip Use the abilities on your action bar.
Slay #50# Horde Enemies |q 52257/2 |goto 42.17,69.08
step
Return to Malfurion Stormrage |goto 42.07,66.87 < 7 |noway |c |q 52257
step
talk Malfurion Stormrage##133693
turnin "Rock" The World##52257 |goto 42.30,66.80
accept Long Away##52197 |goto 42.30,66.80
step
talk Captain Delaryn Summermoon##134578
turnin Long Away##52197 |goto Darnassus/0 40.00,50.42
accept A Looming Threat##52279 |goto Darnassus/0 40.00,50.42
step
talk Janthes Shadeleaf##144146
Tell him _"The Horde have halted their advance at the Wildbend River! We must push them back at once!"_
Rally the Druids of the Claw |q 52279/2 |goto 45.61,35.93
step
talk Myara Sunsong##140498
Tell her _"Captain, the Horde have reached the Wildbend River! We cannot hold them for long!"_
Rally the Kaldorei Forces |q 52279/3 |goto 61.00,49.41
step
talk Astarii Starseeker##4090
Tell her _"Priestess, we require your aid to hold the Horde at Wildbend River."_
Rally the Priestesses of the Moon |q 52279/1 |goto 42.99,73.06
step
talk Malfurion Stormrage##140877
turnin A Looming Threat##52279 |goto Teldrassil/0 58.47,89.49
step
talk Captain Delaryn Summermoon##134578
accept A Threat from the North##52973 |goto 58.48,89.41
step
talk Malfurion Stormrage##140877
turnin A Threat from the North##52973 |goto Darkshore/0 50.42,20.01
accept Rescue Effort##52974 |goto 50.42,20.01
accept Defending Lor'danel##53622 |goto 50.42,20.01
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
accept Action This Day##52975 |goto 50.43,19.68
stickystart "Slay_Horde_Attackers"
step
talk Lor'danel Citizen##142408+
|tip They look like friendly NPCs cowering in fear on the ground around this area.
Tell them _"I have cleared a path - - you must escape now!"_
Rescue #8# Lor'danel Citizens |q 52974/1 |goto 50.80,19.30
step
kill Gormok Axefall##144364 |q 52975/1 |goto 47.67,20.42
step
kill Ragash Bloodwish##144365 |q 52975/2 |goto 46.82,18.82
step
label "Slay_Horde_Attackers"
Kill enemies around this area
Slay #15# Horde Attackers |q 53622/1 |goto 49.00,19.56
step
talk Captain Delaryn Summermoon##134578
|tip She sometimes runs around this area fighting.
|tip You may have to search for her.
turnin Rescue Effort##52974 |goto 50.43,19.68
turnin Defending Lor'danel##53622 |goto 50.43,19.68
turnin Action This Day##52975 |goto 50.43,19.68
accept The Guidance of Our Shan'do##52977 |goto 50.43,19.68
step
talk Zidormi##141489
Ask her _"Can you return me to the present time?"_
Travel to the Present |condition not ZGV.InPhase('Old Darnassus') or not completedq(53310) |goto 48.86,24.46 |q 52977
step
Find Malfurion in Darkshore |q 52977/1 |goto 46.17,24.42
step
Watch the dialogue
Assist Malfurion |q 52977/2 |goto 45.94,24.47
step
clicknpc Tamed Hippogryph##142110
Use Tyrande's Mount |q 52977/3 |goto 45.96,24.96
step
Return to Darnassus |goto Darnassus/0 43.01,73.09 < 7 |c |q 52977 |notravel
step
Enter the building |goto 43.01,74.83 < 5 |walk
talk Mia Greymane##142978
|tip Inside the building.
turnin The Guidance of Our Shan'do##52977 |goto 43.09,78.62
accept A Flicker of Hope##53095 |goto 43.09,78.62 |only if not completedq(53310)
step
Leave the building |goto 43.01,74.80 < 3 |walk
talk Darnassian Citizen##143409+
Tell them _"The flames are clear! Get to the Temple of the Moon!"_
Evacuate #982# Darnassian Citizens |q 53095/1 |goto 58.76,68.28 |only if not completedq(53310)
|tip Use the "Douse" ability on on fires around this area.
|tip It appears as a button on the screen.
|tip It is impossible to complete this objective, you will fail.
step
Return to the Temple of the Moon |goto 43.37,78.31 < 7 |c |q 53095 |notravel
step
Watch the dialogue
turnin A Flicker of Hope##53095 |goto 43.37,78.31
|tip You will turn in this quest automatically.
accept From the Ashes...##53310 |goto 43.37,78.31
|tip You will accept this quest automatically.
step
click Portal to Stormwind##303144 |goto 43.91,78.68
Teleport to Stormwind City |goto Stormwind City/0 49.59,86.53 < 7 |noway |c |q 53310
step
Enter the building |goto 80.69,37.80 < 5 |walk
talk Anduin Wrynn##107574
|tip Inside the building.
turnin From the Ashes...##53310 |goto 85.90,31.57
]])
ZygorGuidesViewer:RegisterGuide("Events Guides\\Warlords of Draenor\\Iron Horde Invasion",{
description="\nTake part in the opening event of the Warlords of Draenor!",
condition_end=function() return completedq(36941) end,
},[[
step
talk Zidormi##88206
Tell her _"Take me back to the present."_
Travel to the Present |condition not ZGV.InPhase('Old Blasted Lands') |goto Blasted Lands/0 48.16,7.28 |q 36941 |future
step
talk Vindicator Maraad##82270
accept Attack of the Iron Horde##35460 |goto 66.58,28.26
accept Under Siege##35462 |goto 66.58,28.26
step
talk Bodrick Grey##85213
accept Peeking into the Portal##36379 |goto 66.94,27.93
step
talk Araazi##85731
fpath Shattered Beachhead |goto 67.65,27.97
stickystart "Kill_Ironmarch_Grunts"
step
clicknpc Iron Demolisher##82273+
Destroy #3# Iron Demolishers |q 35462/1 |goto 63.95,32.69
step
label "Kill_Ironmarch_Grunts"
kill 8 Ironmarch Grunt##76556 |q 35460/1 |goto 63.95,32.69
step
click Telescope##237144
Use the Telescope |q 36379/1 |goto 61.68,36.68
step
talk Vindicator Maraad##82270
turnin Attack of the Iron Horde##35460 |goto 66.58,28.26
turnin Under Siege##35462 |goto 66.58,28.26
accept Subversive Scouts##35463 |goto 66.58,28.26
step
talk Bodrick Grey##85213
turnin Peeking into the Portal##36379 |goto 66.94,27.93
accept Ending Execution##35464 |goto 66.94,27.93
stickystart "Kill_Ironmarch_Scouts"
step
kill Ironmarch Executioner##82774+
|tip They stand in front of kneeling Nethergarde Prisoners around this area.
Stop #3# Executions |q 35464/1 |goto 59.37,27.80
step
label "Kill_Ironmarch_Scouts"
kill 5 Ironmarch Scout##76886 |q 35463/1 |goto 66.90,28.21
|tip They are stealthed near hills and open areas around this area.
step
talk Bodrick Grey##85213
turnin Ending Execution##35464 |goto 66.94,27.93
step
talk Vindicator Maraad##82270
turnin Subversive Scouts##35463 |goto 66.58,28.26
accept Investigating the Invasion##36307 |goto 66.58,28.26
step
talk Vindicator Maraad##84929
turnin Investigating the Invasion##36307 |goto 51.93,28.65
accept Lunatic Lieutenants##35486 |goto 51.93,28.65
accept For Nethergarde!##35492 |goto 51.93,28.65
step
talk Commander Vines##82447
accept Mementos of the Fallen##35494 |goto 52.01,28.51
step
kill Rukah the Machinist##73458
|tip She walks around this area.
collect Rukah's Battleplan##113400 |q 35486/2 |goto 57.00,17.96
step
click Keri's Mug##232576
|tip On the corner of the table under the tent.
collect Keri's Mug##113397 |q 35494/3 |goto 59.35,17.97
step
click Alliance Flag##232532
Plant the Alliance Flag outside of the Main Keep |q 35492/3 |goto 59.86,15.81
step
kill Gar Steelcrush##73446
|tip Upstairs inside the keep.
collect Gar's Battleplan##113401 |q 35486/3 |goto 60.19,13.81
step
click Strumner's Sword##232573
|tip Inside the building.
collect Strumner's Sword##113395 |q 35494/1 |goto 61.81,14.92
step
kill Mokrik Blackfingers##73459
collect Mokrik's Battleplan##113399 |q 35486/1 |goto 62.86,13.12
step
click Alliance Flag##232532
Plant the Alliance Flag at the Center of Nethergarde |q 35492/2 |goto 61.60,18.49
step
click Krolan's Shield##232575
collect Krolan's Shield##113396 |q 35494/2 |goto 60.60,20.01
step
click Alliance Flag##232532
Plant the Alliance Flag at the Entrance to Nethergarde |q 35492/1 |goto 62.97,22.51
step
talk Commander Vines##82447
turnin Mementos of the Fallen##35494 |goto 52.01,28.51
step
talk Vindicator Maraad##82270
turnin Lunatic Lieutenants##35486 |goto 51.93,28.65
turnin For Nethergarde!##35492 |goto 51.93,28.65
accept Toothsmash the Annihilator##35495 |goto 51.93,28.65
accept Death to the Dreadmaul##35488 |goto 51.93,28.65
step
talk Enohar Thunderbrew##76111
accept Enohar's Revenge##35496 |goto 51.78,28.74
stickystart "Slay_Dreadmaul_Ogres"
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.89,31.01 |count 1
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 44.32,35.60 |count 2
step
kill Toothsmash the Annihilator##82451 |q 35495/1 |goto 43.61,36.32
|tip He walks around this area.
step
click Cooking Pot##232625
Poison the Cooking Pot |q 35496/1 |goto 43.40,36.99 |count 3
step
label "Slay_Dreadmaul_Ogres"
Kill Dreadmaul enemies around this area
Slay #8# Dreadmaul Ogres |q 35488/1 |goto 43.83,36.12
step
talk Enohar Thunderbrew##76111
turnin Enohar's Revenge##35496 |goto 51.78,28.74
step
talk Vindicator Maraad##82270
turnin Toothsmash the Annihilator##35495 |goto 51.93,28.65
turnin Death to the Dreadmaul##35488 |goto 51.93,28.65
accept Gar'mak Bladetwist##35500 |goto 51.93,28.65
step
kill Gar'mak Bladetwist##82918 |q 35500/1 |goto 40.05,11.41
|tip Upstairs inside the tower.
step
talk Vindicator Maraad##82270
turnin Gar'mak Bladetwist##35500 |goto 51.93,28.65
accept Report to the King##36941 |goto 51.93,28.65
step
talk King Varian Wrynn##29611
|tip Inside the keep.
turnin Report to the King##36941 |goto Stormwind City/0 85.92,31.56
]])
