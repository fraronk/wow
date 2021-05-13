local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("AchievementsH") then return end
ZygorGuidesViewer.GuideMenuTier = "CAT"
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Armored Brown Bear",{
achieveid={2076},
description="Obtain an Armored Brown Bear from Mei Francis in Dalaran.",
},[[
step
You will need _750 gold_ to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Armored Brown Bear##44226 |n
use Reins of the Armored Brown Bear##44226
achieve 2076
step
Congratulations, you have _earned_ the _Armored Brown Bear_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Get to the Choppa!",{
achieveid={2097},
description="Learn the Mekgineer's Chopper.",
},[[
step
In order to earn this achievement, you will need to either purcahse or create a Mechano-Hog
|next "collect" |confirm
confirm
step
talk Auctioneer Drezbit##46637
buy Mechano-Hog##41508 |goto Orgrimmar 66.5,36.3
|next "learn"
step
label "collect"
collect 12 Titansteel Bar##37663 |tip You will need Mining or a Miner for this. 450
collect 40 Handful of Cobalt Bolts##39681
|tip You will need Engineering or an Engineer to attain these. 350
collect 2 Arctic Fur##44128 |tip You will need Skinning or a Skinner to attain this. From Northrend Enemies
Once you have collected these items, you will need to collect 3 more, which come from vendors.
confirm
step
talk Big Keech##61650
buy 1 Salvaged Iron Golem Parts##44499 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 3,000 gold
buy 8 Goblin-Machined Piston##44501 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 8,000 gold
buy 1 Elementium-Plated Exhaust Pipe##44500 |goto Vale of Eternal Blossoms/0 64.1,41.4
|tip 1,500 gold
Note that these can also be salvaged or dropped from _Ulduar_.
_Flame Leviathan_ and _XT-002 Deconstructor_ are the bosses you are looking for.
step
label "learn"
Use your Mechano-Hog |use Mechano-Hog##41508
learnmount Mechano-Hog##60867
|achieve 2097
step
Congratulations, you have earned the _Get to the Choppa!_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\One Hump or Two?",{
achieveid={4888},
description="This guide will walk you through obtaining a camel mount in Uldum (with just one hump).",
},[[
step
You will need 100 gold and you will need to be Exalted with the Ramkahen faction
|tip Use the Ramkahen Reputation guide in the Cataclysm Dailies guide to become Exalted with the Ramkahen faction.
talk Blacksmith Abasi##48617
Buy either of these 2 camel mounts
buy Reins of the Brown Riding Camel##63044 |n |goto Uldum 54.0,33.3
buy Reins of the Tan Riding Camel##63045 |n |goto Uldum 54.0,33.3
Learn the Reins of the Brown Riding Camel |use Reins of the Brown Riding Camel##63044 |n
Learn the Reins of the Tan Riding Camel |use Reins of the Tan Riding Camel##63045 |n
achieve 4888
step
Congratulations, you have earned the One Hump or Two? achievement! |only if achieved(4888)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Traveler's Tundra Mammoth",{
achieveid={2078},
description="Obtain a Traveler's Tundra Mammoth from Mei Francis in Dalaran.",
},[[
step
You will need _20,000 gold_ to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Traveler's Tundra Mammoth##44234 |n
use Reins of the Traveler's Tundra Mammoth##44234
achieve 2078
step
Congratulations, you have _earned_ the _Traveler's Tundra Mammoth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Vial of the Sands",{
achieveid={5749},
description="Learn how to transform into a dragon and carry an ally.",
},[[
step
You will need at least 29,000 gold to complete this achievement
You can acquire gold through raids, dungeons, quests, or just by farming high level mobs
confirm
|next "AlchemistVialoftheSandsLearn" |only if skill("Alchemy")==525
|next "AHVialoftheSands" |only if skill("Alchemy")<525
step
label "AlchemistVialoftheSandsLearn"
Since you're an Alchemist you can make this item yourself:
Make sure your Archaeology is at least level 450 |only if skill("Archaeology")<450
Use your Archaeology skill on the Kalimdor continent at Tol'vir digsites
collect Canopic Jar##64657 |n
Click the Canopic Jars |use Canopic Jar##64657
collect 1 Recipe: Vial of the Sands##67538
Click this line if you don't want to create the Vial of the Sands yourself |confirm |next "AHVialoftheSands"
only if skill("Alchemy")==525
step
Use your Recipe: Vial of the Sands |use Recipe: Vial of the Sands##67538
learn Vial of the Sands##93328
|next "FarmVialoftheSands" |only if skill("Alchemy")==525
only if skill("Alchemy")==525
step
label "AHVialoftheSands"
talk Auctioneer Drezmit##44866
buy Vial of the Sands##65891 |n
Use the Vial of the Sands |use Vial of the Sands##65891
Earn the Vial of the Sands achievement |achieve 5749 |goto Orgrimmar 54.1,73.3 |next "VialoftheSandsEarned"
Click this line if this isn't on the Auction House or you don't have enough gold to buy it |confirm |next "FarmVialoftheSands"
step
label "FarmVialoftheSands"
talk Auctioneer Drezmit##44866
buy 12 Truegold##58480 |goto Orgrimmar 54.1,73.3
buy 8 Flask of the Winds##58087 |goto Orgrimmar 54.1,73.3
buy 8 Flask of Titanic Strength##58088 |goto Orgrimmar 54.1,73.3
buy 8 Deepstone Oil##56850 |goto Orgrimmar 54.1,73.3
If you don't have enough gold or these items are not on the Auction House you will have to farm for these items.
step
talk Yasmin##49406
buy 8 Sands of Time##65893 |goto Uldum 26.6,7.2
buy 1 Pyrium-Laced Crystalline Vial##65892 |goto Uldum 26.6,7.2
step
create Vial of the Sands##93328,Alchemy,1 total |n |only if skill("Alchemy")>=525 |goto Orgrimmar 52.0,73.8
Find an Alchemist to make your Vial of the Sands |only if default
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly.
collect 1 Vial of the Sands##65891 |n
Use the Vial of the Sands |use Vial of the Sands##65891
Earn the Vial of the Sands achievement! |achieve 5749
step
label "VialoftheSandsEarned"
Congratulations! You've earned the Vial of the Sands achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Mounts\\Wooly Mammoth",{
achieveid={2077},
description="Obtain a Wooly Mammoth from Mei Francis in Dalaran.",
},[[
step
You will need _10,000 gold_ to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation.
talk Mei Francis##32216 |goto Dalaran 58.1,42.1
buy Reins of the Wooly Mammoth##44231 |n
use Reins of the Wooly Mammoth##44231
achieve 2077
step
Congratulations, you have _earned_ the _Wooly Mammoth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\My Sack is Gigantique",{
achieveid={1165},
description="Equip Haris Pilton's 'Gigantique' Bag.",
},[[
step
For this achievement you will _need to purchase_ and equip a bag you can purchase from Haris Pilton
The bag is _1200 gold_ so you may have to save up before completing this achievement
talk Haris Pilton##18756 |goto Shattrath City 75.4,30.5
buy "Gigantique" Bag##38082
_Right Click_ the Gigantique Bag to equip it |achieve 1165
step
Congratulations, you have _earned_ the _My Sack is "Gigantique"_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Represent",{
condition_end=function() return achieved(5755) end,
achieveid={621,1020,1021,5755},
description="Equip a tabard.",
},[[
step
You can _obtain various tabards_ through reputation, achievements, PvP, and questing
_Please refer_ to our reputation and achievment guides to earn your tabards
What follows is the seven faction tabards to _get you on your way_ to 30 tabards
confirm
step
talk Stone Guard Nargol##50488 |goto Orgrimmar 50.4,58.4
buy Orgrimmar Tabard##45581 |n
_Equip_ Orgrimmar Tabard |use Orgrimmar Tabard##45581
confirm
step
talk Champion Uru'zin##50477 |goto Orgrimmar 50.0,58.1
buy Darkspear Tabard##45582
_Equip_ Darkspear Tabard |use Darkspear Tabard##45582
confirm
step
talk Frizzo Villamar##50323 |goto Orgrimmar 50.1,58.6
buy Bilgewater Cartel Tabard##64884
_Equip_ Bilgewater Cartel Tabard |use Bilgewater Cartel Tabard##64884
confirm
step
talk Turtlemaster Odai##66022 |goto Orgrimmar 69.8,41.1
buy Huojin Tabard##83080
_Equip_ Huojin Tabard |use Huojin Tabard##83080
confirm
step
talk Brave Tuho##50483 |goto Thunder Bluff 47.0,50.2
buy Thunder Bluff Tabard##45584
_Equip_ Thunder Bluff Tabard |use Thunder Bluff Tabard##45584
confirm
step
talk Captain Donald Adams##50304 |goto Undercity 63.0,49.1
buy Undercity Tabard##45583
_Equip_ Undercity Tabard |use Undercity Tabard##45583
confirm
step
talk Magistrix Nizara##50484 |goto Eversong Woods 54.3,50.8
buy Silvermoon City Tabard##45585
_Equip_ Silvermoon City Tabard |use Silvermoon City Tabard##45585
confirm
step
Congratulations, you have _earned_ the _Represent_ achievement! |only if achieved(621)
Congratulations, you have _earned_ the _Ten Tabards_ achievement! |only if achieved(1020)
Congratulations, you have _earned_ the _Twenty-Five Tabards_ achievement! |only if achieved(1021)
Congratulations, you have _earned_ the _Thirty Tabards_ achievement! |only if achieved(5755)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Collections\\Ring of the Kirin Tor",{
achieveid={2084},
description="Purchase a Signet of the Kirin Tor, Band of the Kirin Tor, Loop of the Kirin Tor, or Ring of the Kirin Tor in Dalaran.",
},[[
step
You will need _8,500 gold_ to complete this achievement
|tip The price can be reduced by Kirin Tor discounts based on current reputation
talk Harold Winston##32172 |goto Dalaran 40.4,33.8
_Buy_ one of the Kirin Tor rings
buy 1 Band of the Kirin Tor##40586 |n |only Rogue, Hunter, Monk, Shaman, Druid
buy 1 Loop of the Kirin Tor##44934 |n |only Mage, Warlock, Priest, Shaman, Druid, Paladin
buy 1 Ring of the Kirin Tor##44935 |n |only Warrior, Death Knight, Paladin
buy 1 Signet of the Kirin Tor##40585 |n |only Mage, Warlock, Priest, Shaman, Druid, Paladin
achieve 2084
step
Congratulations, you have _earned_ the _Ring of the Kirin Tor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Classic\\Classic Dungeonmaster",{
achieveid={1283},
description="This guide will walk you through how to get the Classic Dungeonmaster achievement.",
},[[
step
Complete the following Classic dungeons:
|tip Use the dungeon guides to accomplish this.
Deadmines |achieve 1283/1
Ragefire Chasm |achieve 1283/2
Wailing Caverns |achieve 1283/3
Shadowfang Keep |achieve 1283/4
Blackfathom Deeps |achieve 1283/5
Stormwind Stockade |achieve 1283/6
Gnomeregan |achieve 1283/7
Razorfen Kraul |achieve 1284/8
Razorfen Downs |achieve 1283/9
Scarlet Monastery |achieve 1283/10
Uldaman |achieve 1283/11
Zul'Farrak |achieve 1283/12
Maraudon |achieve 1283/13
Sunken Temple |achieve 1283/14
Blackrock Depths |achieve 1283/15
Lower Blackrock Spire |achieve 1283/16
King of Dire Maul |achieve 1283/17
Scholomance |achieve 1283/18
Stratholme |achieve 1283/19
step
Congratulations, you have earned the Classic Dungeonmaster achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Classic\\King of Dire Maul",{
achieveid={644},
description="This guide will walk you through on how to get to and kill the 3 end bosses of the Dire Maul instances to complete this achievement.",
},[[
step
label "start"
Click here to be directed to the Warpwood Quarter. |confirm |next "Warpwood" |achieve 644/1
Click here to be directed to the Gordock Commons. |confirm |next "Gordock" |achieve 644/2
Click here to be directed to the Capital Gardens. |confirm |next "Capital" |achieve 644/3
Click here if you have completed the top 3 instances. |confirm always |next "end"
step
label "Warpwood"
Press _I_ and queue for Dire Maul: Warpwood Quarter or enter the dungeon with your group |goto Dire Maul/5 6.7,38.3 < 100 |c |or
|confirm |or
step
talk "Ambassador" Dagg'thol##44971
accept Pusillin The Thief##27107 |goto Dire Maul/5 7.1,36.3
accept Lethtendris's Web##27108 |goto Dire Maul/5 7.1,36.3
only if not completedq(27107) and not completedq(27108)
step
talk Pusillin##14354 |goto 12.5,30.9
Tell him _"Game? Are you crazy?"_
confirm
step
talk Furgus Warpwood##44969
accept Shards of the Felvine##27103 |goto 11.2,38.4
accept Alzzin the Wildshaper##27104 |goto 11.2,38.4
accept An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27103) and not completedq(27104) and not completedq(27105)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	12.6,40.7	12.5,65.8	11.9,72.6
path	13.0,77.1	22.0,75.5	27.1,73.5
path	31.2,73.0	31.4,57.5	31.8,51.1
path	31.4,36.6	32.3,26.6	36.1,26.1
path	46.3,26.2	53.6,26.2	55.1,27.4
path	55.6,30.6	55.9,34.3	57.5,37.4
path	59.1,37.9	66.5,38.1	73.8,41.2
path	74.8,46.7	71.6,46.8
talk Pusillin##14354
_Follow_ the path and _talk to Pusillin_ whenever he stops |goto 71.6,46.8 < 5 |c |noway
step
talk Pusillin##14354
Tell him _"Prepare to meet your maker"_ |goto Dire Maul/5 75.8,45.2
kill 1 Pusillin##14354
Get the Book of Incantations |q Pusillin The Thief##27107/1 |goto 73.77,43.74 |only if havequest(27107)
confirm |only if not havequest(27107)
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	73.4,40.2	65.7,37.7	60.8,37.8
path	58.2,37.8	57.0,36.6	55.8,33.5
path	55.6,29.1	54.7,26.6	52.0,26.2
path	43.8,26.2	43.7,48.0	45.3,60.5
path	44.4,67.1	43.8,64.6	43.8,58.9
_Follow_ the path |goto 43.8,58.9 < 5 |c |noway
step
kill 1 Lethtendris##14327 |goto 42.8,49.1
|tip Void Bolt deals shadow damage to her current target
|tip Shadow Bolt Volley will deal AoE damage to the whole group
|tip Curse of Thorns has a 50% chance per melee attack to cause shadow damage to the player afflicted
|tip Curse of Tongues will slow the casting speed of anyone effected by 50%
|tip Immolate will apply a standard fire DoT
|tip Lethtendris will Enlarge Pimgib, increasing his damage
|tip Burn down Pimgib and focus on Lethtendris
|tip Interrupt Shadow Bolt Volley, Curse of Thorns, and Curse of Tongues
collect Lethtendris' Web##18426 |q Lethtendris's Web##27108/1 |goto 42.8,49.1 |only if havequest(27108)
Defeat Lethtendris |scenariogoal 25058 |goto 42.8,49.1
step
map Dire Maul/5
path follow loose; loop off; ants curved; dist 10
path	43.8,57.2	43.8,66.7	44.8,66.5
path	46.9,63.4	47.0,63.3
_Follow_ the path |goto 47.0,63.3 < 5 |c |noway
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.5,82.6	63.2,84.8	63.0,90.3
path	60.9,92.3	58.1,90.9	57.5,87.6
path	58.1,80.3	58.3,76.2
_Follow_ the path |goto Dire Maul/6 58.3,76.2 < 8 |c |noway
step
kill 1 Hydrospawn##13280 |goto Dire Maul/6,55.5,71.4
|tip Submersion reduces the party's stamina by 10 per stack. Acts as a soft enrage
|tip Move away from Hydrospawn when he uses Riptide. This will disarm and knock back anyone within 10 yards
|tip Hydrospawn will Summon Massive Geyser, dealing frost damage to anyone standing in the geyser
|tip At 50% health, he will summon 2 Hydrolings. These have a knockback and drop threat every time they land a hit. Kill them quickly
collect Hydrospawn Essence##18299 |q An Unwelcome Guest##27105/1 |goto Dire Maul/6,55.5,71.4 |only if havequest(27105)
Defeat Hydrospawn |scenariogoal 25059 |goto Dire Maul/6,55.5,71.4
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	58.2,66.5	57.7,54.9	58.5,52.6
path	60.1,51.9	61.5,52.8	62.1,55.1
path	62.1,69.3	60.0,69.5
_Follow_ the path |goto Dire Maul/6 60.0,69.5 < 5 |c |noway
step
kill 1 Zevrim Thornhoof##11490 |goto 57.6,74.0 |only if default
|tip Players afflicted by Intense Pain will deal shadow damage to anyone standing nearby
|tip Occasionally, Thornhoof will Sacrifice players on his altar. The sacrificed player will take heavy damage over 6 seconds
_Healer:_
|tip You must heal the Sacrifice target or they will die
kill 1 Zevrim Thornhoof##11490 |q Alzzin the Wildshaper##27104/1 |goto 57.6,74.0 |only if havequest(27104)
Defeat Zevrim Thornhoof |scenariogoal 25060 |goto 57.6,74.0
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	53.5,77.3	52.8,88.0	52.9,91.2
path	48.8,90.9	40.7,80.5
_Jump down_ and follow the path |goto 40.7,80.5 < 8 |c |noway
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	39.6,78.4	40.4,71.4	41.0,66.6
path	39.3,60.9	40.2,48.9
talk Old Ironbark##11491
Tell him "Thank you, Ironbark. We are ready for you to open the door."
_Follow him_ and go through the door he opens |goto 40.2,48.9 < 5 |c
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	40.2,45.0	40.2,33.1	41.0,30.1
path	42.9,28.9	48.6,28.9	51.0,22.0
path	55.8,16.9	59.8,16.6	64.5,19.0
path	66.0,28.8
_Follow_ the path |goto 66.0,28.8 < 9 |c |noway
step
kill 1 Alzzin the Wildshaper##11492 |goto Dire Maul/6,57.7,28.9 |only if default
_Satyr Form:_
|tip Alzzin will leech mana from random players using Enervate
|tip Wither is a disease that deals nature damage and reduces strength by 50 for 21 seconds
_Tree Form:_
|tip Alzzin will Disarm and Knock Away the tank. Knock Away acts as a threat drop
|tip _Wild Regeneration_ will heal Alzzin over 16 seconds
_Dire Wolf Form:_
|tip Mangle will slow the tank's movement speed by 50% and inflict a short bleed
|tip At 50% health he will use Come Minions!, summoning imps which reset threat every time they hit. Kill them quickly
kill 1 Alzzin the Wildshaper##11492 |q Alzzin the Wildshaper##27104/2 |goto Dire Maul/6,57.7,28.9 |only if havequest(27104)
Defeat Alzzin the Wildshaper |scenariogoal 27854 |goto Dire Maul/6,57.7,28.9 |achieve 644/1
step
click Felvine Shard##179559
Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539
Create a Sealed Reliquary of Purity |q Shards of the Felvine##27103/1 |goto 55.0,27.1
only if havequest(27103)
step
map Dire Maul/6
path follow loose; loop off; ants curved; dist 10
path	60.2,28.6	68.1,27.0	66.8,21.8
path	63.6,17.1	55.8,17.0	51.1,21.4
path	48.3,28.8	43.0,28.9	40.9,30.2
path	40.2,33.2	40.2,49.5	39.2,60.9
path	40.6,65.0	40.5,70.8	39.1,76.6
path	41.9,82.2	49.3,91.2	52.8,91.1
path	52.9,84.9	54.0,75.3	57.4,75.0
path	57.3,80.7	57.5,90.0	60.3,92.7
path	63.5,89.8	63.3,84.7	61.4,82.6
path	Dire Maul/5 45.7,63.0	Dire Maul/5 43.8,53.6
path	Dire Maul/5 43.8,26.2	Dire Maul/5 33.4,26.3
path	Dire Maul/5 31.5,30.3	Dire Maul/5 31.6,48.7
path	Dire Maul/5 31.1,63.9	Dire Maul/5 31.0,72.5
path	Dire Maul/5 21.4,75.4	Dire Maul/5 14.2,76.9
path	Dire Maul/5 12.4,72.9	Dire Maul/5 12.7,54.2
path	Dire Maul/5 12.4,38.3	Dire Maul/5 8.1,36.6
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the dungeon |goto Dire Maul/5 8.1,36.6 < 20 |c |noway
step
talk "Ambassador" Dagg'thol##44971
turnin Pusillin The Thief##27107 |goto Dire Maul/5 7.0,36.2
only if not completedq(27107)
step
talk "Ambassador" Dagg'thol##44971
turnin Lethtendris's Web##27108 |goto Dire Maul/5 7.0,36.2
only if not completedq(27108)
step
talk Furgus Warpwood##44969
turnin Shards of the Felvine##27103 |goto 11.2,38.4
only if not completedq(27103)
step
talk Furgus Warpwood##44969
turnin Alzzin the Wildshaper##27104 |goto 11.2,38.4
only if not completedq(27104)
step
talk Furgus Warpwood##44969
turnin An Unwelcome Guest##27105 |goto 11.2,38.4
only if not completedq(27105)
step
Congratulations, you have completed Dire Maul: Warpwood Quarter! |achieve 644/1
Click here to go to the start of the guide. |confirm |next "start"
step
label "Gordock"
You may choose to do a normal run or a special tribute run
The tribute run requires you to skip all bosses up to the king and rewards slightly better loot
Click here to do a normal run |confirm |next "Normal"
Or
Click here to do a tribute run |confirm |next "Tribute"
step
label "Normal"
Press _I_ and queue for Dire Maul: Gordock Commons |confirm |or
Or
Enter the dungeon with your group |goto Dire Maul/1 71.1,93.5 < 100 |c |or
step
talk Stonemaul Ogre##45052
accept King of the Gordok##27128 |goto Dire Maul 71.7,92.2
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	71.5,90.1	69.3,86.8	69.3,85.0
_Follow_ the path |goto 69.3,85.0 < 6 |c |noway
step
kill 1 Guard Mol'dar##14326 |goto 69.8,75.5
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Mol'dar
|tip Mol'dar will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Mol'dar will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Mol'dar |scenariogoal 25066 |or |goto 69.8,75.5
Start the scenario |confirm |or
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	69.3,73.6	69.3,69.9	66.5,68.3
_Follow_ the path |goto 66.5,68.3 < 8 |c |noway
step
kill 1 Stomper Kreeg##14322 |goto Dire Maul 62.2,66.0
|tip Booze Spit is a frontal cone attack that will reduce chance to hit by 75% and make you drunk for 8 seconds. Avoid standing in front of Kreeg
|tip War Stomp will knock back any player within 5 yards
|tip Anyone within 8 yards is vulnerable to Whirlwind. Run away when he does this
|tip At 50% health, Kreeg gains Frenzy and Drunken Rage. This will cause him to attack 60% faster and move 100% faster
_Tank:_
|tip Keep your back to a wall and save defensive cooldowns for the 50% enrage
Defeat Stomper Kreeg |scenariogoal 25070 |goto Dire Maul 62.2,66.0
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	61.1,68.3	59.1,71.1	57.4,70.6
path	55.1,68.3	50.0,67.2	49.5,69.8
_Follow_ the path |goto 49.5,69.8 < 8 |c |noway
step
kill 1 Guard Fengus##14321 |goto 49.4,78.7
|tip Important: Clear the ogres and hounds in the courtyard before engaging Guard Fengus
|tip Fengus will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Fengus will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Fengus |scenariogoal 25067 |goto 49.4,78.7
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	48.1,78.1	44.1,78.1	40.4,78.2
path	36.5,78.2	31.8,78.1	29.4,77.1
path	27.6,74.6	27.0,69.5	27.0,63.0
_Follow_ the path |goto 27.0,63.0 < 10 |c |noway
step
kill 1 Guard Slip'kik##14323 |goto 26.5,57.8
|tip Important: Clear the ogres nearby before engaging Guard Slip'kik
|tip Slip'kik will randomly Shield Charge players, dealing damage and knocking them back
|tip Strike is a physical attack used on the tank
|tip Shield Bash will interrupt any spell currently being cast. Avoid casting while standing near him or when hit with Shield Charge.
|tip At 50% health, Slip'kik will use Intruder Alert! - calling nearby mobs to assist him
|tip He will call out for help, so you may need to clear some of the area around him first
Defeat Guard Slip'kik |scenariogoal 25068 |goto 26.5,57.8
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	27.8,57.5	25.3,57.7	23.9,60.0
path	24.2,66.1	23.3,67.0	23.3,61.2
path	23.9,56.9	25.6,54.5	27.6,54.5
path	27.6,59.9	27.7,64.0	29.1,65.8
path	31.8,65.5	31.8,61.5
_Follow_ the path |goto 31.8,61.5 < 5 |c |noway
step
kill 1 Captain Kromcrush##14325 |goto 31.9,50.8
|tip Keep Kromcrush away from the area in which he stands. He will use Frightening Shout, fearing anyone within 8 yards for 6 seconds
|tip Mortal Cleave will hit a melee target and another standing near them, reducing healing by 50%
|tip At 50% health, Kromcrush will use Intruder Alert!, calling 2 Gordok Reavers to aid him. CC or kill these first
|tip These reavers will use Cleave, Sunder Armor, and Mortal Strike
|tip At 25% health, Kromcrush will activate Retaliation for 8 seconds, instantly striking anyone hitting him in melee combat
_DPS:_
|tip Do not attack Kromcrush during Retaliation
_Healer:_
|tip Be aware that the healing reducting effects on this fight will require to you heal more frequently
Defeat Captain Kromcrush |scenariogoal 25071 |goto 31.9,50.8
step
kill 1 Cho'Rush the Observer##14324 |goto 31.8,26.4
kill 1 King Gordok##11501 |goto 31.8,26.4 |only if default
_Cho'Rush the Observer:_
|tip Cho'Rush can spawn as a Priest, Shaman, or Mage
|tip Interrupt Cho'Rush when he casts Heal, Healing Wave, or Arcane Explosion
|tip Dispel his Power Word: Shield and Bloodlust
_King Gordok:_
|tip Berserker Charge will deal damage to random players and knock them up in the air
|tip The tank will take more damage as the fight progresses thanks to stacks of Sunder Armor
|tip Mortal Strike will reduct healing on the tank by 50%
|tip The King will use War Stomp on anyone within 5 yards, dealing damage and stunning for 4 seconds
kill King Gordok##11501 |q King of the Gordok##27128/1 |goto 31.8,26.4 |only if havequest(27128)
Defeat King Gordok |scenariogoal 18535 |goto 31.8,26.4
step
talk Mizzle the Crafty##14353 |goto 31.7,27.4
Ask him: _"I'm the new king? What are you talking about?"_
Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well
click Gordok Tribute##179564
confirm |only if not completedq(27128) |next "Return"
confirm |only if completedq(27128) |next "end"
step
map Dire Maul/1
path follow loose; loop off; ants curved; dist 10
path	31.8,31.1	31.8,39.9	31.8,50.8
path	31.8,58.9	31.7,65.6	28.5,65.7
path	27.6,61.1	27.6,54.5	24.7,55.0
path	23.2,61.1	23.6,67.2	24.3,64.1
path	24.3,59.5	26.0,59.5	27.0,63.5
path	27.0,69.5	27.2,74.1	29.4,77.4
path	33.3,78.2	38.7,78.2	44.0,78.1
path	49.4,78.0	53.2,77.8	56.2,78.9
path	57.4,83.8	61.6,86.6	66.0,87.6
path	71.7,90.5
You can either run to the beginning of the dungeon to turn in your quests.
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
Return to the beginning of the instance |goto 71.7,90.5 < 12 |c |noway
step
talk Druid of the Talon##45040
turnin King of the Gordok##27128 |goto Dire Maul 71.7,92.3
only if not completedq(27128)
step
Congratulations, you have completed Dire Maul: Gordock Commons |achieve 644/2
Click here to go to the start of the guide. |confirm |next "start"
step
label "Capital"
Press _I_ and queue for Dire Maul: Capital Gardens or enter the dungeon with your group |goto Dire Maul/2 93.5,47.7 < 100 |c |or
|confirm |or
step
talk Estulan##44991
accept The Cursed Remains##27112 |goto 90.6,44.9
accept The Shen'dralar Ancient##27113 |goto 90.6,44.9
step
talk Shen'dralar Watcher##44999
accept The Warped Defender##27109 |goto Dire Maul/2 87.3,52.6
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 73.2,53.8
|tip Kill all the Remnants around the crystal to deactivate it.
Kill all the Remnants around the crystal to deactivate it
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	68.6,56.3	61.6,55.4	50.6,43.6
path	45.2,36.6	40.5,35.1	Dire Maul/3 51.7,21.6
path	Dire Maul/3 38.5,23.4	Dire Maul/3 34.8,34.7
_Follow_ the path |goto Dire Maul/3 34.8,34.7 < 15 |c |noway
step
kill Magister Kalendris##11487 |goto Dire Maul/3,30.6,45.8 |only if default
|tip Kalendris will randomly cast Shadow Word: Pain or party members. Dispel this or heal through it
|tip Mind Flay will deal shadow damage to the target and reduce movement speed by 50%
|tip Mind Blast deals shadow damage to his current target
|tip Occasionally he will use Dominate Mind on a party member. CC or dispel the afflicted player
kill Magister Kalendris##11487 |q The Cursed Remains##27112/1 |goto Dire Maul/3,30.6,45.8 |only if havequest(27112)
Defeat Magister Kalendris |scenariogoal 25061 |goto Dire Maul/3,30.6,45.8
step
map Dire Maul/3
path follow loose; loop off; ants curved; dist 10
path	34.6,35.5	38.6,25.5	49.8,16.5
path	46.4,13.5	Dire Maul/2 20.3,21.6
path	Dire Maul/2 23.0,25.8	Dire Maul/2 34.1,23.7
_Follow_ the path |goto Dire Maul/2 34.1,23.7 < 15 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto Dire Maul/2 42.0,22.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,27.5	48.4,49.4
_Follow_ the path |goto 48.4,49.4 < 8 |c |noway
step
talk Shen'dralar Ancient##14358
turnin The Shen'dralar Ancient##27113 |goto 48.4,53.8
accept The Madness Within##27110 |goto 48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	48.5,59.1	48.3,78.9
_Follow_ the path |goto 48.3,78.9 < 8 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 39.5,83.4
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
kill Illyanna Ravenoak##11488 |goto 21.7,75.8 |only if default
|tip Ferra will use Charge on random players, dealing damage and stunning them. This will be followed by Maul, dealing physical damage
|tip Multi-Shot will hit players standing close to each other. Spread out
|tip Areas targeted with Volley will deal arcane damage to anyone standing within. Move out of it
|tip Ravenoak will drop Immolation Trap at her feet. Don't walk over these traps
|tip Concussive Shot will slow or stun random party members for 3 seconds
kill Illyanna Ravenoak##11488 |q The Cursed Remains##27112/2 |goto 21.7,75.8 |only if havequest(27112)
Defeat Illyanna Ravenoak |scenariogoal 25062 |goto 21.7,75.8
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	39.4,79.5	47.4,79.8	47.0,71.4
path	45.9,60.1	44.3,58.0	41.5,53.2
_Follow_ the path, jumping onto the ledge first and then jump down to the ramp |goto 41.5,53.2 < 10 |c |noway
step
kill 1 Tendris Warpwood##11489 |goto Dire Maul/2 34.6,53.3 |only if default
|tip Intruder Alert! will summon any Ironbark Protectors left alive in the instance to Warpwood's side
|tip Tendris will Trample anyone within 10 yards, dealing physical damage
|tip Grasping Vines will deal damage to the party, knocking them down and preventing movement for 10 seconds. Dispel this if possible
|tip If no player is within melee range, he will teleport a random person to him and Entangle them for 10 seconds
kill 1 Tendris Warpwood##11489 |q The Warped Defender##27109/1 |goto Dire Maul/2 34.6,53.3 |only if havequest(27109)
Defeat Tendris Warpwood |scenariogoal 25063 |goto Dire Maul/2 34.6,53.3
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	76.5,39.9	71.4,40.3	69.4,44.4
path	69.1,52.7	66.7,57.4	60.9,57.7
_Follow_ the path |goto Dire Maul/4 60.9,57.7 < 8 |c |noway
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	58.7,60.3	57.4,70.2	50.4,81.7
_Follow_ the path |goto Dire Maul/4 50.4,81.7 < 10 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 46.5,81.6
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	53.5,76.1	58.0,66.2	58.5,52.9
path	54.7,39.6	50.5,34.4
_Follow_ the path |goto Dire Maul/4 50.5,34.4 < 10 |c |noway
step
kill Mana Remnant##11483+, Arcane Aberration##11480+ |goto 44.7,34.1
|tip Kill all the Remnants around the crystal to deactivate it.
confirm
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	46.8,35.8	41.0,41.9
_Follow_ the path, _avoiding the elementals_ |goto Dire Maul/4 41.0,41.9 < 10 |c |noway
step
kill Immol'thar##11496 |goto 35.5,57.0 |only if default
|tip Eyes of Immol'thar cannot be tanked. Kill them quickly
|tip Portal of Immol'thar will teleport a random player and wipe their threat
|tip Immol'thar will use Infected Bite on the tank, increasing damage taken by a small amount and dealing nature damage. Dispel this disease
|tip Frenzy will cause Immol'thar to enrage, increasing his attack speed by 60% for 3 minutes
|tip He will occasionally Trample, dealing physical damage to anyone standing within 10 yards
kill Immol'thar##11496 |q The Madness Within##27110/1 |goto 35.5,57.0 |only if havequest(27110)
Defeat Immol'thar |scenariogoal 27855 |goto 35.5,57.0
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	43.6,46.8	51.7,42.6	56.9,37.4
path	59.3,33.4	60.2,27.3	67.2,24.2
path	74.1,23.1	69.8,21.4
_Follow_ the path |goto Dire Maul/4 69.8,21.4 < 8 |c |noway
step
kill Prince Tortheldrin##11486 |goto 60.4,23.5 |only if default
_Healer:_
|tip Price Tortheldrin attacks very quickly and is capable of dealing large amounts of burst damage
_Tank:_
|tip Save defensive cooldowns in case the healer gets hit with Counterspell
|tip Periodically he will _hrash, gaining 2 extra attacks
|tip Arcane Blast will deal damage to a random player and knock them back
|tip Anyone within 8 yards of Tortheldrin will take damage from Whirlwind. Move away during this
|tip He will also randomly Counterspell players. This spell can be very dangerous for healers, as it will prevent spellcasting for 15 seconds
kill Prince Tortheldrin##11486 |q The Madness Within##27110/2 |goto 60.4,23.5 |only if havequest(27110)
Defeat Prince Tortheldrin |scenariogoal 25065 |goto 60.4,23.5
step
map Dire Maul/4
path follow loose; loop off; ants curved; dist 10
path	66.2,21.8	74.2,22.4	72.7,24.1
path	67.1,24.0	60.3,27.2	59.3,33.0
path	56.4,37.9	59.3,57.6	66.3,57.8
path	68.9,54.5	69.6,43.0	71.9,40.1
path	76.9,39.9	Dire Maul/2 36.9,53.3
path	Dire Maul/2 44.4,53.2	Dire Maul/2 57.5,54.2
path	Dire Maul/2 64.8,56.3	Dire Maul/2 78.8,50.5
You can either run to the beginning of the dungeon to turn in your quests
Or
You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance
Return to the beginning of the instance |goto Dire Maul/2 78.8,50.5 < 10 |c |noway
only if not completedq(27109) and not completedq(27112) and not completedq(27110)
step
talk Shen'dralar Watcher##44999
turnin The Warped Defender##27109 |goto Dire Maul/2,87.3,52.4
only if not completedq(27109)
step
talk Estulan##44991
turnin The Cursed Remains##27112 |goto 90.5,44.8
only if not completedq(27112)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	84.4,47.7	71.3,56.0	61.9,55.5
path	54.8,47.2	45.1,36.6	40.8,34.8
path	Dire Maul/3 50.0,12.7	Dire Maul/2 20.3,20.9
path	22.7,26.2	35.6,25.7	48.4,26.1
path	48.4,43.1
_Follow_ the path |goto Dire Maul/2 48.4,43.1 < 5 |c |noway
only if not completedq(27111)
step
talk Shen'dralar Ancient##14358
turnin The Madness Within##27110 |goto Dire Maul/2,48.4,53.8
accept The Treasure of the Shen'dralar##27111 |goto Dire Maul/2,48.4,53.8
only if not completedq(27111)
step
map Dire Maul/2
path follow loose; loop off; ants curved; dist 10
path	47.0,59.8	44.3,59.4	41.2,53.4
path	30.0,42.6	Dire Maul/4 71.3,40.3
path	Dire Maul/4 69.3,45.5	Dire Maul/4 68.8,54.5
path	Dire Maul/4 65.7,57.4	Dire Maul/4 59.3,57.2
path	Dire Maul/4 56.3,38.4	Dire Maul/4 59.6,32.8
path	Dire Maul/4 60.6,26.4	Dire Maul/4 67.2,24.1
path	Dire Maul/4 74.1,23.8	Dire Maul/4 72.6,21.7
_Jump down_ and _follow_ the path |goto Dire Maul/4 72.6,21.7 < 5 |c |noway
only if not completedq(27111)
step
click Treasure of the Shen'dralar##179517
turnin The Treasure of the Shen'dralar##27111 |goto 70.6,24.1
only if not completedq(27111)
step
Congratulations, you have completed Dire Maul: Capital Gardens! |achieve 644/3
Click here to go to the start of the guide. |confirm |next "start"
step
label "end"
Congratulations you have completed the achievement "King of Dire Maul"! |achieve 644
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Classic\\Pardon Denied",{
achieveid={5503},
description="This guide will walk you through on how to get the Pardon Denied achievement.",
},[[
step
This achievement is gained by defeating Baron Ashbury in Shadowfang Keep _without letting him heal with Stay of Execution_ on Heroic mode
kill Baron Ashbury##46962
Pardon Denied |achieve 5503 |goto Shadowfang Keep 66.4,73.2
step
Congratulations, you have earned the Pardon Denied achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Classic\\To the Ground!",{
achieveid={5504},
description="This guide will walk you through on how to get the To the Ground! achievement.",
},[[
step
This achievement is gained by defeating Commander Springvale in Shadowfang Keep _without allowing him to receive Unholy Empowerment_ on Heroic mode
kill Commander Springvale##4278
To the Ground! |achieve 5504 |goto Shadowfang Keep 28.0,59.7
step
Congratulations, you have earned the To the Ground! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Arcatraz",{
achieveid={681},
description="This guide will tell you how to gain the Heroic: The Arcatraz achievement.",
},[[
step
This achievement is gained by completing The Arcatraz dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Harbinger Skyriss |achieve 681
step
Congratulations, you have earned the Heroic: The Arcatraz achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Auchenai Crypts",{
achieveid={672},
description="This guide will tell you how to gain the Heroic: Auchenai Crypts achievement.",
},[[
step
This achievement is gained by completing the Auchindoun: Auchenai Crypts dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Exarch Maladaar |achieve 672
step
Congratulations, you have earned the Heroic: Auchenai Crypts achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Blood Furnace",{
achieveid={668},
description="This guide will tell you how to gain the Heroic: The Blood Furnace achievement.",
},[[
step
This achievement is gained by completing The Blood Furnace dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Keli'dan the Breaker |achieve 668
step
Congratulations, you have earned the Heroic: The Blood Furnace achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Botanica",{
achieveid={680},
description="This guide will tell you how to gain the Heroic: The Botanica achievement.",
},[[
step
This achievement is gained by completing The Botanica dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat  Warp Splinter |achieve 680
step
Congratulations, you have earned the Heroic: The Botanica achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Escape From Durnholde",{
achieveid={673},
description="This guide will tell you how to gain the Heroic: The Escape From Durnholde achievement.",
},[[
step
This achievement is gained by completing the Old Hillsbrad Foothills dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Epoch Hunter |achieve 673
step
Congratulations, you have earned the Heroic: The Escape From Durnholde achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Hellfire Ramparts",{
achieveid={667},
description="This guide will tell you how to gain the Heroic: Hellfire Ramparts achievement.",
},[[
step
This achievement is gained by completing the Hellfire Ramparts dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Omor the Unscarred |achieve 667/1
Defeat Nazan |achieve 667/2
Defeat Vazruden the Herald |achieve 667/3
step
Congratulations, you have earned the Heroic: Hellfire Ramparts achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Magister's Terrace",{
achieveid={682},
description="This guide will tell you how to gain the Heroic: Magister's Terrace achievement.",
},[[
step
This achievement is gained by completing the Magister's Terrace dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat  Kael'thas Sunstrider |achieve 682
step
Congratulations, you have earned the Heroic: Magister's Terrace achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Mana-Tombs",{
achieveid={671},
description="This guide will tell you how to gain the Heroic: Mana-Tombs achievement.",
},[[
step
This achievement is gained by completing the Mana-Tombs dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Nexus-Prince Shaffar |achieve 671
step
Congratulations, you have earned the Heroic: Mana-Tombs achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Mechanar",{
achieveid={679},
description="This guide will tell you how to gain the Heroic: The Mechanar achievement.",
},[[
step
This achievement is gained by completing The Mechanar dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Pathaleon the Calculator |achieve 679
step
Congratulations, you have earned the Heroic: The Mechanar achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Opening of the Dark Portal",{
achieveid={676},
description="This guide will tell you how to gain the Heroic: Opening of the Dark Portal achievement.",
},[[
step
This achievement is gained by completing The Black Morass dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Aeonus |achieve 676
step
Congratulations, you have earned the Heroic: Opening of the Dark Portal achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Sethekk Halls",{
achieveid={674},
description="This guide will tell you how to gain the Heroic: Sethekk Halls achievement.",
},[[
step
This achievement is gained by completing the Sethekk Halls dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Talon King Ikiss |achieve 674
step
Congratulations, you have earned the Heroic: Sethekk Halls achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Shadow Labyrinth",{
achieveid={675},
description="This guide will tell you how to gain the Heroic: Shadow Labyrinth achievement.",
},[[
step
This achievement is gained by completing the Shadow Labyrinth dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Murmur |achieve 675
step
Congratulations, you have earned the Heroic: Shadow Labyrinth achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Shattered Halls",{
achieveid={678},
description="This guide will tell you how to gain the Heroic: The Shattered Halls achievement.",
},[[
step
This achievement is gained by completing The Shattered Halls dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Epoch Hunter |achieve 678
step
Congratulations, you have earned the Heroic: The Shattered Halls achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Slave Pens",{
achieveid={669},
description="This guide will tell you how to gain the Heroic: The Slave Pens achievement.",
},[[
step
This achievement is gained by completing the Slave Pens dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Quagmirran |achieve 669
step
Congratulations, you have earned the Heroic: The Slave Pens achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: The Steamvault",{
achieveid={677},
description="This guide will tell you how to gain the Heroic: The Steamvault achievement.",
},[[
step
This achievement is gained by completing The Steamvault dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat Warlord Kalithresh |achieve 677
step
Congratulations, you have earned the Heroic: The Steamvault achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\The Burning Crusade\\Heroic: Underbog",{
achieveid={670},
description="This guide will tell you how to gain the Heroic: Underbog achievement.",
},[[
step
This achievement is gained by completing The Underbog dungeon on _Heroic_ difficulty
|tip Use the dungeon guides to accomplish this.
Defeat The Black Stalker |achieve 670
step
Congratulations, you have earned the Heroic: Underbog achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\A Void Dance",{
achieveid={2153},
description="This guide will walk you through getting the A Void Dance achievement.",
},[[
step
kill Zuramat the Obliterator##29314
|tip On Heroic difficulty, defeat Zuramat the Obliterator without killing and Void Sentries.
Earned the "A Void Dance" Achievement |achieve 2153 |goto The Violet Hold 27.1,33.6
step
_Congratulations!_
You earned the "A Void Dance" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Abuse the Ooze",{
achieveid={2155},
description="This guide will walk you through getting the Abuse the Ooze achievement.",
},[[
step
kill Sjonnir the Ironshaper##27978
|tip On Heroic difficulty, kill 5 Iron Sludges before defeating Sjonnir.
Earn the "Abuse the Ooze" Achievement |achieve 2155 |goto Halls of Stone 49.7,13.7
step
_Congratulations!_
You Earned the "Abuse the Ooze" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Amber Void",{
achieveid={2046},
description="This guide will walk you through getting the Amber Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Amber Drake on Heroic difficulty.
Earn the "Amber Void" Achievement |achieve 2046 |goto The Oculus/4 46.9,20.9
step
_Congratulations!_
You Earned the "Amber Void" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Argent Confessor",{
achieveid={3802},
description="This guide will walk you through getting the Argent Confessor achievement.",
},[[
step
This achievement is gained by defeating Argent Confessor Paletress after suppressing _five different memories in separate visits_ of the Trial of the Champion on _Heroic_ mode
kill Argent Confessor Paletress##34928
|tip She is the second boss but Eadric the Pure may spawn instead.
|tip You must hit her once before she will summon a memory, but she cannot be killed in a single hit so you don't have to worry about accidentally killing her.
Suppress 5 Different Memories of the Past |achieve 3802 |goto Trial of the Champion 51.3,52.4
step
Congratulations, you have earned the Argent Confessor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Better Off Dred",{
achieveid={2039},
description="This guide will walk you through getting the Better Off Dred achievement.",
},[[
step
This achievement is gained by defeating King Dred in Drak'Tharon Keep on _Heroic_ mode
while slaying 6 Drakkari Gutrippers or Drakkari Scytheclaw during the fight
kill King Dred##27483
|tip On Heroic difficulty, kill 6 Drakkari Gutrippers or Drakkari Scythclaws during the fight.
|tip When you enter the area, be sure to kill only trolls while making your way to the boss.
Earn the "Better Off Dred" Achievement |achieve 2039 |goto Drak'Tharon Keep 61.2,86.2
step
_Congratulations!_
You Earned the "Better Off Dred" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Brann Spankin' New",{
achieveid={2154},
description="This guide will walk you through getting the Brann Spankin' New achievement.",
},[[
step
kill Tribunal of Ages##28234
|tip On Heroic difficulty, clear the Tribunal of Ages event without Brann taking any damage.
|tip Stay at the entrance of the room picking up enemies that appear from the left and right immidiately.
Earn the "Brann Spankin' New" Achievement |achieve 2154 |goto Halls of Stone 84.9,76.1
step
_Congratulations!_
You Earned the "Brann Spankin' New" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Chaos Theory",{
achieveid={2037},
description="This guide will walk you through getting the Chaos Theory achievement.",
},[[
step
kill Anomalus##26763
|tip On Heroic difficulty, defeat Anomalus without destroying any Chaotic Rifts that he spawns.
Earn the "Chaos Theory" Achievement |achieve 2037 |goto The Nexus 62.0,22.1
step
_Congratulations!_
You Earned the "Chaos Theory" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Consumption Junction",{
achieveid={2151},
description="This guide will walk you through getting the Consumption Junction achievement.",
},[[
step
kill Trollgore##26630
|tip On Heroic difficulty, kill Trollgore before his Consume buff stacks 10 times.
Earn the "Consumption Junction" Achievement |achieve 2151 |goto Drak'Tharon Keep 56.5,18.2
step
_Congratulations!_
You Earned the "Consumption Junction" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\The Culling of Time",{
achieveid={1817},
description="This guide will walk you through how to get The Culling of Time achievement.",
},[[
step
kill Infinite Corruptor##32273
|tip Defeat the Infinite Corruptor within 25 minutes of starting the instance.
|tip Use the "/timer" function to keep track of your time.
Earn the "The Culling of Time" Achievement |achieve 1817 |goto The Culling of Stratholme/2 51.0,42.0
step
_Congratulations!_
You Earned "The Culling of Time" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Defenseless",{
achieveid={1816},
description="This guide will walk you through getting the Defenseless achievement.",
},[[
step
kill Cyanigosa##31134
|tip On Heroic difficulty, clear Violet Hold without using Defense Control Crystals.
|tip You must also prevent adds from reducing the Prison Seal Integrity.
Earn the "Defenseless" Achievement |achieve 1816 |goto The Violet Hold 45.0,55.1
step
_Congratulations!_
You Earned the "Defenseless" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Dehydration",{
achieveid={2041},
description="This guide will walk you through getting the Dehydration achievement.",
},[[
step
kill Ichoron##29313
|tip On Heroic difficulty, defeat Ichoron without allowing any Ichor Globules to merge.
|tip When Ichorons Protective Bubble gets close to 0, use the Activation Crystals in the room to accomplish this.
Earn the "Dehydration" Achievement |achieve 2041 |goto The Violet Hold 55.6,40.3
step
_Congratulations!_
You Earned the "Dehydration" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Doesn't Go to Eleven",{
achieveid={4524},
description="This guide will walk you through getting the Doesn't Go to Eleven achievement.",
},[[
step
This achievement is gained by defeating Forgemaster Garfrost in The Pit of Saron on _Heroic_ mode before any player gets 11 stacks of Permafrost
kill Forgemaster Garfrost##36494
Kill Forgemaster Garfrost |achieve 4524 |goto Pit of Saron 68.0,55.3
step
Congratulations, you have earned the Doesn't Go to Eleven achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Don't Look Up",{
achieveid={4525},
description="This guide will walk you through getting the Don't Look Up achievement.",
},[[
step
This achievement is gained by clearning the hallway before Scourgelord Tyrannus in The Pit of Saron on _Heroic_ mode without anyone taking icicle damage on the first try
Clear the Hallway Without Taking Icicle Damage |achieve 4525 |goto Pit of Saron 44.1,26.6
step
Congratulations, you have earned the Don't Look Up achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Emerald Void",{
achieveid={2045},
description="This guide will walk you through getting the Emerald Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Emerald Drake on Heroic difficulty.
Earn the "Emerald Void" Achievement |achieve 2045 |goto The Oculus/4 46.9,20.9
step
_Congratulations!_
You Earned the "Emerald Void" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Experienced Drake Rider",{
achieveid={1871},
description="This guide will walk you through getting the Experienced Drake Rider achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
Earn the "Amber Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/1 |goto The Oculus/4 46.9,20.9
Earn the "Emerald Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/2 |goto The Oculus/4 46.9,20.9
Earn the "Ruby Drake" Portion of the "My Girl Loves to Skadi All the Time" Achievement |achieve 1871/3 |goto The Oculus/4 46.9,20.9
|tip Use all 3 drakes on 3 separate runs on Heroic Difficulty to accomplish this.
step
_Congratulations!_
You earned the "Experienced Drake Rider" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\The Faceroller",{
achieveid={3803},
description="This guide will walk you through how to get The Faceroller achievement.",
},[[
step
This achievement is gained by defeating Eadric the Pure in the Trial of the Champion with his own hammer on _Heroic_ mode
He will cast Hammer of Justice to stun you and then Hammer of the Righteous. Catch the hammer and use it to kill him
|tip When he stuns you, rapidly right-click your mouse right in front of your character and you should catch the hammer and then you can use it to kill him.
kill Eadric the Pure##35119
Defeat Eadric with His Own Hammer |achieve 3803 |goto Trial of the Champion 51.3,52.4
step
Congratulations, you have earned The Faceroller achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Good Grief",{
achieveid={1866},
description="This guide will walk you through getting the Good Grief achievement.",
},[[
step
kill Maiden of Grief##27975
|tip On Heroic difficulty, defeat the Maiden of Grief within 1 minute or less.
|tip Use the "/timer" function to keep track of your time.
Earn the "Good Grief" Achievement |achieve 1866 |goto Halls of Stone 50.2,86.2
step
_Congratulations!_
You Earned the "Good Grief" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Gotta Go!",{
achieveid={1860},
description="This guide will walk you through getting the Gotta Go! achievement.",
},[[
step
kill Anub'arak##29120
|tip On Heroic difficulty, defeat Anub'arak in 4 minutes or less.
|tip Use the "/timer" function to keep track of your time.
Earn the "Gotta Go!" Achievement |achieve 1860 |goto Azjol-Nerub 62.1,48.7
step
_Congratulations!
You Earned the "Gotta Go!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Hadronox Denied",{
achieveid={1297},
description="This guide will walk you through getting the Hadronox Denied achievement.",
},[[
step
This achievement is gained by defeating Hadronox in Azjol-Nerub on _Heroic_ mode
before he webs the top doors and prevents more creatures from spawning
kill Hadronox##28921
|tip On Heroic difficulty, defeat Hadronox before it tunnels up to the main room.
|tip As soon as you enter the boss room, run down the ramp and kill Hadronox as fast as possible.
Earn the "Hadronox Denied" Achievement |achieve 1297 |goto Azjol-Nerub/2 43.1,59.4
step
_Congratulations!_
You Earned the "Hadronox Denied" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Ahn'kahet: The Old Kingdom",{
achieveid={492},
description="This guide will tell you how to obtain the Heroic: Ahn'kahet: The Old Kingdom achievement.",
},[[
step
This achievement is gained by defeating the bosses in Ahn'kahet: The Old Kingdom on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Prince Taldaram##29308 |achieve 492/1
kill Elder Nadox##29309 |achieve 492/2
kill Jedoga Shadowseeker##29310 |achieve 492/3
kill Herald Volazj##29311 |achieve 492/4
kill Amanitar##30258 |achieve 492/5
step
Congratulations, you have earned the Heroic: Ahn'kahet: The Old Kingdom achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Azjol-Nerub",{
achieveid={491},
description="This guide will tell you how to obtain the Heroic: Azjol-Nerub achievement.",
},[[
step
This achievement is gained by defeating the bosses in Azjol-Nerub on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Krik'thir the Gatewatcher##28684 |achieve 491/1
kill Hadronox##28921 |achieve 491/2
kill Anub'arak##29120 |achieve 491/3
step
Congratulations, you have earned the Heroic: Azjol-Nerub achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Culling of Stratholme",{
achieveid={500},
description="This guide will tell you how to obtain the Heroic: The Culling of Stratholme achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Culling of Stratholme on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Meathook##26529 |achieve 500/1
kill Chrono-Lord Epoch##26532 |achieve 500/2
kill Salramm the Fleshcrafter##26530 |achieve 500/3
kill Mal'Ganis##26533 |achieve 500/4
step
Congratulations, you have earned the Heroic: The Culling of Stratholme achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Drak'Tharon Keep",{
achieveid={493},
description="This guide will tell you how to obtain the Heroic: Drak'Tharon Keep achievement.",
},[[
step
This achievement is gained by defeating the bosses in Drak'Tharon Keep on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Trollgore##26630 |achieve 493/1
kill Novos the Summoner##26631 |achieve 493/2
kill King Dred##27483 |achieve 493/3
kill The Prophet Tharon'ja##26632 |achieve 493/4
step
Congratulations, you have earned the Heroic: Drak'Tharon Keep achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Forge of Souls",{
achieveid={4519},
description="This guide will tell you how to obtain the Heroic: The Forge of Souls achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Forge of Souls on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Bronjahm##36497 |achieve 4519/1
kill Devourer of Souls##36502 |achieve 4519/2
step
Congratulations, you have earned the Heroic: The Forge of Souls achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Gundrak",{
achieveid={495},
description="This guide will tell you how to obtain the Heroic: Gundrak achievement.",
},[[
step
This achievement is gained by defeating the bosses in Gundrak on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Slad'ran##29304 |achieve 495/1
kill Moorabi##29305 |achieve 495/2
kill Drakkari Colossus##29307 |achieve 495/3
kill Gal'darah##29306 |achieve 495/4
kill Eck the Ferocious##29932 |achieve 495/5
step
Congratulations, you have earned the Heroic: Gundrak achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Halls of Lightning",{
achieveid={497},
description="This guide will tell you how to obtain the Heroic: Halls of Lightning achievement.",
},[[
step
This achievement is gained by defeating the bosses in the Halls of Lightning on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill General Bjarngrim##28586 |achieve 497/1
kill Ionar##28546 |achieve 497/2
kill Volkhan##28587 |achieve 497/3
kill Loken##28923 |achieve 497/4
step
Congratulations, you have earned the Heroic: Halls of Lightning achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Halls of Reflection",{
achieveid={4521},
description="This guide will tell you how to obtain the Heroic: The Halls of Reflection achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Halls of Reflection on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Falric##38112 |achieve 4521/1
kill Marwyn##38113 |achieve 4521/2
Survive the Lich King Encounter |achieve 4521/3
step
Congratulations, you have earned the Heroic: The Halls of Reflection achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Halls of Stone",{
achieveid={496},
description="This guide will tell you how to obtain the Heroic: Halls of Stone achievement.",
},[[
step
This achievement is gained by defeating the bosses in the Halls of Stone on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Maiden of Grief##27975 |achieve 496/1
kill Sjonnir The Ironshaper##27978 |achieve 496/2
kill Tribunal of the Ages##28234 |achieve 496/3
kill Krystallus##27977 |achieve 496/4
step
Congratulations, you have earned the Heroic: Halls of Stone achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Nexus",{
achieveid={490},
description="This guide will tell you how to obtain the Heroic: The Nexus achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Nexus on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Grand Magus Telestra##26731 |achieve 490/1
kill Anomalus##26763 |achieve 490/2
kill Ormorok the Tree-Shaper##26794 |achieve 490/3
kill Keristrasza##26723 |achieve 490/4
step
Congratulations, you have earned the Heroic: The Nexus achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Oculus",{
achieveid={498},
description="This guide will tell you how to obtain the Heroic: The Oculus achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Oculus on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Drakos the Interrogator##27654 |achieve 498/1
kill Mage-Lord Urom##27655 |achieve 498/2
kill Varos Cloudstrider##27447 |achieve 498/3
kill Ley-Guardian Eregos##27656 |achieve 498/4
step
Congratulations, you have earned the Heroic: The Oculus achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Pit of Saron",{
achieveid={4520},
description="This guide will tell you how to obtain the Heroic: The Pit of Saron achievement.",
},[[
step
This achievement is gained by defeating the bosses in The Pit of Saron on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Forgemaster Garfrost##36494 |achieve 4520/1
kill Ick##36476 |achieve 4520/2
kill Scourgelord Tyrannus##36658 |achieve 4520/3
step
Congratulations, you have earned the Heroic: The Pit of Saron achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Utgarde Keep",{
achieveid={489},
description="This guide will tell you how to obtain the Heroic: Utgarde Keep achievement.",
},[[
step
This achievement is gained by defeating the bosses in Utgarde Keep on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Prince Keleseth##23953 |achieve 489/1
kill Skarvald the Constructor##24200 |achieve 489/2
kill Dalronn the Controller##24201 |achieve 489/3
kill Ingvar the Plunderer##23980 |achieve 489/4
step
Congratulations, you have earned the Heroic: Utgarde Keep achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: Utgarde Pinnacle",{
achieveid={499},
description="This guide will tell you how to obtain the Heroic: Utgarde Pinnacle achievement.",
},[[
step
This achievement is gained by defeating the bosses in Utgarde Pinnacle on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Svala Sorrowgrave##26668 |achieve 499/1
kill Gortok Palehoof##26687 |achieve 499/2
kill Skadi the Ruthless##26693 |achieve 499/3
kill King Ymiron##26861 |achieve 499/4
step
Congratulations, you have earned the Heroic: Utgarde Pinnacle achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Heroic: The Violet Hold",{
achieveid={494},
description="This guide will tell you how to obtain the Heroic: The Violet Hold achievement.",
},[[
step
This achievement is gained by defeating Cyanigosa in The Violet Hold on _Heroic_ difficulty
|tip Use our dungeon guide to accomplish this.
kill Cyanigosa##31134 |achieve 494 |goto The Violet Hold 45.0,55.1
step
Congratulations, you have earned the Heroic: The Violet Hold achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Intense Cold",{
achieveid={2036},
description="This guide will walk you through getting the Intense Cold achievement.",
},[[
step
kill Keristrasza##26723
|tip On Heroic difficulty, defeat Kerinstrasza without allowing Intense cold to reach more than two stacks.
|tip Be sure to jump around to shake off Intense Cold.
Earn the "Intense Cold" Achievement |achieve 2036 |goto The Nexus 36.2,67.4
step
_Congratulations!
You Earned the "Intense Cold" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\I've Had Worse",{
achieveid={3804},
description="This guide will walk you through getting the I've Had Worse achievement.",
},[[
step
This achievement is gained by defeating the Black Knight in the Trial of the Champion on _Heroic_ mode without _any player in the group being hit by a ghoul explosion_
kill The Black Knight##35451
Kill The Black Knight |achieve 3804 |goto Trial of the Champion 51.3,52.4
step
Congratulations, you have earned the I've Had Worse achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\The Incredible Hulk",{
achieveid={2043},
description="This guide will walk you through getting The Incredible Hulk achievement.",
},[[
step
kill Svala Sorrowgrave##26668
|tip Set the dungeon to Heroic difficulty.
|tip Pull a Scourge Hulk from the side room.
|tip Damage the Scourge Hulk enough to bring it close to death.
|tip Attack Svala Sorrowgrave enough for her to cast Ritual of the Sword.
|tip Position the Scourge Hulk on the altar so it dies when the sword strikes.
Earn "The Incredible Hulk" Achievement |achieve 2043 |goto Utgarde Pinnacle 36.3,70.6
step
_Congratulations!_
You earned "The Incredible Hulk" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\King's Bane",{
achieveid={2157},
description="This guide will walk you through getting the King's Bane achievement.",
},[[
step
kill King Ymiron##26861
|tip Interrupt his Bane casts when possible.
|tip Use any damage increasing cooldowns to burn him as fast as possible.
Earn the "King's Bane" Achievement |achieve 2157 |goto Utgarde Pinnacle/2 41.5,53.4
step
_Congratulations!_
You Earned the "King's Bane" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Less-rabi",{
achieveid={2040},
description="This guide will walk you through getting the Less-rabi achievement.",
},[[
step
kill Moorabi##29305
|tip On Heroic difficulty, defeat Moorabi without him finishing his Transformation spell.
|tip Interrupt it to accomplish this.
|tip Each time it is interrupted, the next cast time will be faster.
Earn the "Less-rabi" Achievement |achieve 2040 |goto Gundrak 39.3,48.9
step
_Congratulations!_
You Earned the "Less-rabi" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lightning Struck",{
achieveid={1834},
description="This guide will walk you through getting the Lightning Struck achievement.",
},[[
step
kill General Bjarngrim##28586
|tip On Heroic difficulty, kill General Bjarngrim while he's under the affect of Temporary Electrical Charge.
Earn the "Lightning Struck" Achievement |achieve 1834 |goto Halls of Lightning 43.5,37.2
step
_Congratulations_
You Earned the "Lightning Struck" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lockdown!",{
achieveid={1865},
description="This guide will walk you through getting the Lockdown! achievement.",
},[[
step
kill Xevozz##29266 |achieve 1865/1
kill Lavanthor##29312 |achieve 1865/2
kill Ichoron##29313 |achieve 1865/3
kill Zuramat the Obliterator##29314 |achieve 1865/4
kill Erekem##29315 |achieve 1865/5
kill Moragg##29316 |achieve 1865/6
|tip Kill each of the bosses in The Violet Hold on Heroic difficulty.
step
_Congratulations!_
You Earned the "Lockdown!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lodi Dodi We Loves the Skadi",{
achieveid={1873},
description="This guide will walk you through getting the Lodi Dodi We Loves the Skadi achievement.",
},[[
step
kill Skadi the Ruthless##26693
|tip Start the gauntlet encounter, collecting 5 Harpoons.
|tip Run back to the start of the gauntlet to reset it.
|tip Run the Gauntlet again after it resets, shooting Skadi the Ruthless down and killing him.
|tip Use the "/timer" function to keep track of how long you have before failure.
Earn the "Lodi Dodi We Loves the Skadi" Achievement |achieve 1873 |goto Utgarde Pinnacle/2 68.4,36.2
step
_Congratulations!_
You earned the "Lodi Dodi We Loves the Skadi" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Make It Count",{
achieveid={1868},
description="This guide will walk you through getting the Make It Count achievement.",
},[[
step
kill Drakos the Interrogator##27654
|tip Once you kill Drakos the Interrogator, you will have 20 minutes to reach Ley-Guardian Eregos and kill him.
|tip Use the "/timer" function to keep an eye on your time.
kill Ley-Guardian Eregos##27656
Earn the "Make It Count" Achievement |achieve 1868 |goto The Oculus/4 46.9,20.9
step
_Congratulations!_
You Earned the "Make It Count" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\My Girl Loves to Skadi All the Time",{
achieveid={2156},
description="This guide will walk you through getting the My Girl Loves to Skadi All the Time achievement.",
},[[
step
kill Grauf##26893
|tip Use 3 Harpoons to kill Grauf during its first pass.
|tip If you fail to do so, you will need to try again.
kill Skadi the Ruthless##26693
Earn the "My Girl Loves to Skadi All the Time" Achievement |achieve 2156 |goto Utgarde Pinnacle/2 68.4,36.2
step
_Congratulations!_
You Earned the "My Girl Loves to Skadi All the Time" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Oh Novos!",{
achieveid={2057},
description="This guide will walk you through getting the Oh Novos! achievement.",
},[[
step
kill Novos the Summoner##26631
|tip On Heroic difficulty, kill the adds that appear on the steps before they reach the main room.
Earn the "Oh Novos!" Achievement |achieve 2057 |goto Drak'Tharon Keep/1 70.2,47.9
step
_Congratulations!_
You Earned the "Oh Novos!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\On The Rocks",{
achieveid={1919},
description="This guide will walk you through getting the On The Rocks achievement.",
},[[
step
kill Prince Keleseth##23953
|tip On Heroic difficulty, defeat Prince Keleseth without breaking any players out of Frosts Tomb.
Earn the "On The Rocks" Achievement |achieve 1919 |goto Utgarde Keep 28.9,62.7
step
_Congratulations!_
You Earned the "On The Rocks" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Respect Your Elders",{
achieveid={2038},
description="This guide will walk you through how to get the Respect Your Elders achievement.",
},[[
step
kill Elder Nadox##29309
|tip On Heroic difficulty, defeat Elder Nadox without killing any Ahn'kahar Guardians that spawn.
Earn the "Respect Your Elders" Achievement |achieve 2038 |goto Ahn'kahet: The Old Kingdom 69.6,27.0
step
_Congratulations!_
You Earned the "Respect Your Elders" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Ruby Void",{
achieveid={2044},
description="This guide will walk you through getting the Ruby Void achievement.",
},[[
step
kill Ley-Guardian Eregos##27656
|tip Use an Ruby Drake on Heroic difficulty.
Earn the "Ruby Void" Achievement |achieve 2044 |goto The Oculus/4 46.9,20.9
step
_Congratulations!_
You Earned the "Ruby Void" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Share The Love",{
achieveid={2152},
description="This guide will walk you through how to get the Share The Love achievement.",
},[[
step
kill Gal'darah##29306
|tip On Heroic difficulty, have 5 different characters get impaled throughout the fight.
Earn the "Share The Love" Achievement |achieve 2152 |goto Gundrak 46.5,27.0
step
_Congratulations!_
You Earned the "Share The Love" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Shatter Resistant",{
achieveid={2042},
description="This guide will walk you through how to get the Shatter Resistant achievement.",
},[[
step
kill Volkhan##28587
|tip On Heroic difficulty, defeat Volkhan without allowing him to shatter more than 4 Brittle Golems.
Earn the "Shatter Resistant" Achievement |achieve 2042 |goto Halls of Lightning/2 37.7,20.9
step
_Congratulations!_
You earned the "Shatter Resistant" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Snakes. Why'd It Have To Be Snakes?",{
achieveid={2058},
description="This guide will walk you through getting the Snakes. Why'd It Have To Be Snakes? achievement.",
},[[
step
kill Slad'ran##29304
|tip On Heroic difficulty, defeat Slad'ran without anyone getting Snake Wrapped.
|tip Kill any snake add that appears during the fight.
Earn the "Snakes. Why'd It Have To Be Snakes?" Achievement |achieve 2058 |goto Gundrak 53.9,48.5
step
_Congratulations!_
You Earned the "Snakes. Why'd It Have To Be Snakes?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Soul Power",{
achieveid={4522},
description="This guide will walk you through getting the Soul Power achievement.",
},[[
step
This achievement is gained by defeating Bronjahm in The Forge of Souls  on _Heroic_ mode with at least 4 Corrupted Soul Fragments alive
kill Bronjahm##36497
Kill Bronjahm |achieve 4522 |goto The Forge of Souls 43.5,49.5
step
Congratulations, you have earned the Soul Power achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Split Personality",{
achieveid={2150},
description="This guide will walk you through getting the Split Personality achievement.",
},[[
step
This achievement is gained by defeating Grand Magus Telestra in The Nexus on _Heroic_ mode after having killed her images within 5 seconds of the first one dying during each split
kill Grand Magus Telestra##26731
|tip
Kill Grand Magus Telestra |achieve 2150 |goto The Nexus 27.5,39.9
step
_Congratulations!_
You Earned the "Split Personality" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Three Faced",{
achieveid={4523},
description="This guide will walk you through getting the Three Faced achievement.",
},[[
step
This achievement is gained by defeating the Devourer of Souls in The Forge of Souls on _Heroic_ mode without him successfully casting Phantom Blast
|tip It is cast every 6 seconds. You'll need to interrupt it and kill it as quickly as possible.
kill Devourer of Souls##36502
Kill Devourer of Souls |achieve 4523 |goto The Forge of Souls 43.6,12.4
step
Congratulations, you have earned the Three Faced achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Timely Death",{
achieveid={1867},
description="This guide will walk you through getting the Timely Death achievement.",
},[[
step
kill Loken##28923
|tip On Heroic difficulty, defeat Loken within two minutes of starting the encounter.
|tip Use the "/timer" function to track your time.
Earn the "Timely Death" Achievement |achieve 1867 |goto Halls of Lightning/2 18.9,52.2
step
_Congratulations!_
You Earned the "Timely Death" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Volazj's Quick Demise",{
achieveid={1862},
description="This guide will walk you through how to get the Volazj's Quick Demise achievement.",
},[[
step
kill Herald Volazj##29311
|tip On Heroic difficulty, defeat Herald Volazj in 2 minutes.
|tip Use the "/timer" function to keep track of your time.
Earn the "Volazj's Quick Demise" Achievement|achieve 1862 |goto Ahn'kahet: The Old Kingdom 23.6,50.4
step
_Congratulations!_
You Earned the "Volazj's Quick Demise" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Volunteer Work",{
achieveid={2056},
description="This guide will walk you through getting the Volunteer Work achievement.",
},[[
step
kill Jedoga Shadowseeker##29310
|tip On Heroic difficulty, defeat Jedoga Shadowseeker without killing any adds that spawn during the fight.
Earn the "Volunteer Work" Achievement|achieve 2056 |goto Ahn'kahet: The Old Kingdom 48.2,72.5
step
_Congratulations!_
You Earned the "Volunteer Work" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Watch Him Die",{
achieveid={1296},
description="This guide will walk you through getting the Watch Him Die achievement.",
},[[
step
kill Krik'thir the Gatewatcher##28684
|tip On Heroic difficulty, defeat Krik'thir while Watcher Gashra, Watcher Narji and Watcher Silthik are still alive.
Earn the "Watch Him Die" Achievement |achieve 1296 |goto Azjol-Nerub/3 50.1,45.0
step
_Congratulations!_
You Earned the "Watch Him Die" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\We're Not Retreating; We're Advancing in a Different Direction.",{
achieveid={4526},
description="This guide will walk you through getting the We're Not Retreating; We're Advancing in a Different Direction. achievement.",
},[[
step
This achievement is gained by Escape from the Lich King in The Halls of Reflection in under 6 minutes on _Heroic_ mode
Escape from the Lich King |achieve 4526 |goto Halls of Reflection 10.5,27.4
step
Congratulations, you have earned the We're Not Retreating; We're Advancing in a Different Direction. achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\What the Eck?",{
achieveid={1864},
description="This guide will walk you through getting the What the Eck? achievement.",
},[[
step
kill Eck the Ferocious##29932
|tip On Heroic difficulty, stand in front of Eck the Ferocious when it uses the Eck Spit ability.
Get the Eck Residue Buff |havebuff 132100 |goto Gundrak 25.1,70.4 < 15
|tip You will lose the buff if you die.
kill Gal'darah##29306
|tip Defeat Gal'darah while under the affects of Eck Residue.
Earned the "What the Eck?" Achievement |achieve 1864 |goto Gundrak 46.5,27.0
step
_Congratulations!_
You Earned the "What the Eck?" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Zombiefest!",{
achieveid={1872},
description="This guide will walk you through getting the Zombiefest! achievement.",
},[[
step
kill 100 Risen Zombie##27737+
|tip One Heroic difficulty, round up all enemies without killing them.
|tip Kill enemies that aren't Risen Zombies.
|tip Continue gathering Risen Zombies until Wave 10, repeating above instructions.
|tip Kill all zombies once Wave 10 arrives.
Earn the "Zombiefest!" Achievement |achieve 1872 |goto The Culling of Stratholme/2 51,63
step
_Congratulations!_
You Earned the "Zombiefest!" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\A Poke in the Eye (10 player)",{
achieveid={1869},
description="This guide will walk you through how to get the A Poke in the Eye (10 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _with fewer than 9 people_ in 10 player mode
kill Malygos##28859
Defeat Malygos |achieve 1869 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned the A Poke in the Eye (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\A Poke in the Eye (25 player)",{
achieveid={1870},
description="This guide will walk you through how to get the A Poke in the Eye (25 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _with fewer than 21 people_ in 25 player mode
kill Malygos##28859
Defeat Malygos |achieve 1870 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned the A Poke in the Eye (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\A Quick Shave",{
achieveid={12321},
description="This guide will walk you through how to get the A Quick Shave achievement.",
},[[
step
This achievement is gained by defeating Razorscale in Ulduar _without allowing her to fly into the air more than once_
kill Razorscale##33186
Defeat Razorscale |achieve 12321 |goto Ulduar 54.5,26.4
step
Congratulations, you have earned the A Quick Shave achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\All You Can Eat (10 player)",{
achieveid={4580},
description="Defeat Sindragosa in 10-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4580 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the All You Can Eat (10 Player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\All You Can Eat (25 player)",{
achieveid={4620},
description="Defeat Sindragosa in 25-player mode without any member of your raid receiving more than 5 stacks of Mystic Buffet.",
},[[
step
This achievement is basically a DPS race
You will need to defeat Sidnragosa before anyone gets more than 5 stacks of Mystic Buffet
Defeat Sindragosa without gaining more than 5 stacks of Mystic Buffet |achieve 4620 |goto Icecrown Citadel/4 36.58,20.10
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the All You Can Eat (25 Player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\And They Would All Go Down Together (10 player)",{
achieveid={2176},
description="This guide will walk you through how to get the And They Would All Go Down Together (10 player) achievement.",
},[[
step
This achievement is gained by defeating the 4 Horsemen in Naxxramas _within 15 seconds of each other_ in 10 player mode
kill Thane Korth'azz##16064
kill Lady Blaumeux##16065
kill Baron Rivendare##30549
kill Sir Zeliek##16063
Defeat the 4 Horsemen (10 player) |achieve 2176 |goto Naxxramas/3 30.6,77.2
step
Congratulations, you have earned the And They Would All Go Down Together (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\And They Would All Go Down Together (25 player)",{
achieveid={2177},
description="This guide will walk you through how to get the And They Would All Go Down Together (25 player) achievement.",
},[[
step
This achievement is gained by defeating the 4 Horsemen in Naxxramas _within 15 seconds of each other_ in 25 player mode
kill Thane Korth'azz##16064
kill Lady Blaumeux##16065
kill Baron Rivendare##30549
kill Sir Zeliek##16063
Defeat the 4 Horsemen (25 player) |achieve 2177 |goto Naxxramas/3 30.6,77.2
step
Congratulations, you have earned the And They Would All Go Down Together (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Antechamber of Ulduar",{
achieveid={12302},
description="This guide will walk you through how to get The Antechamber of Ulduar achievement.",
},[[
step
This achievement is gained by defeating the bosses of the Antechamber area of Ulduar
Defeat the Assembly of Iron |achieve 12302/1 |goto Ulduar/2 15.6,56.4
kill Kologarn##32930 |achieve 12302/2 |goto Ulduar/2 37.2,13.3
kill Auriaya##33515 |achieve 12302/3 |goto Ulduar/3 51.2,57.1
Clear the Antechamber of Ulduar |achieve 12302
step
Congratulations, you have earned The Antechamber of Ulduar achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Arachnid Quarter (10 player)",{
achieveid={562},
description="This guide will walk you through how to get The Arachnid Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Arachnid Quarter in Naxxramas in 10 player mode
kill Anub'Rekhan##15956 |achieve 562/1 |goto Naxxramas/2 30.6,46.9
kill Grand Widow Faerlina##15953 |achieve 562/2 |goto Naxxramas/2 44.1,36.0
kill Maexxna##15952 |achieve 562/3 |goto Naxxramas/2 68.6,15.2
Clear the the Arachnid Quarter (10 player) |achieve 562
step
Congratulations, you have earned The Arachnid Quarter (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Arachnid Quarter (25 player)",{
achieveid={563},
description="This guide will walk you through how to get The Arachnid Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Arachnid Quarter in Naxxramas in 25 player mode
kill Anub'Rekhan##15956 |achieve 563/1 |goto Naxxramas/2 30.6,46.9
kill Grand Widow Faerlina##15953 |achieve 563/2 |goto Naxxramas/2 44.1,36.0
kill Maexxna##15952 |achieve 563/3 |goto Naxxramas/2 68.6,15.2
Clear the the Arachnid Quarter (25 player) |achieve 563
step
Congratulations, you have earned The Arachnid Quarter (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Arachnophobia (10 player)",{
achieveid={1858},
description="Defeat Maexxna in Naxxramas within 20 minutes of Anub'Rekhan's death in 10-player mode.",
},[[
step
map Naxxramas/2
path loop off;dist 20
path	30.91,77.57	32.99,64.88	30.60,56.82
Follow the path to Anub'Rekhan |goto 30.60,56.82 < 15 |noway |c
only if not achieved(1858)
step
Once you kill Anub'Rekhan, you will have 20 minutes to reach Maexxna |goto 30.78,45.89
confirm
only if not achieved(1858)
step
map Naxxramas/2
path loop off;dist 20
path	30.69,56.72	32.88,64.58	39.53,64.50
path	46.26,54.62	50.17,49.22	53.01,46.44
path	50.96,39.77	49.46,36.83
Follow the path to Grand Widow Faerlina |goto 49.46,36.83 < 15 |noway |c
only if not achieved(1858)
step
For this achievement, simply kill the Grand Widow Faerlina without touching any adds
Again, make sure you _don't touch the adds!_
Take off any items that might cause AoE damage
|achieve 1997
only if not achieved(1858)
step
map Naxxramas/2
path loop off;dist 20
path	50.74,40.11	53.89,47.49	57.53,53.55
path	59.50,67.94	62.63,70.86	67.89,62.26
path	67.91,51.71	64.38,36.56	64.16,26.40
Follow the path to Maexxna |goto 64.16,26.40 < 15 |noway |c
only if not achieved(1858)
step
Simply kill Maexxna within the allotted time
|achieve 1858
step
Congratulations, you have earned the Arachnophobia and Momma Said Knock You Out Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Arachnophobia (25 player)",{
achieveid={1859},
description="Defeat Maexxna in Naxxramas within 20 minutes of Anub'Rekhan's death in 25-player mode.",
},[[
step
map Naxxramas/2
path loop off;dist 20
path	30.91,77.57	32.99,64.88	30.60,56.82
Follow the path to Anub'Rekhan |goto 30.60,56.82 < 15 |noway |c
only if not achieved(1859)
step
Once you kill Anub'Rekhan, you will have 20 minutes to reach Maexxna |goto 30.78,45.89
confirm
only if not achieved(1859)
step
map Naxxramas/2
path loop off;dist 20
path	30.69,56.72	32.88,64.58	39.53,64.50
path	46.26,54.62	50.17,49.22	53.01,46.44
path	50.96,39.77	49.46,36.83
Follow the path to Grand Widow Faerlina |goto 49.46,36.83 < 15 |noway |c
only if not achieved(1859)
step
For this achievement, simply kill the Grand Widow Faerlina without touching any adds
Again, make sure you _don't touch the adds!_
Take off any items that might cause AoE damage
confirm
only if not achieved(1859)
step
map Naxxramas/2
path loop off;dist 20
path	50.74,40.11	53.89,47.49	57.53,53.55
path	59.50,67.94	62.63,70.86	67.89,62.26
path	67.91,51.71	64.38,36.56	64.16,26.40
Follow the path to Maexxna |goto 64.16,26.40 < 15 |noway |c
only if not achieved(1859)
step
Simply kill Maexxna within the allotted time
|achieve 1859
step
Congratulations, you have earned the Arachnophobia and Momma Said Knock You Out Achievements!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Been Waiting a Long Time for This (10 player)",{
achieveid={4601},
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 10-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4601 |goto Icecrown Citadel/7 48.15,60.23
step
Congratualtions, you have earned the Been Waiting a Long Time for This (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Been Waiting a Long Time for This (25 player)",{
achieveid={4621},
description="Allow Necrotic Plague to stack to 30 before defeating the Lich King in 25-player mode.",
},[[
step
_You need a pet or another player in order to earn this achievement!_
To start, begin the Lich King encounter, but be sure _not_ to damage him to 70 percent health or below
Eventually, you will notice Necrotic Plague on you
Being hit will stop the plague from building, so you will need to run away from adds
The Lich King will get a buff called Plague Siphon
Once he gets 30 stacks of Plague Siphon, Burn him down to Earn the achievmeent
Defeat the Lich King having allowed a stack of Necrotic Plague to reach 30 |achieve 4621 |goto Icecrown Citadel/7 48.15,60.23
step
Congratualtions, you have earned the Been Waiting a Long Time for This (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Boned (10 player)",{
achieveid={4534},
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 10-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.9,29.2	38.9,36.3	39.0,52.4
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto 39.0,52.4 < 20 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled
|achieve 4534 |goto 39.0,52.4
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Boned (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Boned (25 player)",{
achieveid={4610},
description="Defeat Lord Marrowgar without any raid member remaining impaled for more than 8 seconds in 25-player mode.",
},[[
step
map Icecrown Citadel/1
path loop off
path	38.9,29.2	38.9,36.3	39.0,52.4
Follow the path, clearing trash as you make your way to the first boss, Lord Marrowgar |goto 39.0,52.4 <5 |noway |c
step
In order to not be impaled, you should be sure to get hit by it's Bone Slice ability
People who have been hit by that will not be able to be impaled |achieve 4610 |goto 39.0,52.4
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Boned (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\But I'm On Your Side",{
achieveid={12335},
description="This guide will walk you through how to get the But I'm On Your Side achievement.",
},[[
step
You will need to buy a Iron Boot Flask in order to get this achievement
_Warning_ mounting after using the item will cause the effect to wear off, so don't use it yet
talk Olut Alegut##30472
|tip It costs 10 Relics of Ulduar to unlock the NPC and then another 10 to buy the item.
|tip You can get Relics of Ulduar by killing mobs in The Storm Peaks.
buy 1 Iron Boot Flask##43499 |goto The Storm Peaks 37.0,49.6 |condition itemcount(43499) >= 1 |only if not achieved(12335)
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _while under the effect of an Iron Boot Flask_
_Use the Iron Boot Flask_ before starting the fight. It lasts for 10 minutes
use Iron Boot Flask##43499
|tip You'll need to use it from your Toy Box after using the item and gaining the toy.
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
kill Stormcaller Brundir##32857
|tip Make sure you have the Iron Boot Flask buff before killing the three bosses.
Defeat the Assembly of Iron |achieve 12335 |goto Ulduar/2 15.6,56.4
step
Congratulations, you have earned the But I'm On Your Side achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Can't Do That While Stunned",{
achieveid={12336},
description="This guide will walk you through how to get the Can't Do That While Stunned achievement.",
},[[
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _without allowing Stormcaller Brundir to damage anyone with Chain Lightning or Lightning Whirl_
|tip Kill Stormcaller Brundir first and interrupt or stun him as much as possible to prevent the casting of those spells.
kill Stormcaller Brundir##32857
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
Defeat the Assembly of Iron |achieve 12336 |goto Ulduar/2 15.6,56.4
step
Congratulations, you have earned the Can't Do That While Stunned achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Champion of the Frozen Wastes",{
achieveid={1658},
description="This guide will walk you through how to get the Champion of the Frozen Wastes achievement.",
},[[
step
Complete the following Northrend dungeons and raids:
|tip Use the dungeon and raid guides to accomplish this.
Sartharion the Onyx Guardian |achieve 1658/1
Kel'Thuzad |achieve 1658/2
Malygos |achieve 1658/3
Heroic: Anub'arak |achieve 1658/4
Heroic: Sjonnir the Ironshaper |achieve 1658/5
Heroic: Keristrasza |achieve 1658/6
Heroic: Herald Volazj |achieve 1658/7
Heroic: Loken |achieve 1658/8
Heroic: Key-Guardian Eregos |achieve 1658/9
Heroic: Ingvar the Plunderer |achieve 1658/10
Heroic: King Ymiron |achieve 1658/11
Heroic: Mal'Ganis |achieve 1658/12
Heroic: The Prophet Tharon'ja |achieve 1658/13
Heroic: Cyanigosa |achieve 1658/14
Heroic: Gal'darah |achieve 1658/15
step
Congratulations, you have earned the Champion of the Frozen Wastes achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Cheese the Freeze",{
achieveid={12343},
description="This guide will walk you through how to get the Cheese the Freeze achievement.",
},[[
step
This achievement is gained by defeating Hodir in Ulduar _without any raid member being hit by Flash Freeze_
|tip Stand near Snowdrifts or Toasty Fires to avoid Flash Freezes.
|tip Snowdrifts spawn after Icicle is cast and falls on the ground.
|tip Toasty Fires are cast by the mage adds and are consumed whenever Flash Freeze is cast.
kill Hodir##32845
Defeat Hodir |achieve 12343 |goto Ulduar/3 67.0,63.8
step
Congratulations, you have earned the Cheese the Freeze achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Con-speed-atory",{
achieveid={12361},
description="This guide will walk you through how to get the Con-speed-atory achievement.",
},[[
step
This achievement is gained by defeating Freya in Ulduar _within 20 minutes of the first creature_ you kill in the Conservatory of Life
kill Freya##32906
Defeat Freya |achieve 12361 |goto Ulduar/3 53.3,22.8
step
Congratulations, you have earned the Con-speed-atory achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Construct Quarter (10 player)",{
achieveid={564},
description="This guide will walk you through how to get The Construct Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Construct Quarter in Naxxramas in 10 player mode
kill Patchwerk##16028 |achieve 564/1 |goto Naxxramas 54.1,41.6
kill Grobbulus##15931 |achieve 564/2 |goto Naxxramas 61.5,53.1
kill Gluth##15932 |achieve 564/3 |goto Naxxramas 46.2,43.8
kill Thaddius##15928 |achieve 564/4 |goto Naxxramas 26.5,14.5
Clear the the Arachnid Quarter (10 player) |achieve 564
step
Congratulations, you have earned The Construct Quarter (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Construct Quarter (25 player)",{
achieveid={565},
description="This guide will walk you through how to get The Construct Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Construct Quarter in Naxxramas in 25 player mode
kill Patchwerk##16028 |achieve 565/1 |goto Naxxramas 54.1,41.6
kill Grobbulus##15931 |achieve 565/2 |goto Naxxramas 61.5,53.1
kill Gluth##15932 |achieve 565/3 |goto Naxxramas 46.2,43.8
kill Thaddius##15928 |achieve 565/4 |goto Naxxramas 26.5,14.5
Clear the the Arachnid Quarter (25 player) |achieve 565
step
Congratulations, you have earned The Construct Quarter (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Crazy Cat Lady",{
achieveid={12341},
description="Defeat Auriaya without destroying her Sanctum Sentries.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12341 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15
Follow the path to Auriaya |goto Ulduar/3 52.90,74.15 |noway |c
'|achieve 12341 |next "End"
step
kill Auriaya##33515
|tip To earn this achievement, avoid using any AoE abilities and kill Auriaya.
|tip She must die with her sentries alive.
|tip If you accidentally kill one, you will need to die and start the fight again.
Earn the _Crazy Cat Lady_ achievement |achieve 12341 |goto Ulduar/3 52.90,74.15
step
label "End"
Congratulations!
You have earned the _Crazy Cat Lady_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Crimson Hall (10 player)",{
achieveid={4529},
description="This guide will walk you through how to get The Crimson Hall (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4529/1 |goto Icecrown Citadel/5 52.0,14.1
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4529/2 |goto Icecrown Citadel/6 51.1,43.8
step
Congratulations, you have earned The Crimson Hall (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Crimson Hall (25 player)",{
achieveid={4606},
description="This guide will walk you through how to get The Crimson Hall (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4606/1 |goto Icecrown Citadel/5 52.0,14.1
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4606/2 |goto Icecrown Citadel/6 51.1,43.8
step
Congratulations, you have earned The Crimson Hall (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Dances with Oozes(10 player)",{
achieveid={4538},
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 10-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4538 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the achievement Dances with Oozes(10 player)!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Dances with Oozes(25 player)",{
achieveid={4614},
description="Defeat Rotface without a Big Ooze casting Unstable Ooze Explosion in 25-player mode.",
},[[
step
To start, you will need to maximize dps against Rotface to earn this achievement
If you are with multiple people, you can have the additional members kite the oozes away from each other as the spawn
Otherwise, you will have to use all cooldowns available and just burn the boss
|achieve 4614 |goto Icecrown Citadel/5 19.88,42.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the achievement Dances with Oozes(25 player)!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Dedicated Few (10 player)",{
achieveid={578},
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
Kill the following Naxxramas raid bosses while in a group of 8 or less:
|tip Note that this achievement is soloable!
Kel'Thuzad |achieve 578/1
Gothik the Harvestor |achieve 578/2
Anub'Rekhan |achieve 578/3
Grobbulus |achieve 578/4
Heigan the Unclean |achieve 578/5
Grand Widow Faerlina |achieve 578/6
Maexxna |achieve 578/7
Sapphiron |achieve 578/8
Loatheb |achieve 578/9
Gluth |achieve 578/10
Thaddius |achieve 578/11
Patchwerk |achieve 578/12
Instructor Razuvious |achieve 578/13
Noth the Plaguebringer |achieve 578/14
step
Congratulations, you have earned The Dedicated Few (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Dedicated Few (25 player)",{
achieveid={579},
description="Defeat the bosses of Naxxramas with less than 21 people in the zone in 25-player mode.",
},[[
step
Kill the following bosses while in a raid group of 21 or less:
|tip Note that this achievement is soloable!
Anub'Rekhan |acheive 579/1
Heigan the Unclean |acheive 579/2
Instructor Razuvious |acheive 579/3
Gothik the Harvester |acheive 579/4
Sapphiron |acheive 579/5
Gluth |acheive 579/6
Thaddius |acheive 579/7
Noth the Plaguebringer |acheive 579/8
Laotheb |acheive 579/9
Kel'thuzad |acheive 579/10
Patchwerk |acheive 579/11
Grabbulus |acheive 579/12
Grand Widow Faerlina |acheive 579/13
Maexxna |acheive 579/14
step
Congratulations, you have earned The Dedicated Few (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Deforestation",{
achieveid={12362},
description="This guide will walk you through how to get the Deforestation achievement.",
},[[
step
This achievement is gained by defeating 2 Ancient Water Spirits, 2 Storm Lashers and 2 Snaplashers within 10 seconds, while fighting Freya in Ulduar
|tip Freya spawns a random assortment of adds during the fight. Wait until she's spawned at least 2 of each type and then kill them together.
kill Ancient Water Spirit##33202
kill Storm Lasher##32919
kill Snaplasher##32916
Deforestation |achieve 12362 |goto Ulduar/3 53.3,22.8
step
Congratulations, you have earned the Deforestation achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Denyin' the Scion (10 player)",{
achieveid={2148},
description="This guide will walk you through how to get the Denyin' the Scion (10 player) achievement.",
},[[
step
This achievement is gained by delivering a killing blow to a Scion of Eternity _while riding on a hover disk_ in The Eye of Eternity in 10 player mode
kill Nexus Lord##30245
|tip Kill a Nexus Lord and then click the disk to ride it.
kill Scion of Eternity##30249
Defeat a Scion of Eternity While Riding Hover Disk (10 player) |achieve 2148 |goto The Eye of Eternity 45.0,56.8
step
Congratulations, you have earned the Denyin' the Scion (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Denyin' the Scion (25 player)",{
achieveid={2149},
description="This guide will walk you through how to get the Denyin' the Scion (25 player) achievement.",
},[[
step
This achievement is gained by delivering a killing blow to a Scion of Eternity _while riding on a hover disk_ in The Eye of Eternity in 25 player mode
kill Nexus Lord##30245
|tip Kill a Nexus Lord and then click the disk to ride it.
kill Scion of Eternity##30249
Defeat a Scion of Eternity While Riding Hover Disk (25 player) |achieve 2149 |goto The Eye of Eternity 45.0,56.8
step
Congratulations, you have earned the Denyin' the Scion (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Descent into Madness",{
achieveid={12310},
description="This guide will walk you through how to get The Descent into Madness achievement.",
},[[
step
This achievement is gained by defeating the bosses of the Descent into Madness area of Ulduar
kill General Vezax##33271 |achieve 12310/1 |goto Ulduar/4 56.7,60.2
kill Yogg-Saron##33288 |achieve 12310/2 |goto Ulduar/4 68.3,39.9
Clear the Antechamber of Ulduar |achieve 12310
step
Congratulations, you have earned The Descent into Madness achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Disarmed",{
achieveid={12338},
description="Destroy both of Kologarn's arms and then Kologarn himself within 12 seconds.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12338 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
Follow the path to Kologarn |goto Ulduar/2 37.06,18.31 |noway |c
'|achieve 12338 |next "End"
step
kill Kologarn##32930
|tip To start, DPS Kologarn's body until he's at about 25 percent health.
|tip Make sure not to attack his arms at all while you do this!
|tip Once his body is at the 25 percent mark, kill his Left Arm, then his Right Arm.
|tip Kill his body immidiately after.
Earn the _Disarmed_ achievement |achieve 12338 |goto Ulduar/2 37.3,14.0
step
label "End"
Congratulations!
You have earned the _Disarmed_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Don't Stand in the Lightning",{
achieveid={12348},
description="This guide will walk you through how to get the Don't Stand in the Lightning achievement.",
},[[
step
This achievement is gained by defeating Thorim in Ulduar _without any raid member being struck by Lightning Charge_
kill Thorim##32865
|tip It is a cone attack that he will cast every 15 seconds.
Defeat Thorim |achieve 12348 |goto Ulduar/3 72.2,48.5
step
Congratulations, you have earned the Don't Stand in the Lightning achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Drive Me Crazy",{
achieveid={12395},
description="This guide will walk you through how to get the Drive Me Crazy achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _without any raid member going insane_
|tip You will go Insane after losing too many stacks of Sanity. Stand in the green pillars of light to regain Sanity and prevent it from getting too low.
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12395 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the Drive Me Crazy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Dwarfageddon",{
achieveid={12312},
description="This guide will walk you through how to get the Dwarfageddon achievement.",
},[[
step
This achievement is gained by defeating 100 Steelforged Defenders in 10 seconds on the Ulduar gauntlet in _10 player mode_
kill 100 Steelforged Defender##33572
|tip Run around the room to gather up a very large group, and then kill them all at once with the vehicle abilities.
Defeat 100 Steelforged Defenders in Ulduar |achieve 12312 |goto Ulduar 49.0,46.0
step
Congratulations, you have earned the Dwarfageddon achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Earth, Wind & Fire (10 player)",{
achieveid={4016},
description="This guide will walk you through how to get the Earth, Wind & Fire (10 player) achievement.",
},[[
step
This achievement is gained by defeating Archavon the Stone Watcher, Emalon the Storm Watcher, and Koralon the Flame Watcher _within 60 seconds of each other_ in 10 player mode
|tip Aggro them all at once and then kill them together.
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon 49.2,17.0
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon 62.6,55.4
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon 36.0,55.4
Earth, Wind & Fire (10 player) |achieve 4016
step
Congratulations, you have earned the Earth, Wind & Fire (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Earth, Wind & Fire (25 player)",{
achieveid={4017},
description="This guide will walk you through how to get the Earth, Wind & Fire (25 player) achievement.",
},[[
step
This achievement is gained by defeating Archavon the Stone Watcher, Emalon the Storm Watcher, and Koralon the Flame Watcher _within 60 seconds of each other_ in 25 player mode
|tip Aggro them all at once and then kill them together.
kill Archavon the Stone Watcher##31125 |goto Vault of Archavon 49.2,17.0
kill Emalon the Storm Watcher##33993 |goto Vault of Archavon 62.6,55.4
kill Koralon the Flame Watcher##35013 |goto Vault of Archavon 36.0,55.4
Earth, Wind & Fire (25 player) |achieve 4017
step
Congratulations, you have earned the Earth, Wind & Fire (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Fall of Naxxramas (10 player)",{
achieveid={576},
description="This guide will walk you through how to get The Fall of Naxxramas (10 player) achievement.",
},[[
step
This achievement is gained by defeating all the bosses of Naxxramas in 10 player mode
|tip Use our achievement or raid guides to complete this.
The Arachnid Quarter (10 player) |achieve 576/1
The Construct Quarter (10 player) |achieve 576/2
The Plague Quarter (10 player) |achieve 576/3
The Military Quarter (10 player) |achieve 576/4
Sapphiron's Demise (10 player) |achieve 576/5
Kel'Thuzad's Defeat (10 player) |achieve 576/6
step
Congratulations, you have earned The Fall of Naxxramas (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Fall of Naxxramas (25 player)",{
achieveid={577},
description="This guide will walk you through how to get The Fall of Naxxramas (25 player) achievement.",
},[[
step
This achievement is gained by defeating all the bosses of Naxxramas in 25 player mode
|tip Use our achievement or raid guides to complete this.
The Arachnid Quarter (25 player) |achieve 577/1
The Construct Quarter (25 player) |achieve 577/2
The Plague Quarter (25 player) |achieve 577/3
The Military Quarter (25 player) |achieve 577/4
Sapphiron's Demise (25 player) |achieve 577/5
Kel'Thuzad's Defeat (25 player) |achieve 577/6
step
Congratulations, you have earned The Fall of Naxxramas (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Firefighter",{
achieveid={12369},
description="Defeat Mimiron after activating his Self-Destruct mechanism.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/5
path	43.65,62.19
click Ulduar Teleporter##194569
Teleport to The Spark of Imaginations |goto Ulduar/5 43.65,62.19 |noway |c
'|achieve 12369 |next "End"
step
map Ulduar/5
path loop off; dist 20
path	43.63,59.52	43.59,54.10	43.67,45.36
Follow the path to Mimiron |goto 43.67,45.36 |noway |c
'|achieve 12369 |next "End"
step
kill Mimiron##33350
|tip To earn this achievement, you will have to press a big red button at the back of the room before engaging Mimiron.
|tip Once you've clicked it, wait for his dialogue to finish and then kill him.
|tip This makes the fight mechanics significantly more difficult!
Earn the _Firefighter_ achievement |achieve 12369 |goto Ulduar/5 43.6,41.1
step
label "End"
Congratulations!
You have earned the _Firefighter_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Flu Shot Shortage (10 player)",{
achieveid={4577},
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 10-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 2 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4577 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Flu Shot Shortage (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Flu Shot Shortage (25 player)",{
achieveid={4615},
description="Defeat Festergut while none of the players in your raid group ever had 3 stacks of Inoculated in 25-player mode.",
},[[
step
To earn this achievement, you will to defeat Festergut without allowing Inoculated to raise above 3 stacks
When Festergut uses Gas Spore, run away from him until it explodes to avoid being Inoculated, then DPS him down
Defeat Festergut without being Inoculated twice |achieve 4615 |goto Icecrown Citadel/5 19.79,65.28
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Flu Shot Shortage (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Frostwing Halls (10 player)",{
achieveid={4527},
description="This guide will walk you through how to get The Frostwing Halls (10 player) achievement.",
},[[
step
This achievement is gained by defeating _all the the bosses of The Frostwing Halls_ in Icecrown Citadel in 10 player mode
|tip Use our raid guides to complete this.
kill Valithria Dreamwalker##36789 |achieve 4527/1 |goto Icecrown Citadel/5 76.6,73.7
kill Sindragosa##36853 |achieve 4527/2 |goto Icecrown Citadel/4 36.6,23.4
step
Congratulations, you have earned The Frostwing Halls (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Frostwing Halls (25 player)",{
achieveid={4607},
description="This guide will walk you through how to get The Frostwing Halls (25 player) achievement.",
},[[
step
This achievement is gained by defeating _all the the bosses of The Frostwing Halls_ in Icecrown Citadel in 25 player mode
|tip Use our raid guides to complete this.
kill Valithria Dreamwalker##36789 |achieve 4607/1 |goto Icecrown Citadel/5 76.6,73.7
kill Sindragosa##36853 |achieve 4607/2 |goto Icecrown Citadel/4 36.6,23.4
step
Congratulations, you have earned The Frostwing Halls (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Frozen Throne (10 player)",{
achieveid={4530},
description="This guide will walk you through how to get The Frozen Throne (10 player) achievement.",
},[[
step
This achievement is gained by defeating _the Lich King_ in Icecrown Citadel in 10 player mode
kill The Lich King##36597
The Frozen Throne (10 player) |achieve 4530 |goto Icecrown Citadel/7 49.8,52.8
step
Congratulations, you have earned The Frozen Throne (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Frozen Throne (25 player)",{
achieveid={4597},
description="This guide will walk you through how to get The Frozen Throne (25 player) achievement.",
},[[
step
This achievement is gained by defeating _the Lich King_ in Icecrown Citadel in 25 player mode
kill The Lich King##36597
The Frozen Throne (25 player) |achieve 4597 |goto Icecrown Citadel/7 49.8,52.8
step
Congratulations, you have earned The Frozen Throne (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Full House (10 player)",{
achieveid={4535},
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4535 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Full House (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Full House (25 player)",{
achieveid={4611},
description="Defeat Lady Deathwhisper with at least five different types of Cultists active at the time of her demise in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat lady Deathwhisper with 5 specifc mobs active:
Deformed Fanatic
Reanimated Fanatic
Reanimated Adherent
Cult Fanatic
Cult Adherent
She will spawn adds every minute from when you begin the encounter, so don't dps her until you see what you need have spawned
If you dps her and send her to phase 2 without having the mobs up, you will not be able to earn the achievement
Defeat Lady Deathwhisper while 5 different type of cultists are active |achieve 4611 |goto Icecrown Citadel/1 38.96,86.68
|tip Set the duneong difficulty to Heroic to earn the Heroic: Lady Deathwhisper Achievement.
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the Full House (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Getting Back to Nature",{
achieveid={12363},
description="This guide will walk you through how to get the Getting Back to Nature achievement.",
},[[
step
This achievement is gained by defeating Freya in Ulduar _while she is affected by at least 25 stacks of Attuned to Nature_
|tip Freya spawns a random assortment of adds during the fight, killing these adds will slowly remove her stacks of Attuned to Nature, so kill her as fast as possible.
kill Freya##32906
Defeat Freya |achieve 12363 |goto Ulduar/3 53.3,22.8
step
Congratulations, you have earned the Getting Back to Nature achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Getting Cold in Here",{
achieveid={12345},
description="This guide will walk you through how to get the Getting Cold in Here achievement.",
},[[
step
This achievement is gained by defeating Hodir in Ulduar _without any raid member having more than 2 stacks of Biting Cold_
|tip The Toasty Fires created by the mage adds will lower the amount of stacks.
kill Hodir##32845
Defeat Hodir |achieve 12345 |goto Ulduar/3 67.0,63.8
step
Congratulations, you have earned the Getting Cold in Here achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Gonna Go When the Volcano Blows (10 player)",{
achieveid={2047},
description="This guide will walk you through how to get the Gonna Go When the Volcano Blows (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _without getting hit by Lava Strike_ in 10 player mode
kill Sartharion <The Onyx Guardian>##28860
Defeat Sartharion |achieve 2047 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Gonna Go When the Volcano Blows (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Gonna Go When the Volcano Blows (25 player)",{
achieveid={2048},
description="This guide will walk you through how to get the Gonna Go When the Volcano Blows (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _without getting hit by Lava Strike_ in 25 player mode
kill Sartharion <The Onyx Guardian>##28860
Defeat Sartharion |achieve 2048 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Gonna Go When the Volcano Blows (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\He's Not Getting Any Older",{
achieveid={12396},
description="This guide will walk you through how to get the He's Not Getting Any Older achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _within 7 minutes_
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12396 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the He's Not Getting Any Older achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heartbreaker",{
achieveid={12330},
description="Defeat XT-002 Deconstructor after destroying his heart.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter##194569
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
'|achieve 12330 |next "End"
step
kill XT-002 Deconstructor##33293
|tip First, engage XT-002.
|tip Be sure to do very slow dps at first.
|tip Avoid using DoTs as you can accidentally kill it.
|tip Once you take it down to 75 percent of it's health, the heart will pop out.
|tip Kill the heart, then XT-002.
Earn the _Heartbreaker_ achievement |achieve 12330 |goto Ulduar/1 48.5,13.9
step
label "End"
Congratulations!
You have earned the _Heartbreaker_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: The Crimson Hall (10 player)",{
achieveid={4630},
description="This guide will walk you through how to get the Heroic: The Crimson Hall (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 10-player _Heroic_ mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4630/1 |goto Icecrown Citadel/5 52.0,14.1
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4630/2 |goto Icecrown Citadel/6 51.1,43.8
step
Congratulations, you have earned the Heroic: The Crimson Hall (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: The Crimson Hall (25 player)",{
achieveid={4634},
description="This guide will walk you through how to get the Heroic: The Crimson Hall (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Crimson Hall in Icecrown Citadel in 25-player _Heroic_ mode
kill Prince Valanar##37970
Defeat the Blood Prince Council |achieve 4634/1 |goto Icecrown Citadel/5 52.0,14.1
kill Blood-Queen Lana'thel##37955
Defeat Blood-Queen Lana'thel |achieve 4634/2 |goto Icecrown Citadel/6 51.1,43.8
step
Congratulations, you have earned the Heroic: The Crimson Hall (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: The Plagueworks (10 player)",{
achieveid={4629},
description="This guide will walk you through how to get the Heroic: The Plagueworks (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 10-player _Heroic_ mode
kill Festergut##36626
Defeat Festergut |achieve 4629/1 |goto Icecrown Citadel/5 19.8,65.4
kill Rotface##36627
Defeat Rotface |achieve 4629/2 |goto Icecrown Citadel/5 19.8,41.9
kill Professor Putricide##36678
Defeat Professor Putricide |achieve 4629/3 |goto Icecrown Citadel/5 13.3,53.5
step
Congratulations, you have earned the Heroic: The Plagueworks (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: The Plagueworks (25 player)",{
achieveid={4633},
description="This guide will walk you through how to get the Heroic: The Plagueworks (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 25-player _Heroic_ mode
kill Festergut##36626
Defeat Festergut |achieve 4633/1 |goto Icecrown Citadel/5 19.8,65.4
kill Rotface##36627
Defeat Rotface |achieve 4633/2 |goto Icecrown Citadel/5 19.8,41.9
kill Professor Putricide##36678
Defeat Professor Putricide |achieve 4633/3 |goto Icecrown Citadel/5 13.3,53.5
step
Congratulations, you have earned the Heroic: The Plagueworks (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: Storming the Citadel (10 player)",{
achieveid={4628},
description="This guide will walk you through how to get the Heroic: Storming the Citadel (10 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 10-player _Heroic_ mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4628/1 |goto Icecrown Citadel/1 39.1,59.3
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4628/2 |goto Icecrown Citadel/1 39.1,86.9
Complete the Gunship Battle |achieve 4628/3 |goto Icecrown Citadel/3 48.7,76.4
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4628/4 |goto Icecrown Citadel/3 51.1,21.6
step
Congratulations, you have earned the Heroic: Storming the Citadel (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heroic: Storming the Citadel (25 player)",{
achieveid={4632},
description="This guide will walk you through how to get the Heroic: Storming the Citadel (25 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 25-player _Heroic_ mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4632/1 |goto Icecrown Citadel/1 39.1,59.3
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4632/2 |goto Icecrown Citadel/1 39.1,86.9
Complete the Gunship Battle |achieve 4632/3 |goto Icecrown Citadel/3 48.7,76.4
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4632/4 |goto Icecrown Citadel/3 51.1,21.6
step
Congratulations, you have earned the Heroic: Storming the Citadel (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Hot Pocket",{
achieveid={12324},
description="This guide will walk you through how to get the Hot Pocket achievement.",
},[[
step
This achievement is gained by surviving being thrown into Ignis the Furnace Master's Slag Pot in Ulduar
_You will need a tank to hold aggro_ so Ignis will toss you into the Slag Pot
|tip This can be done solo with your pet if you are a hunter.
kill Ignis the Furnace Master##33118
|tip Engage the boss, let the tank/hunter pet gain aggro and wait for him to throw you in the Slag Pot.
Survivie Being Thrown Into the Slag Pot |achieve 12324 |goto Ulduar 38.3,26.6
step
Congratulations, you have earned the Hot Pocket achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Hundred Club (10 player)",{
achieveid={2146},
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 10-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2146)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2146 |goto Naxxramas/6 60.10,68.33
step
Congratulations, you have earned the The Hundred Club (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Hundred Club (25 player)",{
achieveid={2147},
description="Defeat Sapphiron in Naxxramas without any member of the raid having a frost resist value over 100 in 25-player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2147)
step
With the resistance stat being removed, you will earn this achievement no matter what simply by killing Sapphiron
|achieve 2147 |goto Naxxramas/6 60.10,68.33
step
Congratulations, you have earned the The Hundred Club (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Choose You, Runemaster Molgeim",{
achieveid={12332},
description="This guide will walk you through how to get the I Choose You, Runemaster Molgeim achievement.",
},[[
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _by killing Runemaster Molgeim last_
kill Stormcaller Brundir##32857
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
|tip Be sure to kill Runemaster Molgeim last.
I Choose You, Runemaster Molgeim |achieve 12332 |goto Ulduar/2 15.6,56.4
step
Congratulations, you have earned the I Choose You, Runemaster Molgeim achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Choose You, Steelbreaker",{
achieveid={12334},
description="Defeat the Assembly of Iron with Steelbreaker as the last member alive.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12334 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.20,48.71	27.66,30.15	17.15,30.68
path	15.51,41.96
Enter the Assembly of Iron |goto 15.51,41.96 |noway |c
'|achieve 12334 |next "End"
step
Kill the Assembly of Iron
|tip To earn this achievement, kill Stormcaller Brundir, then Runemaster Molgeim, then Steelbreaker.
|tip Steelbreaker will become more powerful each time you kill one of them.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12334 |goto Ulduar/2 15,56
step
label "End"
Congratulations!
You have earned the _I Choose You, Steelbreaker_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Choose You, Stormcaller Brundir",{
achieveid={12333},
description="This guide will walk you through how to get the I Choose You, Stormcaller Brundir achievement.",
},[[
step
This achievement is gained by defeating the Assembly of Iron in Ulduar _by killing Stormcaller Brundir last_
kill Steelbreaker##32867
kill Runemaster Molgeim##32927
kill Stormcaller Brundir##32857
|tip Be sure to kill Stormcaller Brundir last.
I Choose You, Stormcaller Brundir |achieve 12333 |goto Ulduar/2 15.6,56.4
step
Congratulations, you have earned the I Choose You, Stormcaller Brundir achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Could Say That This Cache Was Rare",{
achieveid={12347},
description="Defeat Hodir before he shatters his rare cache.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12347 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	57.89,72.18	63.79,77.03
path	73.14,79.13	75.93,76.98	75.09,71.80
path	73.75,64.55	70.97,63.85
Enter the Halls of Winter |goto 70.97,63.85 |noway |c
'|achieve 12347 |next "End"
step
kill Hodir##32845
|tip To earn this achievement, you need to kill Hodir within 3 minutes.
|tip Pop all cooldowns that increase your damage and defeat Hodir.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12347 |goto Ulduar/3 66.0,63.7
step
label "End"
Congratulations!
You have earned the _I Could Say That This Cache Was Rare_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Have the Coolest Friends",{
achieveid={12344},
description="This guide will walk you through how to get the I Have the Coolest Friends achievement.",
},[[
step
This achievement is gained by defeating Hodir in Ulduar _without any friendly NPC dying_
|tip The 4 adds are frozen in ice at the beginning of the fight. Break them out of the ice and then keep them from dying.
kill Hodir##32845
Defeat Hodir |achieve 12344 |goto Ulduar/3 67.0,63.8
step
Congratulations, you have earned the I Have the Coolest Friends achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Love the Smell of Saronite in the Morning",{
achieveid={12373},
description="Defeat General Vezax after defeating the Saronite Animus.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/3
path	51.02,54.02
Teleport to the Conservatory of Life |goto Ulduar/3 51.02,54.02 |noway |c
'|achieve 12373 |next "End"
step
map Ulduar/3
path loop off; dist 20
path	48.88,58.35	45.96,62.22	45.45,68.77
path	42.70,73.55	34.89,74.44
map Ulduar/4
path	33.82,51.62	27.85,50.21	28.71,58.83
path	35.66,67.97	41.56,65.68
Follow the path to General Vezax |goto 41.56,65.68 |noway |c
'|achieve 12373 |next "End"
step
kill General Vezax##33271
|tip To start, engage General Vezax with light damage.
|tip He will spawn Saronite Vapors. Eventually he will absorb them when there are enough.
|tip When that happens, a Saronite Animus will spawn.
|tip Kill the Saronite Animus, then General Vazax.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12373 |goto Ulduar/4 52.6,57.1
step
label "End"
Congratulations!
You have earned the _I Love the Smell of Saronite in the Morning_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I'll Take You All On",{
achieveid={12349},
description="This guide will walk you through how to get the I'll Take You All On achievement.",
},[[
step
This achievement is gained by defeating Thorim, the Ancient Rune Giant and the Runic Colossus in Ulduar
kill Thorim##32865
kill Ancient Rune Giant##32873
kill Runic Colossus##32872
|tip The Ancient Rune Giant and Runic Colossus are trash mobs you'll find on the way to Thorim.
Defeat Thorim |achieve 12349 |goto Ulduar/3 72.2,48.5
step
Congratulations, you have earned the I'll Take You All On achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I'm on a Boat (10 player)",{
achieveid={4536},
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 10-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4536 |goto Icecrown Citadel/2 66.50,55.34
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I'm on a Boat (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I'm on a Boat (25 player)",{
achieveid={4612},
description="Claim victory in the Gunship Battle without any raid member visiting the enemy gunship more than twice in 25-player mode.",
},[[
step
To start, hope in the gun ship as soon as you're able and shoot the horde ship
This achievement is still currently bugged, so as you spam 1 and 2 while in the cannon, you should earn this achievement
|achieve 4612 |goto Icecrown Citadel/2 66.50,55.34
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I'm on a Boat (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I've Gone and Made a Mess (10 player)",{
achieveid={4537},
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast three times in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4537 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I've Gone and Made a Mess Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I've Gone and Made a Mess (25 player)",{
achieveid={4613},
description="Defeat the Deathbringer before Mark of the Fallen Champion is cast five times in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat the Deathbring beofre Mark of the Fallen Champion is cast 3 times
Just dps him down as it's a race
Defeat the Deathbringer before Mark of the Fallen Champion is cast three times |achieve 4613 |goto Icecrown Citadel/3 51.67,33.35
|tip Set the difficulty to Heroic to earn a portion of the Heroic: Storming the Citadel Achievement.
step
Congratulations, you have earned the I've Gone and Made a Mess Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\If Looks Could Kill",{
achieveid={12339},
description="This guide will walk you through how to get the If Looks Could Kill achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _without any raid member being hit by Focused Eyebeams_
kill Kologarn##32930
Defeat Kologarn |achieve 12339 |goto Ulduar/2 37.2,13.3
step
Congratulations, you have earned the If Looks Could Kill achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\In His House He Waits Dreaming",{
achieveid={12398},
description="This guide will walk you through how to get the In His House He Waits Dreaming achievement.",
},[[
step
This achievement is gained by experiencing all 3 visions of Yogg-Saron's mind
kill Yogg-Saron##33288
|tip Yogg-Saron will open portals during Phase 2. You'll have 60 seconds to go into each portal and kill the illusion adds and then also a brain that spawns.
|tip This can be done over multiple raids or all at once if you are fast enough.
The Assassination of King Llane |achieve 12398/1 |goto Ulduar/4 68.3,39.9
The Forging of the Demon Soul |achieve 12398/2 |goto Ulduar/4 68.3,39.9
The Tortured Champion |achieve 12398/3 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the In His House He Waits Dreaming achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Iron Dwarf, Medium Rare",{
achieveid={12322},
description="Defeat 25 Dark Rune Guardian Dwarves with Razorscale's Flame Breath.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter##194569
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
'|achieve 12322 |next "End"
step
kill Razorscale##33186
|tip To start, ignore the Harpoon guns.
|tip You will need a powerful AoE.
|tip You can kill the large enemies, but leave the smaller ones alone for now.
|tip Once you have at least 25, use the Harpoon Gun on Razorscale.
|tip Wait for Razorscale to start casting Flame Breath and as soon as it hits, use your AoE attack.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12322 |goto Ulduar/1 54.1,26.3
step
label "End"
Congratualtions!
You have earned the _Iron Dwarf, Medium Rare_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Just Can't Get Enough (10 player)",{
achieveid={2184},
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 10 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2184)
step
map Naxxramas/6
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto 34.06,42.13 < 10 |noway |c
only if not achieved(2184)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2184 |goto Naxxramas/6 36.64,22.76
step
Congratulations, you have earned the Just Can't Get Enough (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Just Can't Get Enough (25 player)",{
achieveid={2185},
description="Defeat Kel'Thuzad in Naxxramas while killing at least 18 abominations in his chamber in 25 player mode.",
},[[
step
map Naxxramas/5
path	53.47,50.13
click Orb of Naxxramas##202278
Enter Sapphiron's Lair |goto Naxxramas/6 73.64,72.79 < 20 |noway |c
only if not achieved(2185)
step
map Naxxramas/6
path loop off;dist 20
path	45.36,64.29	36.29,56.32	34.06,42.13
Follow the path to Kel'Thuzad's Chamber |goto 34.06,42.13 < 10 |noway |c
only if not achieved(2185)
step
To start, don't dps Kel'Thuzad
Instead, stand at the center of the room
Kill 18 Unstoppable Abomination before even touching Kel'Thuzad
Keep in mind, if you leave the green circle, it could cause Kel'Thuzad to despawn
That said, _you absolutely NEED ranged dps_ in order to pull the Abominations or they will despawn near the time Kel'Thuzad attacks
|achieve 2185 |goto Naxxramas/6 36.64,22.76
step
Congratulations, you have earned the Just Can't Get Enough (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Keepers of Ulduar",{
achieveid={12309},
description="This guide will walk you through how to get The Keepers of Ulduar achievement.",
},[[
step
This achievement is gained by defeating the Keeper bosses of Ulduar
kill Hodir##32845 |achieve 12309/1 |goto Ulduar/3 67.0,63.8
kill Thorim##32865 |achieve 12309/2 |goto Ulduar/3 72.2,48.5
kill Freya##32906 |achieve 12309/3 |goto Ulduar/3 53.3,22.8
kill Mimiron##33350 |achieve 12309/4 |goto Ulduar/5 43.6,41.2
Clear the Keepers of Ulduar |achieve 12309
step
Congratulations, you have earned The Keepers of Ulduar achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Kel'Thuzad's Defeat (10 player)",{
achieveid={574},
description="This guide will walk you through how to get the Kel'Thuzad's Defeat (10 player) achievement.",
},[[
step
This achievement is gained by defeating Kel'Thuzad in Naxxramas in 10 player mode
kill Kel'Thuzad##15990
Defeat Kel'Thuzad (10 player) |achieve 574 |goto Naxxramas/6 36.5,22.3
step
Congratulations, you have earned the Kel'Thuzad's Defeat (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Kel'Thuzad's Defeat (25 player)",{
achieveid={575},
description="This guide will walk you through how to get the Kel'Thuzad's Defeat (25 player) achievement.",
},[[
step
This achievement is gained by defeating Kel'Thuzad in Naxxramas in 25 player mode
kill Kel'Thuzad##15990
Defeat Kel'Thuzad (25 player) |achieve 575 |goto Naxxramas/6 36.5,22.3
step
Congratulations, you have earned the Kel'Thuzad's Defeat (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Kiss and Make Up",{
achieveid={12384},
description="This guide will walk you through how to get the Kiss and Make Up achievement.",
},[[
step
This achievement is gained by doing "/kiss" on Sara in Ulduar while she is angry with you
|tip This is done during the Yogg-Saron fight. During Phase 2, target Sara and do /kiss.
clicknpc Sara##33134
|tip You can do this easily by tying "/tar Sara".
Kiss Sara |script DoEmote("LOVE")
Kiss and Make Up |achieve 12384 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the Kiss and Make Up achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Knock, Knock, Knock on Wood",{
achieveid={12366},
description="Defeat Freya while leaving all 3 Elders alive.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12366 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	51.28,56.78	51.72,38.40	52.26,29.14
Follow the path to Freya |goto 52.26,29.14 |noway |c
'|achieve 12366 |next "End"
step
kill Freya##32906
|tip To earn this achievement, Kill Freya directly without killing any of the Elders in her room.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12366 |goto Ulduar/3 53,23
step
label "End"
Congratulations!
You have earned the _Knock, Knock, Knock on Wood_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Knock on Wood",{
achieveid={12364},
description="This guide will walk you through how to get the Knock on Wood achievement.",
},[[
step
This achievement is gained by defeating Freya in Ulduar _while leaving at least 1 Elder alive_
|tip Leave at least Elder Brightleaf, Elder Ironbranch, or Elder Stonebark alive before Freya is killed.
kill Freya##32906
Defeat Freya |achieve 12364 |goto Ulduar/3 53.3,22.8
step
Congratulations, you have earned the Knock on Wood achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Less Is More (10 player)",{
achieveid={624},
description="This guide will walk you through how to get the Less Is More (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian and the Twilight Drakes in The Obsidian Sanctum _with fewer than 9 players_ in 10 player mode
kill Vesperon##30449
kill Tenebron##30452
kill Shadron##30451
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian (10 player) |achieve 624 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Less Is More (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Less Is More (25 player)",{
achieveid={1877},
description="This guide will walk you through how to get the Less Is More (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian and the Twilight Drakes in The Obsidian Sanctum _with fewer than 9 players_ in 25 player mode
kill Vesperon##30449
kill Tenebron##30452
kill Shadron##30451
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian (25 player) |achieve 1877 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Less Is More (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Light of Dawn",{
achieveid={4584},
description="This guide will walk you through how to get the The Light of Dawn achievement.",
},[[
step
This achievement is gained by defeating the Lich King in 25-player _Heroic_ mode
kill The Lich King##36597
Defeat The Lich King in 25-player Heroic Mode |achieve 4584 |goto Icecrown Citadel/7 49.8,52.8
step
Congratulations, you have earned the The Light of Dawn achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Lose Your Illusion",{
achieveid={12352},
description="Defeat Thorim while Sif is present.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
'|achieve 12352 |next "End"
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	56.66,68.68	55.82,61.33
path	59.45,51.49	65.59,48.56
Follow the path to Thorim |goto 65.59,48.56 |noway |c
'|achieve 12352 |next "End"
step
map Ulduar/3
path	loop off; dist 20
path	69.04,43.15	69.21,38.08	75.23,38.11
path	81.65,38.20	82.21,43.61	81.44,48.29
path	78.03,50.41	74.00,50.19	71.46,48.60
path	70.32,48.82
kill Thorim##32865
|tip First, kill the enemies inside of the room.
|tip After killing the initial enemies, click the lever.
click Lever##245102
|tip Run down the corridor, killing mobs quickly.
|tip Reach the end of the hallway and jump down fast quickly to force Sif to join the fight.
|tip Ignore Sif and kill Thorim.
Earn the _Lose Your Illusion_ achievement |achieve 12352
step
label "End"
Congratulations!
You have earned the _Lose Your Illusion_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Lumberjacked",{
achieveid={12360},
description="This guide will walk you through how to get the Lumberjacked achievement.",
},[[
step
This achievement is gained by defeating Elder Brightleaf, Elder Ironbranch and Elder Stonebark _within 15 seconds of each other_ in Ulduar
|tip They are found around the large boss room. Pull them together and kill them all at once. Avoid pulling Freya or the Elders will become unattackable.
kill Elder Brightleaf##32915 |goto Ulduar/3 40.0,19.0
kill Elder Ironbranch##32913 |goto Ulduar/3 61.0,21.0
kill Elder Stonebark##32914 |goto Ulduar/3 56.0,40.0
Defeat the Three Elders |achieve 12360
step
Congratulations, you have earned the Lumberjacked achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Make Quick Werk of Him (10 player)",{
achieveid={1856},
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 10-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto 53.61,76.61 < 20 |noway |c
only if not achieved(1856)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1856 |goto 45.88,70.09
|tip Patchwerk patrols along the path here.
step
Congratulations, you have earned the Make Quick Werk of Him Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Make Quick Werk of Him (25 player)",{
achieveid={1857},
description="Defeat Patchwerk in Naxxramas in 3 minutes or less in 25-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61
Follow the path through the Construct Quarter |goto 53.61,76.61 < 20 |noway |c
only if not achieved(1857)
step
To earn this achievement, defeat Patchwerk within the 3 mintue mark
|achieve 1857 |goto 45.88,70.09
|tip Patchwerk patrols along the path here.
step
Congratulations, you have earned the Make Quick Werk of Him Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Many Whelps! Handle It! (10 player)",{
achieveid={4403},
description="This guide will walk you through how to get the Many Whelps! Handle It! (10 player) achievement.",
},[[
step
This achievement is gained by _causing 50 Onyxia Whelplings to hatch within 10 seconds_ of Onyxia's liftoff and then defeat her in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4403 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the Many Whelps! Handle It! (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Many Whelps! Handle It! (25 player)",{
achieveid={4406},
description="This guide will walk you through how to get the Many Whelps! Handle It! (25 player) achievement.",
},[[
step
This achievement is gained by _causing 50 Onyxia Whelplings to hatch within 10 seconds_ of Onyxia's liftoff and then defeat her in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4406 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the Many Whelps! Handle It! (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Military Quarter (10 player)",{
achieveid={568},
description="This guide will walk you through how to get The Military Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Military Quarter in Naxxramas in 10 player mode
kill Instructor Razuvious##16061 |achieve 568/1 |goto Naxxramas/3 42.7,45.9
kill Gothik the Harvester##16060 |achieve 568/2 |goto Naxxramas/3 67.5,59.6
Defeat the Four Horsemen |achieve 568/3 |goto Naxxramas/3 30.6,77.2
step
Congratulations, you have earned The Military Quarter (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Military Quarter (25 player)",{
achieveid={569},
description="This guide will walk you through how to get The Military Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Military Quarter in Naxxramas in 25 player mode
kill Instructor Razuvious##16061 |achieve 569/1 |goto Naxxramas/3 42.7,45.9
kill Gothik the Harvester##16060 |achieve 569/2 |goto Naxxramas/3 67.5,59.6
Defeat the Four Horsemen |achieve 569/3 |goto Naxxramas/3 30.6,77.2
step
Congratulations, you have earned The Military Quarter (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Momma Said Knock You Out (10 player)",{
achieveid={1997},
description="This guide will walk you through how to get the Momma Said Knock You Out (10 player) achievement.",
},[[
step
This achievement is gained by defeating Grand Widow Faerlina in Naxxramas _without dispelling or preventing Frenzy_ in 10 player mode
kill Grand Widow Faerlina##15953
Defeat Grand Widow Faerlina (10 player) |achieve 1997 |goto Naxxramas/2 44.1,36.0
step
Congratulations, you have earned the Momma Said Knock You Out (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Momma Said Knock You Out (25 player)",{
achieveid={2140},
description="This guide will walk you through how to get the Momma Said Knock You Out (25 player) achievement.",
},[[
step
This achievement is gained by defeating Grand Widow Faerlina in Naxxramas _without dispelling or preventing Frenzy_ in 25 player mode
kill Grand Widow Faerlina##15953
Defeat Grand Widow Faerlina (25 player) |achieve 2140 |goto Naxxramas/2 44.1,36.0
step
Congratulations, you have earned the Momma Said Knock You Out (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\More Dots! (10 player)",{
achieveid={4402},
description="This guide will walk you through how to get the More Dots! (10 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _within 5 minutes_ in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4402 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the More Dots! (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\More Dots! (25 player)",{
achieveid={4405},
description="This guide will walk you through how to get the More Dots! (25 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _within 5 minutes_ in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4405 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the More Dots! (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Must Deconstruct Faster",{
achieveid={12329},
description="This guide will walk you through how to get the Must Deconstruct Faster achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _within 205 seconds_
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12329 |goto Ulduar 48.8,14.1
step
Congratulations, you have earned the Must Deconstruct Faster achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nausea, Heartburn, Indigestion... (10 player)",{
achieveid={4578},
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4578 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Nausea, Heartburn, Indigestion... (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nausea, Heartburn, Indigestion... (25 player)",{
achieveid={4616},
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, don't drink any of the Ooze provided for the encounter as it will cause you to fail this achievement
|achieve 4616 |goto Icecrown Citadel/5 10.07,53.65
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Plagueworks Achievement.
step
Congratulations, you have earned the Nausea, Heartburn, Indigestion... (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Neck-Deep in Vile (10 Player)",{
achieveid={4581},
description="This guide will walk you through how to get the Neck-Deep in Vile (10 Player) achievement.",
},[[
step
This achievement is gained by killing _every Vile Spirit that spawns before it explodes_ and then defeating the Lich King in 10-player mode
kill Vile Spirit##37799+
kill The Lich King##36597
Kill the Vile Spirits Before They Explode (10-player) |achieve 4581 |goto Icecrown Citadel/7 49.8,52.8
step
Congratulations, you have earned the Neck-Deep in Vile (10 Player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Neck-Deep in Vile (25 Player)",{
achieveid={4622},
description="This guide will walk you through how to get the Neck-Deep in Vile (25 Player) achievement.",
},[[
step
This achievement is gained by killing _every Vile Spirit that spawns before it explodes_ and then defeating the Lich King in 25-player mode
kill Vile Spirit##37799+
kill The Lich King##36597
Kill the Vile Spirits Before They Explode (25-player) |achieve 4622 |goto Icecrown Citadel/7 49.8,52.8
step
Congratulations, you have earned the Neck-Deep in Vile (25 Player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nerf Engineering",{
achieveid={12326},
description="This guide will walk you through how to get the Nerf Engineering achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _without him recovering any health from XS-013 Scrapbots_
|tip Kill the XS-013 Scrapbots that spawn and don't allow them to get to the boss. They spawn every 25% of the boss' health and can be slowed and rooted.
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12326 |goto Ulduar 48.8,14.1
step
Congratulations, you have earned the Nerf Engineering achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nerf Gravity Bombs",{
achieveid={12328},
description="This guide will walk you through how to get the Nerf Gravity Bombs achievement.",
},[[
step
This achievement is gained by defeating XT-002 Deconstructor in Ulduar _without any raid member dying from a Gravity Bomb_
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12328 |goto Ulduar 48.8,14.1
step
Congratulations, you have earned the Nerf Gravity Bombs achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nerf Scrapbots",{
achieveid={12327},
description="This guide will walk you through how to get the Nerf Scrapbots achievement.",
},[[
step
This achievement is gained by defeating _20 XS-013 Scrapbots within 12 seconds_ using XE-321 Boombots in Ulduar
|tip Weaken the boss to 50% health to trigger two Heart phases. This will cause Scrapbots to spawn from the junk piles. Run through to adds so the boss follows you. If there were at least 20 Scrapbots you'll get the achievement.
kill XT-002 Deconstructor##33293
Defeat XT-002 Deconstructor |achieve 12327 |goto Ulduar 48.8,14.1
step
Congratulations, you have earned the Nerf Scrapbots achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Nine Lives",{
achieveid={12342},
description="This guide will walk you through how to get the Nine Lives achievement.",
},[[
step
This achievement is gained by _defeating the Feral Defender_ in Ulduar while defeating Auriaya
kill Sanctum Sentry##34014+
|tip Kill the Sentries to spawn the Feral Defender.
kill Feral Defender##34035
|tip You must kill it 9 times, then kill Auriaya. It will spawn again after each death after about 30 seconds.
kill Auriaya##33515
Defeat Feral Defender |achieve 12342 |goto Ulduar/3 51.2,57.1
step
Congratulations, you have earned the Nine Lives achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Not-So-Friendly Fire",{
achieveid={12368},
description="This guide will walk you through how to get the Not-So-Friendly Fire achievement.",
},[[
step
This achievement is gained by forcing Mimiron in Ulduar to _kill an Assault Bot with a Rocket Strike_
kill Mimiron##33350
|tip During Mimiron's third phase (Aerial Command Unit form), Assault Bots spawn, leave at least 1 of them alive for the next phase.
|tip In the fourth phase (V0-L7R-0N form), Mimiron casts Rocket Strike at a targeted location. Kite the Assault Bot into that spot.
Not-So-Friendly Fire |achieve 12368 |goto Ulduar/5 43.6,41.2
step
Congratulations, you have earned the Not-So-Friendly Fire achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Not One, But Two Jormungars (10 player)",{
achieveid={3936},
description="This guide will walk you through how to get the Not One, But Two Jormungars (10 player) achievement.",
},[[
step
This achievement is gained by defeating Acidmaw and Dreadscale _within 10 seconds of each other_ in 10 player mode
kill Acidmaw##35144, Dreadscale##34799
|tip These spawn during the first encounter of Trial of the Crusader, the Northrend Beast.
Not One, But Two Jormungars (10 player) |achieve 3936 |goto Trial of the Crusader 51.1,52.7
step
Congratulations, you have earned the Not One, But Two Jormungars (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Not One, But Two Jormungars (25 player)",{
achieveid={3937},
description="This guide will walk you through how to get the Not One, But Two Jormungars (25 player) achievement.",
},[[
step
This achievement is gained by defeating Acidmaw and Dreadscale _within 10 seconds of each other_ in 25 player mode
kill Acidmaw##35144, Dreadscale##34799
|tip These spawn during the first encounter of Trial of the Crusader, the Northrend Beast.
Not One, But Two Jormungars (25 player) |achieve 3937 |goto Trial of the Crusader 51.1,52.7
step
Congratulations, you have earned the Not One, But Two Jormungars (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Observed",{
achieveid={12399},
description="This guide will walk you through how to get the Observed achievement.",
},[[
step
This achievement is gained by defeating Algalon the Observer in Ulduar
kill Algalon the Observer##32871
Defeat Algalon the Observer |achieve 12399 |goto Ulduar/2 79.2,46.0
step
Congratulations, you have earned the Observed achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Once Bitten, Twice Shy (10 player)",{
achieveid={4539},
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 10-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4539/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4539/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned the Once Bitten, Twice Shy (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Once Bitten, Twice Shy (25 player)",{
achieveid={4618},
description="Defeat Professor Putricide without using Regurgitated Ooze on the Abomination in 25-player mode.",
},[[
step
To earn this achievement, you will need to defeat Blood-Queen Lana'thel twice:
It will take around 15 seconds for her to activate the Essence of the Blood-Queen debuff
So wait to DPS her if you are looking to get the debuff
|achieve 4618/2 |goto Icecrown Citadel/6 51.13,32.44
If you are wanting to defeat her without becoming a vampire, you may want to bring additional dps to burn her quickly
|achieve 4618/1	|goto Icecrown Citadel/6 51.13,32.44
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned the Once Bitten, Twice Shy (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\One Light in the Darkness",{
achieveid={12387},
description="Defeat Yogg-Saron with the assistance of one or fewer Keepers.",
},[[
step
map Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/4
path	66.62,60.05
Teleport to the Prison of Yogg-Saron |goto 66.62,60.05 |noway |c
'|achieve 12387 |next "End"
step
kill Yogg-Saron##33288
|tip To earn this achievement, defeat Yogg-Saron with the aid of one keeper or none.
|tip If you do use a keeper, we would suggest that you speak with Freya.
Earn the _One Light in the Darkness_ achievement |achieve 12387 |goto Ulduar/4 68,40.8
step
label "End"
Congratulations!
You have earned the _One Light in the Darkness_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Orb Whisperer (10 player)",{
achieveid={4582},
description="Defeat the Blood Council without anyone in the raid taking more than 23,000 spell damage in a single hit in 10-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 23,000 or more in one hit |achieve 4582 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned The Orb Whisperer (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Orb Whisperer (25 player)",{
achieveid={4617},
description="Defeat the Blood Council without anyone in the raid taking more than 25,000 spell damage in a single hit in 25-player mode.",
},[[
step
_Prince Valanar_ casts Empowered Shock Vortex
If you're with multiple people, have someone attack the Kinetic Bombs if you have dots available
_Prince Taldaram_ casts Conjure Empowered Flame, which you will have to run away from if you're the target
If you are with multiple people, stand together with your group members to mitigate some damage
_Prince Keleseth_ casts Empowered Shadow Lance, which damage can be negated by killing Dark Nuclei around the room
Keep around _4 Stacks_ of Shadow Resonance if possible
Defeat the Blood Council without anyone in the raid taking 25,000 or more in one hit |achieve 4617 |goto Icecrown Citadel/5 51.93,12.00
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Crimson Hall Achievement.
step
Congratulations, you have earned The Orb Whisperer (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Orbit-uary",{
achieveid={12320},
description="Defeat Flame Leviathan with all 4 Orbital Defense Systems active.",
},[[
step
talk Lore Keeper of Norgannon##33686 |goto Ulduar/1 52.64,88.26
Tell him "Activate the second defense system."
map Ulduar/1
path loop off; dist 20
path	50.03,71.16	49.73,56.07	49.00,42.60
Make your way through the Iron Concourse and reach the Flame Leviathan |goto 49.00,42.60 |noway |c
'|achieve 12320 |next "End"
step
kill Flame Leviathan##33113
|tip To earn this achievement, you will need to defeat the Flame Leviathan with all defense systems active.
|tip Climb into a Salvaged Demolisher and head towards the boss, destroying a few standard towers on the path towards him.
|tip Once you get to the boss, spam your siege attacks.
|tip If your vehicle is destroyed, it shouldn't be too much of a problem, though you may end up needing sufficient self healing.
|tip If your vehicle ends up being destroyed, make sure that you never stand still or you'll be stunned.
Earn the _Orbit-uary_ achievement |achieve 12320 |goto Ulduar/1 49,40
step
label "End"
Congratulations!
You have earned the _Orbit-uary_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Orbital Bombardment",{
achieveid={12317},
description="This guide will walk you through how to get the Orbital Bombardment achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _with at least 1 Orbital Defense System active_
|tip There are three towers on the map on the way to the Flame Leviathan. Defeat Flame Leviathan without destroying at least one of them.
kill Flame Leviathan##33113
Defeat Flame Leviathan |achieve 12317 |goto Ulduar 49.3,38.6
step
Congratulations, you have earned the Orbital Bombardment achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Plague Quarter (10 player)",{
achieveid={566},
description="This guide will walk you through how to get The Plague Quarter (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plague Quarter in Naxxramas in 10 player mode
kill Noth the Plaguebringer##15954 |achieve 566/1 |goto Naxxramas/4 34.6,56.4
kill Heigan the Unclean##15936 |achieve 566/2 |goto Naxxramas/4 49.8,45.6
kill Loatheb##16011 |achieve 566/3 |goto Naxxramas/4 76.0,28.3
step
Congratulations, you have earned The Plague Quarter (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Plague Quarter (25 player)",{
achieveid={567},
description="This guide will walk you through how to get The Plague Quarter (25 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plague Quarter in Naxxramas in 25 player mode
kill Noth the Plaguebringer##15954 |achieve 567/1 |goto Naxxramas/4 34.6,56.4
kill Heigan the Unclean##15936 |achieve 567/2 |goto Naxxramas/4 49.8,45.6
kill Loatheb##16011 |achieve 567/3 |goto Naxxramas/4 76.0,28.3
step
Congratulations, you have earned The Plague Quarter (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Plagueworks (10 player)",{
achieveid={4528},
description="This guide will walk you through how to get The Plagueworks (10 player) achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Plagueworks in Icecrown Citadel in 10 player mode
kill Festergut##36626 |achieve 4528/1 |goto Icecrown Citadel/5 19.8,65.4
kill Rotface##36627 |achieve 4528/2 |goto Icecrown Citadel/5 19.8,41.9
kill Professor Putricide##36678 |achieve 4528/3 |goto Icecrown Citadel/5 13.3,53.5
step
Congratulations, you have earned The Plagueworks (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Portal Jockey (10 player)",{
achieveid={4579},
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 10-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4579 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the Portal Jockey Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Portal Jockey (25 player)",{
achieveid={4619},
description="Enter every portal spawned by Valithria Dreamwalker before healing her to full health in 25-player mode.",
},[[
step
To start, you will need to be a healer for this achievement
You will need to heal up Valithria Dreamwalker before any Portals appear during the encounter
Enter every portal spawned during the encounter |achieve 4619 |goto Icecrown Citadel/5 76.62,73.26
|tip Set the difficulty to Heroic to earn a portion of the Heroic: The Frostwing Halls Achievement.
step
Congratulations, you have earned the Portal Jockey (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Resilience Will Fix It (10 player)",{
achieveid={3798},
description="This guide will walk you through how to get the Resilience Will Fix It (10 player) achievement.",
},[[
step
This achievement is gained by all the enemy heroes _within 60 seconds of the first one dying_ in 10 player mode
|tip It is the third encounter of the raid.
Kill the big group of enemies that spawn
Resilience Will Fix It (10 player) |achieve 3798 |goto Trial of the Crusader 42.8,52.7
step
Congratulations, you have earned the Resilience Will Fix It (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Rubble and Roll",{
achieveid={12340},
description="This guide will walk you through how to get the Rubble and Roll achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _after causing at least 25 Rubble creatures to spawn_
|tip Killing his arms will cause Rubble elementals to spawn. Do this a few times until enough Rubble elementals have spawned, then kill Kologarn himself.
kill Kologarn##32930
Defeat Kologarn |achieve 12340 |goto Ulduar/2 37.2,13.3
step
Congratulations, you have earned the Rubble and Roll achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Safety Dance(10 player)",{
achieveid={1996},
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 10 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(1996)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto 49.88,39.52 < 15 |noway |c
only if not achieved(1996)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 1996 |goto Naxxramas/4 51.46,42.98
step
Congratulations, you have earned the Saftey Dance (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Safety Dance(25 player)",{
achieveid={2139},
description="Defeat Heigan the Unclean in Naxxramas without anyone in the raid dying in 25 player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2139)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Follow the path to Heigan the Unclean |goto 49.88,39.52 < 15 |noway |c
only if not achieved(2139)
step
For this achievement, simply jump up onto the platform Heigan is standing on and kill him
|achieve 2139 |goto Naxxramas/4 51.46,42.98
step
Congratulations, you have earned the Safety Dance (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Salt and Pepper (10 player)",{
achieveid={3799},
description="This guide will walk you through how to get the Salt and Pepper (10 player) achievement.",
},[[
step
This achievement is gained by defeating the Twin Val'kyr in 3 minutes or less in the Trial of the Crusader in 10 player mode
kill Fjola Lightbane##34497
kill Eydis Darkbane##34496
Defeat the Twin Val'kyr in 3 Minutes or Less (10 player) |achieve 3799 |goto Trial of the Crusader 46.3,64.9
step
Congratulations, you have earned the Salt and Pepper (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Salt and Pepper (25 player)",{
achieveid={3815},
description="This guide will walk you through how to get the Salt and Pepper (25 player) achievement.",
},[[
step
This achievement is gained by defeating the Twin Val'kyr in 3 minutes or less in the Trial of the Crusader in 25 player mode
kill Fjola Lightbane##34497
kill Eydis Darkbane##34496
Defeat the Twin Val'kyr in 3 Minutes or Less (25 player) |achieve 3815 |goto Trial of the Crusader 46.3,64.9
step
Congratulations, you have earned the Salt and Pepper (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Sapphiron's Demise (10 player)",{
achieveid={572},
description="This guide will walk you through how to get the Sapphiron's Demise (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sapphiron in Naxxramas in 10 player mode
kill Sapphiron##15989
Defeat Sapphiron (10 player) |achieve 572 |goto Naxxramas/6 56.5,67.5
step
Congratulations, you have earned the Sapphiron's Demise (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Sapphiron's Demise (25 player)",{
achieveid={573},
description="This guide will walk you through how to get the Sapphiron's Demise (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sapphiron in Naxxramas in 25 player mode
kill Sapphiron##15989
Defeat Sapphiron (25 player) |achieve 573 |goto Naxxramas/6 56.5,67.5
step
Congratulations, you have earned the Sapphiron's Demise (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Set Up Us the Bomb",{
achieveid={12367},
description="This guide will walk you through how to get the Set Up Us the Bomb achievement.",
},[[
step
This achievement is gained by defeating Mimiron in Ulduar _without anyone in the raid being hit by:_
|tip These can be done over multiple raid attempts.
A Proximity Mine |achieve 12367/1
A Rocket Strike |achieve 12367/2
A Bomb Bot |achieve 12367/3
kill Mimiron##33350 |achieve 12367 |goto Ulduar/5 43.6,41.2
step
Congratulations, you have earned the Set Up Us the Bomb achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Shadowdodger",{
achieveid={12372},
description="This guide will walk you through how to get the Shadowdodger achievement.",
},[[
step
This achievement is gained by defeating General Vezax in Ulduar _without any raid member being hit by Shadow Crash_
kill General Vezax##33271
Defeat General Vezax |achieve 12372 |goto Ulduar 38.3,26.6
step
Congratulations, you have earned the Shadowdodger achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Shattered",{
achieveid={12323},
description="This guide will walk you through how to get the Shattered achievement.",
},[[
step
This achievement is gained by defeating Ignis the Furnace Master _after shattering 2 Iron Constructs within 5 seconds_
|tip Wait for two of the Iron Construct adds to spawn and walk them into the area where Ignis Scorched the ground. They will get 10 stacks of Heat and then become Molten.
|tip After they become Molten walk them into the nearby pool of water to make them Brittle. Then kill the two Iron Constructs and kill the boss.
kill 2 Iron Construct##33121
kill Ignis the Furnace Master##33118
Defeat Ignis the Furnace Master |achieve 12323 |goto Ulduar 38.3,26.6
step
Congratulations, you have earned the Shattered achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\She Deep Breaths More (10 player)",{
achieveid={4404},
description="This guide will walk you through how to get the She Deep Breaths More (10 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _without anyone taking damage from Deep Breath_ in 10 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4404 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the She Deep Breaths More (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\She Deep Breaths More (25 player)",{
achieveid={4407},
description="This guide will walk you through how to get the She Deep Breaths More (25 player) achievement.",
},[[
step
This achievement is gained by defeating Onyxia _without anyone taking damage from Deep Breath_ in 25 player mode
kill Onyxia##10184
Defeat Onyxia |achieve 4407 |goto Onyxia's Lair 67.2,30.9
step
Congratulations, you have earned the She Deep Breaths More (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Shocking! (10 player)",{
achieveid={2178},
description="This guide will walk you through how to get the Shocking! (10 player) achievement.",
},[[
step
This achievement is gained by defeating Thaddius in Naxxramas _without anyone crossing the negative and positive charges_ in 10 player mode
kill Thaddius##15928
Defeat Thaddius (10 player) |achieve 2178 |goto Naxxramas 26.5,14.5
step
Congratulations, you have earned the Shocking! (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Shocking! (25 player)",{
achieveid={2179},
description="This guide will walk you through how to get the Shocking! (25 player) achievement.",
},[[
step
This achievement is gained by defeating Thaddius in Naxxramas _without anyone crossing the negative and positive charges_ in 25 player mode
kill Thaddius##15928
Defeat Thaddius (25 player) |achieve 2179 |goto Naxxramas 26.5,14.5
step
Congratulations, you have earned the Shocking! (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Shutout",{
achieveid={12316},
description="This guide will walk you through how to get the Shutout achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _without causing a System Shutdown_
|tip Just simply kill Flame Leviathan (without boarding it and destroying its two defense turrets).
kill Flame Leviathan##33113
Defeat Flame Leviathan |achieve 12316 |goto Ulduar 49.3,38.6
step
Congratulations, you have earned the Shutout achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Siege of Ulduar",{
achieveid={12297},
description="This guide will walk you through how to get The Siege of Ulduar achievement.",
},[[
step
This achievement is gained by defeating the bosses of The Siege area of Ulduar
kill Flame Leviathan##33113 |achieve 12297/1 |goto Ulduar 49.3,38.6
kill Razorscale##33186 |achieve 12297/2 |goto Ulduar 54.5,26.4
kill XT-002 Deconstructor##33293 |achieve 12297/3 |goto Ulduar 48.8,14.1
kill Ignis the Furnace Master##33118 |achieve 12297/4 |goto Ulduar 38.3,26.6
Clear the Siege of Ulduar |achieve 12297
step
Congratulations, you have earned The Siege of Ulduar achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Siffed",{
achieveid={12351},
description="This guide will walk you through how to get the Siffed achievement.",
},[[
step
This achievement is gained by forcing Thorim to enter the arena while Sif is present in Ulduar
|tip This is done by reaching Thorim within 3 minutes of starting the gauntlet.
kill Thorim##32865
Defeat Thorim |achieve 12351 |goto Ulduar/3 72.2,48.5
step
Congratulations, you have earned the Siffed achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Spellweaver's Downfall (10 player)",{
achieveid={622},
description="This guide will walk you through how to get The Spellweaver's Downfall (10 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity in 10 player mode
kill Malygos##28859
Defeat Malygos (10 player) |achieve 622 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned The Spellweaver's Downfall (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Spellweaver's Downfall (25 player)",{
achieveid={623},
description="This guide will walk you through how to get The Spellweaver's Downfall (25 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity in 25 player mode
kill Malygos##28859
Defeat Malygos (25 player) |achieve 623 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned The Spellweaver's Downfall (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Spore Loser(10 player)",{
achieveid={2182},
description="Defeat Loatheb in Naxxramas without killing any spores in 10-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2182)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto 71.73,28.44 < 15 |noway |c
only if not achieved(2182)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2182 |goto Naxxramas/4 75.40,28.38
step
Congratulations, you have earned the Spore Loser (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Spore Loser (25 player)",{
achieveid={2183},
description="Defeat Loatheb in Naxxramas without killing any spores in 25-player mode.",
},[[
step
map Naxxramas/5
path loop off
path	55.16,52.40
map Naxxramas/4
path	34.87,26.86	33.61,37.48	33.60,50.04
Kill Noth the Plaguebringer |goto 35.02,57.17 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	39.95,56.56	42.49,52.67	42.17,43.32
path	45.92,33.27	49.88,39.52
Kill Heigan the Unclean |goto Naxxramas/4 51.46,42.98 < 15 |noway |c
only if not achieved(2183)
step
map Naxxramas/4
path loop off;dist 20
path	54.60,45.74	57.24,36.98	60.47,28.42
path	71.73,28.44
Follow the path into the  Necrotic Vault |goto 71.73,28.44 < 15 |noway |c
only if not achieved(2183)
step
To earn this achievement, simply dps Loatheb, ignoring any spores that may spawn
_Avoid using AoE_
|achieve 2183 |goto Naxxramas/4 75.40,28.38
step
Congratulations, you have earned the Spore Loser (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Staying Buffed All Winter",{
achieveid={12346},
description="This guide will walk you through how to get the Staying Buffed All Winter achievement.",
},[[
step
This achievement is gained by gaining the _effects of Toasty Fire, Storm Power and Starlight at the same time_ during the Hodir fight in Ulduar
This achievement cannot be done solo unless you have a pet, as Storm Power is cast on a secondary target
|tip Storm Power is cast on a random player that isn't Hodir's target. Toasty Fire is gained by standing by one of the small fires the mage NPC's make. Starlight is gained by standing in the white starlight beams created by the moonkin NPCs.
kill Hodir##32845
Gain All Three Buffs Simultaneously |achieve 12346 |goto Ulduar/3 67.0,63.8
step
Congratulations, you have earned the Staying Buffed All Winter achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Stokin' the Furnace",{
achieveid={12325},
description="Defeat Ignis the Furnace Master in 4 minutes.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52	48.54,28.08
click Ulduar Teleporter##194569
Teleport to the Colossal Forge |goto Ulduar/1 48.54,28.08 |noway |c
'|achieve 12325 |next "End"
step
kill Ignis the Furnace Master##33118
|tip To earn this achievement, burn down Ignis within 4 minutes.
Earn the _Stokin' the Furnace_ achievement |achieve 12325 |goto Ulduar/1 37.5,26.5
step
label "End"
Congratulations!
You have earned the _Stokin' the Furnace_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Storming the Citadel (10 player)",{
achieveid={4531},
description="This guide will walk you through how to get the Storming the Citadel (10 player) achievement.",
},[[
step
This achievement is gained by defeating the first four bosses in Icecrown Citadel in 10-player mode
kill Lord Marrowgar##36612
Defeat Lord Marrowgar |achieve 4531/1 |goto Icecrown Citadel/1 39.1,59.3
kill Lady Deathwhisper##36855
Defeat Lady Deathwhisper |achieve 4531/2 |goto Icecrown Citadel/1 39.1,86.9
Complete the Gunship Battle |achieve 4531/3 |goto Icecrown Citadel/3 48.7,76.4
kill Deathbringer Saurfang##37813
Defeat Deathbringer Saurfang |achieve 4531/4 |goto Icecrown Citadel/3 51.1,21.6
step
Congratulations, you have earned the Storming the Citadel (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Subtraction (10 player)",{
achieveid={2180},
description="Defeat Thaddius in Naxxramas with less than 9 players in 10-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61	47.17,60.43
path	51.03,54.41	54.49,40.95	57.37,40.87
path	64.04,52.60
Follow the path |goto 64.04,52.60 < 20 |noway |c
only if not achieved(2180)
step
map Naxxramas/1
path	loop off;dist 20
path	67.80,54.59	60.98,57.30	58.99,60.29
path	57.81,61.37	50.38,50.03	42.04,37.99
path	34.49,26.60
Follow the path to the Halls of Reanimation |goto 34.49,26.60 < 20 |noway |c
only if not achieved(2180)
step
Defeat Thaddius while in a raid group consisting of 8 or less players
|achieve 2180 |goto 26.38,14.66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Subtraction (25 player)",{
achieveid={2181},
description="Defeat Thaddius in Naxxramas with less than 21 players in 25-player mode.",
},[[
step
map Naxxramas/1
path	loop off;dist 20
path	68.36,77.24	64.21,70.91	55.85,66.13
path	52.66,70.64	53.61,76.61	47.17,60.43
path	51.03,54.41	54.49,40.95	57.37,40.87
path	64.04,52.60
Follow the path |goto 64.04,52.60 < 20 |noway |c
only if not achieved(2181)
step
map Naxxramas/1
path	loop off;dist 20
path	67.80,54.59	60.98,57.30	58.99,60.29
path	57.81,61.37	50.38,50.03	42.04,37.99
path	34.49,26.60
Follow the path to the Halls of Reanimation |goto 34.49,26.60 < 20 |noway |c
only if not achieved(2181)
step
Defeat Thaddius while in a raid group consisting of 21 or less players
|achieve 2181 |goto 26.38,14.66
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Supermassive",{
achieveid={12400},
description="This guide will walk you through how to get the Supermassive achievement.",
},[[
step
This achievement is gained by defeating Algalon the Observer in Ulduar _after closing 3 Black Holes within 10 seconds_
|tip Kill 2 black holes close to each other, and the last one as close to them as possible. Wait for the Living Constellations to spawn.
|tip Don't move into the black holes, as you will get teleported and Algalon will reset.
kill Algalon the Observer##32871
Defeat Algalon the Observer |achieve 12400 |goto Ulduar/2 79.2,46.0
step
Congratulations, you have earned the Supermassive achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Take Out Those Turrets",{
achieveid={12315},
description="This guide will walk you through how to get the Take Out Those Turrets achievement.",
},[[
step
This achievement is gained by defeating a Flame Leviathan Defense Turret in Ulduar
This achievement _requires at least two people_ and the Demolisher vehicle to complete
|tip Engage the Flame Leviathan but don't kill it. Use a Demolisher and use its skill to launch the passenger onto the Flame Leviathan.
|tip You must be in the passenger seat to be launched, and it takes 1 second to cast. Don't move while using it or it will interrupt the cast.
|tip Once on the Flame Leviathan the Defense Turrets will become targetable.
kill Flame Leviathan Defense Turret##33142
Defeat a Flame Leviathan Defense Turret |achieve 12315 |goto Ulduar 49.3,38.6
step
Congratulations, you have earned the Three Car Garage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\They're Coming Out of the Walls",{
achieveid={12397},
description="This guide will walk you through how to get the They're Coming Out of the Walls achievement.",
},[[
step
This achievement is gained by defeating 9 Guardians of Yogg-Saron in Ulduar
kill 9 Guardian of Yogg-Saron##33136
|tip Engage Yogg-Saron and wait for him to spawn 9 Guardians, then kill them.
They're Coming Out of the Walls |achieve 12397 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the They're Coming Out of the Walls achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Three Car Garage",{
achieveid={12314},
description="This guide will walk you through how to get the Three Car Garage achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _while in each of the following vehicles_
kill Flame Leviathan##33113
Defeat Flame Leviathan with Salvaged Chopper |achieve 12314/1 |goto Ulduar 49.3,38.6
Defeat Flame Leviathan with Salvaged Siege Engine |achieve 12314/2 |goto Ulduar 49.3,38.6
Defeat Flame Leviathan with Salvaged Demolisher |achieve 12314/3 |goto Ulduar 49.3,38.6
step
Congratulations, you have earned the Three Car Garage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Three Lights in the Darkness",{
achieveid={12385},
description="This guide will walk you through how to get the Three Lights in the Darkness achievement.",
},[[
step
This achievement is gained by defeating Yogg-Saron in Ulduar _with the assistance of three or fewer Keepers_
kill Yogg-Saron##33288
Defeat Yogg-Saron |achieve 12385 |goto Ulduar/4 68.3,39.9
step
Congratulations, you have earned the Three Lights in the Darkness achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Three Sixty Pain Spike (10 player)",{
achieveid={3996},
description="This guide will walk you through how to get the Three Sixty Pain Spike (10 player) achievement.",
},[[
step
This achievement is gained by defeating Lord Jaraxxus _while at least two Mistresses of Pain are alive_ in 10 player mode
|tip Jaraxxus will open a portal to bring them in. Wait for two of them to spawn, then kill Jaraxxus. Don't use AoE as it can also kill the Mistresses of Pain.
kill Lord Jaraxxus##34780
Three Sixty Pain Spike (10 player) |achieve 3996 |goto Trial of the Crusader 46.3,40.5
step
Congratulations, you have earned the Three Sixty Pain Spike (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Three Sixty Pain Spike (25 player)",{
achieveid={3997},
description="This guide will walk you through how to get the Three Sixty Pain Spike (25 player) achievement.",
},[[
step
This achievement is gained by defeating Lord Jaraxxus _while at least two Mistresses of Pain are alive_ in 25 player mode
|tip Jaraxxus will open a portal to bring them in. Wait for two of them to spawn, then kill Jaraxxus. Don't use AoE as it can also kill the Mistresses of Pain.
kill Lord Jaraxxus##34780
Three Sixty Pain Spike (25 player) |achieve 3997 |goto Trial of the Crusader 46.3,40.5
step
Congratulations, you have earned the Three Sixty Pain Spike (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Traitor King (10 player)",{
achieveid={3800},
description="This guide will walk you through how to get The Traitor King (10 player) achievement.",
},[[
step
This achievement is gained by defeating _25 Swarm Scarabs within 30 seconds_ in 10 player mode
kill Anub'arak##34564
|tip Wait for Anub'arak to submerge and then collect the Swarm Scarabs that spawn. Do this twice and then kill the scarabs all at once.
kill 25 Swarm Scarab##34605
The Traitor King (10 player) |achieve 3800 |goto Trial of the Crusader/2 53.2,35.5
step
Congratulations, you have earned The Traitor King (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Traitor King (25 player)",{
achieveid={3816},
description="This guide will walk you through how to get The Traitor King (25 player) achievement.",
},[[
step
This achievement is gained by defeating _25 Swarm Scarabs within 30 seconds_ in 25 player mode
kill Anub'arak##34564
|tip Wait for Anub'arak to submerge and then collect the Swarm Scarabs that spawn. Do this twice and then kill the scarabs all at once.
kill 25 Swarm Scarab##34605
The Traitor King (25 player) |achieve 3816 |goto Trial of the Crusader/2 53.2,35.5
step
Congratulations, you have earned The Traitor King (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Twilight Assist (10 player)",{
achieveid={2049},
description="This guide will walk you through how to get the Twilight Assist (10 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _with at least one Twilight Drake still alive_ in 10 player mode
|tip Pull the Drake and then kill Sartharion.
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian |achieve 2049 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Twilight Assist (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Twilight Assist (25 player)",{
achieveid={2052},
description="This guide will walk you through how to get the Twilight Assist (25 player) achievement.",
},[[
step
This achievement is gained by defeating Sartharion the Onyx Guardian in The Obsidian Sanctum _with at least one Twilight Drake still alive_ in 25 player mode
|tip Pull the Drake and then kill Sartharion.
kill Sartharion the Onyx Guardian##28860
Defeat Sartharion the Onyx Guardian |achieve 2052 |goto The Obsidian Sanctum 50.5,47.7
step
Congratulations, you have earned the Twilight Assist (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Twilight Zone (10 player)",{
achieveid={2051},
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2051 |goto The Obsidian Sanctum/0 50.26,47.34
step
Congratulations, you have earned The Twilight Zone and Gonna Go When the Volcano Blows (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\The Twilight Zone (25 player)",{
achieveid={2054},
description="With all three Twilight Drakes still alive, engage and defeat Sartharion the Onyx Guardian in 10-player mode.",
},[[
step
To earn this achievement, ignore the Twilight Drakes and kill Sartharion
If he lasts long enough to do Lava Strike, avoid the area he casts it in
|achieve 2054 |goto The Obsidian Sanctum/0 50.26,47.34
step
Congratulations, you have earned The Twilight Zone and Gonna Go When the Volcano Blows (25 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Unbroken",{
achieveid={12313},
description="This guide will walk you through how to get the Unbroken achievement.",
},[[
step
This achievement is gained by defeating Flame Leviathan in Ulduar _on the first try without anyone repairing their vehicle_
kill Flame Leviathan##33113
Defeat the Flame Leviathan |achieve 12313 |goto Ulduar 49.3,38.6
step
Congratulations, you have earned the Unbroken achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Upper Back Pain (10 player)",{
achieveid={3797},
description="This guide will walk you through how to get the Upper Back Pain (10 player) achievement.",
},[[
step
This achievement is gained by defeating Icehowl _while at least 2 Snobolds remain alive_ in 10 player mode
|tip Don't kill anything in this area until Icehowl comes out, and then kill just him.
kill Icehowl##34797
Upper Back Pain (10 player) |achieve 3797 |goto Trial of the Crusader 51.1,52.7
step
Congratulations, you have earned the Upper Back Pain (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Upper Back Pain (25 player)",{
achieveid={3813},
description="This guide will walk you through how to get the Upper Back Pain (25 player) achievement.",
},[[
step
This achievement is gained by defeating Icehowl _while at least 4 Snobolds remain alive_ in 25 player mode
|tip Don't kill anything in this area until Icehowl comes out, and then kill just him.
kill Icehowl##34797
Upper Back Pain (25 player) |achieve 3813 |goto Trial of the Crusader 51.1,52.7
step
Congratulations, you have earned the Upper Back Pain (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Who Needs Bloodlust?",{
achieveid={12350},
description="This guide will walk you through how to get the Who Needs Bloodlust? achievement.",
},[[
step
This achievement is gained by defeating Thorim in Ulduar _while under the effect of Aura of Celerity_
kill Thorim##32865
Defeat Thorim |achieve 12350 |goto Ulduar/3 72.2,48.5
step
Congratulations, you have earned the Who Needs Bloodlust? achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\With Open Arms",{
achieveid={12337},
description="This guide will walk you through how to get the With Open Arms achievement.",
},[[
step
This achievement is gained by defeating Kologarn in Ulduar _without destroying either of his arms_
|tip Be careful using AoE's as they may destroy his arms.
kill Kologarn##32930
Defeat Kologarn |achieve 12337 |goto Ulduar/2 37.2,13.3
step
Congratulations, you have earned the With Open Arms achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\You Don't Have an Eternity (10 player)",{
achieveid={1874},
description="This guide will walk you through how to get the You Don't Have an Eternity (10 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _in 6 minutes or less_ in 10 player mode
kill Malygos##28859
Defeat Malygos (10 player) |achieve 1874 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned the You Don't Have an Eternity (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\You Don't Have an Eternity (25 player)",{
achieveid={1875},
description="This guide will walk you through how to get the You Don't Have an Eternity (25 player) achievement.",
},[[
step
This achievement is gained by defeating Malygos in The Eye of Eternity _in 6 minutes or less_ in 25 player mode
kill Malygos##28859
Defeat Malygos (25 player) |achieve 1875 |goto The Eye of Eternity 38.4,49.8
step
Congratulations, you have earned the You Don't Have an Eternity (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Acrocalypse Now",{
achieveid={5291},
description="This guide will walk you through how to get the Acrocalypse Now achievement.",
},[[
step
This achievement is gained by defeating _20 Frenzied Crocolisks within 10 seconds_ during the Lockmaw encounter in Lost City of the Tol'vir on Heroic mode
|tip Pull the boss. Each time it casts Scent of Blood it will spawn 4 adds. Wait for 5 casts to spawn the 20 adds. Kill the adds and then Lockmaw.
kill 20 Frenzied Crocolisk##43658+
kill Lockmaw##43614
Acrocalypse Now |achieve 5291 |goto Lost City of the Tol'vir 67.4,72.4
step
Congratulations, you have earned the Acrocalypse Now achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Arrested Development",{
achieveid={5282},
description="This guide will walk you through how to get the Arrested Development achievement.",
},[[
step
This achievement is gained by _allowing all three of Corla's zealots to evolve, killing them_ and then defeat Corla in Blackrock Caverns on Heroic mode
|tip Wait for the Twilight Zealots to gain 100 stacks of Evolution, then kill them and Corla.
kill Corla, Herald of Twilight##39679
Complete Arrested Development |achieve 5282 |goto Blackrock Caverns/2 27.0,16.3
step
Congratulations, you have earned the Arrested Development achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Ascendant Descending",{
achieveid={5284},
description="This guide will walk you through how to get the Ascendant Descending achievement.",
},[[
step
This achievement is gained by defeating Ascendant Lord Obsidius _without any party member reaching 4 stacks of Crepuscular Veil_ in Blackrock Caverns on Heroic mode
kill Ascendant Lord Obsidius##39705
Complete Ascendant Descending |achieve 5284 |goto Blackrock Caverns/2 68.9,50.7
step
Congratulations, you have earned the Ascendant Descending achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Bear-ly Made It",{
achieveid={5858},
description="This guide will walk you through how to get the Bear-ly Made It achievement.",
},[[
step
This achievement is gained by _saving all four prisoners before they are sacrificed_ in Zul'Aman on Heroic mode
|tip Before the time runs out you must defeat the first four dungeon bosses and then save a prisoner after each boss.
|confirm |only if not achieved(5858)
step
talk Blood Guard Hakkuz##52933
accept The Captive Scouts##29217 |goto Zul'Aman 14.52,54.40
|only if not achieved(5858)
step
kill Akil'zon##23574 |scenariogoal 1/24846 |goto Zul'Aman 35.5,23.0
step
talk Bakkalzu##52941
Tell him _"The coast is clear. You're free!"_
Rescue Bakkalzu |q 29217/2 |goto Zul'Aman 30.83,31.10 |only if havequest(29217)
step
kill Nalorakk##23576 |scenariogoal 1/24847 |goto Zul'Aman 40.5,77.3
step
talk Hazlek##52939
Tell him _"Nalorakk is dead, you're free to go."_
Rescue Hazlek |q 29217/1 |goto Zul'Aman 40.75,83.35 |only if havequest(29217)
step
kill Jan'alai##23578 |scenariogoal 1/24848 |goto Zul'Aman 55.4,70.9
step
talk Norkani##52943
Tell her _"We've killed your captors. You're free to go."_
Rescue Norkani |q 29217/3 |goto Zul'Aman 55.02,75.88 |only if havequest(29217)
step
kill Halazzi##23577 |scenariogoal 1/24849 |goto Zul'Aman 58.4,23.8
step
talk Kasha##52945
Tell her _"They must've drugged you. It's safe now."_
Rescue Kasha |q 29217/4 |goto Zul'Aman 61.12,22.86 |only if havequest(29217)
step
Follow Kasha and click the items that appear on the ground
|tip She will walk around and break a bunch of vases.
click Kasha's Bag##3365
use Amani Battle Bear##69747
learnmount Amani Battle Bear##98204 |goto Zul'Aman 60.49,17.31
step
Bear-ly Made It |achieve 5858 |goto Zul'Aman 38.27,55.47
step
kill Hex Lord Malacrass##24239 |scenariogoal 1/24850 |goto Zul'Aman 71.4,52.9
step
kill Daakara##23863 |scenariogoal 1/34419 |goto Zul'Aman 90.4,52.9
step
talk Blood Guard Hakkuz##52933
turnin The Captive Scouts##29217 |goto Zul'Aman 92.98,50.38
step
Congratulations, you have earned the Bear-ly Made It achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Bullet Time",{
achieveid={5505},
description="This guide will walk you through how to get the Bullet Time achievement.",
},[[
step
This achievement is gained by defeating _12 Bloodthirsty Ghouls with Pistol Barrage_ and then defeat Lord Godfrey in Shadowfang Keep on Heroic mode
|tip Aggro Lord Godfrey and wait for Bloodthirsty Ghouls to spawn. Move away from Lord Godfrey slightly so when he usees Pistol Barrage it hits the ghouls around you.
kill 12 Bloodthirsty Ghoul##50561+ |achieve 5505/1
kill Lord Godfrey##46964
Bullet Time |achieve 5505 |goto Shadowfang Keep/6 68.4,33.5
step
Congratulations, you have earned the Bullet Time achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Crushing Bones and Cracking Skulls",{
achieveid={5281},
description="This guide will walk you through how to get the Crushing Bones and Cracking Skulls achievement.",
},[[
step
This achievement is gained by defeating Rom'ogg Bonecrusher _after using his Skullcracker ability to kill 10 Angered Earth elementals_ in Blackrock Caverns on Heroic mode
|tip Weaken the boss to 75% and he will start casting Quake. Usually he will spawn an Angered Earth after each Quake, but not always. Doing /sit as he casts it can help spawn the Angered Earth more consistently.
|tip Once there is a group of 5 adds hit the boss to weaken him again and he will cast Chains of Woe and kill the adds. After he kills the 5 adds weaken him to about 40% and do the same thing again.
|tip After he has killed the second set of 5 adds you can kill him.
kill Rom'ogg Bonecrusher##39665
Complete Crushing Bones and Cracking Skulls |achieve 5281 |goto Blackrock Caverns 50.0,70.2
step
Congratulations, you have earned the Crushing Bones and Cracking Skulls achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Don't Need to Break Eggs to Make an Omelet",{
achieveid={5298},
description="This guide will walk you through how to get the Don't Need to Break Eggs to Make an Omelet achievement.",
},[[
step
This achievement is gained by defeating Erudax in Grim Batol _without letting a Faceless Corruptor begin to cast Twilight Corruption on any of Alexstrasza's Eggs_ on Heroic mode
|tip If you are a high level you can simply one shot Erudax.
kill Erudax##40484
Don't Need to Break Eggs to Make an Omelet |achieve 5298 |goto Grim Batol 85.6,74.7
step
Congratulations, you have earned the Don't Need to Break Eggs to Make an Omelet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Eclipse",{
achieveid={6132},
description="This guide will walk you through how to get the Eclipse achievement.",
},[[
step
This achievement is gained by defeating _10 Twilight Sparks and then defeat Archbishop Benedictus_ in Hour of Twilight on Heroic mode
|tip Weaken the boss to 50% and he'll go into Shadow mode by casting Twilight Epiphany. Move to the edge of the circular platform and kill 10 Twilight Sparks when they spawn, then kill Archbishop Benedictus.
kill 10 Twilight Spark##55466+ |achieve 6132/1
kill Archbishop Benedictus##54938
Eclipse |achieve 6132 |goto Hour of Twilight/2 47.3,51.3
step
Congratulations, you have earned the Eclipse achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Extra Credit Bonus Stage",{
achieveid={5289},
description="This guide will walk you through how to get the Extra Credit Bonus Stage achievement.",
},[[
step
This achievement is gained by collecting 5 Golden Orbs in a single visit to the Vortex Pinnacle on Heroic mode
|tip Follow the path, collecting the Golden Orbs at each location.
map The Vortex Pinnacle
path follow strict;loop off;ants straight
path	63.92,35.69	57.60,47.75	56.91,68.24
path	55.30,70.40	49.28,81.41
clicknpc Golden Orb##51157+
Extra Credit Bonus Stage |achieve 5289
step
Congratulations, you have earned the Extra Credit Bonus Stage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Faster Than the Speed of Light",{
achieveid={5296},
description="This guide will walk you through how to get the Faster Than the Speed of Light achievement.",
},[[
step
This achievement is gained by completing the Vault of Lights _within 5 minutes of entering_ in the Halls of Origination on Heroic mode
|tip Just kill the wardens in each of the room's alcoves.
kill Flame Warden##39800 |goto Halls of Origination 48.33,32.28
kill Air Warden##39803 |goto Halls of Origination 64.35,32.28
kill Water Warden##39802 |goto Halls of Origination 64.35,21.56
kill Earth Warden##39801 |goto Halls of Origination 48.46,21.46
Faster Than the Speed of Light |achieve 5296
step
Congratulations, you have earned the Faster Than the Speed of Light achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Gurubashi Headhunter",{
achieveid={5744},
description="This guide will walk you through how to get the Gurubashi Headhunter achievement.",
},[[
step
This achievement is gained by _defeating the following bosses_ in Zul'Gurub on Heroic mode:
kill Gub##52440 |achieve 5744/1 |goto Zul'Gurub 43.2,45.6
kill Mortaxx##52438 |achieve 5744/2 |goto Zul'Gurub 62.6,33.6
kill Kaulema the Mover##52422 |achieve 5744/3 |goto Zul'Gurub 55.2,63.0
kill Mor'Lek the Dismantler##52405 |achieve 5744/4 |goto Zul'Gurub 54.4,55.8
kill Florawing Hive Queen##52442 |achieve 5744/5 |goto Zul'Gurub 32.8,39.4
kill Lost Offspring of Gahz'ranka##52418 |achieve 5744/6 |goto Zul'Gurub 38.8,40.6
kill Gurubashi Master Chef##52392 |achieve 5744/7 |goto Zul'Gurub 57.6,27.6
kill Tor-Tun##52414 |achieve 5744/8 |goto Zul'Gurub 46.0,56.4
Gurubashi Headhunter |achieve 5744
step
Congratulations, you have earned the Gurubashi Headhunter achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Headed South",{
achieveid={5292},
description="This guide will walk you through how to get the Headed South achievement.",
},[[
step
This achievement is gained by defeating Siamat, Lord of the South Wind, _with 3 stacks of Lightning Charge_ in Lost City of the Tol'vir on Heroic mode
|tip Engage the boss and wait for adds to spawn. When you have 3 of the melee adds hitting you kill them and stand in the cloud that spawns. This will give you the Lightning Charge buff you need, then kill the boss.
kill Siamat, Lord of the South Wind##44819
Headed South |achieve 5292 |goto Lost City of the Tol'vir 41.5,55.2
step
Congratulations, you have earned the Headed South achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Here, Kitty Kitty...",{
achieveid={5765},
description="This guide will walk you through how to get the Here, Kitty Kitty... achievement.",
},[[
step
This achievement is gained by defeating High Priestess Kilnara in Zul'Gurub _after having fed Temple Rats to 4 of Bethekk's Pride_ on Heroic mode
You will need to bind 'Interact With Target' to a key for this achievement. This setting can be found under Keybindings -> Targeting -> Interact With Target
collect 1 Temple Rat##69724 |only if not achieved(5765)
|tip They are found throughout the pyramid. You can only hold one at a time.
|tip Engage the boss and weaken her slightly. Wait for her to wake up her cats, then use the Temple Rat to "feed" one.
|tip Another rat can be found in northwestern room, behind the green barrier. It will respawn every 30-60 seconds. Click the rat and move behind the wall to the left of the barrier, by the lit brazier. Spam the 'Interact With Target' key until you pick up the rat through the wall.
|tip Feed another of her cat pets after you collect it. Repeat until you have 4 fed, then kill High Priestess Kilnara.
use Temple Rat##69724
kill High Priestess Kilnara##52059
|tip She is down inside the pyramid.
Here, Kitty Kitty... |achieve 5765 |goto Zul'Gurub 48.0,20.0
step
Congratulations, you have earned the Here, Kitty Kitty... achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Blackrock Caverns",{
achieveid={5060},
description="This guide will walk you through how to get the Heroic: Blackrock Caverns achievement.",
},[[
step
This achievement is gained by defeating Ascendant Lord Obsidius in Blackrock Caverns on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Ascendant Lord Obsidius##39705
Complete Blackrock Caverns |achieve 5060 |goto Blackrock Caverns/2 68.9,50.7
step
Congratulations, you have earned the Heroic: Blackrock Caverns achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Deadmines",{
achieveid={5083},
description="This guide will walk you through how to get the Heroic: Deadmines achievement.",
},[[
step
This achievement is gained by defeating Vanessa VanCleef in Deadmines on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Vanessa VanCleef##49541
Complete Heroic: Deadmines |achieve 5083 |goto The Deadmines/2 65.4,40.2
step
Congratulations, you have earned the Heroic: Deadmines achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Grim Batol",{
achieveid={5062},
description="This guide will walk you through how to get the Heroic: Grim Batol achievement.",
},[[
step
This achievement is gained by defeating Erudax in Grim Batol on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Erudax##40484
Complete Heroic: Grim Batol |achieve 5062 |goto Grim Batol 85.6,74.7
step
Congratulations, you have earned the Heroic: Grim Batol achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Halls of Origination",{
achieveid={5065},
description="This guide will walk you through how to get the Heroic: Halls of Origination achievement.",
},[[
step
This achievement is gained by defeating Rajh in the Halls of Origination on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Rajh##39378
Complete Heroic: Halls of Origination |achieve 5065 |goto Halls of Origination/3 47.5,25.2
step
Congratulations, you have earned the Heroic: Halls of Origination achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Lost City of the Tol'vir",{
achieveid={5066},
description="This guide will walk you through how to get the Heroic: Lost City of the Tol'vir achievement.",
},[[
step
This achievement is gained by defeating Siamat, Lord of the South Wind in Lost City of the Tol'vir on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Siamat, Lord of the South Wind##44819
Complete Lost City of the Tol'vir |achieve 5066 |goto Lost City of the Tol'vir 41.5,55.2
step
Congratulations, you have earned the Heroic: Lost City of the Tol'vir achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Shadowfang Keep",{
achieveid={5093},
description="This guide will walk you through how to get the Heroic: Shadowfang Keep achievement.",
},[[
step
This achievement is gained by defeating Lord Godfrey in Shadowfang Keep on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Lord Godfrey##46964
Complete Heroic: Shadowfang Keep |achieve 5093 |goto Shadowfang Keep/6 68.4,33.5
step
Congratulations, you have earned the Heroic: Shadowfang Keep achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: The Stonecore",{
achieveid={5063},
description="This guide will walk you through how to get the Heroic: The Stonecore achievement.",
},[[
step
This achievement is gained by defeating High Priestess Azil in the Stonecore on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill High Priestess Azil##42333
Complete Heroic: The Stonecore |achieve 5063 |goto The Stonecore 57.4,38.7
step
Congratulations, you have earned the Heroic: The Stonecore achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: The Vortex Pinnacle",{
achieveid={5064},
description="This guide will walk you through how to get the Heroic: The Vortex Pinnacle achievement.",
},[[
step
This achievement is gained by defeating Asaad in The Vortex Pinnacle on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Asaad##43875
Complete The Vortex Pinnacle |achieve 5064 |goto The Vortex Pinnacle 30.0,38.0
step
Congratulations, you have earned the Heroic: The Vortex Pinnacle achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Heroic: Throne of the Tides",{
achieveid={5061},
description="This guide will walk you through how to get the Heroic: Throne of the Tides achievement.",
},[[
step
This achievement is gained by defeating Ozumat in Throne of the Tides on Heroic mode
|tip Use our dungeon guides to accomplish this.
kill Ozumat##44566
Complete Throne of the Tides |achieve 5061 |goto Throne of the Tides 32.5,19.3
step
Congratulations, you have earned the Heroic: Throne of the Tides achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Hex Mix",{
achieveid={5761},
description="This guide will walk you through how to get the Hex Mix achievement.",
},[[
step
This achievement is gained by _un-hexing all of the potential hex victims_ in Zul'Aman on Heroic mode
|tip You will need Amani Hex Sticks to un-hex the NPC's. These drop randomly from trash in the dungeon. Clear the entire dungeon except for the bosses to maximize the amount of hex sticks you get, and then reset the dungeon and do it again.
|tip The Forest Frogs can be found around the pools of water. The NPC they turn into after being un-hexed is random.
clicknpc Forest Frog##24396
use Amani Hex Stick##33865
Save Rosa |achieve 5761/1
Save Eulinda |achieve 5761/2
Save Lenzo |achieve 5761/3
Save Melasong |achieve 5761/4
Save Herald |achieve 5761/5
Save Relissa |achieve 5761/6
Save Kaldrick |achieve 5761/7
Save Arinoth |achieve 5761/8
Save Micah |achieve 5761/9
Save Tyllan |achieve 5761/10
Save Mawago |achieve 5761/11
Save Melissa |achieve 5761/12
Hex Mix |achieve 5761 |goto Zul'Aman 38.27,55.47
step
Congratulations, you have earned the Hex Mix achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\I Hate That Song",{
achieveid={5293},
description="This guide will walk you through how to get the I Hate That Song achievement.",
},[[
step
This achievement is gained by defeating Temple Guardian Anhuur _without allowing him to sing Reverberating Hymn for more than 15 seconds_ in Halls of Origination on Heroic mode
kill Temple Guardian Anhuur##39425
I Hate That Song |achieve 5293 |goto Halls of Origination 58.4,62.7
step
Congratulations, you have earned the I Hate That Song achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\I'm on a Diet",{
achieveid={5370},
description="This guide will walk you through how to get the I'm on a Diet achievement.",
},[[
step
This achievement is gained by _not gaining more than one stack of Nauseated_ while fighting Cookie in Deadmines on Heroic mode
|tip If Cookie doesn't do anything and just sits in the pot you can just kill him. If he is throwing food at you, grab one of the pieces of food and then kill him.
kill "Captain" Cookie##47739
I'm on a Diet |achieve 5370 |goto The Deadmines/2 60.4,45.5
step
Congratulations, you have earned the I'm on a Diet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\It's Frost Damage",{
achieveid={5369},
description="This guide will walk you through how to get the It's Frost Damage achievement.",
},[[
step
This achievement is gained by _allowing three Freezing Vapors to cast Coalesce_ in Deadmines on Heroic mode
|tip Weaken Admiral Ripsnarl to get to the Vapor phase, then wait for the Freezing Vapors to cast Coalesce.
kill Admiral Ripsnarl##47626
It's Frost Damage |achieve 5369 |goto The Deadmines/2 60.4,38.7
step
Congratulations, you have earned the It's Frost Damage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\It's Not Easy Being Green",{
achieveid={5743},
description="This guide will walk you through how to get the It's Not Easy Being Green achievement.",
},[[
step
This achievement is gained by _not getting hit by Bloodvenom, Pool of Acrid Tears, or Venomous Effusion_ in the High Priest Venoxis encounter in Zul'Gurub on Heroic mode
|tip Try to pull him, wait a few seconds until he starts moving and then kill him.
kill High Priest Venoxis##52059
It's Not Easy Being Green |achieve 5743 |goto Zul'Gurub 50.9,53.7
step
Congratulations, you have earned the It's Not Easy Being Green achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Kill It With Fire!",{
achieveid={5290},
description="This guide will walk you through how to get the Kill It With Fire! achievement.",
},[[
step
This achievement is gained by _defeating 3 Burning Souls_ during the High Prophet Barim encounter in Lost City of the Tol'vir on Heroic mode
|tip Pull the boss and wait for a red pheonix to spawn. Kite it around until it leaves fire on the ground. Damage High Prophet Barim to 50% health.
|tip A purple pheonix will spawn. It will spawn fragment adds that move towards you. Position yourself so the fragments walk through the fire from the previous phase.
|tip This will cause them to turn into Burning Souls, kill 3 of them before killing the boss.
kill 3 Burning Soul##49219+
kill High Prophet Barim##43612
Kill It With Fire! |achieve 5290 |goto Lost City of the Tol'vir 27.0,65.7
step
Congratulations, you have earned the Kill It With Fire! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Lazy Eye",{
achieveid={6127},
description="This guide will walk you through how to get the Lazy Eye achievement.",
},[[
step
This achievement is gained by defeating Peroth'arn _without any party member being detected by an Eye of Peroth'arn_ in Well of Eternity on Heroic mode
|tip Kill Peroth'arn as fast as possible. One-shotting him will grant the achievement.
kill Peroth'arn##55085
Lazy Eye |achieve 6127 |goto Well of Eternity 23.7,48.2
step
Congratulations, you have earned the Lazy Eye achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Moon Guard",{
achieveid={5995},
description="This guide will walk you through how to get the Moon Guard achievement.",
},[[
step
This achievement is gained by engaging the Echo of Tyrande after surviving her Shadow Gauntlet _without allowing the party's healer to take any damage_ in End Time on Heroic mode
|tip Stay in the beams of light and fight the Nightsaber and Sentinel adds until the boss appears.
kill Echo of Tyrande##54544
Moon Guard |achieve 5995 |goto End Time/5 51.5,43.3
step
Congratulations, you have earned the Moon Guard achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\No Static at All",{
achieveid={5288},
description="This guide will walk you through how to get the No Static at All achievement.",
},[[
step
This achievement is gained by completely _avoiding the Static Cling effect during the Asaad encounter_ in the Vortex Pinnacle on Heroic mode
|tip Kill him very fast before he can cast it or wait for the cast and dodge it.
kill Asaad##43875
No Static at All |achieve 5288 |goto The Vortex Pinnacle 30.0,38.0
step
Congratulations, you have earned the No Static at All achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Ohganot So Fast!",{
achieveid={5762},
description="This guide will walk you through how to get the Ohganot So Fast! achievement.",
},[[
step
This achievement is gained by defeating Bloodlord Mandokir _without killing Ohgan_ in Zul'Gurub on Heroic mode
|tip One shotting Bloodlord Mandokir will grant the achievement.
kill Bloodlord Mandokir##52151
Ohganot So Fast! |achieve 5762 |goto Zul'Gurub 60.4,79.9
step
Congratulations, you have earned the Ohganot So Fast! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Old Faithful",{
achieveid={5285},
description="This guide will walk you through how to get the Old Faithful achievement.",
},[[
step
This achievement is gained by _having Lady Naz'jar kill one of her minions with her Geyser ability_ in Throne of the Tides on Heroic mode
|tip Weaken Lady Naz'jar and she will spawn adds. Kill the two Naz'jar Tempest Witches and wait for the phase to end.
|tip She will start casting Geyser again, stay stacked on her and wait for it to kill the Naz'jar Honor Guard.
kill Lady Naz'jar##40586
Old Faithful |achieve 5285 |goto Throne of the Tides/2 50.4,21.5
step
Congratulations, you have earned the Old Faithful achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Prince of Tides",{
achieveid={5286},
description="This guide will walk you through how to get the Prince of Tides achievement.",
},[[
step
This achievement is gained by defeating an Unyielding Behemoth _while you have the Tidal Surge effect_ during the Ozumat encounter in Throne of the Tides on Heroic mode
|tip Start the fight and kill the adds, but leave the Unyielding Behemoth. Kill it once you have the Tidal Surge buff.
kill Unyielding Behemoth##44648
Prince of Tides |achieve 5286 |goto Throne of the Tides 32.5,19.3
step
Congratulations, you have earned the Prince of Tides achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Prototype Prodigy",{
achieveid={5368},
description="This guide will walk you through how to get the Prototype Prodigy achievement.",
},[[
step
This achievement is gained by _keeping the Prototype Reaper from falling below 90% health_ during the Foe Reaper 5000 encounter in Deadmines on Heroic mode
kill Foe Reaper 5000##43778
Prototype Prodigy |achieve 5368 |goto The Deadmines/2 12.4,75.8
step
Congratulations, you have earned the Prototype Prodigy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Rat Pack",{
achieveid={5367},
description="This guide will walk you through how to get the Rat Pack achievement.",
},[[
step
This achievement is gained by defeating _20 Mine Rats during the Helix Gearbreaker encounter_ in Deadmines on Heroic mode
|tip Aggro the boss and the two adds. They will throw bombs and then take control of your character.
|tip Mine Rats will then begin to spawn. You can complete this achievement over multiple dungeon runs.
kill 20 Mine Rat##51462+
kill Helix Gearbreaker##47296
Rat Pack |achieve 5367 |goto The Deadmines 50.1,86.8
step
Congratulations, you have earned the Rat Pack achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Ready for Raiding",{
achieveid={5366},
description="This guide will walk you through how to get the Ready for Raiding achievement.",
},[[
step
This achievement is gained by _not getting hit by Fire Wall_ in the Glubtok encounter in Deadmines on Heroic mode
kill Glubtok##47162
Ready for Raiding |achieve 5366 |goto The Deadmines 36.5,61.2
step
Congratulations, you have earned the Ready for Raiding achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Ring Out!",{
achieveid={5760},
description="This guide will walk you through how to get the Ring Out! achievement.",
},[[
step
This achievement is gained by defeating Daakara in Zul'Aman on Heroic mode _without any player leaving the rectangular turquoise stonework_ in the center of his area
kill Daakara##23863
Ring Out! |achieve 5760 |goto Zul'Aman 90.4,52.9
step
Congratulations, you have earned the Ring Out! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Rotten to the Core",{
achieveid={5287},
description="This guide will walk you through how to get the Rotten to the Core achievement.",
},[[
step
This achievement is gained by defeating _60 Disciples within 10 seconds_ during the High Priestess Azil encounter in the Stonecore on Heroic mode
kill 60 Devout Follower##42428+
|tip Pull the Devout Follower together, aggro the boss and then quickly kill the Followers.
kill High Priestess Azil##42333
Rotten to the Core |achieve 5287 |goto The Stonecore 57.4,38.7
step
Congratulations, you have earned the Rotten to the Core achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Severed Ties",{
achieveid={6130},
description="This guide will walk you through how to get the Severed Ties achievement.",
},[[
step
This achievement is gained by defeating _two Risen Ghouls during Echo of Sylvanas' Calling of the Highborne phase_, then defeat the Echo of Sylvanas in End Time on Heroic mode
|tip Pull the boss and wait for her to spawn Risen Ghouls. Kill at least 2 and then kill Echo of Sylvanas.
kill 2 Risen Ghoul##54191+
kill Echo of Sylvanas##54123
Severed Ties |achieve 6130 |goto End Time/3 55.9,39.2
step
Congratulations, you have earned the Severed Ties achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Spirit Twister",{
achieveid={5759},
description="This guide will walk you through how to get the Spirit Twister achievement.",
},[[
step
This achievement is gained by defeating _20 Twisted Spirits within 15 seconds_ during the Jin'do encounter in Zul'Gurub on Heroic mode
|tip You must defeat Venoxis to gain access to Jin'do.
kill 20 Twisted Spirit##52624+
|tip Engage the boss and weaken him to 70%. Wait for him to spawn 20 Twisted Spirits and then kill them all at once.
kill Jin'do the Godbreaker##52148
Spirit Twister |achieve 5759 |goto Zul'Gurub 48.5,39.5
step
Congratulations, you have earned the Spirit Twister achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Straw That Broke the Camel's Back",{
achieveid={5294},
description="This guide will walk you through how to get the Straw That Broke the Camel's Back achievement.",
},[[
step
This achievement is gained by defeating Earthrager Ptah _while mounted on a camel_ in Halls of Origination on Heroic mode
|tip Mount up on the camels in the room and then defeat Earthrager Ptah.
clicknpc Camel##39443 |goto Halls of Origination/2 35.14,44.28
kill Earthrager Ptah##39428
Straw That Broke the Camel's Back |achieve 5294 |goto Halls of Origination/2 50.0,49.2
step
Congratulations, you have earned the Straw That Broke the Camel's Back achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Sun of a...",{
achieveid={5295},
description="This guide will walk you through how to get the Sun of a... achievement.",
},[[
step
This achievement is gained by defeating Rajh _before he completes an entire recharging phase_ in Halls of Origination on Heroic mode
|tip Kill him as fast as possible.
kill Rajh##39378
Sun of a... |achieve 5295 |goto Halls of Origination/3 47.5,25.2
step
Congratulations, you have earned the Sun of a... achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\That's Not Canon!",{
achieveid={6070},
description="This guide will walk you through how to get the That's Not Canon! achievement.",
},[[
step
This achievement is gained by defeating Mannoroth in Well of Eternity _after dealing enough damage to Mannoroth to cause him to sacrifice Varo'then to heal himself_ on Heroic mode
|tip Slowly damage Mannoroth to about 90% and he will yell 'Your blood is MINE, elf!' and sacrifice Varo'then, then kill Mannoroth
kill Mannoroth##54969
That's Not Canon! |achieve 6070 |goto Well of Eternity 87.3,48.2
step
Congratulations, you have earned the That's Not Canon! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Too Hot to Handle",{
achieveid={5283},
description="This guide will walk you through how to get the Too Hot to Handle achievement.",
},[[
step
This achievement is gained by defeating Karsh Steelbender _after he has reached 15 stacks of Superheated Quicksilver Armor_ in Blackrock Caverns on Heroic mode
|tip Aggro him to middle of the room with the circle of fire. Let him stand there until he gets the 15 stacks of Superheated Quicksilver Armor, then kill him.
kill Karsh Steelbender##39698
Complete Too Hot to Handle |achieve 5283 |goto Blackrock Caverns/2 47.0,66.4
step
Congratulations, you have earned the Too Hot to Handle achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Tunnel Vision",{
achieveid={5750},
description="This guide will walk you through how to get the Tunnel Vision achievement.",
},[[
step
This achievement is gained by defeating Halazzi _without killing any of his totems_ in Zul'Aman on Heroic mode
kill Halazzi##23577
|tip Just kill him as quickly as possible.
Tunnel Vision |achieve 5750 |goto Zul'Aman 58.4,23.8
step
Congratulations, you have earned the Tunnel Vision achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Umbrage for Umbriss",{
achieveid={5297},
description="This guide will walk you through how to get the Umbrage for Umbriss achievement.",
},[[
step
This achievement is gained by defeating General Umbriss _while he is affected with Modgud's Malice_ in Grim Batol on Heroic mode
|tip Weaken General Umbriss to about 60% and he will spawn a Malignant Trogg. Pull the Trogg to the boss and kill it. This will debuff General Umbriss and then you can kill him.
kill Malignant Trogg##39984
kill General Umbriss##39625
Umbrage for Umbriss |achieve 5297 |goto Grim Batol 40.5,68.7
step
Congratulations, you have earned the Umbrage for Umbriss achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon\\Vigorous VanCleef Vindicator",{
achieveid={5371},
description="This guide will walk you through how to get the Vigorous VanCleef Vindicator achievement.",
},[[
step
This achievement is gained by engaging Vanessa VanCleef _within 5 minutes of being inflicted with the Nightmare Elixir_ in Deadmines on Heroic mode
kill Vanessa VanCleef##49541
Vigorous VanCleef Vindicator |achieve 5371 |goto The Deadmines/2 65.4,40.2
step
Congratulations, you have earned the Vigorous VanCleef Vindicator achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Aberrant Behavior",{
achieveid={5310},
description="Kill 12 Aberrations within 10 seconds on the Maloriak encounter in Blackwing Descent and then defeat Maloriak.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	47.4,88.1	57.6,69.5	65.5,69.7
Follow the path to Maloriak |goto Blackwing Descent/2 65.5,69.7 < 20 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
For this achievement, you will need to DPS Maloriak down to 25% health
Once you do that, enough Aberrations will should spawn to earn the acheivement
Gather all that have spawned, and AoE them down in _under 10 seconds_
Earn the Aberrant Behavior Achievement |achieve 5310 |goto Blackwing Descent/2 71.4,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Maloriak Achievement as well.
step
Congratulations, you have earned the Aberrant Behavior Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\The Abyss Will Gaze Back Into You",{
achieveid={5312},
description="Defeat Cho'gall in the Bastion of Twilight before any raid member earns more than 30% Corrupted Blood.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
path	53.6,86.7	47.1,92.8
map The Bastion of Twilight/2
path	42.4,18.2	43.9,75.3	56.6,75.1
Follow the path Cho'gall |goto The Bastion of Twilight/2 56.6,75.1 < 15 |noway |c
step
For this achievement, you will need to defeat Cho'gall before any raid member earns more than 30% Corrupted Blood
The easiest way to do this is to just quickly burn him down
If you have multiple raid members, beware of mind control (This applies to pets as well)
Earn The Abyss Will Gaze Back Into You Achievement |achieve 5312 |goto The Bastion of Twilight/2 73.4,75.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Cho'gall Achievement as well.
step
Congratulations, you have earned The Abyss Will Gaze Back Into You Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Achieve-a-tron",{
achieveid={5307},
description="Defeat the Omnotron Defense System in Blackwing Descent while neutralizing the following attacks.",
},[[
step
map Blackwing Descent/1
path loop off
path	51.2,59.9	58.3,59.7	61.0,57.3
Follow the path, clearing trash as you make your way to the next boss, the Omnotron Defense System |goto 61.0,57.3 < 5 |noway |c
step
You will be able to earn this achievement over the course of multiple lock outs
To earn the portion of the achievement needed, you will need to engage the boss that uses the ability that you are to avoid
_Be sure not to kill them before you fight each of them_
No player hit by Static Shock (Electron) |achieve 5307/1
No player hit by Arcane Annihilator (Arcanotron) |achieve 5307/2
No player hit by Poison Bomb (Toxitron) |achieve 5307/3
No more than one player hit by each Flamthrower (Magmatron) |achieve 5307/4
Earn the Achieve-a-Tron Achievement |achieve 5307 |goto Blackwing Descent/1 65.4,57.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Omnotron Defense System Achievement as well.
step
Congratulations, you have earned the Achieve-a-tron Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Bucket List",{
achieveid={5829},
description="During a single engagement, bring Shannox to each of the following locations in the Firelands before dispatching him.",
},[[
step
map Firelands/1
path loop off
path	33.1,29.3	32.9,52.8	41.7,70.4
path	56.7,62.5
Follow the path to Shannox |goto Firelands/1 56.7,62.5 < 15 |noway |c
only if achieved(5829)
step
For Shannox to appear, you need to kill trash in the dungeon
He will eventually spawn and patrol the instance
In order to earn this achievement, draw aggro on Shannox while mounted and kite Shannox to the provided locations:
Beth'tilac's Lair |achieve 5829/4 |goto 29.1,62.3
Flamebreachc |achieve 5829/1 |goto 34.1,75.1
The Ridge of Ancient Flame |achieve 5829/5 |goto 61.6,55.9
Shattershow |achieve 5829/3 |goto 61.2,45.4
Path of Corruuption |achieve 5829/2 |goto 34.0,30.8
_Note:_ If you can change to a tank spec, you won't be affected by the stun from the dogs
Earn the Bucket List Achievement |achieve 5829 |goto Firelands/1 49.2,46
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Shannox Achievement as well.
step
Congratulations, you have earned the Bucket List Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Chromatic Champion",{
achieveid={6180},
description="Destroy Deathwing in Dragon Soul on Normal or Heroic Difficulty after beginning the encounter on each Aspect's platform and allowing Deathwing to assault that Aspect:",
},[[
step
Note that it will take 4 lockouts to earn this achievement if you haven't done this before
confirm
step
To earn this achievement, start by jumping between the 2 platforms and gaining 2 stacks of the speed buff
Then, talk to Thrall and start the encounter
_Move as fast as you can to the fourth platform where Alexstrasza is!_ |only if not achieved(6180,1)
If you made it in time, you will see a message about Deathwing Assaulting Alexstrazsa |only if not achieved(6180,1)
Wait for the Mutation to case Impale at least 2 times |only if not achieved(6180,1)
Destroy the arm and move on |only if not achieved(6180,1)
Jump to Nozdomu's platform and repeat the process, only attacking after Deathwing has began assaulting Ysera |only if not achieved(6180,3)
Destroy the arm then move to Ysera's platform |only if not achieved(6180,4)
Wait for Deathwing to assault Ysera, wait for impale, then destroy the arm |only if not achieved(6180,4)
Finally, jump to Kalecgos' platform|only if not achieved(6180,2)
Wait for impale, then destroy the arm|only if not achieved(6180,2)
Once you have done so, kill Deathwing for the acheivement
|achieve 6180/1
|achieve 6180/2
|achieve 6180/3
|achieve 6180/4
step
Congratulations, you have earned the Chromatic Champion Acheiveemnt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Death From Above",{
achieveid={5821},
description="Only kill Cinderweb Drones while they are atop the web canopy during the Beth'tilac encounter in Firelands.",
},[[
step
map Firelands/1
path loop off
path	33.2,77.0	41.7,70.4	26.00,58.85
path	23.66,51.27	16.23,50.40	16.42,46.26
path	26.20,47.00
Follow the path Beth'tilac |goto Firelands/1 26.20,47.00 < 15 |noway |c
only if not achieved(5821)
step
To start, kill a Cinder Web Spider that's hanging from the roof
Click the web it leaves behind to climb up to the boss
DPS Beth'tilac until it drops down
Avoid using AoE Attacks during the final phase
Kill the boss and earn the achievement
Earn the Death From Above Achievement |achieve 5821 |goto Firelands/1 20.8,32
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Beth'tilac Achievement as well.
step
Congratulations, you have earned the Death From Above Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Deck Defender",{
achieveid={6105,6114},
description="Defeat Warmaster Blackhorn on Normal or Heroic Difficulty without allowing any Twilight Barrages to damage the Skyfire.",
},[[
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 5 |noway |c
step
Follow the path to the Battleship
talk Sky Captain Swayze##55870 |goto Dragon Soul/1 48.94,54.79 < 20
|tip You will have to have cleared the previous bosses in order to access the Battleship encounter.
Board the ship
|confirm
step
talk Sky Captain Swayze##55870
Find the achievement in your list and track it immidiately
It is important to watch the text to see if it turns red
If the text is red you have failed and should reset the fight
_To start, kill drakes as they come into range_, this is the most important part!
When a giant swirl appears on the ship, stand in it to absorb the damage
When Blackhorn lands on the ship, burn him down as fast as possible
|achieve 6105
|achieve 6114
step
Congratulations, you have earned the Deck Defender Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Defender of a Shattered World",{
achieveid={5506},
description="This guide will walk you through earning the Defender of a Shattered World achievement.",
},[[
step
This achievement is gained by completing the following dungeon and raid achievements:
|tip Use the dungeon and raid guides to accomplish this.
Heroic: Blackrock Caverns |achieve 5506/1
Heroic: Throne of the Tides |achieve 5506/2
Heroic: The Stonecore |achieve 5506/3
Heroic: The Vortex Pinnacle |achieve 5506/4
Heroic: Grim Batol |achieve 5506/5
Heroic: Halls of Origination |achieve 5506/6
Heroic: Lost City of the Tol'vir |achieve 5506/7
Heroic: Deadmines |achieve 5506/8
Heroic: Shadowfang Keep |achieve 5506/9
Blackwing Descent |achieve 5506/10
Throne of the Four Winds |achieve 5506/11
The Bastion of Twilight |achieve 5506/12
step
Congratulations, you have earned the Defender of a Shattered World achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Do a Barrel Roll!",{
achieveid={5813},
description="Defeat Alysrazor in the Firelands without any raid member getting hit by the following attacks.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	62.48,51.39
Follow the path to Alysrazor |goto Firelands/1 62.48,51.39 < 15 |noway |c
only if achieved(5813)
step
For this achievement, you will want to gather feathers after Majordomo Staghelms dialogue
Once you gather enough you will start to fly
Follow Alysrazor closely once you take flight
Avoid Incendiary Clouds and kill Alysrazor quickly to earn the achievement
Earn the Do a Barrel Roll! Achievement |achieve 5813 |goto Firelands/1 64,39
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Alysrazor Achievement as well.
step
Congratulations, you  have earned the Do a Barrel Roll! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Don't Stand So Close To Me",{
achieveid={6174},
description="Defeat Morchok in Dragon Soul on Normal or Heroic Difficulty without any two players (three players on 25-player mode) ever being within 5 yards of each other while Morchok is channeling Black Blood of the Earth.",
},[[
step
If you go in solo on this encounter, you will earn the achievement upon killing the boss
If you are playing with others, stand 6 yards apart
If you kill the boss within a minute, you will be able to earn the achievement before he casts Black Blood of the Earth
|achieve 6174 |goto Dragon Soul/1 50.69,69.90
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Morchok Achievement.
step
Congratulations, you have earned the Don't Stand So Close To Me Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Double Dragon",{
achieveid={4852},
description="Kill 6 Twilight Fiends in the Twilight Realm and then defeat Valiona and Theralion in the Bastion of Twilight.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
Follow the path to Valiona and Theralion |goto The Bastion of Twilight/1 53.7,68.3 < 15 |noway |c
Note that you will have to have defeated Halfus the Wyrmbreaker to reach this boss
step
For this achievement, you will have to defeat 6 Twilight Fiends within the Twilight Realm
To start, pull Valiona and wait for her to cast Blackout Twice
_Don't damage the boss too much_
Theralion will cast Dazzling Destruction soon after
After Dazzling Destruction, stand in the Shadow Pool that appears, as it will take you into the Shadow Realm
Kill 6 Twilight Fiends as the appear
clicknpc Collapsing Twilight Portal##46301
Kill Valiona and Theralion
Earn the Double Dragon Achievement |achieve 4852 |goto The Bastion of Twilight/1 53.9,78.4
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Valiona and Theralion Achievement as well.
step
Congratulations, you have earned the Double Dragon Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Elementary",{
achieveid={5311},
description="Defeat the Elementium Monstrosity in the Bastion of Twilight while only allowing it to create a single Liquid Ice patch.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
path	53.7,29.1	53.7,48.9	53.7,68.3
path	53.6,86.7	47.1,92.8
map The Bastion of Twilight/2
path	42.4,18.2
Follow the path to the Twilight Ascendant Council |goto The Bastion of Twilight/2 42.4,18.2 < 15 |noway |c
step
For this achievement, you will need the Elementium Monstrosity to only create one Ice Patch
To start, stand at the center of the room close to the purple area on the floor
Then, pull the boss, damaging both as much as possible
_Note_ that if you defeat one of the bosses both will despawn, so spread your damage as equal as possible
Soon after you defeat the first two, the next two will spawn, repeat the same process
_STAY AT THE CENTER OF THE ROOM!_
Once you defeat the second pair, the final boss will spawn
Once the Elementium Monstrosity appears it will spawn an Ice Patch underneath it
_DO NOT MOVE!_ Kill the boss from where you are standing
Earn the Elementary Achievement |achieve 5311 |goto The Bastion of Twilight/2 42.5,45.5
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Ascendant Council Achievement as well.
step
Congratulations, you have earned the Elementary Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Fall of Deathwing",{
achieveid={6107},
description="This guide will walk you through how to get the Fall of Deathwing achievement.",
},[[
step
This achievement is gained by defeating the bosses leading up to the Fall of Deathwing in Dragon Soul
|tip Use our raid guides to accomplish this.
|confirm |only if not achieved(6107)
step
kill Ultraxion##55294 |achieve 6107/1 |goto Dragon Soul 50.0,45.8
step
kill Warmaster Blackhorn##56427 |achieve 6107/2 |goto Dragon Soul/5 48.3,16.8
step
Complete the Spine of Deathwing Encounter |achieve 6107/3 |goto Dragon Soul/6 33.2,85.2
step
Complete the Madness of Deathwing Encounter |achieve 6107/4 |goto Dragon Soul/7 47.8,53.8
step
|achieve 6107
step
Congratulations, you have earned the Fall of Deathwing achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Four Play",{
achieveid={5305},
description="Defeat Al'Akir in the Throne of the Four Winds while he is affected by Feedback.",
},[[
step
To earn this achievement, defeat Al'Akir while he is affected by Feedback
To start, DPS him down until he's at 80% health
Then, wait for him to spawn Stormlings
Drop the boss to 40% health, then kill the Stormling
Kill the Al'Akir
Earn the Four Play Achievement |achieve 5305 |goto Throne of the Four Winds/1 47.5,50
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Al'Akir Achievement as well.
step
Congratulations, you have earned the Four Play Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Full of Sound and Fury",{
achieveid={5309},
description="Defeat Chimaeron in Blackwing Descent with no more than 2 raid member deaths.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	43.30,83.39	36.7,69.5	28.8,69.7
Follow the path to Chimaeron |goto Blackwing Descent/2 28.8,69.7 < 15 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
For this achievement, you will want to DPS Chimaeron as fast as possible
Having an item level of 580 or high will make you able to easily solo this acheivement
If you  have a pet of any type, you _MUST_ resurrect it before defeating Chimaeron or you won't earn the achievement
Earn the Full of Sound and Fury Achievement |achieve 5309 |goto Blackwing Descent/2 24.5,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Chimaeron Achievement as well.
step
Congratulations, you have earned the Full of Sound and Fury Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Al'Akir",{
achieveid={5123},
description="This guide will walk you through how to get the Heroic: Al'Akir achievement.",
},[[
step
This achievement is gained by defeating Al'Akir in the Throne of the Four Winds on Heroic mode
kill Al'Akir##46753
Heroic: Al'Akir |achieve 5123 |goto Throne of the Four Winds 47.5,50.0
step
Congratulations, you have earned the Heroic: Al'Akir achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Alysrazor",{
achieveid={5809},
description="This guide will walk you through how to get the Heroic: Alysrazor achievement.",
},[[
step
This achievement is gained by defeating _Alysrazor in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Alysrazor##52530
Heroic: Alysrazor |achieve 5809 |goto Firelands 64.3,38.0
step
Congratulations, you have earned the Heroic: Alysrazor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Ascendant Council",{
achieveid={5119},
description="This guide will walk you through how to get the Heroic: Ascendant Council achievement.",
},[[
step
This achievement is gained by defeating the Ascendant Council in the Bastion of Twilight on Heroic mode
kill Feludius##43687, Ignacious##43686, Arion##43688, Terrastra##43689, Elementium Monstrosity##43735
Heroic: Ascendant Council |achieve 5119 |goto The Bastion of Twilight/2 42.5,45.5
step
Congratulations, you have earned the Heroic: Ascendant Council achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Atramedes",{
achieveid={5109},
description="This guide will walk you through how to get the Heroic: Atramedes achievement.",
},[[
step
This achievement is gained by defeating _Atramedes in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Atramedes##41442
Heroic: Atramedes |achieve 5109 |goto Blackwing Descent/2 47.5,32.7
step
Congratulations, you have earned the Heroic: Atramedes achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Baleroc",{
achieveid={5805},
description="This guide will walk you through how to get the Heroic: Baleroc achievement.",
},[[
step
This achievement is gained by defeating _Baleroc in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Baleroc##53494
Heroic: Baleroc |achieve 5805 |goto Firelands 49.5,30.9
step
Congratulations, you have earned the Heroic: Baleroc achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Beth'tilac",{
achieveid={5807},
description="This guide will walk you through how to get the Heroic: Beth'tilac achievement.",
},[[
step
This achievement is gained by defeating _Beth'tilac in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Beth'tilac##52498
Heroic: Beth'tilac |achieve 5807 |goto Firelands 21.0,32.7
step
Congratulations, you have earned the Heroic: Beth'tilac achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Chimaeron",{
achieveid={5115},
description="This guide will walk you through how to get the Heroic: Chimaeron achievement.",
},[[
step
This achievement is gained by defeating _Chimaeron in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Chimaeron##43296
Heroic: Chimaeron |achieve 5115 |goto Blackwing Descent/2 24.5,70.2
step
Congratulations, you have earned the Heroic: Chimaeron achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Cho'gall",{
achieveid={5120},
description="This guide will walk you through how to get the Heroic: Cho'gall achievement.",
},[[
step
This achievement is gained by defeating Cho'gall in the Bastion of Twilight on Heroic mode
kill Cho'gall##43324
Heroic: Cho'gall |achieve 5120 |goto The Bastion of Twilight/2 76.4,75.4
step
Congratulations, you have earned the Heroic: Cho'gall achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Conclave of Wind",{
achieveid={5122},
description="This guide will walk you through how to get the Heroic: Conclave of Wind achievement.",
},[[
step
This achievement is gained by defeating the Conclave of Wind in the Throne of the Four Winds on Heroic mode
kill Nezir##45871 |goto Throne of the Four Winds 47.5,26.0
kill Rohash##45872 |goto Throne of the Four Winds 63.65,50.11
kill Anshal##45870 |goto Throne of the Four Winds 31.16,49.54
Heroic: Conclave of Wind |achieve 5122
step
Congratulations, you have earned the Heroic: Conclave of Wind achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Fandral Staghelm",{
achieveid={5975},
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
path	49.18,26.74	49.51,7.53
only if not achieved(5975)
step
Kill Fandral Staghelm on Heroic Difficulty
Right click your character portrait and make sure that you are doing Heroic Fireladns
|achieve 5975
step
Congratulations, you have earned the Heroic: Fandral Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Hagara the Stormbinder",{
achieveid={6112,6113},
description="Defeat Ultraxion in Dragon Soul on Normal or Heroic Difficulty without any raid member being hit by Hour of Twilight more than once.",
},[[
step
Set the Raid Difficulty to Heroic before entering the raid
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 10 |noway |c
step
clicknpc Travel to the Eye of Eternity##57377 |goto Dragon Soul/1 50.69,60.60 < 10
Enter the Eye of Eternity |goto Dragon Soul/4 52.43,23.43 < 20 |noway |c
step
Defeat the waves of enemies that appear, then Hagara when She jumps off her disc
kill Hagara the Stormbinder##55689
|achieve 6112 |goto Dragon Soul/4 51.68,50.01
|achieve 6113 |goto Dragon Soul/4 51.68,50.01
step
Congatulations, you have earned the Heroic: Hagara the Stormbinder Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Halfus Wyrmbreaker",{
achieveid={5118},
description="This guide will walk you through how to get the Heroic: Halfus Wyrmbreaker achievement.",
},[[
step
This achievement is gained by defeating _Halfus Wyrmbreaker in The Bastion of Twilight on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Halfus Wyrmbreaker##44600
Heroic: Halfus Wyrmbreaker |achieve 5118 |goto The Bastion of Twilight 53.4,19.3
step
Congratulations, you have earned the Heroic: Halfus Wyrmbreaker achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Lord Rhyolith",{
achieveid={5808},
description="This guide will walk you through how to get the Heroic: Lord Rhyolith achievement.",
},[[
step
This achievement is gained by defeating _Lord Rhyolith in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Lord Rhyolith##52558
Heroic: Lord Rhyolith |achieve 5808 |goto Firelands 65.3,75.0
step
Congratulations, you have earned the Heroic: Lord Rhyolith achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Magmaw",{
achieveid={5094},
description="This guide will walk you through how to get the Heroic: Magmaw achievement.",
},[[
step
This achievement is gained by defeating _Magmaw in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Magmaw##41570
Heroic: Magmaw |achieve 5094 |goto Blackwing Descent 27.5,57.4
step
Congratulations, you have earned the Heroic: Magmaw achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Majordomo Fandral Staghelm",{
achieveid={5804},
description="This guide will walk you through how to get the Heroic: Majordomo Fandral Staghelm achievement.",
},[[
step
This achievement is gained by defeating _Majordomo Fandral Staghelm in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Majordomo Fandral Staghelm##52571
Heroic: Majordomo Fandral Staghelm |achieve 5804 |goto Firelands/3 50.9,72.4
step
Congratulations, you have earned the Heroic: Majordomo Fandral Staghelm achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Maloriak",{
achieveid={5108},
description="This guide will walk you through how to get the Heroic: Maloriak achievement.",
},[[
step
This achievement is gained by defeating _Maloriak in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Maloriak##41378
Heroic: Maloriak |achieve 5108 |goto Blackwing Descent/2 71.4,70.2
step
Congratulations, you have earned the Heroic: Maloriak achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Nefarian",{
achieveid={5116},
description="This guide will walk you through how to get the Heroic: Nefarian achievement.",
},[[
step
This achievement is gained by defeating _Nefarian in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Nefarian##41376
Heroic: Nefarian |achieve 5116 |goto Blackwing Descent/2 48.0,70.2
step
Congratulations, you have earned the Heroic: Nefarian achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Omnotron Defense System",{
achieveid={5107},
description="This guide will walk you through how to get the Heroic: Omnotron Defense System achievement.",
},[[
step
This achievement is gained by defeating _the Omnotron Defense System in Blackwing Descent on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Arcanotron##42166, Electron##42179, Magmatron##42178, Toxitron##42180
Heroic: Omnotron Defense System |achieve 5107 |goto Blackwing Descent 65.4,57.4
step
Congratulations, you have earned the Heroic: Omnotron Defense System achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Ragnaros",{
achieveid={5803},
description="This guide will walk you through how to get the Heroic: Ragnaros achievement.",
},[[
step
This achievement is gained by defeating _Ragnaros in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Ragnaros##52409
Heroic: Ragnaros |achieve 5803 |goto Firelands/3 50.7,15.3
step
Congratulations, you have earned the Heroic: Ragnaros achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Shannox",{
achieveid={5806},
description="This guide will walk you through how to get the Heroic: Shannox achievement.",
},[[
step
This achievement is gained by defeating _Shannox in Firelands on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Shannox##53691
Heroic: Shannox |achieve 5806 |goto Firelands 65.3,75.0
step
Congratulations, you have earned the Heroic: Shannox achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Sinestra",{
achieveid={5121},
description="This guide will walk you through how to get the Heroic: Sinestra achievement.",
},[[
step
This achievement is gained by defeating Sinestra in the Bastion of Twilight on Heroic mode
|tip Sinestra will start with low health and then regenerate back to full health after taking some damage. This is the start of phase 2.
|tip During phase 2, dealing damage will cause her to lose Mana (not health). After dealing some damage she will cast Twilight Extinction. After the cast, deal more damage to lower her Mana once again and then kill the two Pulsing Twilight Eggs that spawn to each side of her.
|tip After the eggs are destroyed you can finish off Sinestra.
kill Sinestra##45213
Heroic: Sinestra |achieve 5121 |goto The Bastion of Twilight/3 49.0,34.2
step
Congratulations, you have earned the Heroic: Sinestra achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Valiona and Theralion",{
achieveid={5117},
description="This guide will walk you through how to get the Heroic: Valiona and Theralion achievement.",
},[[
step
This achievement is gained by defeating Valiona and Theralion in the Bastion of Twilight on Heroic mode
kill Valiona##45992, Theralion##45993
Heroic: Valiona and Theralion |achieve 5117 |goto The Bastion of Twilight 53.9,78.4
step
Congratulations, you have earned the Heroic: Valiona and Theralion achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Keeping it in the Family",{
achieveid={4849},
description="Damage Nefarian below 50% health before he lands for the final confrontation and then defeat Nefarian in Blackwing Descent.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	36.7,69.5	47.39,57.67
click Orb of Culmination##203254
Follow the path to Nefarian |goto Blackwing Descent/2 47.39,57.67 < 20 |noway |c
Note that you will have to kill the other bosses before you can activate the Nefarian encounter
step
For the first part of this achievement, enter the arena and ignore Onyxia
Next, damage Nefarion to 60% of his health then stop DPS
Then, kill Onyxia
When the magma rises, jump onto a column and kill the add that is there
After that, attack Nefarian, bringing his health to 49% to 25%, but _DO NOT_ kill him or damage him further than 25% health
Allow  him to finish his speech and land, then kill him
Earn the Keeping it in the Family Achievement |achieve 4849 |goto Blackwing Descent/2 48,70.2
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Nefarian Achievement as well.
step
Congratulations, you have earned the Keeping it in the Family Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Maybe He'll Get Dizzy...",{
achieveid={6133},
description="Defeat the Spine of Deathwing encounter on Normal or Heroic Difficulty after tricking Deathwing into performing the following roll sequence: Left, Right, Left, Right.",
},[[
step
talk Sky Captain Swayze##55870
|tip He's near the ship's cabin.
To earn this Achievement, you will have to make Deathwing roll Left, Right, Left, then Right again
Kill all tentacles in the lava pools to cause Corrupted Blood to spawn
Look at your map and move to a magma pool at a lower pool of the map (the left)
_Stay in the pool to not be flung off of Deathwing during the roll!_
After the first roll, move to the top pool of the map (the right)
_Again, stay in the pool to not be flung off of Deathwing during the roll!_
Repeat the process again
Once he has rolled left right left right, move to the literal left side of the map
For this portion you will need him to stop rolling, so when you see the yellow text appear, immidiatelly move to the other Lava Pool, staying on the left side
_You will have 3 seconds to move from one to the other!_
Stack corrupted blood as usual, so that the Abberations have 9 counts of Corrupted Blood before killing them against the wall on the left
|achieve 6133
step
Congratulations, you have earned the Maybe He'll Get Dizzy Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Minutes to Midnight",{
achieveid={6084},
description="Defeat Ultraxion in Dragon Soul on Normal or Heroic Difficulty without any raid member being hit by Hour of Twilight more than once.",
},[[
step
talk Nethestrasz##57287 |goto Dragon Soul/1 50.28,57.66
Fly to the top of the temple |goto Dragon Soul/1 49.30,59.92 < 5 |noway |c
step
talk Kalecgos##56664 |goto Dragon Soul/1 50.41,59.47
Talk to Kalecgos to start the encounter
|tip You will have to have cleared the previous bosses in order to access this one.
After a bit, talk to _Thrall_
You should be able to kill Ultraxion before he even casts one Hour of Twilight
|achieve 6084 |goto Dragon Soul/1 50.10,57.02
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Ultraxion Achievement.
step
Congratulations, you have earned the Minutes to Midnight Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Not an Ambi-Turner",{
achieveid={5810},
description="Defeat Lord Rhyolith in the Firelands without ever causing him to turn left while his armor is intact.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	64.15,56.84	68.67,62.49
path	69.52,73.56
Follow the path Lord Rhyolith |goto Firelands/1 69.52,73.56 < 15 |noway |c
only if not achieved(5810)
step
To start, you want to DPS his right leg
Burst him dow as fast as you can to earn the achievement
Earn the Not an Ambi-Turner Achievement |achieve 5810 |goto Firelands/1 65.6,75.6
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Lord Rhyolith Achievement as well.
step
Congratulations, you have earned the Not an Ambi-Turner Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\The Only Escape",{
achieveid={5300},
description="Defeat Halfus Wyrmbreaker after defeating two drakes within 10 seconds of each other. The Emerald Whelp pack counts as one drake for this purpose.",
},[[
step
map The Bastion of Twilight/1
path loop off
path	39.6,42.7	39.6,19.8	46.6,19.4
Follow the path to Halfus Wyrmbreaker |goto The Bastion of Twilight/1 46.6,19.4 < 15 |noway |c
step
For this achievement, you will need to kill two of the dragons that are in the room with Halfus before defeating Halfus himself
To start, pull Halfus
Then, Release a dragon of your choice (There will be 3 of 5 possible present)
Avoid choosing the Whelps if possible unless you have strong AoE!
Release a second dragon of your choice
Then, pull the two dragons together, killing both within 10 seconds of the other
Finally, defeat Halfus
Earn The Only Escape Achievement |achieve 5300 |goto The Bastion of Twilight/1 53.4,19.3
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Halfus Wyrmbreaker Achievement as well.
step
Congratulations, you have earned The Only Escape Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Only the Penitent...",{
achieveid={5799},
description="Activate both of Fandral's Flames at once in Firelands without any raid member getting hit by Kneel to the Flame!",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
path	49.18,26.74	49.51,7.53
Cross the bridge to Fandral |goto 49.51,7.53 < 15 |noway |c
only not achieved(5799)
step
To Earn this achievement, you need a group of 6
There will be a Druid of Flame casting a spell called _Kneel to the Flame!_
Set your focus on the Druid of Flame to watch the cast bar
There will be 2 orbs on each side of the druid
Approach it carefully, _stopping completely when Kneel to the Flame! is about to complete_
Click Fandral's Flames at the following locations:
clicknpc Fandral's Flames##53696
Orb 1 |goto Firelands/3 48.38,75.06 < 10
Orb 2 |goto 53.31,74.66 < 10
|achieve 5799
step
Congratulations, you have earned the Only the Penitent Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Parasite Evening",{
achieveid={5306},
description="Defeat Magmaw in Blackwing Descent without anyone in the raid becoming infected with a parasite.",
},[[
step
map Blackwing Descent/1
path loop off
path	42.6,59.9	31.5,56.9
Follow the path to Magmaw |goto 31.5,56.9 < 10 |noway |c
step
The best way to earn this achievement will be to DPS it down quickly
Magmaw uses _Pillar of Flame_ which spawns the parasites, if you can't kill it fast enough, you will need to avoid them and DPS them down at range
Earn the Parasite Evening Achievement |achieve 5306 |goto Blackwing Descent/1 27.5,53.1
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Magmaw Achievement as well.
step
Congratulations, you have earned the Parasite Evening Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Ping Pong Champion",{
achieveid={6128,6110},
description="Bounce the Void of the Unmaking 10 times off of players, and then defeat Warlord Zon'ozz on Normal or Heroic Difficulty.",
},[[
step
talk Valeera##57289 |goto Dragon Soul/1 49.16,58.99
Fly into the Maw Go'rath |goto Dragon Soul/2 32.66,45.49 < 10 |noway |c
_You will need a tanking pet or another player in order to earn this achievement!_
only if not achieved(6128)
step
For this achievement, have a player or your pet gain aggro on Warlord Zon'ozz, doing very little damage to it
Once they have gathered sufficient aggro, stop all dps or set your pet to passive
If you aren't tanking the boss, be sure to move to the direction the boss is facing
Eventually, Zon'ozz will cast Void of the Unmaking, causing a ball to spawn
You will need to bounce the ball 10 times, while avoiding sending it towards the boss
_If it hits the boss, it will disappear and you will have to try again!_
|achieve 6128 |goto Dragon Soul/2 48.47,55.43
|achieve 6110 |goto Dragon Soul/2 48.47,55.43
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Warlord Zon'ozz Achievement.
step
Congratulations, you have earned the Ping Pong Champ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Ragnar-O's",{
achieveid={5855},
description="This guide will walk you through how to get the Ragnar-O's achievement.",
},[[
step
This achievement is gained by defeating Ragnaros in Firelands _while three Living Meteors are ignited by Lava Wave_
|tip Weaken Ragnaros to 30% health. Living Meteors will spawn and follow you. You can attack them to knock them back and keep your distance. When there are three you must get them hit by the lava wave from Ragnaros' Sulfuras Smash.
|tip Track the achievement. It will start out with red text. After the three meteors are hit by the lava wave the text will turn white and you can kill Ragnaros.
kill Ragnaros##52409
Ragnar-O's |achieve 5855 |goto Firelands/3 50.7,15.3
step
Congratulations, you have earned the Ragnar-O's achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Share the Pain",{
achieveid={5830},
description="Defeat Baleroc in the Firelands without allowing any member of your raid to suffer Torment more than three times.",
},[[
step
map Firelands/1
path loop off;dist 20
path	31.27,77.70	40.77,69.89	48.84,69.53
path	54.86,64.87	54.11,49.50	49.24,41.92
Follow the path to Baleroc |goto 49.24,41.92 < 15 |noway |c
only if not achieved(5830)
step
For this achievement, you will need to kill Baleroc without gaining Torment 3 times
To start, when you see Baleroc casting torment, be on the lookout for a large purple pillar
Move at least 15 yards away from it to avoid the shard that will give you the debuff
DPS Baleroc down quickly to avoid any chance of gaining the debuff
Earn the Share the Pain Achievement |achieve 5830 |goto Firelands/1 49.2,32.8
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Baleroc Achievement as well.
step
Congratulations, you have earned the Share the Pain Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Siege of Wyrmrest Temple",{
achieveid={6106},
description="This guide will walk you through how to get the Siege of Wyrmrest Temple achievement.",
},[[
step
This achievement is gained by defeating the bosses laying siege to Wyrmrest Temple in Dragon Soul
|tip Use our raid guides to accomplish this.
|confirm |only if not achieved(6106)
step
kill Morchok##55265 |achieve 6106/1 |goto Dragon Soul 50.3,69.2
step
kill Warlord Zon'ozz##55308 |achieve 6106/2 |goto Dragon Soul/2 50.9,53.0
step
kill Yor'sahj the Unsleeping##55312 |achieve 6106/3 |goto Dragon Soul/3 46.8,49.9
step
kill Hagara the Stormbinder##55689 |achieve 6106/4 |goto Dragon Soul/4 52.7,52.0
step
|achieve 6106
step
Congratulations, you have earned the Siege of Wyrmrest Temple achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Silence is Golden",{
achieveid={5308},
description="Defeat Atramedes in Blackwing Descent without any raid member's sound bar going over 50%.",
},[[
step
map Blackwing Descent/1
path loop off
path	47.03,44.38
map Blackwing Descent/2
path	47.44,84.71	57.6,69.5	47.4,53.0
path	47.5,40.9
Follow the path to Atramedes |goto Blackwing Descent/2 47.5,40.9 < 15 |noway |c
Note that you will have had to kill Magmaw and the Omnotron Defense System to reach this boss
step
The best way to earn this achievement will be to DPS it down quickly
You can avoid getting sound by avoiding Atramedes' Area of Effect Abilities
There are Gongs on the side of the room that serve to reset your "Sound" bar, as well as interrupt powerful AoE abilitis from the boss
Use it as needed
If you need more DPS, bring a friend to help
Earn the Silence is Golden Achievement |achieve 5308 |goto Blackwing Descent/2 47.5,32.7
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Atramedes Achievement as well.
step
Congratulations, you  have earned the Silence is Golden Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Stay Chill",{
achieveid={5304},
description="Defeat the Conclave of Wind in the Throne of the Four Winds while everyone in the raid has at least 7 stacks of Wind Chill.",
},[[
step
To start, Kill Anshal
Jump to the platform Nezir is on and wait until you have _3 stacks_ of the Wind Chill debuff
_Do NOT attack Nezir yet!_
Jump to the platform Rohash is on and kill hiim
Jump back to Nezir's platform, gaining _6 stacks_ of Wind Chill
_Do NOT attack Nezir yet!_
Let Anshal finish casting Zephyr, then jump to his platform and kill him
Jump Back to Nezir's platform and gain _7 stacks_ of Wind Chill before killing him
Earn the Stay Chill Achievement |achieve 5304 |goto Throne of the Four Winds/1 47.5,26
|tip Set the Raid Difficulty to Heroic to Earn the Heroic: Conclave of Wind Achievement as well.
step
Congratulations, you have earned the Stay Chill Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Taste the Rainbow!",{
achieveid={6129,6111},
description="Experience the following color combinations, and then defeat Yor'sahj the Unsleeping on Normal or Heroic Difficulty.",
},[[
step
talk Eiendormi##57288 |goto Dragon Soul/1 51.24,59.28
Fly into the Maw of Shu'ma |goto Dragon Soul/3 55.38,79.72 < 10 |noway |c
only if not achieved(6129)
step
Every couple of minutes, Yor'sahj will summon 4 Globules
There are 4 combinations that you wil need to keep an eye out for below
Since the game doesn't properly track which you have seen together during the encounter, you will need to keep track of which buffs he gains
Experience the following Globule Combinations:
Black and Yellow |achieve 6129/1 |goto Dragon Soul/3 45.29,53.86
Red and Green |achieve 6129/2 |goto Dragon Soul/3 45.29,53.86
Black and Blue |achieve 6129/3 |goto Dragon Soul/3 45.29,53.86
Purple and Yellow |achieve 6129/4 |goto Dragon Soul/3 45.29,53.86
|achieve 6111
|tip Set the Raid Difficulty to Heroic to earn the Heroic: Yor'sahj Achievement.
step
Congratulations, you have earned the Taste the Rainbow! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Throne of the Four Winds",{
achieveid={4851},
description="This guide will walk you through how to get the Throne of the Four Winds achievement.",
},[[
step
This achievement is gained by _defeating the bosses in the Throne of the Four Winds raid_
|tip Use our raid guides to accomplish this.
kill Nezir##45871 |goto Throne of the Four Winds 47.5,26.0
kill Rohash##45872 |goto Throne of the Four Winds 63.65,50.11
kill Anshal##45870 |goto Throne of the Four Winds 31.16,49.54
Defeat the Conclave of Wind |achieve 4851/1
step
kill Al'Akir##46753 |achieve 4851/2 |goto Throne of the Four Winds 47.5,50.0
step
Throne of the Four Winds |achieve 4851 |goto Throne of the Four Winds
step
Congratulations, you have earned the Throne of the Four Winds achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Dungeon Hero",{
achieveid={4844},
description="This guide will walk you through how to get the Cataclysm Dungeon Hero achievement.",
},[[
step
Complete the following Heroic Cataclysm dungeons:
|tip Use the dungeon guides to accomplish this.
Heroic: Blackrock Caverns |achieve 4844/1
Heroic: Throne of the Tides |achieve 4844/2
Heroic: The Stonecore |achieve 4844/3
Heroic: The Vortex Pinnacle |achieve 4844/4
Heroic: Grim Batol |achieve 4844/5
Heroic: Halls of Origination |achieve 4844/6
Heroic: Lost City of the Tol'vir |achieve 4844/7
Heroic: Deadmines |achieve 4844/8
Heroic: Shadowfang Keep |achieve 4844/9
step
Congratulations, you have earned the Cataclysm Dungeon Hero achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Classic Raider",{
achieveid={1285},
description="This guide will walk you through how to get the Classic Raider achievement.",
},[[
step
Complete the following Classic raids:
|tip Use the raid guides to accomplish this.
Blackwing Lair |achieve 1285/1
Molten Core |achieve 1285/2
Temple of Ahn'Qiraj |achieve 1285/3
Ruins of Ahn'Qiraj |achieve 1285/4
step
Congratulations, you have earned the Classic Raider achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Cataclysm Raider",{
achieveid={4853},
description="This guide will walk you through earning the Glory of the Cataclysm Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Magmaw |achieve 4853/1
Heroic: Omnotron Defense System |achieve 4853/2
Heroic: Maloriak |achieve 4853/3
Heroic: Atramedes |achieve 4853/4
Heroic: Chimaeron |achieve 4853/5
Heroic: Nefarian |achieve 4853/6
Heroic: Halfus Wyrmbreaker |achieve 4853/7
Heroic: Valiona and Theralion |achieve 4853/8
Heroic: Ascendant Council |achieve 4853/9
Heroic: Cho'gall |achieve 4853/10
Heroic: Conclave of Wind |achieve 4853/11
Heroic: Al'Akir |achieve 4853/12
Parasite Evening |achieve 4853/13
Achieve-a-tron |achieve 4853/14
Silence is Golden |achieve 4853/15
Full of Sound and Fury |achieve 4853/16
Aberrant Behavior |achieve 4853/17
Keeping it in the Family |achieve 4853/18
The Only Escape |achieve 4853/19
Double Dragon |achieve 4853/20
Elementary |achieve 4853/21
The Abyss Will Gaze Back Into You |achieve 4853/22
Stay Chill |achieve 4853/23
Four Play |achieve 4853/24
step
Congratulations, you have earned the Glory of the Cataclysm Raider achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Dragon Soul Raider",{
achieveid={6169},
description="This guide will walk you through earning the Glory of the Dragon Soul Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Morchok |achieve 6169/1
Heroic: Warlord Zon'ozz |achieve 6169/2
Heroic: Yor'sahj the Unsleeping |achieve 6169/3
Heroic: Hagara the Stormbinder |achieve 6169/4
Heroic: Ultraxion |achieve 6169/5
Heroic: Warmaster Blackhorn |achieve 6169/6
Don't Stand So Close to Me |achieve 6169/7
Taste the Rainbow! |achieve 6169/8
Ping Pong Champion |achieve 6169/9
Minutes to Midnight |achieve 6169/10
Deck Defender |achieve 6169/11
Maybe He'll Get Dizzy... |achieve 6169/12
Chiromatic Champion |achieve 6169/13
step
Congratulations, you have earned the Glory of the Dragon Soul Raider achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Firelands Raider",{
achieveid={5828},
description="This guide will walk you through earning the Glory of the Firelands Raider achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Beth'tilac |achieve 5828/1
Heroic: Lord Rhyolith |achieve 5828/2
Heroic: Shannox |achieve 5828/3
Heroic: Alysrazor |achieve 5828/4
Heroic: Baleroc |achieve 5828/5
Heroic: Majordomo Fandral Staghelm |achieve 5828/6
Death from Above |achieve 5828/7
Not an Ambi-Turner |achieve 5828/8
Do a Barrel Roll! |achieve 5828/9
Bucket List |achieve 5828/10
Share the Pain |achieve 5828/11
Only the Penitent... |achieve 5828/12
step
Congratulations, you have earned the Glory of the Firelands Raider achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (10 Player)",{
achieveid={4602},
description="This guide will walk you through obtaining the Glory of the Icecrown Raider (10 Player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Storming the Citadel (10 player) |achieve 4602/1
Heroic: The Plagueworks (10 player) |achieve 4602/2
Heroic: The Crimson Hall (10 player) |achieve 4602/3
Heroic: The Frostwing Halls (10 player) |achieve 4602/4
Boned (10 player) |achieve 4602/5
Full House (10 player) |achieve 4602/6
I'm on a Boat (10 player) |achieve 4602/7
I've Gone and Made a Mess (10 player) |achieve 4602/8
Dances with Oozes (10 player) |achieve 4602/9
Flu Shot Shortage (10 player) |achieve 4602/10
Nausea, Heartburn, Indigestion... (10 player) |achieve 4602/11
The Orb Whisperer (10 player) |achieve 4602/12
Once Bitten, Twice Shy (10 player) |achieve 4602/13
Portal Jockey (10 player) |achieve 4602/14
All You Can Eat (10 player) |achieve 4602/15
Been Waiting a Long Time for This (10 player) |achieve 4602/16
step
Congratulations, you have earned the Glory of the Icecrown Raider (10 Player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Icecrown Raider (25 Player)",{
achieveid={4603},
description="This guide will walk you through obtaining the Glory of the Icecrown Raider (25 Player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use the achievement guides to accomplish this.
Heroic: Storming the Citadel (25 player) |achieve 4603/1
Heroic: The Plagueworks (25 player) |achieve 4603/2
Heroic: The Crimson Hall (25 player) |achieve 4603/3
Heroic: The Frostwing Halls (25 player) |achieve 4603/4
Boned (25 player) |achieve 4603/5
Full House (25 player) |achieve 4603/6
I'm on a Boat (25 player) |achieve 4603/7
I've Gone and Made a Mess (25 player) |achieve 4603/8
Dances with Oozes (25 player) |achieve 4603/9
Flu Shot Shortage (25 player) |achieve 4603/10
Nausea, Heartburn, Indigestion... (25 player) |achieve 4603/11
The Orb Whisperer (25 player) |achieve 4603/12
Once Bitten, Twice Shy (25 player) |achieve 4603/13
Portal Jockey (25 player) |achieve 4603/14
All You Can Eat (25 player) |achieve 4603/15
Been Waiting a Long Time for This (25 player) |achieve 4603/16
Neck-Deep in Vile (25 player) |achieve 4603/17
step
Congratulations, you have earned the Glory of the Icecrown Raider (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (10 player)",{
achieveid={2137},
description="This guide will walk you through earning the Glory of the Raider (10 player) achievement.",
},[[
step
This achievement is earned by completing the following raid achievements:
|tip Use our achievement guides to accomplish this.
The Dedicated Few (10 player) |achieve 2137/1
Arachnophobia (10 player) |achieve 2137/2
Make Quick Werk of Him (10 player) |achieve 2137/3
The Safety Dance (10 player) |achieve 2137/4
Momma Said Knock You Out (10 player) |achieve 2137/5
Shocking! (10 player) |achieve 2137/6
Subtraction (10 player) |achieve 2137/7
The Spellweaver's Downfall (10 player) |achieve 2137/8
You Don't Have an Eternity (10 player) |achieve 2137/9
A Poke in the Eye (10 player) |achieve 2137/10
Gonna Go When the Volcano Blows (10 player) |achieve 2137/11
The Twilight Zone (10 player) |achieve 2137/12
The Hundred Club  (10 player) |achieve 2137/13
And They Would All Go Down Together (10 player) |achieve 2137/14
Denyin' the Scion (10 player) |achieve 2137/15
Just Can't Get Enough  (10 player) |achieve 2137/16
step
Congratulations, you have earned the Glory of the Raider (10 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Raider (25 player)",{
achieveid={2138},
description="This guide will walk you through earning the Glory of the Raider (25 player) achievement.",
},[[
step
This achievement is gained by completing the following raid achievements:
|tip Use our achievement guides to accomplish this.
The Dedicated Few (25 player) |achieve 2138/1
Arachnophobia (25 player) |achieve 2138/2
Make Quick Werk of Him (25 player) |achieve 2138/3
The Safety Dance (25 player) |achieve 2138/4
Momma Said Knock You Out (25 player) |achieve 2138/5
Shocking! (25 player) |achieve 2138/6
And They Would All Go Down Together (25 player) |achieve 2138/7
Subtraction (25 player) |achieve 2138/8
The Spellweaver's Downfall (25 player) |achieve 2138/9
You Don't Have an Eternity (25 player) |achieve 2138/10
A Poke in the Eye (25 player) |achieve 2138/11
Gonna Go When the Volcano Blows (25 player) |achieve 2138/12
Denyin' the Scion (25 player) |achieve 2138/13
The Twilight Zone (25 player) |achieve 2138/14
The Hundred Club (25 player) |achieve 2138/15
Just Can't Get Enough (25 player) |achieve 2138/16
step
Congratulations, you have earned the Glory of the Raider (25 player) achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Glory of the Ulduar Raider",{
condition_end="achieved(12401)",
description="This guide will walk you through earning the \"Glory of the Ulduar Raider\" achievement.",
},[[
step
kill Flame Leviathan##33113
Click here to load the "Orbit-uary" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Orbit-uary"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Orbit-uary_ achievement |achieve 12401/1 |goto Ulduar/1 49,40
step
kill Ignis the Furnace Master##33118
Click here to load the "Stokin' the Furnace" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Stokin' the Furnace"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Stokin' the Furnace_ achievement |achieve 12401/2 |goto 37.5,26.5
step
kill Razorscale##33186
Click here to load the "Iron Dwarf, Medium Rare" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Iron Dwarf, Medium Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Iron Dwarf, Medium Rare_ achievement |achieve 12401/3 |goto 54.1,26.3
step
kill XT-002 Deconstructor##33293
Click here to load the "Heartbreaker" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Heartbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Heartbreaker_ achievement |achieve 12401/4 |goto 48.5,13.9
step
Kill the Assembly of Iron
Click here to load the "I Choose You, Steelbreaker" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Choose You, Steelbreaker"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Choose You, Steelbreaker_ achievement |achieve 12401/5 |goto Ulduar/2 15,56
step
kill Kologarn##32930
Click here to load the "Disarmed" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Disarmed"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Disarmed_ achievement |achieve 12401/6 |goto 37.3,14.0
step
kill Auriaya##33515
Click here to load the "Crazy Cat Lady" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Crazy Cat Lady"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Crazy Cat Lady_ achievement |achieve 12401/7 |goto Ulduar/3 52.90,74.15
step
kill Hodir##32845
Click here to load the "I Could Say That This Cache Was Rare" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Could Say That This Cache Was Rare"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Could Say That This Cache Was Rare_ achievement |achieve 12401/8 |goto 66.0,63.7
step
kill Thorim##32865
Click here to load the "Lose Your Illusion" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Lose Your Illusion"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Lose Your Illusion_ achievement |achieve 12401/9 |goto 70.32,48.82
step
kill Freya##32906
Click here to load the "Knock, Knock, Knock on Wood" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Knock, Knock, Knock on Wood"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Knock, Knock, Knock on Wood_ achievement |achieve 12401/10 |goto 53,23
step
kill Mimiron##33350
Click here to load the "Firefighter" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\Firefighter"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _Firefighter_ achievement |achieve 12401/11 |goto Ulduar/5 43.6,41.1
step
kill General Vezax##33271
Click here to load the "I Love the Smell of Saronite in the Morning" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\I Love the Smell of Saronite in the Morning"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _I Love the Smell of Saronite in the Morning_ achievement |achieve 12401/12 |goto Ulduar/4 52.6,57.1
step
kill Yogg-Saron##33288
Click here to load the "One Light in the Darkness" achievement guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Raid\\One Light in the Darkness"
|tip You must earn this achievement as part of the Glory of the Ulduar Raider criteria.
Earn the _One Light in the Darkness_ achievement |achieve 12401/13 |goto 68,40.8
step
Congratulations!
You have earned the _Glory of the Ulduar Raider_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Looking For Many",{
achieveid={4477},
description="This guide will walk you through earning the Looking For Many achievement.",
},[[
step
Use the Dungeon Finder tool to complete _Heroic Dungeons_ with random players
|tip Press I to open the LFG Group Finder Tool.
Group with #50# Random Players |achieve 4477/1
step
Congratulations, you have earned the Looking For Many achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Looking For More",{
achieveid={4476},
description="This guide will walk you through earning the Looking For More achievement.",
},[[
step
Use the Dungeon Finder tool to complete _Heroic Dungeons_ with random players
|tip Press I to open the LFG Group Finder Tool.
Group with #10# Random Players |achieve 4476/1
step
Congratulations, you have earned the Looking For More achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Looking For Multitudes",{
achieveid={4478},
description="This guide will walk you through earning the Looking For Multitudes achievement.",
},[[
step
Use the Dungeon Finder tool to complete _Heroic Dungeons_ with random players
|tip Press I to open the LFG Group Finder Tool.
Group with #100# Random Players |achieve 4478/1
step
Congratulations, you have earned the Looking For Multitudes achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Northrend Dungeon Hero",{
achieveid={1289},
description="This guide will walk you through how to get the Northrend Dungeon Hero achievement.",
},[[
step
Complete the following _Northrend dungeons in Heroic mode_:
|tip Use the dungeon guides to accomplish this.
Heroic: Utgarde Keep |achieve 1289/1
Heroic: The Nexus |achieve 1289/2
Heroic: The Culling of Stratholme |achieve 1289/3
Heroic: Azjol-Nerub |achieve 1289/4
Heroic: Ahn'kahet: The Old Kingdom |achieve 1289/5
Heroic: Drak'Tharon Keep |achieve 1289/6
Heroic: The Violet Hold |achieve 1289/7
Heroic: Gundrak |achieve 1289/8
Heroic: Halls of Stone |achieve 1289/9
Heroic: Halls of Lightning |achieve 1289/10
Heroic: The Oculus |achieve 1289/11
Heroic: Utgarde Pinnacle |achieve 1289/12
step
Congratulations, you have earned the Northrend Dungeon Hero achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Northrend Dungeonmaster",{
achieveid={1288},
description="This guide will walk you through how to get the Northrend Dungeonmaster achievement.",
},[[
step
Complete the following Northrend dungeons:
|tip Use the dungeon guides to accomplish this.
Utgarde Keep |achieve 1288/1
The Nexus |achieve 1288/2
The Culling of Stratholme |achieve 1288/3
Azjol-Nerub |achieve 1288/4
Ahn'kahet: The Old Kingdom |achieve 1288/5
Drak'Tharon Keep |achieve 1288/6
The Violet Hold |achieve 1288/7
Gundrak |achieve 1288/8
Halls of Stone |achieve 1288/9
Halls of Lightning |achieve 1288/10
The Oculus |achieve 1288/11
Utgarde Pinnacle |achieve 1288/12
step
Congratulations, you have earned the Northrend Dungeonmaster achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Outland Dungeon Hero",{
achieveid={1287},
description="This guide will walk you through how to get the Outland Dungeon Hero achievement.",
},[[
step
Complete the following Heroic Burning Crusade dungeons:
|tip Use the dungeon guides to accomplish this.
Heroic: Hellfire Ramparts |achieve 1287/1
Heroic: The Blood Furnace |achieve 1287/2
Heroic: The Slave Pens |achieve 1287/3
Heroic: Underbog |achieve 1287/4
Heroic: Mana-Tombs |achieve 1287/5
Heroic: The Escape From Durnholde |achieve 1287/6
Heroic: Sethekk Halls |achieve 1287/7
Heroic: Shadow Labyrinth |achieve 1287/8
Heroic: Opening of the Dark Portal |achieve 1287/9
Heroic: The Steamvault |achieve 1287/10
Heroic: The Shattered Halls |achieve 1287/11
Heroic: The Mechanar |achieve 1287/12
Heroic: The Botanica |achieve 1287/13
Heroic: The Arcatraz |achieve 1287/14
Heroic: Magister's Terrace |achieve 1287/15
Heroic: Auchenai Crypts |achieve 1287/16
step
Congratulations, you have earned the Outland Dungeon Hero achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Outland Dungeonmaster",{
achieveid={1284},
description="This guide will walk you through how to get the Outland Dungeonmaster achievement.",
},[[
step
Complete the following Burning Crusade dungeons:
|tip Use the dungeon guides to accomplish this.
Hellfire Ramparts |achieve 1284/1
The Blood Furnace |achieve 1284/2
The Slave Pens |achieve 1284/3
Underbog |achieve 1284/4
Mana-Tombs |achieve 1284/5
Escape From Durnholde |achieve 1284/6
Sethekk Halls |achieve 1284/7
Shadow Labyrinth |achieve 1284/8
Opening of the Dark Portal |achieve 1284/9
The Steamvault |achieve 1284/10
The Shattered Halls |achieve 1284/11
The Mechanar |achieve 1284/12
The Botanica |achieve 1284/13
The Arcatraz |achieve 1284/14
Magister's Terrace |achieve 1284/15
Auchenai Crypts |achieve 1284/16
step
Congratulations, you have earned the Outland Dungeonmaster achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Outland Raider",{
achieveid={1286},
description="This guide will walk you through how to get the Outland Raider achievement.",
},[[
step
Complete the following Burning Crusade raids:
|tip Use the raid guides to accomplish this.
Karazhan |achieve 1286/1
Gruul's Lair |achieve 1286/2
Magtheridon's Lair |achieve 1286/3
Serpentshrine Cavern |achieve 1286/4
The Battle for Mount Hyjal |achieve 1286/5
Tempest Keep |achieve 1286/6
The Black Temple |achieve 1286/7
Sunwell Plateau |achieve 1286/8
step
Congratulations, you have earned the Outland Raider achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Eastern Kingdoms\\Eastern Kingdoms Explorer",{
condition_end=function() return achieved(42) end,
achieveid={4825,4864,4866,775,761,765,766,775,627,778,772,779,780,768,859,774,769,858,781,4995,782,773,802,841,777,770,771,868,776,42},
description="Explore all regions of Eastern Kingdoms.",
},[[
step
Discover Booty Bay |achieve 4995/1 |goto The Cape of Stranglethorn 39.7,71.0
step
Discover The Wild Shore |achieve 4995/10 |goto The Cape of Stranglethorn 43.5,81.4
step
Discover Jaquero Isle |achieve 4995/5 |goto The Cape of Stranglethorn 60.8,81.6
step
Discover Mistvale Valley |achieve 4995/6 |goto The Cape of Stranglethorn 50.5,58.1
step
Discover Nek'mani Wellspring |achieve 4995/7 |goto The Cape of Stranglethorn 43.0,49.1
step
Discover Hardwrench Hideaway |achieve 4995/4 |goto The Cape of Stranglethorn 34.1,32.4
step
Discover Gurubashi Arena |achieve 4995/3 |goto The Cape of Stranglethorn 46.3,22.5
step
Discover Ruins of Jubuwal |achieve 4995/9 |goto The Cape of Stranglethorn 54.4,30.3
step
Discover Ruins of Aboraz |achieve 4995/8 |goto The Cape of Stranglethorn 62.2,43.7
step
Discover Crystalvein Mine |achieve 4995/2 |goto The Cape of Stranglethorn 62.4,28.1
step
Explore The Cape of Stranglethorn |achieve 4995
step
Discover Lake Nazferiti |achieve 781/12 |goto Northern Stranglethorn 51.48,34.05
step
Discover Fort Livingston |achieve 781/4 |goto Northern Stranglethorn 53.2,66.0
step
Discover Balia'mah Ruins |achieve 781/2 |goto Northern Stranglethorn 59.0,55.2
step
Discover Mosh'Ogg Ogre Mound |achieve 781/11 |goto Northern Stranglethorn 66.9,50.9
step
Discover Bambala |achieve 781/3 |goto Northern Stranglethorn 64.7,39.7
step
Discover Zul'Gurub |achieve 781/16 |goto Northern Stranglethorn 83.9,32.5
step
Discover Kurzen's Compound |achieve 781/8 |goto Northern Stranglethorn 60.2,19.9
step
Discover Rebel Camp |achieve 781/7 |goto Northern Stranglethorn 46.7,9.5
step
Discover Nesingwary's Expedition |achieve 781/6 |goto Northern Stranglethorn 44.1,19.8
step
Discover Kal'ai Ruins |achieve 781/9 |goto Northern Stranglethorn 42.2,38.4
step
Discover Mizjah Ruins |achieve 781/10 |goto Northern Stranglethorn 46.1,52.9
step
Discover Grom'gol Base Camp |achieve 781/1 |goto Northern Stranglethorn 37.8,48.4
step
Discover The Vile Reef |achieve 781/14 |goto Northern Stranglethorn 33.0,42.5
step
Discover Bal'lal Ruins |achieve 781/13 |goto Northern Stranglethorn 34.3,36.2
step
Discover Zuuldaia Ruins |achieve 781/5 |goto Northern Stranglethorn 19.2,25.6
step
Discover Ruins of Zul'Kunda |achieve 781/15 |goto Northern Stranglethorn 26.4,20.2
step
Explore Northern Stranglethorn |achieve 781 |goto Northern Stranglethorn
step
Discover The Dagger Hills |achieve 802/11 |goto Westfall 44.9,82.0
step
Discover Demont's Place |achieve 802/10 |goto Westfall 33.9,73.6
step
Discover Moonbrook |achieve 802/8 |goto Westfall 42.4,65.5
step
Discover Alexston Farmstead |achieve 802/9 |goto Westfall 38.2,52.3
step
Discover The Raging Chasm |achieve 802/12 |goto Westfall 39.2,43.2
step
Discover the Molsen Farm |achieve 802/6 |goto Westfall 45.3,34.9
step
Discover Jangolode Mine |achieve 802/5 |goto Westfall 44.9,23.9
step
Discover Furlbrow's Pumpkin Farm |achieve 802/3 |goto Westfall 51.0,21.4
step
Discover The Jansen Stead |achieve 802/4 |goto Westfall 57.7,15.8
step
Discover Saldean's Farm |achieve 802/2 |goto Westfall 54.4,32.3
step
Discover Sentinel Hill |achieve 802/1 |goto Westfall 55.9,49.3
step
Discover The Dead Acre |achieve 802/7 |goto Westfall 61.5,59.2
step
Discover The Dust Plains |achieve 802/13 |goto Westfall 64,72
step
Explore Westfall |achieve 802
step
Discover The Hushed Bank |achieve 778/1 |goto Duskwood 10.1,44.3
step
Discover Raven Hill Cemetery |achieve 778/4 |goto Duskwood 19.6,41.3
step
Discover Raven Hill |achieve 778/3 |goto Duskwood 19.8,55.2
step
Discover Addle's Stead |achieve 778/2 |goto Duskwood 21.4,69.9
step
Discover Vul'Gol Ogre Mound |achieve 778/5 |goto Duskwood 35.8,72.7
step
Discover The Yorgen Farmstead |achieve 778/7 |goto Duskwood 51.0,74.0
step
Discover The Rotting Orchard |achieve 778/9 |goto Duskwood 63.8,71.9
step
Discover Twilight Grove |achieve 778/6 |goto Duskwood 46.8,38.6
step
Discover The Darkened Bank |achieve 778/13 |goto Duskwood 54.6,21.2
step
Discover Brightwood Grove |achieve 778/8 |goto Duskwood 64.7,37.7
step
Discover Manor Mistmantle |achieve 778/12 |goto Duskwood 77.1,35.9
step
Discover Darkshire |achieve 778/11 |goto Duskwood 74.5,46.2
step
Discover Tranquil Gardens Cemetery |achieve 778/10 |goto Duskwood 79.7,66.1
step
Explore Duskwood |achieve 778
step
Discover Deadman's Crossing |achieve 777/1 |goto Deadwind Pass 45.1,35.8
step
Discover Karazhan |achieve 777/3 |goto Deadwind Pass 42.6,68.8
step
Discover The Vice |achieve 777/2 |goto Deadwind Pass 58.6,64.7
step
Explore Deadwind Pass |achieve 777
step
Discover Dreadmaul Hold |achieve 766/1 |goto Blasted Lands 39.5,12.9
step
Discover Rise of the Defiler |achieve 766/9 |goto Blasted Lands 45.1,26.7
step
Discover the Altar of Storms |achieve 766/6 |goto Blasted Lands 39,32
step
Discover Dreadmaul Post |achieve 766/7 |goto Blasted Lands 47.1,40.1
step
Discover The Tainted Scar |achieve 766/8 |goto Blasted Lands 32.3,45.7
step
Discover The Tainted Forest |achieve 766/14 |goto Blasted Lands 34.2,72.3
step
Discover Surwich |achieve 766/12 |goto Blasted Lands 44.5,86.1
step
Discover Sunveil Excursion |achieve 766/11 |goto Blasted Lands 50.7,70.9
step
Discover The Red Reaches |achieve 766/13 |goto Blasted Lands 65.8,78.0
step
Discover The Dark Portal |achieve 766/5 |goto Blasted Lands 54.4,52.9
step
Discover Shattershore |achieve 766/10 |goto Blasted Lands 69.1,33.5
step
Discover Serpent's Coil |achieve 766/4 |goto Blasted Lands 60.3,28.4
step
Discover Nethergarde Keep |achieve 766/3 |goto Blasted Lands 64.3,15.8
step
Discover Nethergarde Supply Camps |achieve 766/2 |goto 52.61,18.63
step
Explore Blasted Lands |achieve 766
step
Discover Stagalbog |achieve 782/7 |goto Swamp of Sorrows 67.8,74.9
step
Discover Sorrowmurk |achieve 782/8 |goto Swamp of Sorrows 84.2,38.9
step
Discover Misty Reed Strand |achieve 782/10 |goto Swamp of Sorrows 77.3,13.7
step
Discover Bogpaddle |achieve 782/9 |goto Swamp of Sorrows 72.3,12.8
step
Discover Marshtide Watch |achieve 782/12 |goto Swamp of Sorrows 68.4,35.8
step
Discover Pool of Tears |achieve 782/6 |goto Swamp of Sorrows 62.6,50.0
step
Discover The Shifting Mire |achieve 782/4 |goto Swamp of Sorrows 48.8,42.1
step
Discover Stonard |achieve 782/5 |goto Swamp of Sorrows 47.1,54.2
step
Discover Purespring Cavern |achieve 782/11 |goto Swamp of Sorrows 18.6,68.1
step
Discover Splinterspear Junction |achieve 782/3 |goto Swamp of Sorrows 22.3,49.4
step
Discover Misty Valley |achieve 782/1 |goto Swamp of Sorrows 14.7,35.8
step
Discover The Harborage |achieve 782/2 |goto Swamp of Sorrows 28.8,32.1
step
Explore Swamp of Sorrows |achieve 782
step
Discover Lakeridge Highway |achieve 780/4 |goto Redridge Mountains 38.2,68.5
step
Discover Lake Everstill |achieve 780/2 |goto Redridge Mountains 41.9,52.6
step
Discover Camp Everstill |achieve 780/13 |goto Redridge Mountains 53.4,54.7
step
Discover Stonewatch Keep |achieve 780/10 |goto Redridge Mountains 60.9,52.5
step
Discover Render's Valley |achieve 780/8 |goto Redridge Mountains 64.7,71.3
step
Discover Shalewind Canyon |achieve 780/12 |goto Redridge Mountains 81.0,62.4
step
Discover Stonewatch Falls |achieve 780/7 |goto Redridge Mountains 71.25,54.57
step
Discover Galardell Valley |achieve 780/11 |goto Redridge Mountains 70.28,34.66
step
Discover Alther's Mill |achieve 780/6 |goto Redridge Mountains 47.2,39.2
step
Discover Render's Camp |achieve 780/9 |goto Redridge Mountains 35.1,12.8
step
Discover Redridge Canyons |achieve 780/5 |goto Redridge Mountains 30.2,26.1
step
Discover Lakeshire |achieve 780/1 |goto Redridge Mountains 25.5,43.4
step
Discover Three Corners |achieve 780/3 |goto Redridge Mountains 19.7,59.1
step
Explore Redridge Mountains |achieve 780
step
Discover Eastvale Logging Camp |achieve 776/8 |goto Elwynn Forest 83.5,66.9
step
Discover Ridgepoint Tower |achieve 776/9 |goto Elwynn Forest 84.8,79.4
step
Discover Brackwell Pumpkin Patch |achieve 776/7 |goto Elwynn Forest 69.4,79.4
step
Discover Tower of Azora |achieve 776/6 |goto Elwynn Forest 64.6,69.3
step
Discover Crystal Lake |achieve 776/10 |goto Elwynn Forest 52.9,66.2
step
Discover Jerod's Landing |achieve 776/5 |goto Elwynn Forest 48.5,85.8
step
Discover Fargodeep Mine |achieve 776/4 |goto Elwynn Forest 39.5,80.3
step
Discover Westbrook Garrison |achieve 776/2 |goto Elwynn Forest 24.5,73.3
step
Discover Goldshire |achieve 776/3 |goto Elwynn Forest 42.1,64.7
step
Discover Northshire Valley |achieve 776/1 |goto Elwynn Forest 50.4,42.5
step
Discover Stone Cairn Lake |achieve 776/11 |goto Elwynn Forest 74.0,51.5
step
Explore Elwynn Forest |achieve 776
step
Discover Blackrock Pass |achieve 775/4 |goto Burning Steppes 66.7,77.5
step
Discover Morgan's Vigil |achieve 775/2 |goto Burning Steppes 73.5,68.0
step
Discover Terror Wing Path |achieve 775/3 |goto Burning Steppes 73.9,53.4
step
Discover Dreadmaul Rock |achieve 775/1 |goto Burning Steppes 69.7,40.5
step
Discover Ruins of Thaurissan |achieve 775/5 |goto Burning Steppes 56.6,37.4
step
Discover Black Tooth Hovel |achieve 775/6 |goto Burning Steppes 36.1,53.5
step
Discover The Whelping Downs |achieve 775/8 |goto Burning Steppes 24.3,57.7
step
Discover Blackrock Stronghold |achieve 775/7 |goto Burning Steppes 32.3,36.5
step
Discover Blackrock Mountain |achieve 775/10 |goto Burning Steppes 20.7,29.2
step
Discover Altar of Storms |achieve 775/9 |goto Burning Steppes 9.4,27.5
step
Explore Burning Steppes |achieve 775
step
Discover Lethlor Ravine |achieve 765/1 |goto Badlands 68.0,48.2
step
Discover Camp Kosh |achieve 765/8 |goto Badlands 60.1,20.7
step
Discover Uldaman |achieve 765/3 |goto Badlands 38.3,11.6
step
Discover Angor Fortress |achieve 765/7 |goto Badlands 41.1,26.5
step
Discover The Dustbowl |achieve 765/6 |goto Badlands 27.4,38.0
step
Discover New Kargath |achieve 765/10 |goto Badlands 17.7,41.7
step
Discover Camp Cagg |achieve 765/4 |goto Badlands 17.2,63.0
step
Discover Scar of the Worldbreaker |achieve 765/5 |goto Badlands 31.7,54.6
step
Discover Agmond's End |achieve 765/2 |goto Badlands 46.5,57.4
step
Discover Bloodwatcher Point |achieve 765/9 |goto Badlands 52.3,51.2
step
Explore Badlands |achieve 765
step
Discover Blackrock Mountain |achieve 774/8 |goto Searing Gorge 39.9,82.9
step
Discover The Sea of Cinders |achieve 774/4 |goto Searing Gorge 48,70
step
Discover Blackchar Cave |achieve 774/3 |goto Searing Gorge 21.2,80.1
step
Discover Firewatch Ridge |achieve 774/1 |goto Searing Gorge 23.8,31.8
step
Discover Thorium Point |achieve 774/7 |goto Searing Gorge 37.7,29.9
step
Discover The Cauldron |achieve 774/2 |goto Searing Gorge 52.7,49.6
step
Discover Dustfire Valley |achieve 774/6 |goto Searing Gorge 71.8,26.8
step
Discover Grimesilt Dig Site |achieve 774/5 |goto Searing Gorge 62,62.3
step
Explore Searing Gorge |achieve 774
step
Discover Helm's Bed Lake |achieve 627/10 |goto Dun Morogh 84.1,51.8
step
Discover Gol'Bolar Quarry |achieve 627/11 |goto Dun Morogh 76.5,57.2
step
Discover Amberstill Ranch |achieve 627/9 |goto Dun Morogh 71.5,46.2
step
Discover The Tundrid Hills |achieve 627/8 |goto Dun Morogh 67.2,53.9
step
Discover Frostmane Front |achieve 627/3 |goto Dun Morogh 58.6,57.7
step
Discover Kharanos |achieve 627/7 |goto Dun Morogh 53.6,50.5
step
Discover Coldridge Pass |achieve 627/1 |goto Dun Morogh 43.9,64.5
step
Discover Coldridge Valley |achieve 627/2 |goto Dun Morogh 34.6,75.6
step
Discover Frostmane Hold |achieve 627/13 |goto Dun Morogh 31.5,51.9
step
Discover New Tinkertown |achieve 627/4 |goto Dun Morogh 33.8,37.5
step
Discover Iceflow Lake |achieve 627/14 |goto Dun Morogh 41.4,40.2
step
Discover Shimmer Ridge |achieve 627/6 |goto Dun Morogh 48.3,37.9
step
Discover Gates of Ironforge |achieve 627/15 |goto Dun Morogh 59.6,33.8
step
Discover Ironforge Airfield |achieve 627/5 |goto Dun Morogh 78.0,24.2
step
Discover North Gate Outpost |achieve 627/12 |goto Dun Morogh 90.3,37.6
step
Explore Dun Morogh |achieve 627
step
Discover Valley of Kings |achieve 779/11 |goto Loch Modan 20.3,78.5
step
Discover Stonesplinter Valley |achieve 779/10 |goto Loch Modan 32.5,78.3
step
Discover Grizzlepaw Ridge |achieve 779/8 |goto Loch Modan 38.0,60.7
step
Discover Thelsamar |achieve 779/9 |goto Loch Modan 35.2,47.6
step
Discover Ironband's Excavation Site |achieve 779/7 |goto Loch Modan 69.4,65.3
step
Discover The Farstrider Lodge |achieve 779/6 |goto Loch Modan 82.3,65.0
step
Discover Mo'grosh Stronghold |achieve 779/3 |goto Loch Modan 71.0,23.8
step
Discover The Loch |achieve 779/1 |goto Loch Modan 48.40,17.55
step
Discover Stonewrought Dam |achieve 779/2 |goto Loch Modan 48.0,11.4
step
Discover Silver Stream Mine |achieve 779/4 |goto Loch Modan 34.8,21.5
step
Discover North Gate Pass |achieve 779/5 |goto Loch Modan 20.2,17.1
step
Explore Loch Modan |achieve 779
step
Discover Raptor Ridge |achieve 841/16 |goto Wetlands 67.9,34.9
step
Discover Direforge Hill |achieve 841/13 |goto Wetlands 60.87,25.46
step
Discover Greenwarden's Grove |achieve 841/11 |goto Wetlands 57.9,40.6
step
Discover Mosshide Fen |achieve 841/12 |goto Wetlands 61.9,56.6
step
Discover Slabchisel's Survey |achieve 841/15 |goto Wetlands 58.4,71.0
step
Discover Dun Algaz |achieve 841/14 |goto Wetlands 50.0,76.4
step
Discover Thelgen Rock |achieve 841/10 |goto Wetlands 52.2,61.4
step
Discover Angerfang Encampment |achieve 841/9 |goto Wetlands 48.5,48.0
step
Discover Whelgar's Excavation Site |achieve 841/4 |goto Wetlands 35.8,48.9
step
Discover Menethil Harbor |achieve 841/1 |goto Wetlands 10.2,58.2
step
Discover Black Channel Marsh |achieve 841/2 |goto Wetlands 19.3,46.9
step
Discover Bluegill Marsh |achieve 841/3 |goto Wetlands 18.9,36.0
step
Discover Sundown Marsh |achieve 841/5 |goto Wetlands 24.5,24.3
step
Discover Saltspray Glen |achieve 841/6 |goto Wetlands 32.5,17.6
step
Discover Ironbeard's Tomb |achieve 841/7 |goto Wetlands 43.6,25.9
step
Discover Dun Modr |achieve 841/8 |goto Wetlands 46.9,16.5
step
Explore Wetland |achieve 841
step
Discover Thandol Span |achieve 761/8 |goto Arathi Highlands 41.3,91.0
step
Discover Boulderfist Hall |achieve 761/9 |goto Arathi Highlands 49.1,78.9
step
Discover Witherbark Village |achieve 761/12 |goto Arathi Highlands 61.6,70.3
step
Discover Go'Shek Farm |achieve 761/13 |goto Arathi Highlands 56.4,57.6
step
Discover Hammerfall |achieve 761/16 |goto Arathi Highlands 69.3,37.2
step
Discover Circle of East Binding |achieve 761/15 |goto Arathi Highlands 59.3,32.8
step
Discover Dabyrie's Farmstead |achieve 761/14 |goto Arathi Highlands 49.9,41.3
step
Discover Circle of Outer Binding |achieve 761/11 |goto Arathi Highlands 47.3,51.4
step
Discover Refuge Pointe |achieve 761/10 |goto Arathi Highlands 39.8,46.4
step
Discover Circle of Inner Binding |achieve 761/7 |goto Arathi Highlands 30.1,59.3
step
Discover Faldir's Cove |achieve 761/6 |goto Arathi Highlands 23.8,81.8
step
Discover Stromgarde Keep |achieve 761/5 |goto Arathi Highlands 16.5,64.1
step
Discover Boulder'gor |achieve 761/3 |goto Arathi Highlands 27.5,44.2
step
Discover Northfold Manor |achieve 761/2 |goto Arathi Highlands 27.0,27.1
step
Discover Circle of West Binding |achieve 761/1 |goto Arathi Highlands 18.97,30.99
step
Discover Galen's Fall |achieve 761/4 |goto Arathi Highlands 13.0,36.4
step
Explore Arathi Highlands |achieve 761
step
Discover Durnholde Keep |achieve 772/10 |goto Hillsbrad Foothills 68.3,60.0
step
Discover Chillwind Point |achieve 772/5 |goto Hillsbrad Foothills 68.1,32.9
step
Discover Sofera's Naze |achieve 772/20 |goto Hillsbrad Foothills 55.6,38.5
step
Discover Strahnbrad |achieve 772/22 |goto Hillsbrad Foothills 58.3,23.4
step
Discover Crushridge Hold |achieve 772/4 |goto Hillsbrad Foothills 50.16,24.37
step
Discover Slaughter Hollow |achieve 772/19 |goto Hillsbrad Foothills 49.43,18.88
step
Discover The Uplands |achieve 772/26 |goto Hillsbrad Foothills 52.4,12.6
step
Discover Dandred's Fold |achieve 772/7 |goto Hillsbrad Foothills 44.9,9.1
step
Discover Ruins of Alterac |achieve 772/17 |goto Hillsbrad Foothills 45.3,29.0
step
Discover Growless Cave |achieve 772/13 |goto Hillsbrad Foothills 43.2,38.5
step
Discover Gallows' Corner |achieve 772/11 |goto Hillsbrad Foothills 49.88,32.59
step
Discover Tarren Mill |achieve 772/23 |goto Hillsbrad Foothills 56.7,46.9
step
Discover Corrahn's Dagger |achieve 772/3 |goto Hillsbrad Foothills 49.6,46.7
step
Discover Nethander Stead |achieve 772/15 |goto Hillsbrad Foothills 57.51,74.96
step
Discover Dun Garok |achieve 772/9 |goto Hillsbrad Foothills 62.83,84.80
step
Discover Ruins of Southshore |achieve 772/18 |goto Hillsbrad Foothills 48.97,71.89
step
Discover Darrow Hill |achieve 772/8 |goto Hillsbrad Foothills 46.3,54.1
step
Discover The Headland |achieve 772/24 |goto Hillsbrad Foothills 44.2,48.6
step
Discover Gavin's Naze |achieve 772/12 |goto Hillsbrad Foothills 40.0,47.6
step
Discover Misty Shore |achieve 772/14 |goto Hillsbrad Foothills 35.06,26.14
step
Discover Brazie Farmstead |achieve 772/2 |goto Hillsbrad Foothills 33.8,46.5
step
Discover Dalaran Crater |achieve 772/6 |goto Hillsbrad Foothills 30.4,36.2
step
Discover Southpoint Gate |achieve 772/21 |goto Hillsbrad Foothills 29.5,63.6
step
Discover The Sludge Fields |achieve 772/25 |goto Hillsbrad Foothills 36.56,58.04
step
Discover Azurelode Mine |achieve 772/1 |goto Hillsbrad Foothills 34.0,73.8
step
Discover Purgation Isle |achieve 772/16 |goto Hillsbrad Foothills 27.0,85.6
step
Explore Hillsbrad Foothills |achieve 772
step
Discover The Battlefront |achieve 769/1 |goto Silverpine Forest 46.1,79.5
step
Discover Shadowfang Keep |achieve 769/12 |goto Silverpine Forest 42.2,63.2
step
Discover The Forsaken Front |achieve 769/3 |goto Silverpine Forest 50.9,66.6
step
Discover Ambermill |achieve 769/11 |goto Silverpine Forest 61.2,62.4
step
Discover Olsen's Farthing |achieve 769/10 |goto Silverpine Forest 46.1,51.0
step
Discover The Sepulcher |achieve 769/8 |goto Silverpine Forest 45.0,40.0
step
Discover North Tide's Beachead |achieve 769/5 |goto Silverpine Forest 37.3,28.0
step
Discover The Skittering Dark |achieve 769/4 |goto Silverpine Forest 34.8,12.4
step
Discover Forsaken Rear Guard |achieve 769/15 |goto Silverpine Forest 44.9,18.8
step
Discover North Tide's Run |achieve 769/14 |goto Silverpine Forest 44.66,21.64
step
Discover Valgan's Field |achieve 769/7 |goto Silverpine Forest 53.2,25.6
step
Discover The Decrepit Fields |achieve 769/2 |goto Silverpine Forest 56.5,34.7
step
Discover Deep Elem Mine |achieve 769/9 |goto Silverpine Forest 59.3,45.4
step
Discover Fenris Isle |achieve 769/6 |goto Silverpine Forest 69.1,26.8
step
Discover Forsaken High Command |achieve 769/13 |goto Silverpine Forest 62.0,8.7
step
Explore Silverpine Forest |achieve 769
step
Discover Deathknell |achieve 768/1 |goto Tirisfal Glades 32.2,63.8
step
Discover Nightmare Vale |achieve 768/4 |goto Tirisfal Glades 45.1,65.4
step
Discover Cold Hearth Manor |achieve 768/5 |goto Tirisfal Glades 53.8,58.7
step
Discover Calston Estate |achieve 768/16 |goto Tirisfal Glades 46.2,51.4
step
Discover Solliden Farmstead |achieve 768/2 |goto Tirisfal Glades 38.4,48.9
step
Discover Agamand Mills |achieve 768/3 |goto Tirisfal Glades 45.6,32.9
step
Discover Garren's Haunt |achieve 768/7 |goto Tirisfal Glades 56.9,35.6
step
Discover Brill |achieve 768/6 |goto Tirisfal Glades 59.7,50.9
step
Discover Brightwater Lake |achieve 768/8 |goto Tirisfal Glades 68.3,45.0
step
Discover Scarlet Watch Post |achieve 768/11 |goto Tirisfal Glades 78.4,26.9
step
Discover Scarlet Monastery Entrance |achieve 768/14 |goto Tirisfal Glades 85.08,31.34
step
Discover Venomweb Vale |achieve 768/12 |goto Tirisfal Glades 87.00,47.2
step
Discover Crusader Outpost |achieve 768/10 |goto Tirisfal Glades 79.1,54.7
step
Discover Balnir Farmstead |achieve 768/9 |goto Tirisfal Glades 73.7,60.0
step
Discover Ruins of Lordaeron |achieve 768/13 |goto Tirisfal Glades 61.87,67.55
step
Discover The Bulwark |achieve 768/15 |goto Tirisfal Glades 84.9,69.4
step
Explore Tirisfal Glades |achieve 768
step
Discover The Bulwark |achieve 770/5 |goto Western Plaguelands 27.0,57.7
step
Discover Felstone Field |achieve 770/6 |goto Western Plaguelands 36.5,54.6
step
Discover Dalson's Farm |achieve 770/7 |goto Western Plaguelands 45.1,51.2
step
Discover Redpine Dell |achieve 770/11 |goto Western Plaguelands 46.0,45.5
step
Discover Northridge Lumber Camp |achieve 770/9 |goto Western Plaguelands 47.2,33.4
step
Discover Hearthglen |achieve 770/10 |goto Western Plaguelands 44.9,17.0
step
Discover The Weeping Cave |achieve 770/13 |goto Western Plaguelands 64.4,40.1
step
Discover Thondroril River |achieve 770/14 |goto Western Plaguelands 69.6,50.7
step
Discover Gahrron's Withering |achieve 770/12 |goto Western Plaguelands 63.9,58.2
step
Discover The Writhing Haunt |achieve 770/8 |goto Western Plaguelands 54.9,66.2
step
Discover Andorhal |achieve 770/4 |goto Western Plaguelands 47.63,67.18
step
Discover Sorrow Hill |achieve 770/3 |goto Western Plaguelands 54.6,85.5
step
Discover Darrowmere Lake |achieve 770/1 |goto Western Plaguelands 60.03,74.66
step
Discover Caer Darrow |achieve 770/2 |goto Western Plaguelands 68.3,81.1
step
Explore Western Plaguelands |achieve 770
step
Discover Aerie Peak |achieve 773/1 |goto The Hinterlands 13.9,45.0
step
Discover Plaguemist Ravine |achieve 773/2 |goto The Hinterlands 23.1,33.5
step
Discover Zun'watha |achieve 773/3 |goto The Hinterlands 23.46,58.21
step
Discover Quel'Danil Lodge |achieve 773/4 |goto The Hinterlands 33.3,45.6
step
Discover Shadra'Alor |achieve 773/5 |goto The Hinterlands 34.6,72.0
step
Discover Valorwind Lake |achieve 773/6 |goto The Hinterlands 40.5,59.3
step
Discover The Altar of Zul |achieve 773/9 |goto The Hinterlands 48.4,66.9
step
Discover The Creeping Ruin |achieve 773/8 |goto The Hinterlands 49.0,52.1
step
Discover Agol'watha |achieve 773/7 |goto The Hinterlands 46.59,39.68
step
Discover Jintha'Alor |achieve 773/13 |goto The Hinterlands 63.1,74.7
step
Discover The Overlook Cliffs |achieve 773/14 |goto The Hinterlands 72.7,66.1
step
Discover Shaol'watha |achieve 773/12 |goto The Hinterlands 73.2,54.2
step
Discover Skulk Rock |achieve 773/11 |goto The Hinterlands 57.6,42.6
step
Discover Seradane |achieve 773/10 |goto The Hinterlands 62.7,24.1
step
Explore The Hinterlands |achieve 773
step
Discover Darrowshire |achieve 771/6 |goto Eastern Plaguelands 35.1,84.2
step
Discover The Undercroft |achieve 771/3 |goto Eastern Plaguelands 24.0,78.8
step
Discover The Marris Stead |achieve 771/2 |goto Eastern Plaguelands 22.6,66.0
step
Discover Thondroril River |achieve 771/1 |goto Eastern Plaguelands 08.63,66.20
step
Discover Terrordale |achieve 771/20 |goto Eastern Plaguelands 12.5,26.3
step
Discover Statholme |achieve 771/22 |goto Eastern Plaguelands 26.8,9.8
step
Discover Plaguewood |achieve 771/21 |goto Eastern Plaguelands 33.6,24.4
step
Discover The Fungal Vale |achieve 771/5 |goto Eastern Plaguelands 36.1,44.8
step
Discover Crown Guard Tower |achieve 771/4 |goto Eastern Plaguelands 35.7,68.5
step
Discover Lake Mereldar |achieve 771/9 |goto Eastern Plaguelands 57.4,74.1
step
Discover Corin's Crossing |achieve 771/8 |goto Eastern Plaguelands 55.6,62.9
step
Discover The Infectis Scar |achieve 771/12 |goto Eastern Plaguelands 48.90,62.25
step
Discover Blackwood Lake |achieve 771/15 |goto Eastern Plaguelands 46.3,43.5
step
Discover Quel'Lithien Lodge |achieve 771/19 |goto Eastern Plaguelands 48.1,13.1
step
Discover Northpass Tower |achieve 771/18 |goto Eastern Plaguelands 50.5,20.5
step
Discover Eastwall Tower |achieve 771/14 |goto Eastern Plaguelands 62.4,41.7
step
Discover Pestilent Scar |achieve 771/7 |goto Eastern Plaguelands 68.7,56.5
step
Discover Tyr's Hand |achieve 771/10 |goto Eastern Plaguelands 75.6,75.2
step
Discover Ruins of the Scarlet Enclave |achieve 771/23 |goto Eastern Plaguelands 87.1,78.5
step
Discover Light's Hope Chapel |achieve 771/11 |goto Eastern Plaguelands 76.8,53.9
step
Discover The Noxious Glade |achieve 771/13 |goto Eastern Plaguelands 78.1,35.8
step
Discover Northdale |achieve 771/16 |goto Eastern Plaguelands 66.1,25.0
step
Discover Zul'Mashar |achieve 771/17 |goto Eastern Plaguelands 66.4,10.3
step
Explore Eastern Plaguelands |achieve 771
step
Discover Thalassian Pass |achieve 858/16 |goto Ghostlands 48.2,84.3
step
Discover Deatholme |achieve 858/10 |goto Ghostlands 33.1,79.9
step
Discover Windrunner Spire |achieve 858/13 |goto Ghostlands 12.4,57.0
step
Discover Windrunner Village |achieve 858/4 |goto Ghostlands 17.9,41.4
step
Discover Goldenmist Village |achieve 858/3 |goto Ghostlands 25.0,15.0
step
Discover Sanctum of the Moon |achieve 858/5 |goto Ghostlands 33.4,32.2
step
Discover Bleeding Ziggurat |achieve 858/14 |goto Ghostlands 34.3,47.6
step
Discover Howling Ziggurat |achieve 858/9 |goto Ghostlands 40.4,49.8
step
Discover Tranquillien |achieve 858/1 |goto Ghostlands 47.12,32.8
step
Discover Sanctum of the Sun |achieve 858/6 |goto Ghostlands 54.7,49.7
step
Discover Zeb'Nowa |achieve 858/11 |goto Ghostlands 66.6,58.9
step
Discover Amani Pass |achieve 858/12 |goto Ghostlands 77.3,64.4
step
Discover Farstrider Enclave |achieve 858/8 |goto Ghostlands 77.2,32.1
step
Discover Dawnstar Spire |achieve 858/7 |goto Ghostlands 78.6,18.7
step
Discover Suncrown Village |achieve 858/2 |goto Ghostlands 60.46,11.7
step
Discover Elrendar Crossing |achieve 858/15 |goto Ghostlands 48.39,11.51
step
Explore Ghostlands |achieve 858
step
Discover The Scorched Grove |achieve 859/13 |goto Eversong Woods 36.2,86.0
step
Discover Runestone Falithas |achieve 859/19 |goto Eversong Woods 44.1,85.8
step
Discover Rusestone Shan'dor |achieve 859/20 |goto Eversong Woods 55.8,84.2
step
Discover Zeb'Watha |achieve 859/25 |goto Eversong Woods 62.2,79.3
step
Discover Lake Elrendar |achieve 859/18 |goto Eversong Woods 65.9,78.6
step
Discover Tor'Watha |achieve 859/12 |goto Eversong Woods 72.0,79.3
step
Discover Elreandar Falls |achieve 859/16 |goto Eversong Woods 64.6,73.1
step
Discover Farstrider Rereat |achieve 859/7 |goto Eversong Woods 61.2,63.7
step
Discover Stillwhisper Pond |achieve 859/8 |goto Eversong Woods 55.7,56.4
step
Discover Thuron's Livery |achieve 859/23 |goto Eversong Woods 60.6,54.2
step
Discover Duskwither Grounds |achieve 859/9 |goto Eversong Woods 69.27,46.54
step
Discover Azurebreeze Coast |achieve 859/15 |goto Eversong Woods 71.6,45.3
step
Discover Silvermoon City |achieve 859/14 |goto Eversong Woods 52.4,39.4
step
Discover Sunstrider Isle |achieve 859/1 |goto Eversong Woods 31.3,16.0
step
Discover Ruins of Silvermoon |achieve 859/2 |goto Eversong Woods 42.9,39.3
step
Discover North Sanctum |achieve 859/5 |goto Eversong Woods 42.7,50.4
step
Discover West Sanctum |achieve 859/3 |goto Eversong Woods 35.3,57.6
step
Discover Tranquil Shore |achieve 859/24 |goto Eversong Woods 28.5,57.8
step
Discover Sunsail Anchorage |achieve 859/4 |goto Eversong Woods 29.4,69.3
step
Discover Golden Strand |achieve 859/22 |goto Eversong Woods 23.5,74.8
step
Discover Goldenbough Pass |achieve 859/17 |goto Eversong Woods 33.4,77.6
step
Discover Saltheril's Haven |achieve 859/21 |goto Eversong Woods 38.3,73.5
step
Discover Fairbreeze Village |achieve 859/10 |goto Eversong Woods 43.9,73.7
step
Discover East Sanctum |achieve 859/6 |goto Eversong Woods 52.3,73.1
step
Discover The Living Wood |achieve 859/11 |goto Eversong Woods 54.2,71.9
step
Explore Eversong Woods |achieve 859
step
Explore Isle of Quel'Danas |achieve 868 |goto Isle of Quel'Danas 47.4,30.6
step
Congratulations!
You have earned the _Explore Eastern Kingdoms_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Kalimdor\\Kalimdor Explorer",{
condition_end=function() return achieved(43) end,
achieveid={46,4863,4865,728,736,842,860,750,857,4996,844,861,845,846,847,848,850,849,851,852,853,854,855,856,43},
description="Explore the regions of Kalimdor.",
},[[
step
Discover Orgrimmar |achieve 728/12 |goto Orgrimmar 45.4,8.5
step
Discover Skull Rock |achieve 728/11 |goto Durotar 54.0,9.0
step
Discover Drygulch Ravine |achieve 728/10 |goto Durotar 52.4,24.2
step
Discover Razor Hill |achieve 728/7 |goto Durotar 53.5,43.4
step
Discover Tiragarde Keep |achieve 728/6 |goto Durotar 58.1,60.2
step
Discover Echo Isles |achieve 728/5 |goto Durotar 66.6,82.9
step
Discover Sen'jin Village |achieve 728/4 |goto Durotar 56.1,75.8
step
Discover Northwatch Foothold |achieve 728/2 |goto Durotar 48.5,79.1
step
Discover Valley of Trials |achieve 728/1 |goto Durotar 44.5,62.2
step
Discover Razormane Grounds |achieve 728/8 |goto Durotar 44.6,50.6
step
Discover Southfury Watershed |achieve 728/3 |goto Durotar 40.5,40.0
step
Discover Thunder Ridge |achieve 728/9 |goto Durotar 40.3,24.7
step
Explore Durotar |achieve 728
step
Discover Boulder Lode Mine |achieve 750/1 |goto Northern Barrens 67.2,12.1
step
Discover The Sludge Fen |achieve 750/4 |goto Northern Barrens 55.7,18.5
step
Discover The Mor'shan Rampart |achieve 750/3 |goto Northern Barrens 39.6,14.1
step
Discover The Dry Hills |achieve 750/6 |goto Northern Barrens 25.5,31.7
step
Discover The Forgotten Pools |achieve 750/7 |goto Northern Barrens 36.8,45.9
step
Discover Dreadmist Peak |achieve 750/5 |goto Northern Barrens 43.1,35.4
step
Discover Grol'dom Farm |achieve 750/8 |goto Northern Barrens 54.9,41.1
step
Discover Far Watch Post |achieve 750/9 |goto Northern Barrens 67.0,41.3
step
Discover Thorn Hill |achieve 750/10 |goto Northern Barrens 58.8,50.0
step
Discover The Crossroads |achieve 750/11 |goto Northern Barrens 50.2,57.3
step
Discover Lushwater Oasis |achieve 750/2 |goto Northern Barrens 40.3,73.9
step
Discover The Stagnant Oasis |achieve 750/12 |goto Northern Barrens 55.7,78.6
step
Discover Ratchet |achieve 750/13 |goto Northern Barrens 67.93,72.28
step
Discover The Merchant Coast |achieve 750/14 |goto Northern Barrens 70.3,84.1
step
Explore Northern Barrens |achieve 750
step
Discover Northwatch Hold |achieve 4996/7 |goto Southern Barrens 68.8,49.1
step
Discover Forward Command |achieve 4996/3 |goto Southern Barrens 52.2,48.6
step
Discover The Overgrowth |achieve 4996/10 |goto Southern Barrens 47.8,33.68
step
Discover Hunter's Hill |achieve 4996/6 |goto Southern Barrens 39.3,22.3
step
Discover Honor's Stand |achieve 4996/5 |goto Southern Barrens 36.5,11.1
step
Discover Vendetta Point |achieve 4996/11 |goto Southern Barrens 42.4,44.0
step
Discover Ruins of Taurajo |achieve 4996/9 |goto Southern Barrens 44.9,54.3
step
Discover Battlescar |achieve 4996/2 |goto Southern Barrens 46.17,68.15
step
Discover Frazzlecraz Motherlode |achieve 4996/4 |goto Southern Barrens 41.0,78.2
step
Discover Razorfen Kraul |achieve 4996/8 |goto Southern Barrens 38.51,88.95
step
Discover Bael Modan |achieve 4996/1 |goto Southern Barrens 50.7,84.0
step
Explore Southern Barrens |achieve 4996
step
Discover Shady Rest Inn |achieve 850/5 |goto Dustwallow Marsh 29.7,49.0
step
Discover Brackenwall Village |achieve 850/7 |goto Dustwallow Marsh 36.3,30.4
step
Discover Blackhoof Village |achieve 850/2 |goto Dustwallow Marsh 41.4,12.4
step
Discover Alcaz Island |achieve 850/9 |goto Dustwallow Marsh 76.0,17.5
step
Discover Dreadmurk Shore |achieve 850/6 |goto Dustwallow Marsh 61.5,30.2
step
Discover Theramore Isle |achieve 850/1 |goto Dustwallow Marsh 67.1,49.8
step
Discover Direhorn Post |achieve 850/3 |goto Dustwallow Marsh 46.6,46.1
step
Discover Mudsprocket |achieve 850/4 |goto Dustwallow Marsh 41.4,75.1
step
Discover Wyrmbog |achieve 850/8 |goto Dustwallow Marsh 43.4,75.5
step
Explore Dustwallow Marsh |achieve 850
step
Discover Razorfen Downs |achieve 846/2 |goto Thousand Needles 51.7,30.0
step
Discover The Great Lift |achieve 846/1 |goto Thousand Needles 32.1,18.3
step
Discover Darkcloud Pinnacle |achieve 846/8 |goto Thousand Needles 33.6,38.6
step
Discover Westreach Summit |achieve 846/7 |goto Thousand Needles 13.4,10.3
step
Discover Highperch |achieve 846/12 |goto Thousand Needles 13.1,37.5
step
Discover Twilight Bulwark |achieve 846/6 |goto Thousand Needles 31.1,58.8
step
Discover Freewind Post |achieve 846/9 |goto Thousand Needles 47.0,50.7
step
Discover The Twilight Withering |achieve 846/5 |goto Thousand Needles 54.9,63.2
step
Discover Sunken Dig Site |achieve 846/3 |goto Thousand Needles 67.1,85.7
step
Discover The Shimmering Deep |achieve 846/11 |goto Thousand Needles 70.44,61.19
step
Discover Splithoof Heights |achieve 846/10 |goto Thousand Needles 88.4,47.8
step
Discover Southsea Holdfast |achieve 846/4 |goto Thousand Needles 92.4,78.8
step
Explore Thousand Needles |achieve 846
step
Discover Zul'Farrak |achieve 851/15 |goto Tanaris 37.3,14.3
step
Discover Sandsorrow Watch |achieve 851/2 |goto Tanaris 40.9,27.3
step
Discover Gadgetzan  |achieve 851/1 |goto Tanaris 50,28
step
Discover Broken Pillar |achieve 851/6 |goto Tanaris 52.3,45.4
step
Discover Abyssal Sands |achieve 851/5 |goto Tanaris 55.1,40.9
step
Discover Caverns of Time |achieve 851/16 |goto Tanaris 64.2,50.0
step
Discover Lost Rigger Cove |achieve 851/4 |goto Tanaris 71.6,49.4
step
Discover Southbreak Shore |achieve 851/9 |goto Tanaris 63.0,59.2
step
Discover The Gaping Chasm |achieve 851/10 |goto Tanaris 53.7,67.6
step
Discover Land's End Beach |achieve 851/12 |goto Tanaris 53.6,91.7
step
Discover Valley of the Watchers |achieve 851/3 |goto Tanaris 37.8,77.7
step
Discover Southmoon Ruins |achieve 851/13 |goto Tanaris 40.8,70.6
step
Discover Eastmoon Ruins |achieve 851/11 |goto Tanaris 47.2,64.9
step
Discover Thistleshrub Valley |achieve 851/14 |goto Tanaris 30.4,66.4
step
Discover Dunemaul Compound |achieve 851/8 |goto Tanaris 41.0,55.5
step
Discover The Noxious Lair |achieve 851/7 |goto Tanaris 34.3,45.3
step
Explore Tanaris |achieve 851
step
Discover Ironstone Plateau |achieve 854/11 |goto Un'Goro Crater 77.1,39.2
step
Discover The Roiling Gardens |achieve 854/5 |goto Un'Goro Crater 39.2,34.3
step
Discover Fungal Rock |achieve 854/2 |goto Un'Goro Crater 65.7,14.3
step
Discover Lakkari Tar Pits |achieve 854/12 |goto Un'Goro Crater 51.4,25.6
step
Discover Mossy Pile |achieve 854/4 |goto Un'Goro Crater 42.2,41.7
step
Discover The Screaming Reaches |achieve 854/6 |goto Un'Goro Crater 29.0,35.8
step
Discover Golakka Hot Springs |achieve 854/7 |goto Un'Goro Crater 34.4,54.0
step
Discover Terror Run |achieve 854/8 |goto Un'Goro Crater 33.2,70.7
step
Discover Fire Plume Ridge |achieve 854/1 |goto Un'Goro Crater 54.5,48.0
step
Discover Marshal's Stand |achieve 854/3 |goto Un'Goro Crater 54.0,60.9
step
Discover The Marshlands |achieve 854/10 |goto Un'Goro Crater 67.9,54.8
step
Discover The Slithering Scar |achieve 854/9 |goto Un'Goro Crater 51.1,77.5
step
Explore Un'Goro Crater |achieve 854
step
Discover Hive'Regal |achieve 856/5 |goto Silithus 60.0,71.7
step
Discover The Scarab Wall |achieve 856/6 |goto Silithus 32.0,78.9
step
Discover Hive'Zora |achieve 856/4 |goto Silithus 31.4,53.8
step
Discover The Crystal Vale |achieve 856/1 |goto Silithus 30.9,16.0
step
Discover Hive'Ashi |achieve 856/7 |goto Silithus 49.4,22.4
step
Discover Cenarion Hold |achieve 856/3 |goto Silithus 54.4,34.2
step
Discover Southwind Village |achieve 856/2 |goto Silithus 65.3,47.4
step
Discover Valor's Rest |achieve 856/8 |goto Silithus 81.3,17.8
step
Explore Silithus |achieve 856
step
Discover The Writhing Deep |achieve 849/8 |goto Feralas 75.9,62.4
step
Discover Lower Wilds |achieve 849/1 |goto Feralas 83.0,40.9
step
Discover Camp Mojache |achieve 849/9 |goto Feralas 76.5,44.4
step
Discover Gordunni Outpost |achieve 849/11 |goto Feralas 75.6,29.8
step
Discover Grimtotem Compound |achieve 849/10 |goto Feralas 68.7,40.3
step
Discover Dire Maul |achieve 849/5 |goto Feralas 60.4,35.6
step
Discover Darkmist Ruins |achieve 849/12 |goto Feralas 67.7,58.5
step
Discover Ruins of Isildien |achieve 849/7 |goto Feralas 58.6,73.0
step
Discover Feral Scar Vale |achieve 849/6 |goto Feralas 55.4,56.2
step
Discover The Forgotten Coast |achieve 849/4 |goto Feralas 49.7,49.2
step
Discover Feathermoon Stronghold |achieve 849/13 |goto Feralas 45.8,49.6
step
Discover Ruins of Feathermoon |achieve 849/2 |goto Feralas 28.5,49.1
step
Discover The Twin Colossals |achieve 849/3 |goto Feralas 46.3,17.9
step
Explore Ferals |achieve 849
step
Discover Gelkis Village |achieve 848/12 |goto Desolace 36.1,88.6
step
Discover Mannoroc Coven |achieve 848/13 |goto Desolace 51.3,78.5
step
Discover Thargad's Camp |achieve 848/2 |goto Desolace 36.5,69.9
step
Discover Shadowprey Village |achieve 848/11 |goto Desolace 24.2,70.9
step
Discover Valley of Spears |achieve 848/9 |goto Desolace 35.34,57.2
step
Discover Slitherblade Shore |achieve 848/16 |goto Desolace 29.9,29.4
step
Discover Ranazjar Isle |achieve 848/8 |goto Desolace 28.7,9.01
step
Discover Tethris Aran |achieve 848/1 |goto Desolace 51.5,10.0
step
Discover Thunder Axe Fortress |achieve 848/5 |goto Desolace 54.5,25.2
step
Discover Nijel's Point |achieve 848/3 |goto Desolace 66.7,8.7
step
Discover Sargeron |achieve 848/4 |goto Desolace 78.2,21.6
step
Discover Magram Territory |achieve 848/7 |goto Desolace 74.7,45.6
step
Discover Cenarion Wildlands |achieve 848/6 |goto Desolace 56.1,47.3
step
Discover Kodo Graveyard |achieve 848/10 |goto Desolace 50.7,59.0
step
Discover Shok'Thokar |achieve 848/14 |goto Desolace 70.6,74.8
step
Discover Shadowbreak Ravine |achieve 848/15 |goto Desolace 80.3,79.3
step
Explore Desolace |achieve 848
step
Discover Bael'dun Digsite |achieve 736/10 |goto Mulgore 32.3,50.6
step
Discover Palemane Rock |achieve 736/2 |goto Mulgore 35.5,61.3
step
Discover Red Cloud Mesa |achieve 736/1 |goto Mulgore 53.8,85.8
step
Discover Winterhoof Water Well |achieve 736/4 |goto Mulgore 53.7,66.7
step
Discover Bloodhoof Village |achieve 736/3 |goto Mulgore 47.8,58.4
step
Discover The Rolling Plains |achieve 736/5 |goto Mulgore 61.1,60.5
step
Discover The Venture Co. Mine |achieve 736/6 |goto Mulgore 62.7,42.6
step
Discover Ravaged Caravan |achieve 736/7 |goto Mulgore 54.2,47.9
step
Discover Thunderhorn Water Well |achieve 736/9 |goto Mulgore 44.9,43.5
step
Discover Red Rocks |achieve 736/11 |goto Mulgore 59.82,19.9
step
Discover The Golden Plains |achieve 736/8 |goto Mulgore 54.2,20.9
step
Discover Windfury Ridge |achieve 736/12 |goto Mulgore 51.14,09.25
step
Discover Wildmane Water Well |achieve 736/13 |goto Mulgore 43.1,14.2
step
Explore Mulgore |achieve 736
step
Discover Malaka'jin |achieve 847/9 |goto Stonetalon Mountains 72.6,92.4
step
Discover Unearthed Grounds |achieve 847/5 |goto Stonetalon Mountains 76.7,75.8
step
Discover Greatwood Vale |achieve 847/12 |goto Stonetalon Mountains 69.6,85.1
step
Discover Boulderslide Ravine |achieve 847/11 |goto Stonetalon Mountains 63.4,88.7
step
Discover Webwinder Path |achieve 847/10 |goto Stonetalon Mountains 59.6,78.9
step
Discover Webwinder Hollow |achieve 847/6 |goto Stonetalon Mountains 57.2,72.7
step
Discover Ruins of Eldre'thar |achieve 847/3 |goto Stonetalon Mountains 48.8,76.3
step
Discover Sun Rock Retreat |achieve 847/14 |goto Stonetalon Mountains 49.3,63.4
step
Discover The Charred Vale |achieve 847/15 |goto Stonetalon Mountains 31.6,71.5
step
Discover Battlescar Valley |achieve 847/1 |goto Stonetalon Mountains 37.0,54.3
step
Discover Thal'darah Overlook |achieve 847/4 |goto Stonetalon Mountains 35.8,31.5
step
Discover Stonetalon Peak |achieve 847/17 |goto Stonetalon Mountains 40.9,19.9
step
Discover Cliffwalker Post |achieve 847/8 |goto Stonetalon Mountains 45.1,30.2
step
Discover Mirkfallon Lake |achieve 847/16 |goto Stonetalon Mountains 51.6,47.3
step
Discover Windshear Hold |achieve 847/7 |goto Stonetalon Mountains 59.1,57.7
step
Discover Krom'gar Fortress |achieve 847/2 |goto Stonetalon Mountains 66.9,66.2
step
Discover Windshear Crag |achieve 847/13 |goto Stonetalon Mountains 66.9,49.3
step
Explore Stonetalon Mountains |achieve 847
step
Discover Silverwind Refuge |achieve 845/3 |goto Ashenvale 50.15,67.08
step
Discover Fallen Sky Lake |achieve 845/13 |goto Ashenvale 66,82
step
Discover The Ruins of Stardust |achieve 845/10 |goto Ashenvale 32.6,65.6
step
Discover Astranaar |achieve 845/9 |goto Ashenvale 35.9,50.2
step
Discover The Shrine of Aessina |achieve 845/8 |goto Ashenvale 21.4,55.3
step
Discover Lake Falathim |achieve 845/5 |goto Ashenvale 20.2,41.1
step
Discover Maestra's Post |achieve 845/6 |goto Ashenvale 27.5,37.7
step
Discover The Zoram Strand |achieve 845/1 |goto Ashenvale 14,23
step
Discover Orendil's Retreat |achieve 845/2 |goto Ashenvale 26.0,19.7
step
Discover Thistlefur Village |achieve 845/7 |goto Ashenvale 37.0,32.9
step
Discover Thunder Peak |achieve 845/4 |goto Ashenvale 48.9,46.4
step
Discover The Howling Vale |achieve 845/11 |goto Ashenvale 53.2,32.6
step
Discover Raynewood Retreat |achieve 845/12 |goto Ashenvale 59.7,50.0
step
Discover Splintertree Post |achieve 845/14 |goto Ashenvale 68.2,47.9
step
Discover Satyrnaar |achieve 845/15 |goto Ashenvale 80.4,49.7
step
Discover Felfire Hill |achieve 845/18 |goto Ashenvale 83.1,65.3
step
Discover Warsong Lumber Camp |achieve 845/17 |goto Ashenvale 87.4,58.6
step
Discover Bough Shadow |achieve 845/16 |goto Ashenvale 93.4,39.2
step
Explore Ashenvale |achieve 845
step
Discover Frostwhisper Gorge |achieve 857/12 |goto Winterspring 59.8,85.5
step
Discover Owl Wing Thicket |achieve 857/7 |goto Winterspring 64.5,77.2
step
Discover Ice Thistle Hills |achieve 857/8 |goto Winterspring 67.8,64.4
step
Discover Winterfall Village |achieve 857/9 |goto Winterspring 68.1,48.5
step
Discover Everlook |achieve 857/6 |goto Winterspring 59.9,48.9
step
Discover The Hidden Grove |achieve 857/10 |goto Winterspring 62.7,24.7
step
Discover Frostsaber Rock |achieve 857/11 |goto Winterspring 45.3,15.4
step
Discover Starfall Village |achieve 857/4 |goto Winterspring 47.7,39.1
step
Discover Lake Kel'Theril |achieve 857/3 |goto Winterspring 51.1,55.1
step
Discover Mazthoril |achieve 857/5 |goto Winterspring 54.8,62.9
step
Discover Timbermaw Post |achieve 857/2 |goto Winterspring 36.4,56.7
step
Discover Frostfire Hot Springs |achieve 857/1 |goto Winterspring 31.9,49.3
step
Explore Winterspring |achieve 857
step
Discover Darnassian Base Camp |achieve 852/7 |goto Azshara 52.25,26.95
step
Discover Bitter Reaches |achieve 852/4 |goto Azshara 73.69,20.98
step
Discover Tower of Eldara |achieve 852/5 |goto Azshara 80.90,32.34
step
Discover Ruins of Arkkoran |achieve 852/6 |goto Azshara 69.89,34.83
step
Discover Bilgewater Harbor |achieve 852/3 |goto Azshara 58.29,51.00
step
Discover Southridge Beach |achieve 852/13 |goto Azshara 68.41,75.62
step
Discover Ravencrest Monument |achieve 852/14 |goto Azshara 64.65,79.31
step
Discover Storm Cliffs |achieve 852/17 |goto Azshara 56.99,76.50
step
Discover The Secret Lab |achieve 852/8 |goto Azshara 46.54,76.25
step
Discover The Ruined Reaches |achieve 852/16 |goto Azshara 39.83,84.67
step
Discover Lake Mennar |achieve 852/15 |goto Azshara 35.72,73.99
step
Discover Orgrimmar Rear Gate |achieve 852/11 |goto Azshara 26.75,77.96
step
Discover Gallywix Pleasure Palace |achieve 852/1 |goto Azshara 21.04,57.1
step
Discover The Shattered Strand |achieve 852/2 |goto Azshara 39.21,55.46
step
Discover Ruins of Eldarath |achieve 852/12 |goto Azshara 31.95,50.02
step
Discover Bear's Head |achieve 852/9 |goto Azshara 25.47,38.00
step
Discover Blackmaw Hold |achieve 852/10 |goto Azshara 33.06,32.76
step
Explore Azshara |achieve 852
step
Discover Stormrage Barrow Dens |achieve 855/4 |goto Moonglade 67.8,53.8
step
Discover Lake Elune'ara |achieve 855/1 |goto Moonglade 52.5,55.4
step
Discover Nighthaven |achieve 855/2 |goto Moonglade 48.2,37.9
step
Discover Shrine of Remulos |achieve 855/3 |goto Moonglade 36.3,38.8
step
Explore Moonglade |achieve 855
step
Discover Felpaw Village |achieve 853/1 |goto Felwood 61.2,11.5
step
Discover Talonbranch Glade |achieve 853/2 |goto Felwood 62.6,26.7
step
Discover Irontree Woods |achieve 853/3 |goto Felwood 50.3,26.0
step
Discover Jadefire Run |achieve 853/4 |goto Felwood 43.6,18.6
step
Discover Shatter Scar Vale |achieve 853/5 |goto Felwood 43.1,41.9
step
Discover Bloodvenom Falls |achieve 853/6 |goto Felwood 41,47
step
Discover Emerald Sanctuary |achieve 853/10 |goto Felwood 52.2,78.2
step
Discover Morlos'Aran |achieve 853/12 |goto Felwood 56.6,86.8
step
Discover Deadwood Village |achieve 853/11 |goto Felwood 48.0,89.2
step
Discover Jadefire Glen |achieve 853/9 |goto Felwood 41.8,85.4
step
Discover Ruins of Constellas |achieve 853/8 |goto Felwood 38.0,72.3
step
Discover Jaedenar |achieve 853/7 |goto Felwood 37.0,59.1
step
Explore Felwood |achieve 853
step
Discover The Master's Glaive |achieve 844/11 |goto Darkshore 40.3,86.2
step
Discover Nazj'vel |achieve 844/10 |goto Darkshore 32.0,84.0
step
Discover Wildbend River |achieve 844/4 |goto Darkshore 42.5,69.5
step
Discover Ameth'Aran |achieve 844/8 |goto Darkshore 43.7,60.5
step
Discover Withering Thicket |achieve 844/5 |goto Darkshore 43.96,39.82
step
Discover The Eye of the Vortex |achieve 844/7 |goto Darkshore 42.9,54.9
step
Discover Ruins of Auberdine |achieve 844/1 |goto Darkshore 37.9,44.1
step
Discover Lor'danel |achieve 844/9 |goto Darkshore 51.2,19.2
step
Discover Ruins of Mathystra |achieve 844/6 |goto Darkshore 63.9,21.9
step
Discover Shatterspear Vale |achieve 844/2 |goto Darkshore 72.5,17.3
step
Discover Shatterspear War Camp |achieve 844/3 |goto Darkshore 65.9,7.0
step
Explore Darkshore |achieve 844
step
Discover Lake Al'Ameth |achieve 842/6 |goto Teldrassil 55.0,61.0
step
Discover Dolanaar |achieve 842/3 |goto Teldrassil 55.6,51.2
step
Discover Starbreeze Village |achieve 842/8 |goto Teldrassil 64.7,49.1
step
Discover Rut'theran Village |achieve 842/12 |goto Teldrassil 55.0,91.0
step
Discover Shadowglen |achieve 842/1 |goto Teldrassil 58.4,33.0
step
Discover The Cleft |achieve 842/2 |goto Teldrassil 50.7,38.0
step
Discover Ban'ethil Hollow |achieve 842/4 |goto Teldrassil 46.16,50.68
step
Discover Wellspring Lake |achieve 842/10 |goto Teldrassil 44.4,34.4
step
Discover The Oracle Glade |achieve 842/9 |goto Teldrassil 40.0,26.7
step
Discover Darnassus |achieve 842/11 |goto Teldrassil 30.4,50.1
step
Discover Pools of Arlithrien |achieve 842/7 |goto Teldrassil 41.9,56.9
step
Discover Gnarlpine Hold |achieve 842/5 |goto Teldrassil 44.8,67.4
step
Explore Teldrassil |achieve 842
step
Discover Valaar's Berth |achieve 860/16 |goto Azuremyst Isle 23.7,54.0
step
Discover Bristlelimb Village |achieve 860/4 |goto Azuremyst Isle 26.5,65.1
step
Discover Silvermyst Isle |achieve 860/13 |goto Azuremyst Isle 12.7,78.6
step
Discover Wrathscale Point |achieve 860/17 |goto Azuremyst Isle 32.0,79.3
step
Discover Pod Cluster |achieve 860/10 |goto Azuremyst Isle 37.0,58.4
step
Discover Azure Watch |achieve 860/3 |goto Azuremyst Isle 49.3,50.7
step
Discover Odesyus' Landing |achieve 860/9 |goto Azuremyst Isle 46.6,72.4
step
Discover Pod Wreckage |achieve 860/11 |goto Azuremyst Isle 52.7,61.3
step
Discover Geezle's Camp |achieve 860/7 |goto Azuremyst Isle 58.3,67.0
step
Discover Ammen Ford |achieve 860/2 |goto Azuremyst Isle 61.3,53.6
step
Discover Ammen Vale |achieve 860/1 |goto Azuremyst Isle 77.6,43.7
step
Discover Moongraze Woods |achieve 860/8 |goto Azuremyst Isle 52.7,41.8
step
Discover The Exodar |achieve 860/15 |goto Azuremyst Isle 29.2,35.1
step
Discover Silting Shore |achieve 860/12 |goto Azuremyst Isle 35.3,12.4
step
Discover Stillpine Hold |achieve 860/14 |goto Azuremyst Isle 46.0,20.0
step
Discover Emberglade |achieve 860/5 |goto Azuremyst Isle 58.8,17.6
step
Discover Fairbridge Strand |achieve 860/6 |goto Azuremyst Isle 47.7,6.6
step
Explore Azuremyst Isle |achieve 860
step
Discover Kessel's Crossing |achieve 861/8 |goto Bloodmyst Isle 61.9,90.0
step
Discover The Lost Fold |achieve 861/22 |goto Bloodmyst Isle 57.4,81.0
step
Discover Bristlelimb Enclave |achieve 861/7 |goto Bloodmyst Isle 67.0,78.2
step
Discover Wrathscale Lair |achieve 861/27 |goto Bloodmyst Isle 69.0,66.6
step
Discover Bloodcurse Isle |achieve 861/5 |goto Bloodmyst Isle 85.4,52.8
step
Discover Wyrmscar Island |achieve 861/28 |goto Bloodmyst Isle 72.0,29.6
step
Discover Talon Stand |achieve 861/14 |goto Bloodmyst Isle 73.4,20.9
step
Discover The Bloodcursed Reef |achieve 861/16 |goto Bloodmyst Isle 81.0,20.1
step
Discover Veridian Point |achieve 861/25 |goto Bloodmyst Isle 74.4,7.5
step
Discover The Crimson Reach |achieve 861/18 |goto Bloodmyst Isle 62.6,25.4
step
Discover The Warp Piston |achieve 861/24 |goto Bloodmyst Isle 54.2,17.1
step
Discover Ragefeather Ridge |achieve 861/12 |goto Bloodmyst Isle 56.1,34.9
step
Discover Ruins of Loreth'Aran |achieve 861/13 |goto Bloodmyst Isle 61.6,45.2
step
Discover Blood Watch |achieve 861/6 |goto Bloodmyst Isle 54.6,55.4
step
Discover Middenvale |achieve 861/9 |goto Bloodmyst Isle 51.7,76.6
step
Discover Mystwood |achieve 861/10 |goto Bloodmyst Isle 43.9,84.7
step
Discover Blacksilt Shore |achieve 861/3 |goto Bloodmyst Isle 33.2,90.3
step
Discover Nazzivian |achieve 861/11 |goto Bloodmyst Isle 37.9,75.7
step
Discover The Cryo-Core |achieve 861/19 |goto Bloodmyst Isle 38.5,59.5
step
Discover Bladewood |achieve 861/4 |goto Bloodmyst Isle 45.9,45.1
step
Discover Axxarien |achieve 861/2 |goto Bloodmyst Isle 40.8,33.0
step
Discover The Bloodwash |achieve 861/17 |goto Bloodmyst Isle 38.7,21.9
step
Discover The Hidden Reef |achieve 861/21 |goto Bloodmyst Isle 32.7,19.8
step
Discover The Foul Pool |achieve 861/20 |goto Bloodmyst Isle 29.2,36.8
step
Discover Vindicator's Rest |achieve 861/26 |goto Bloodmyst Isle 30.2,46.2
step
Discover Tel'athion's Camp |achieve 861/15 |goto Bloodmyst Isle 24.4,41.2
step
Discover Amberweb Pass |achieve 861/1 |goto Bloodmyst Isle 18.8,30.9
step
Discover The Vector Coil |achieve 861/23 |goto Bloodmyst Isle 18.0,53.4
step
Explore Bloodmyst Isle |achieve 861
step
Congratulations, you have _earned_ the _Explore Kalimdor_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Outland\\Bloody Rare/Medium Rare",{
condition_end=function() return achieved(1312) end,
achieveid={1311,1312},
description="Kill all of the Rare enemies in Outlands",
},[[
step
kill Mekthorg the Wild##18677 |achieve 1312/13 |goto Hellfire Peninsula 69.0,71.4
If Mekthorg the Wild is not here you may be able to _find him in the following locations_:
_Southeast_ of The Great Fissure |goto Hellfire Peninsula 41.6,71.6
_South_ of Hellfire Citadel |goto Hellfire Peninsula 47.2,58.4
_East_ of Hellfire Citadel |goto Hellfire Peninsula 52.0,51.2
_North_ of Hellfire Citadel |goto Hellfire Peninsula 46.6,43.0
step
kill Fulgorge##18678 |achieve 1312/4 |goto Hellfire Peninsula 57.2,71.8
If Fulgorge is not here you may be able to _find him in the following locations_:
_East_ of The Great Fissure |goto Hellfire Peninsula 42.8,71.8
_West_ of Hellfire Citadel |goto Hellfire Peninsula 43.6,50.6
_East_ of Falcon Watch |goto Hellfire Peninsula 30.8,63.0
_East_ of the Temple of Telhamat |goto Hellfire Peninsula 27.6,42.6
step
kill Vorakem Doomspeaker##18679 |achieve 1312/10 |goto Hellfire Peninsula 41.0,32.8
If Vorakem Doomspeaker is not here you may be able to _find him in the following locations_:
_Southeast_ of Invasion Point: Annihilator |goto Hellfire Peninsula 54.4,28.6
_At_ Forge Camp: Mageddon |goto Hellfire Peninsula 65.4,31.4
_Northeast_ of The Legion Front |goto Hellfire Peninsula 73.6,40.2
_East_ of Reaver's Fall |goto Hellfire Peninsula 70.0,45.6
_Southeast_ of The Legion Front |goto Hellfire Peninsula 72.6,56.8
step
kill Hemathion##18692 |achieve 1312/5 |goto Blade's Edge Mountains 30.6,67.2
Hemathion can also be found at the _Northern_ part of Ogri'la |goto Blade's Edge Mountains 30.6,48.4
step
kill Morcrush##18690 |achieve 1312/7 |goto Blade's Edge Mountains 68.8,70.0
If Morcrush is not here you may be able to _find him in the following locations_:
_North_ of Death's Door |goto Blade's Edge Mountains 62.6,52.6
_Southeast_ of Evergrove |goto Blade's Edge Mountains 65.8,47.8
_West_ of Forge Camp: Anger |goto Blade's Edge Mountains 71.0,42.0
_At_ the Blade Gulch |goto Blade's Edge Mountains 73.8,28.6
_West_ end of Gruul's Lair |goto Blade's Edge Mountains 61.0,23.0
step
kill Speaker Mar'Grom##18693 |achieve 1312/9 |goto Blade's Edge Mountains 44.6,77.4
If Speaker Mar'Grom is not here you may be able to _find him in the following locations_:
_At_ Bladespire Hold |goto Blade's Edge Mountains 42.0,50.8
_Northwest_ of Ruuan Weald |goto Blade's Edge Mountains 57.6,29.6
_At_ Gruul's Lair |goto Blade's Edge Mountains 66.2,23.6
step
kill Bog Lurker##18682 |achieve 1312/2 |goto Zangarmarsh 25.0,24.0
If Bog Lurker is not here you may be able to _find him in the following locations_:
_West_ of Feralfen Village |goto Zangarmarsh 41.2,60.8
_East_ of Feralfen Village |goto Zangarmarsh 50.6,59.4
_East_ of Umbrafen Village |goto Zangarmarsh 86.6,82.6
step
kill Coilfang Emissary##18681 |achieve 1312/20 |goto Zangarmarsh 25.8,42.6
If Coilfang Emissary is not here you may be able to _find him in the following locations_:
_At_ Bloodscale Grounds |goto Zangarmarsh 63.0,38.0
_Southeast_ of The Lagoon |goto Zangarmarsh 64.4,69.6
_South_ of Umbrafen Lake |goto Zangarmarsh 73.6,82.4
step
kill Marticar##18680 |achieve 1312/6 |goto Zangarmarsh 10.6,51.0
If Marticar is not here you may be able to _find him in the following locations_:
_Northwest_ of Marshlight Lake |goto Zangarmarsh 18.0,34.4
_Northwest_ of Serpent Lake |goto Zangarmarsh 38.6,34.8
_Northeast_ of the Coilfang Reservoir |goto Zangarmarsh 54.4,33.8
_West_ of The Dead Mire |goto Zangarmarsh 72.0,35.8
_North_ of Cenarion Refuge |goto Zangarmarsh 79.6,53.6
step
kill Chief Engineer Lorthander##18697 |achieve 1312/11 |goto Netherstorm 59.8,66.4
If Chief Engineer Lorthander is not here you may be able to _find him in the following locations_:
_Northwest_ of Manaforge Coruu |goto Netherstorm 47.6,81.2
_East side_ of Manaforge Ara |goto Netherstorm 27.8,39.4
step
kill Ever-Core the Punisher##18698 |achieve 1312/12 |goto Netherstorm 58.2,37.8
|tip He walks around the towers in Netherstorm so you will need to search for him.
step
kill Nuramoc##20932 |achieve 1312/8 |goto Netherstorm 25.6,82.6
If Nuramoc is not here you may be able to _find him in the following locations_:
_South_ of Arklon Ruins |goto Netherstorm 40.6,79.8
_Northeast_ of Cosmowrench |goto Netherstorm 67.6,61.0
_Eastern_ part of The Scrap Field |goto Netherstorm 53.0,59.2
_South_ of Forge Base: Oblivion |goto Netherstorm 34.0,33.6
_North_ of Forge Base: Oblivion |goto Netherstorm 36.0,20.8
step
kill Voidhunter Yar##18683 |achieve 1312/19 |goto Nagrand 39.8,71.0
|tip He walks in a circle around Oshu'Gun so you may need to fly around to find him.
step
kill Goretooth##17144 |achieve 1312/16 |goto Nagrand 34.0,50.0
If Goretooth is not here, you may be able to _find him in the following locations_:
_Northeast_ of Halaa |goto Nagrand 44.8,44.8
_South_ of the Throne of the Elements |goto Nagrand 59.6,28.4
_East_ of Kil'sorrow Fortress |goto Nagrand 77.0,80.2
step
kill Crippler##18689 |achieve 1312/3 |goto Terokkar Forest 39.0,63.6
|tip He walks around and inside Auchindoun so you may need to search for him.
step
kill Doomsayer Jurim##18686 |achieve 1312/18 |goto Terokkar Forest 70.2,49.0
If Doomsayer Jurim is not here you may be able to _find him in the following locations_:
_Southeast_ of Tuurem |goto Terokkar Forest 56.8,32.6
_Southeast_ Veil Reskk |goto Terokkar Forest 54.4,20.4
_South_ of Cenarion Thicket |goto Terokkar Forest 43.2,26.4
_Northwest_ of Grangol'var Village |goto Terokkar Forest 35.8,37.4
step
kill Okrek##18685 |achieve 1312/14 |goto Terokkar Forest 56.6,67.6
If Okrek is not here you may be able to _find him in the following locations_:
_At_ Veil Skith |goto Terokkar Forest 31.8,42.6
_South_ of Veil Reskk |goto Terokkar Forest 50.0,19.6
_At_ Veil Shienor |goto Terokkar Forest 59.8,24.2
step
kill Ambassador Jerrikar##18695 |achieve 1312/1 |goto Shadowmoon Valley 71.0,61.6
If Ambassador Jerrikar is not here you may be able to _find him in the following locations_:
_Southeast_ of Eclipse Point |goto Shadowmoon Valley 47.6,68.6
_At_ Illidari Point |goto Shadowmoon Valley 29.6,52.6
_At_ the Coilskar Point |goto Shadowmoon Valley 46.2,28.8
_At_ the Ruins of Baa'ri |goto Shadowmoon Valley 57.6,38.2
step
kill Collidus the Warp-Watcher##18694 |achieve 1312/15 |goto Shadowmoon Valley 70.8,66.8
If Collidus the Warp-Watcher is not here you may be able to _find him in the following locations_:
_Southeast_ of the Sanctum of the Stars |goto Shadowmoon Valley 58.6,71.6
_Southeast_ of The Altar of Damnation |goto Shadowmoon Valley 46.0,53.2
_West_ of The Deathforge |goto Shadowmoon Valley 37.6,43.6
_North_ of the Altar of Sha'tar |goto Shadowmoon Valley 60.0,22.0
_North_ of the Black Temple |goto Shadowmoon Valley 73.8,29.2
step
kill Kraator##18696 |achieve 1312/17 |goto Shadowmoon Valley 59.6,46.6
If Kraator is not here you may be able to _find him in the following locations_:
_Southwest_ of Eclipse Point |goto Shadowmoon Valley 42.0,68.8
_North_ of Illidari Point |goto Shadowmoon Valley 31.0,45.6
_Northeast_ of The Death Forge |goto Shadowmoon Valley 42.0,40.6
_North_ of Coilskar Point |goto Shadowmoon Valley 45.6,12.6
step
Congratulations, you have _earned_ the _Medium Rare_ achievement! |only if achieved(1311)
Congratulations, you have _earned_ the _Bloody Rare_ achievement! |only if achieved(1312)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Outland\\Outland Explorer",{
condition_end=function() return achieved(44) end,
achieveid={862,863,867,866,865,843,864,44},
description="Explore the regions of Outlands.",
},[[
step
Discover The Stair of Destiny |achieve 862/1 |goto Hellfire Peninsula 87.7,50.3
step
Discover Throne of Kil'jaeden |achieve 862/12 |goto Hellfire Peninsula 62.0,17.8
step
Discover Forge Camp: Mageddon |achieve 862/18 |goto Hellfire Peninsula 58.9,31.2
step
Discover Thrallmar |achieve 862/11 |goto Hellfire Peninsula 55.4,38.7
step
Discover The Legion Front |achieve 862/10 |goto Hellfire Peninsula 70.0,50.4
step
Discover Void Ridge |achieve 862/16 |goto Hellfire Peninsula 79.1,72.9
step
Discover Zeth'Gor |achieve 862/13 |goto Hellfire Peninsula 70.1,73.6
step
Discover Expedition Armory |achieve 862/2 |goto Hellfire Peninsula 54.3,84.3
step
Discover The Warp Fields |achieve 862/17 |goto Hellfire Peninsula 45.3,82.5
step
Discover Honor Hold |achieve 862/5 |goto Hellfire Peninsula 54.8,64.5
step
Discover Hellfire Citadel |achieve 862/4 |goto Hellfire Peninsula 47.2,52.9
step
Discover Pools of Aggonar |achieve 862/7 |goto Hellfire Peninsula 41.2,32.6
step
Discover Mag'har Post |achieve 862/6 |goto Hellfire Peninsula 31.3,26.9
step
Discover Temple of Telhamat |achieve 862/9 |goto Hellfire Peninsula 23.5,40.0
step
Discover Falcon Watch |achieve 862/3 |goto Hellfire Peninsula 26.9,62.3
step
Discover Den of Haal'esh |achieve 862/14 |goto Hellfire Peninsula 27.5,77.0
step
Discover Fallen Sky Ridge |achieve 862/15 |goto Hellfire Peninsula 14.3,41.0
step
Discover Ruins of Sha'naar |achieve 862/8 |goto Hellfire Peninsula 13.3,59.4
step
Explore Hellfire Peninsula |achieve 862
step
Discover Razorthorn Shelf |achieve 867/11 |goto Terokkar Forest 55.0,20.0
step
Discover Tuurem |achieve 867/7 |goto Terokkar Forest 53.0,29.1
step
Discover Cenarion Thicket |achieve 867/3 |goto Terokkar Forest 43.8,20.2
step
Discover Shattrath City |achieve 867/8 |goto Terokkar Forest 29.1,23.3
step
Discover The Barrier Hills |achieve 867/10 |goto Terokkar Forest 22.4,10.5
step
Discover Bleeding Hollow Ruins |achieve 867/1 |goto Terokkar Forest 17.8,65.4
step
Discover Veil Rhaze |achieve 867/19 |goto Terokkar Forest 24.4,59.9
step
Discover Shadow Tomb |achieve 867/17 |goto Terokkar Forest 31.3,52.5
step
Discover Refugee Caravan |achieve 867/15 |goto Terokkar Forest 37.5,49.6
step
Discover Carrion Hill |achieve 867/14 |goto Terokkar Forest 42.9,51.0
step
Discover Grangol'var Village |achieve 867/5 |goto Terokkar Forest 39.5,39.4
step
Discover Stonebreaker Hold |achieve 867/6 |goto Terokkar Forest 46.6,43.0
step
Discover Raastok Glade |achieve 867/9 |goto Terokkar Forest 60.6,40.2
step
Discover Firewing Point |achieve 867/4 |goto Terokkar Forest 71.7,34.7
step
Discover Bonechewer Ruins |achieve 867/12 |goto Terokkar Forest 66.5,52.3
step
Discover Allerian Stronghold |achieve 867/2 |goto Terokkar Forest 57.1,56.6
step
Discover Writhing Mound |achieve 867/20 |goto Terokkar Forest 49.1,66.0
step
Discover Ring of Observance |achieve 867/16 |goto Terokkar Forest 39.5,65.5
step
Discover Auchenai Grounds |achieve 867/13 |goto Terokkar Forest 33.0,71.8
step
Discover Derelict Caravan |achieve 867/18 |goto Terokkar Forest 43.9,76.1
step
Discover Skettis |achieve 867/21 |goto Terokkar Forest 58.9,76.4
step
Explore Terokkar Forest |achieve 867
step
Discover Legion Hold |achieve 864/3 |goto Shadowmoon Valley 24.1,39.2
step
Discover Illidari Point |achieve 864/12 |goto Shadowmoon Valley 29.8,52.3
step
Discover Wildhammer Stronghold |achieve 864/10  |goto Shadowmoon Valley 35.5,60.2
step
Discover Eclipse Point |achieve 864/2 |goto Shadowmoon Valley 44.9,66.8
step
Discover Netherwing Ledge |achieve 864/4 |goto Shadowmoon Valley 70.8,85.7
step
Discover Netherwing Fields |achieve 864/13 |goto Shadowmoon Valley 64.2,58.5
step
Discover Warden's Cage |achieve 864/9 |goto Shadowmoon Valley 57.3,50.1
step
Discover The Hand of Gul'dan |achieve 864/8 |goto Shadowmoon Valley 49.8,41.2
step
Discover The Deathforge |achieve 864/7 |goto Shadowmoon Valley 39.6,39.6
step
Discover Shadowmoon Village |achieve 864/5 |goto Shadowmoon Valley 29.4,26.1
step
Discover Coilskar Point |achieve 864/1 |goto Shadowmoon Valley 45.3,26.3
step
Discover Altar of Sha'tar |achieve 864/11 |goto Shadowmoon Valley 61.5,26.1
step
Discover The Black Temple |achieve 864/6 |goto Shadowmoon Valley 77.6,40.6
step
Explore Shadowmoon Valley |achieve 864
step
Discover Windyreed Village |achieve 866/18 |goto Nagrand 74.3,52.9
step
Discover Burning Blade Ruins |achieve 866/12 |goto Nagrand 75.1,66.8
step
Discover Kil'sorrow Fortress |achieve 866/4 |goto Nagrand 68.9,79.9
step
Discover Clan Watch |achieve 866/13 |goto Nagrand 62.5,64.3
step
Discover The Ring of Trials |achieve 866/9 |goto Nagrand 65.8,54.0
step
Discover Southwind Cleft |achieve 866/15 |goto Nagrand 49.8,55.9
step
Discover Telaar |achieve 866/8 |goto Nagrand 52.8,69.1
step
Discover Spirit Fields |achieve 866/6 |goto Nagrand 42.0,71.8
step
Discover Halaa |achieve 866/3 |goto Nagrand 42.5,44.0
step
Discover Sunspring Post |achieve 866/7 |goto Nagrand 33.5,44.7
step
Discover Forge Camp: Fear |achieve 866/1 |goto Nagrand 20.6,51.3
step
Discover The Twilight Ridge |achieve 866/16 |goto Nagrand 10.8,39.2
step
Discover Forge Camp: Hate |achieve 866/14 |goto Nagrand 25.9,37.1
step
Discover Warmaul Hill |achieve 866/11 |goto Nagrand 29.7,24.6
step
Discover Zangar Ridge |achieve 866/19 |goto Nagrand 33.9,18.4
step
Discover Laughing Skull Ruins |achieve 866/5 |goto Nagrand 46.9,18.9
step
Discover Garadar |achieve 866/2 |goto Nagrand 56.1,36.4
step
Discover Throne of the Elements |achieve 866/10 |goto Nagrand 60.8,21.1
step
Discover Windyreed Pass |achieve 866/17 |goto Nagrand 72.4,36.3
step
Explore Nagrand |achieve 866
step
Discover Darkcrest Shore |achieve 863/18 |goto Zangarmarsh 70.6,79.9
step
Discover Umbrafen Village |achieve 863/11 |goto Zangarmarsh 83.5,82.0
step
Discover Cenarion Refuge |achieve 863/1 |goto Zangarmarsh 81.1,63.4
step
Discover The Dead Mire |achieve 863/8 |goto Zangarmarsh 82.5,37.5
step
Discover Teredor |achieve 863/7 |goto Zangarmarsh 68.5,49.2
step
Discover Bloodscale Grounds |achieve 863/14 |goto Zangarmarsh 62.7,41.2
step
Discover The Lagoon |achieve 863/9 |goto Zangarmarsh 58.6,61.8
step
Discover Twin Spire Ruins |achieve 863/10 |goto Zangarmarsh 47.8,51.7
step
Discover Feralfen Village |achieve 863/3 |goto Zangarmarsh 44.9,66.3
step
Discover Zabra'jin |achieve 863/17 |goto Zangarmarsh 31.8,52.3
step
Discover Quagg Ridge |achieve 863/6 |goto Zangarmarsh 29.0,60.7
step
Discover The Spawning Glen |achieve 863/16 |goto Zangarmarsh 14.5,61.9
step
Discover Sporeggar |achieve 863/12 |goto Zangarmarsh 17.8,49.6
step
Discover Marshlight Lake |achieve 863/5 |goto Zangarmarsh 21.7,39.6
step
Discover Ango'rosh Grounds |achieve 863/2 |goto Zangarmarsh 18.0,23.1
step
Discover Ango'rosh Stronghold |achieve 863/13 |goto Zangarmarsh 18.6,8.0
step
Discover Hewn Bog |achieve 863/4 |goto Zangarmarsh 33.6,35.3
step
Discover Orebor Harborage |achieve 863/15 |goto Zangarmarsh 44.9,25.2
step
Explore Zangarmarsh |achieve 863
step
Discover Forge Camp: Terror |achieve 865/10 |goto Blade's Edge Mountains 29.1,81.0
step
Discover Vortex Summit |achieve 865/26 |goto Blade's Edge Mountains 30.5,59.5
step
Discover Forge Camp: Wrath |achieve 865/11 |goto Blade's Edge Mountains 33.5,41.1
step
Discover Raven's Wood |achieve 865/16 |goto Blade's Edge Mountains 31.9,27.5
step
Discover Grishnath |achieve 865/12 |goto Blade's Edge Mountains 39.6,19.9
step
Discover Bash'ir Landing |achieve 865/1 |goto Blade's Edge Mountains 51.7,16.7
step
Discover Crystal Spine |achieve 865/21 |goto Blade's Edge Mountains 68.0,10.8
step
Discover Broken Wilds |achieve 865/6 |goto Blade's Edge Mountains 77.9,25.9
step
Discover Skald |achieve 865/19 |goto Blade's Edge Mountains 72.0,22.9
step
Discover Gruul's Lair |achieve 865/13 |goto Blade's Edge Mountains 67.7,23.5
step
Discover Bloodmaul Camp |achieve 865/4 |goto Blade's Edge Mountains 55.6,26.2
step
Discover Bladespire Hold |achieve 865/3 |goto Blade's Edge Mountains 40.7,53.0
step
Discover Sylvanaar |achieve 865/20 |goto Blade's Edge Mountains 37.0,65.4
step
Discover Veil Lashh |achieve 865/23 |goto Blade's Edge Mountains 36.4,78.7
step
Discover Bloodmaul Outpost |achieve 865/5 |goto Blade's Edge Mountains 46.3,77.2
step
Discover Jagged Ridge |achieve 865/14 |goto Blade's Edge Mountains 48.0,64.9
step
Discover Razor Ridge |achieve 865/17 |goto Blade's Edge Mountains 56.0,69.0
step
Discover Death's Door |achieve 865/8 |goto Blade's Edge Mountains 64.2,61.0
step
Discover Thunderlord Stronghold |achieve 865/22 |goto Blade's Edge Mountains 53.1,54.7
step
Discover Circle of Blood |achieve 865/7 |goto Blade's Edge Mountains 53.6,43.9
step
Discover Ruuan Weald |achieve 865/18 |goto Blade's Edge Mountains 61.2,36.5
step
Discover Veil Ruuan |achieve 865/24 |goto Blade's Edge Mountains 65.1,31.6
step
Discover Bladed Gulch |achieve 865/2 |goto Blade's Edge Mountains 65.9,36.8
step
Discover Forge Camp: Anger |achieve 865/9 |goto Blade's Edge Mountains 74.7,41.8
step
Discover Mok'Nathal Village |achieve 865/15 |goto Blade's Edge Mountains 73.9,62.6
step
Discover Vekhaar Stand |achieve 865/25 |goto Blade's Edge Mountains 77.1,75.2
step
Explore Blade's Edge Mountains |achieve 865
step
Discover Manaforge B'naar |achieve 843/2 |goto Netherstorm 23.5,72.9
step
Discover The Heap |achieve 843/9 |goto Netherstorm 28.4,77.5
step
Discover Area 52 |achieve 843/1 |goto Netherstorm 33.5,66.0
step
Discover Arklon Ruins |achieve 843/10 |goto Netherstorm 39.7,73.5
step
Discover Manaforge Coruu |achieve 843/3 |goto Netherstorm 48.8,84.5
step
Discover Kirin'Var Village |achieve 843/12 |goto Netherstorm 57.1,88.5
step
Discover Sunfury Hold |achieve 843/15 |goto Netherstorm 56.0,77.8
step
Discover Manaforge Duro |achieve 843/4 |goto Netherstorm 59.6,68.2
step
Discover Tempest Keep |achieve 843/8 |goto Netherstorm 75.8,62.5
step
Discover Celestial Ridge |achieve 843/11 |goto Netherstorm 72.5,38.7
step
Discover Manaforge Ultris |achieve 843/6 |goto Netherstorm 61.7,38.2
step
Discover Ethereum Staging Grounds |achieve 843/19 |goto Netherstorm 55.1,43.5
step
Discover Ruins of Farahlon |achieve 843/7 |goto Netherstorm 54.4,21.3
step
Discover Netherstone |achieve 843/13 |goto Netherstorm 49.5,17.0
step
Discover Eco-Dome Farfield |achieve 843/18 |goto Netherstorm 46.1,9.6
step
Discover Socrethar's Seat |achieve 843/20 |goto Netherstorm 29.9,16.0
step
Discover Forge Base: Oblivion |achieve 843/21 |goto Netherstorm 37.5,26.4
step
Discover The Stormspire |achieve 843/16 |goto Netherstorm 45.1,35.8
step
Discover Eco-Dome Midrealm |achieve 843/22 |goto Netherstorm 45.3,53.7
step
Discover Ruins of Enkaat |achieve 843/14 |goto Netherstorm 32.9,54.9
step
Discover Gyro-Plank Bridge |achieve 843/17 |goto Netherstorm 23.2,55.9
step
Discover Manaforge Ara |achieve 843/5 |goto Netherstorm 26.8,39.3
step
Explore Netherstorm |achieve 843
step
Congratulations, you have _earned_ the _Explore Outlands_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Northrend\\Frostbitten/Northern Exposure",{
condition_end=function() return achieved(2256) end,
achieveid={2257,2256},
description="Kill all of the extremely rare and hard to find Northrend Creatures.",
},[[
stickystart "Hunter"
step
kill Old Crystalbark##32357 |goto Borean Tundra 25.6,34.4
|tip He walks all around the Nexus so you may need to search for him.
achieve 2257/4
step
kill Fumblub Gearwind##32358 |goto Borean Tundra 63.8,26.6
|tip He is flying around this whole section of the map so you may need to search for him.
achieve 2257/5
step
kill Icehorn##32361 |achieve 2257/6 |goto Borean Tundra 88.6,39.8
If Icehorn is not here, you may be able to find him in the following locations:
Location 1: |goto 84.6,46.8
Location 2: |goto 80.8,46.0
Location 3: |goto 81.4,31.4
Location 4: |goto 85.8,34.6
Location 5: |goto 91.6,32.6
step
kill Crazed Indu'le Survivor##32409 |achieve 2257/11 |goto Dragonblight 26.6,58.6
|tip He walks around this area so you may need to search for him.
step
kill Tukemuth##32400 |achieve 2257/10 |goto Dragonblight 67.6,60.0
If Tukemuth is not here, you may be able to find him in the following locations:
Location 1: |goto 70.8,30.2
Location 2: |goto 62.6,42.2
Location 3: |goto 59.0,60.2
Location 4: |goto 54.6,56.8
Location 5: |goto 61.0,31.0
step
kill Scarlet Highlord Daion##32417 |achieve 2257/12 |goto Dragonblight 72.6,25.8
If Scarlet Highlord Daion is not here, you may be able to find him in the following locations:
Location 1: |goto 86.8,41.6
Location 2: |goto 72.0,74.0
step
kill Grocklar##32422 |achieve 2257/13 |goto Grizzly Hills 25.0,57.0
If Grocklar is not here, you may be able to find him in the following locations:
Location 1: |goto 13.2,48.6
Location 2: |goto 22.4,73.2
Location 3: |goto 12.2,70.6
step
kill Seething Hate##32429 |achieve 2257/14 |goto Grizzly Hills 40.2,48.8
If Seething Hate is not here, you may be able to find it in the following locations:
Locaiton 1: |goto 34.6,49.0
Location 2: |goto 28.6,45.8
step
kill Syreian the Bonecarver##32438 |achieve 2257/15 |goto Grizzly Hills 69.6,32.2
|tip She walks around in this area so you may need to search for her.
step
kill King Ping##32398 |achieve 2257/9 |goto Howling Fjord 33.2,80.6
|tip He is wandering about this island and the one north of it.
step
kill Vigdis the War Maiden##32386 |achieve 2257/8 |goto Howling Fjord 72.6,52.0
|tip She wanders around this area so you may need to search for her a bit.
step
kill Perobas the Bloodthirster##32377 |achieve 2257/7 |goto Howling Fjord 50.6,4.8
If Perobas the Bloodthirster is not here, you may be able to find him in the following locations:
Location 1: |goto 53.0,11.4
Location 2: |goto 60.8,20.2
Location 3: |goto 68.6,17.6
Location 4: |goto 71.6,13.8
step
kill High Thane Jorfus##32501 |achieve 2257/2 |goto Icecrown 48.6,80.2
If High Thane Jorfus is not here, you may be able to find him in the following locations:
Location 1: |goto 32.0,69.6
Location 2: |goto 60.8,20.2
Location 3: |goto 72.8,38.8
step
kill Hildana Deathstealer##32495 |achieve 2257/3 |goto Icecrown 32.4,29.6
If Hildana Deathstealer is not here, you may be able to find her in the following locations:
Location 1: |goto 31.8,41.8
Location 2: |goto 58.2,54.2
step
kill Putridus the Ancient##32487 |achieve 2257/23 |goto Icecrown 55.6,41.2
|tip He walks around this whole trench, so you may need to search for him.
step
kill Aotona##32481 |achieve 2257/19 |goto Sholazar Basin 54.8,52.6
If Aotona is not here, you may be able to find him in the following locations:
Location 1: |goto 58.2,64.0
Location 2: |goto 52.6,72.2
Location 3: |goto 41.8,69.6
Location 4: |goto 41.0,58.6
Location 5: |goto 45.8,54.4
step
kill King Krush##32485 |achieve 2257/20 |goto Sholazar Basin 64.6,81.0
If King Krush is not here, you may be able to find him in the following locations:
Location 1: |goto 59.0,80.8
Location 2: |goto 50.6,78.2
Location 3: |goto 27.6,45.2
Location 4: |goto 37.6,28.8
Location 5: |goto 49.8,45.0
step
kill Loque'nahak##32517 |achieve 2257/1 |goto Sholazar Basin 71.6,72.0
If Loque'nahak is not here, you may be able to find him in the following locations:
Location 1: |goto 67.0,79.6
Location 1: |goto 51.0,81.6
Location 1: |goto 22.6,70.6
Location 1: |goto 31.0,66.6
Location 1: |goto 36.6,31.0
Location 1: |goto 59.4,22.6
step
kill Dirkee##32500 |achieve 2257/22 |goto The Storm Peaks 68.0,47.6
If Dirkee is not here, you may be able to find him in the following locations:
Location 1: |goto 37.8,58.6
Location 2: |goto 41.0,51.6
Location 3: |goto 41.6,40.6
step
kill Vyragosa##32630 |achieve 2257/21 |goto The Storm Peaks 41.2,59.0
|tip This dragon flies around the whole zone so you may need to search for him a bit.
step
kill Griegen##32471 |achieve 2257/17 |goto Zul'Drak 21.2,79.8
If Griegen is not here, you may be able to find him in the following locations:
Location 1: |goto 25.8,76.8
Location 2: |goto 26.6,71.2
Location 3: |goto 22.0,70.6
Location 4: |goto 18.0,70.6
Location 5: |goto 14.6,56.8
Location 6: |goto 23.0,62.8
Location 7: |goto 26.6,55.4
step
kill Zul'drak Sentinel##32447 |achieve 2257/16 |goto Zul'Drak 40.4,64.0
|tip He wanders around this area so you may need to search for him.
step
kill Terror Spinner##32475 |achieve 2257/18 |goto Zul'Drak 53.6,31.6
If Terror Spinner is not here, you may be able to find him in the following locations:
Location 1: |goto 61.2,36.6
Location 2: |goto 71.6,23.4
Location 3: |goto 72.2,28.4
Location 4: |goto 81.6,34.6
Location 5: |goto 77.6,42.8
Location 6: |goto 74.8,66.4
step
label "Hunter"
If you want to tame the beasts found on this list, it is now possible to do so _AND_ still get credit for the kill!
|only Hunter
step
Congratulations, you have _earned_ the _Northern Exposure_ achievement! |only if achieved(2256)
Congratulations, you have _earned_ the _Frostbitten_ achievement! |only if achieved(2257)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Northrend\\Northrend Explorer",{
condition_end=function() return achieved(45) end,
achieveid={1264,1263,1265,1266,1267,1268,1457,1269,1270,45},
description="Explore the regions of Northrend.",
},[[
step
Discover Valiance Keep |achieve 1264/11 |goto Borean Tundra 57.7,69.3
step
Discover Warsong Hold |achieve 1264/10 |goto Borean Tundra 43.4,53.2
step
Discover Riplash Stand |achieve 1264/3 |goto Borean Tundra 47.4,81.1
step
Discover Garrosh's Landing |achieve 1264/5 |goto Borean Tundra 27.9,51.6
step
Discover Coldarra |achieve 1264/7 |goto Borean Tundra 25.8,38.4
step
Discover Amber Ledge |achieve 1264/9 |goto Borean Tundra 46.1,34.8
step
Discover Steeljaw's Carvan |achieve 1264/2 |goto Borean Tundra 50.2,24.3
step
Discover Bor'gorok Outpost |achieve 1264/8 |goto Borean Tundra 50.2,10.3
step
Discover The Geyser Fields |achieve 1264/12 |goto Borean Tundra 66.3,28.5
step
Discover Kaskala |achieve 1264/4 |goto Borean Tundra 66.2,51.1
step
Discover Death's Stand |achieve 1264/6 |goto Borean Tundra 82.4,46.4
step
Discover Temple City of En'kilah |achieve 1264/1 |goto Borean Tundra 87.6,25.1
step
Discover The Dens of the Dying |achieve 1264/13 |goto Borean Tundra 76.4,16.4
step
Explore Borean Tundra |achieve 1264
step
Discover Makers' Overlook |achieve 1268/4 |goto Sholazar Basin 81.0,55.4
step
Discover The Lifeblood Pillar |achieve 1268/8 |goto Sholazar Basin 65.9,60.1
step
Discover Rainspeaker Canopy |achieve 1268/7 |goto Sholazar Basin 53.7,52.5
step
Discover River's Heart |achieve 1268/1 |goto Sholazar Basin 48.0,63.2
step
Discover The Mosslight Pillar |achieve 1268/3 |goto Sholazar Basin 36.0,75.3
step
Discover Kartak's Hold |achieve 1268/11 |goto Sholazar Basin 24.3,81.7
step
Discover The Suntouched Pillar |achieve 1268/6 |goto Sholazar Basin 33.3,52.3
step
Discover Makers' Perch |achieve 1268/5 |goto Sholazar Basin 29.7,40.1
step
Discover The Stormwright's Shelf |achieve 1268/12 |goto Sholazar Basin 24.5,33.5
step
Discover The Savage Thicket |achieve 1268/2 |goto Sholazar Basin 46.8,26.1
step
Discover The Glimmering Pillar |achieve 1268/10 |goto Sholazar Basin 50.0,36.0
step
Discover The Avalanche |achieve 1268/9 |goto Sholazar Basin 74.5,34.6
step
Explore Sholazar Basin |achieve 1268
step
Discover Onslaught Harbor |achieve 1270/3 |goto Icecrown 8.9,42.9
step
Discover Jotunheim |achieve 1270/13 |goto Icecrown 27.1,39.0
step
Discover Valhalas |achieve 1270/8 |goto Icecrown 36.5,24.1
step
Discover The Shadow Vault |achieve 1270/15 |goto Icecrown 44.4,22.6
step
Discover Aldur'thar: The Desolation Gate |achieve 1270/6 |goto Icecrown 52.8,30.6
step
Discover The Bombardment |achieve 1270/1 |goto Icecrown 63.7,44.0
step
Discover Sindragosa's Fall |achieve 1270/7 |goto Icecrown 74.0,37.7
step
Discover Scourgeholme |achieve 1270/14 |goto Icecrown 78.4,60.2
step
Discover Valley of Echoes |achieve 1270/9 |goto Icecrown 83.8,73.4
step
Discover The Broken Front |achieve 1270/4 |goto Icecrown 69.2,64.4
step
Discover Ymirheim |achieve 1270/10 |goto Icecrown 54.9,56.2
step
Discover The Conflagration |achieve 1270/11 |goto Icecrown 43.6,56.5
step
Discover The Fleshwerks |achieve 1270/5 |goto Icecrown 33.1,66.4
step
Discover Corp'rethar: The Horror Gate |achieve 1270/12 |goto Icecrown 48.4,70.6
step
Discover Icecrown Citadel |achieve 1270/2 |goto Icecrown 54.2,85.8
step
Explore Icecrown |achieve 1270
step
Discover Angrathar the Wrath Gate |achieve 1265/10 |goto Dragonblight 36.0,15.0
step
Discover Obsidian Dragonshrine |achieve 1265/3 |goto Dragonblight 38.4,31.9
step
Discover Icemist Village |achieve 1265/7 |goto Dragonblight 25.1,43.2
step
Discover Westwind Refugee Camp |achieve 1265/13 |goto Dragonblight 13.8,46.2
step
Discover Agmar's Hammer |achieve 1265/11 |goto Dragonblight 36.9,47.8
step
Discover Lake Indu'le |achieve 1265/2 |goto Dragonblight 39.7,67.0
step
Discover Galakrond's Rest |achieve 1265/1 |goto Dragonblight 54.9,32.7
step
Discover Wyrmrest Temple |achieve 1265/12 |goto Dragonblight 59.7,49.8
step
Discover Emerald Dragonshrine |achieve 1265/8 |goto Dragonblight 63.5,72.7
step
Discover New Hearthglen |achieve 1265/4 |goto Dragonblight 71.0,75.2
step
Discover Venomspite |achieve 1265/14 |goto Dragonblight 77.1,60.0
step
Discover The Forgotten Shore |achieve 1265/15 |goto Dragonblight 82.5,70.7
step
Discover Naxxramas |achieve 1265/5 |goto Dragonblight 88.9,44.0
step
Discover Light's Trust |achieve 1265/6 |goto Dragonblight 83.6,25.6
step
Discover Scarlet Point |achieve 1265/17 |goto Dragonblight 72.7,25.6
step
Discover The Crystal Vice |achieve 1265/16 |goto Dragonblight 61.8,19.5
step
Discover Coldwind Heights |achieve 1265/9 |goto Dragonblight 50.0,17.5
step
Explore Dragonblight |achieve 1265
step
Discover The Azure Front |achieve 1457/1 |goto Crystalsong Forest 26.4,61.4
step
Discover Violet Stand |achieve 1457/7 |goto Crystalsong Forest 14.5,44.1
step
Discover The Great Tree |achieve 1457/6 |goto Crystalsong Forest 13.1,33.9
step
Discover The Decrepit Flow |achieve 1457/2 |goto Crystalsong Forest 16.0,15.4
step
Discover Forlorn Woods |achieve 1457/4 |goto Crystalsong Forest 43.0,42.5
step
Discover The Unbound Thicket |achieve 1457/8 |goto Crystalsong Forest 64.7,60.4
step
Discover Windrunner's Overlook |achieve 1457/5 |goto Crystalsong Forest 75.2,83.0
step
Discover Sunreaver's Command |achieve 1457/3 |goto Crystalsong Forest 76.9,46.3
step
Explore Crystalsong Forest |achieve 1457
step
Discover Sparksocket Minefield |achieve 1269/7 |goto The Storm Peaks 35.1,84.0
step
Discover Bor's Breath |achieve 1269/4 |goto The Storm Peaks 35.3,68.7
step
Discover Temple of Storms |achieve 1269/12 |goto The Storm Peaks 35.9,58.0
step
Discover Frosthold |achieve 1269/15 |goto The Storm Peaks 29.4,73.8
step
Discover Valkyrion |achieve 1269/5 |goto The Storm Peaks 24.0,60.5
step
Discover Nidavelir |achieve 1269/16 |goto The Storm Peaks 23.9,50.1
step
Discover Snowdrift Plains |achieve 1269/13 |goto The Storm Peaks 27.3,41.9
step
Discover Narvir's Cradle |achieve 1269/2 |goto The Storm Peaks 32.2,39.6
step
Discover Ulduar |achieve 1269/10 |goto The Storm Peaks 41.3,17.4
step
Discover Terrace of the Makers |achieve 1269/6 |goto The Storm Peaks 50.3,44.7
step
Discover Temple of Life |achieve 1269/9 |goto The Storm Peaks 64.8,44.8
step
Discover Thunderfall |achieve 1269/11 |goto The Storm Peaks 72.9,48.5
step
Discover Dun Niffelem |achieve 1269/3 |goto The Storm Peaks 64.4,59.1
step
Discover Engine of the Makers |achieve 1269/8 |goto The Storm Peaks 40.9,57.2
step
Discover Brunnhildar Village |achieve 1269/1 |goto The Storm Peaks 47.8,68.2
step
Discover Garm's Bane |achieve 1269/14 |goto The Storm Peaks 47.1,81.6
step
Explore The Storm Peaks |achieve 1269
step
Discover Thrym's End |achieve 1267/12 |goto Zul'Drak 17.0,57.3
step
Discover Voltarus |achieve 1267/11 |goto Zul'Drak 28.2,45.1
step
Discover Altar of Sseratus |achieve 1267/4 |goto Zul'Drak 40.5,38.8
step
Discover Altar of Rhunok |achieve 1267/5 |goto Zul'Drak 53.3,36.5
step
Discover Gundrak |achieve 1267/1 |goto Zul'Drak 83.7,16.7
step
Discover Altar of Mam'toth |achieve 1267/7 |goto Zul'Drak 73.2,45.6
step
Discover Altar of Quetz'lun |achieve 1267/6 |goto Zul'Drak 76.9,59.3
step
Discover Zim'Torga |achieve 1267/9 |goto Zul'Drak 59.3,57.8
step
Discover Altar of Har'koa |achieve 1267/8 |goto Zul'Drak 64.4,68.9
step
Discover Kolrama |achieve 1267/14 |goto Zul'Drak 62.0,77.6
step
Discover Ampitheater of Anguish |achieve 1267/3 |goto Zul'Drak 48.2,56.4
step
Discover Drak'Sorta Fields |achieve 1267/2 |goto Zul'Drak 41.7,76.8
step
Discover Light's Breach |achieve 1267/13 |goto Zul'Drak 32.0,76.4
step
Discover Zeramas |achieve 1267/10 |goto Zul'Drak 21.1,75.2
step
Explore Zul'Drak |achieve 1267
step
Discover Drak'Tharon Keep |achieve 1266/2 |goto Grizzly Hills 17.5,23.6
step
Discover Granite Springs |achieve 1266/5 |goto Grizzly Hills 15.8,49.6
step
Discover Conquest Hold |achieve 1266/1 |goto Grizzly Hills 21.3,65.3
step
Discover Venture Bay |achieve 1266/9 |goto Grizzly Hills 14.5,84.4
step
Discover Voldrune |achieve 1266/10 |goto Grizzly Hills 29.0,76.5
step
Discover Amberpine Lodge |achieve 1266/11 |goto Grizzly Hills 31.4,57.9
step
Discover Blue Sky Logging Grounds |achieve 1266/12 |goto Grizzly Hills 36.0,37.9
step
Discover Grizzlemaw |achieve 1266/6 |goto Grizzly Hills 48.2,42.2
step
Discover Westfall Brigade Encampment |achieve 1266/14 |goto Grizzly Hills 56.8,28.4
step
Discover Thor Modan |achieve 1266/8 |goto Grizzly Hills 68.1,14.8
step
Discover Drakil'jin Ruins |achieve 1266/3 |goto Grizzly Hills 71.8,27.9
step
Discover Camp Oneqwah |achieve 1266/13 |goto Grizzly Hills 64.9,45.6
step
Discover Dun Argol |achieve 1266/4 |goto Grizzly Hills 77.9,59.3
step
Discover Rage Fang Shrine |achieve 1266/7 |goto Grizzly Hills 50.3,57.2
step
Explore Grizzly Hills |achieve 1266
step
Discover Gjalerbron |achieve 1263/9 |goto Howling Fjord 36.6,9.5
step
Discover Camp Winterhoof |achieve 1263/3 |goto Howling Fjord 47.8,12.1
step
Discover The Twisted Glade |achieve 1263/17 |goto Howling Fjord 54.2,16.8
step
Discover Fort Wildervar |achieve 1263/12 |goto Howling Fjord 60.7,12.8
step
Discover Giant's Run |achieve 1263/11 |goto Howling Fjord 68.6,26.5
step
Discover Vengeance Landing |achieve 1263/5 |goto Howling Fjord 78.1,27.3
step
Discover Ivald's Ruin |achieve 1263/13 |goto Howling Fjord 78.2,46.2
step
Discover Baelgun's Excavation Site |achieve 1263/20 |goto Howling Fjord 72.5,71.3
step
Discover Nifflevar |achieve 1263/8 |goto Howling Fjord 67.9,52.8
step
Discover Baleheim |achieve 1263/21 |goto Howling Fjord 66.6,39.1
step
Discover Cauldros Isle |achieve 1263/2 |goto Howling Fjord 57.6,35.9
step
Discover Utgarde Keep |achieve 1263/18 |goto Howling Fjord 58.3,45.9
step
Discover Halgrind |achieve 1263/14 |goto Howling Fjord 50.1,54.1
step
Discover New Agamand |achieve 1263/15 |goto Howling Fjord 52.9,69.0
step
Discover Scalawag Point |achieve 1263/7 |goto Howling Fjord 34.3,75.5
step
Discover Kamagua |achieve 1263/1 |goto Howling Fjord 24.9,57.7
step
Discover Ember Clutch |achieve 1263/10 |goto Howling Fjord 40.0,50.6
step
Discover Skorn |achieve 1263/16 |goto Howling Fjord 45.1,33.1
step
Discover Westguard Keep |achieve 1263/19 |goto Howling Fjord 30.3,41.4
step
Discover Steel Gate |achieve 1263/6 |goto Howling Fjord 31.3,25.9
step
Discover Apothecary Camp |achieve 1263/4 |goto Howling Fjord 27.0,24.1
step
Explore Howling Fjord |achieve 1263
step
Congratulations, you have _earned_ the _Explore Northrend_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Cataclysm Explorer",{
achieveid={4868},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Exploration"},
description="This guide will walk you through completing the \"Cataclysm Explorer\" Achievement.",
},[[
step
Explore Mount Hyjal |achieve 4863
Click here to load the "Explore Hyjal" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal"
Explore Vashj'ir |achieve 4825
Click here to load the "Explore Vash'ir" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir"
Explore Deepholm |achieve 4864
Click here to load the "Explore Deepholm" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm"
Explore Uldum |achieve 4865
Click here to load the "Explore Uldum" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum"
Explore Twilight Highlands |achieve 4866
Click here to load the "Explore Twilight Highlands" guide |confirm |next "Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands"
step
_Congratulations!_
You have earned the _Cataclysm Explorer_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Deepholm",{
achieveid={4864},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Exploration"},
description="This guide will walk you through completing the \"Explore Deepholm\" Achievement.",
},[[
step
Explore the Temple of Earth |achieve 4864/6 |goto Deepholm/0 48.94,53.28
step
Leave the Temple |goto 49.99,55.38 < 30
Explore the Storm's Fury Wreckage |achieve 4864/5 |goto 56.79,73.02
step
Explore the Twilight Overlook |achieve 4864/10 |goto 68.36,77.99
step
Explore Deathwing's Fall |achieve 4864/1 |goto 68.03,67.74
step
Explore the Crimson Expanse |achieve 4864/12 |goto 71.64,51.65
step
Explore Therazane's Throne |achieve 4864/8 |goto 57.73,16.98
step
Explore The Pale Roost |achieve 4864/7 |goto 49.21,17.02
step
Explore the Needlerock Chasm |achieve 4864/2 |goto 33.61,28.51
step
Explore the Needlerock Slag |achieve 4864/3 |goto 23.57,46.53
step
Explore Stonehearth |achieve 4864/4 |goto 27.28,69.88
step
Explore The Quaking Fields |achieve 4864/9 |goto 31.57,77.30
step
Explore the Masters' Gate |achieve 4864/11 |goto 40.12,71.58
step
_Congratulations!_
You have earned the _Explore Deepholm_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Hyjal",{
achieveid={4863},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Exploration"},
description="This guide will walk you through completing the \"Explore Hyjal\" Achievement.",
},[[
step
Explore Nordrassil |achieve 4863/6 |goto Mount Hyjal/0 62,25
step
Explore the Circle of Cinders |achieve 4863/2 |goto 51.40,24.97
step
Explore the Shrine of Goldrin |achieve 4863/8 |goto 27.58,29.19
step
Explore the Rim of the World |achieve 4863/1 |goto 22.19,36.89
step
Explore the Ashen Lake |achieve 4863/3 |goto 19.50,43.90
step
Explore The Flamewake |achieve 4863/9 |goto 26.03,54.56
step
Explore Sethria's Roost |achieve 4863/7 |goto 33.30,74.05
step
Explore The Scorched Plain |achieve 4863/10 |goto 46.64,58.90
step
Explore The Throne of Flame  |achieve 4863/11 |goto 50.26,71.98
step
Explore the Gates of Sothann |achieve 4863/5 |goto 67,75
step
Explore the Darkwhisper Gorge |achieve 4863/4 |goto 76,65
step
_Congratulations!_
You have earned the _Explore Hyjal_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Twilight Highlands",{
achieveid={4866},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Exploration"},
description="This guide will walk you through completing the \"Explore Twilight Highlands\" Achievement.",
},[[
step
Explore Dragonmaw Port |achieve 4866/5 |goto Twilight Highlands/0 75,57
step
Explore the Slithering Cove |achieve 4866/17 |goto 71.73,48.14
step
Explore The Black Breach |achieve 4866/18 |goto 60.26,30.98
step
Explore the Krazzworks |achieve 4866/20 |goto 73.60,21.23
step
Explore Kirthaven |achieve 4866/14 |goto 57.36,19.01
step
Explore The Maw of Madness |achieve 4866/27 |goto 51.06,10.84
step
Explore the Ruins of Drakgor |achieve 4866/16 |goto 44.19,13.81
step
Explore Humboldt Conflagration |achieve 4866/13 |goto 39.38,21.75
step
Explore Thundermar |achieve 4866/22 |goto 46.91,28.19
step
Explore the Bloodgulch |achieve 4866/1 |goto 55.71,40.84
step
Explore the Gorshak War Camp |achieve 4866/9 |goto 60.40,47.26
step
Explore Firebeard's Patrol |achieve 4866/7 |goto 60.94,55.84
step
Explore the Highland Forest |achieve 4866/12 |goto 62.12,60.66
step
Explore the Crucible of Carnage |achieve 4866/2 |goto 52.38,56.08
step
Explore Victor's Point |achieve 4866/25 |goto 44.39,57.83
step
Explore The Twighlight Breach |achieve 4866/21 |goto 41.56,50.59
step
Explore The Gullet |achieve 4866/19 |goto 37.28,39.71
step
Explore Glopgut's Hollow |achieve 4866/8 |goto 35.99,35.06
step
Explore the Vermillion Redoubt |achieve 4866/24 |goto 33.96,32.86
step
Explore the Dragonmaw Pass |achieve 4866/4 |goto 25.32,36.59
step
Explore Wyrms' Bend |achieve 4866/26 |goto 28.67,45.98
step
Explore Grim Batol |achieve 4866/10 |goto 23.86,56.16
step
Explore The Twilight Breach |achieve 4866/21 |goto 29,73
step
Explore the Dunwald Ruins |achieve 4866/6 |goto 45.80,69.23
step
Explore the Crushblow |achieve 4866/3 |goto 47.19,76.06
step
Explore the Obsidian Forest |achieve 4866/15 |goto 57.06,81.13
step
Explore the Twilight Shore |achieve 4866/23 |goto 71.03,70.98
step
Explore Highbank |achieve 4866/11 |goto 77.04,74.73
step
_Congratulations!_
You have earned the _Explore Twilight Highlands_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Uldum",{
achieveid={4865},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Exploration"},
description="This guide will walk you through completing the \"Explore Uldum\" Achievement.",
},[[
step
Explore Ramkahen |achieve 4865/12 |goto Uldum/0 54.91,34.24
step
Explore the Tahret Grounds |achieve 4865/16 |goto 59.89,37.83
step
Explore the Obelisk of the Stars |achieve 4865/9 |goto 62.94,32.54
step
Explore Khartut's Tomb |achieve 4865/3 |goto 64.10,21.83
step
Explore The Gate of Unending Cycles |achieve 4865/19 |goto 67.88,22.49
step
Explore Nahom |achieve 4865/6 |goto 67.01,41.29
step
Explore the Tombs of the Precursors |achieve 4865/20 |goto 71.85,44.77
step
Explore The Cursed Landing |achieve 4865/18 |goto 83.93,53.02
step
Explore The Trail of Devastation |achieve 4865/21 |goto 79.78,56.31
step
Explore the Lost City of the Tol'vir |achieve 4865/4 |goto 63.77,70.60
step
Explore Neferset City |achieve 4865/7 |goto 50.85,77.24
step
Explore the Cradle of the Ancients |achieve 4865/2 |goto 46.61,73.90
step
Explore the Ruins of Ammon |achieve 4865/14 |goto 36.64,66.13
step
Explore Schnottz's Landing |achieve 4865/15 |goto 24.48,61.18
step
Explore the Obelisk of the Sun |achieve 4865/10 |goto 41.88,56.64
step
Explore Akhenet Fields |achieve 4865/1 |goto 53.95,52.09
step
Explore the Vir'naal Dam |achieve 4865/22 |goto 53.49,42.15
step
Explore Mar'at |achieve 4865/5 |goto 49.53,39.46
step
Explore Orsis |achieve 4865/11 |goto 43.89,37.25
step
Explore the Temple of Uldum |achieve 4865/17 |goto 34.47,30.31
step
Explore the Obelisk of the Moon |achieve 4865/8 |goto 39.67,21.81
step
Explore the Ruins of Ahmtul |achieve 4865/13 |goto 45.02,15.04
step
_Congratulations!_
You have earned the _Explore Uldum_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Explore Vashj'ir",{
achieveid={4825},
author="support@zygorguides.com",
startlevel=85,
endlevel=85,
keywords={"Explore","Vasj'ir","Exploration"},
description="This guide will walk you through completing the \"Explore Vashj'ir\" Achievement.",
},[[
step
You will need to complete some quests in Vashj'ir so you don't drown while epxloring
|tip It is recommended that you complete the leveling guide up to The Abyssal Ride.
accept The Abyssal Ride##25371 |goto Kelp'thar Forest/0 46,46.8 |or
Click here to load the Vashj'ir leveling guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Vashj'ir (80-90)" |or
step
Explore Legion's Fate |achieve 4825/14 |goto Kelp'thar Forest/0 42.19,34.46
step
Explore Seafarer's Tomb |achieve 4825/13 |goto 51.04,28.03
step
Explore Gurboggle's Ledge |achieve 4825/11 |goto 52.05,51.03
step
Explore the Skeletal Reef |achieve 4825/15 |goto 58.02,48.05
step
Explore Gnaws' Boneyard |achieve 4825/10 |goto 59.96,58.01
step
Explore The Clutch |achieve 4825/12 |goto 57.97,77.71
step
Explore the Shimmering Grotto |achieve 4825/20 |goto Shimmering Expanse/0 55.75,22.23
step
Explore the Silver Tide Hollow |achieve 4825/21 |goto 51.68,34.90
step
Explore the Glimmeringdeep Gorge |achieve 4825/9 |goto 48.27,46.62
step
Explore Nespirah |achieve 4825/17 |goto 51.06,48.26
step
Explore the Ruins of Thelserai Temple |achieve 4825/18 |goto 65.84,44.67
step
Explore Beth'more Ridge |achieve 4825/16 |goto 50.5,76.4
step
Explore the Ruins of Vashj'ir |achieve 4825/19 |goto 41.55,63.99
step
Explore the Abyssal Breach |achieve 4825/2 |goto Abyssal Depths/0 75.03,39.38
step
Explore the Seabrush |achieve 4825/7 |goto 58.78,33.55
step
Explore The Scalding Chasm |achieve 4825/8 |goto 52.48,28.87
step
Explore the Deepfin Ridge |achieve 4825/4 |goto 42.72,25.95
step
Explore the Underlight Canyon |achieve 4825/3 |goto 43.09,49.83
step
Explore L'Ghorek |achieve 4825/6 |goto 40.33,51.57
|tip You will likely be dismounted and have to swim back out a bit before being able to mount again.
step
Explore the Abandoned Reef |achieve 4825/1 |goto 38.61,68.30
step
Explore Korthun's End |achieve 4825/5 |goto 48.80,68.15
step
_Congratulations!_
You have earned the _Explore Vashj'ir_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\From Hell's Heart I Stab At Thee",{
achieveid={4975},
description="This guide will walk you through defeating the Whale Shark in Vashj'ir (despite or perhaps because of the fact that he drops no loot).",
},[[
step
The Whale Shark swims in a circle around Nespirah so some searching may be required
Take note that even at 100, it still hits pretty hard
kill Whale Shark##40728 |goto Shimmering Expanse 70.6,55.0
achieve 4975
step
Congratulations, you have earned the From Hell's Heart I Stab At Thee achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Stood in the Fire",{
achieveid={5518},
description="Get killed by Deathwing.",
},[[
step
This achievement requires you to get to the end of the _Dragon Soul_ raid, and fight the final stage of Deathwing
During the fight, _Deathwing_ will cast _Cataclysm_
Do not hit him and let the entire raid wipe in the fire
Get the _Stood in the Fire_ achievement |achieve 5518
step
Congratulations!  You've earned the Stood in the Fire achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Exploration\\Cataclysm\\Surveying the Damage",{
achieveid={4827},
description="This guide will walk you through exploring areas in Kalimdor and the Eastern Kingdoms to see the changes wrought by the Cataclysm.",
},[[
step
View The Raging Chasm in Westfall |achieve 4827/13 |goto Westfall/0 38.5,42.3
step
View The Sundering in Stranglethorn |achieve 4827/4 |goto Northern Stranglethorn 50.4,66.5
step
View The Scar of the Worldbreaker in Badlands |achieve 4827/1 |goto Badlands/0 43.4,42.5
step
View The Stonewrought Dam in Loch Modan |achieve 4827/10 |goto Loch Modan/0 42.0,11.3
step
View Ruins of Southshore in Hillsbrad Foothills |achieve 4827/13 |goto Hillsbrad Foothills/0 51.3,71.4
step
View The Greymane Wall in Silverpine |achieve 4827/3 |goto Ruins of Gilneas/0 60.2,10.5
step
View The Battlescar in Southern Barrens |achieve 4827/6 |goto Southern Barrens/0 45.5,70.3
step
View The Valley of the Watchers in Tanaris |achieve 4827/8 |goto Tanaris/0 37.7,78.9
step
View The Shimmering Deep in Thousand Needles |achieve 4827/2 |goto Thousand Needles/0 74.4,82.1
step
View the Cenarion Wildlands in Desolace |achieve 4827/11 |goto Desolace/0 57.5,54.3
step
View Thunder Peak in Ashenvale |achieve 4827/7 |goto Ashenvale/0 48.2,53.5
step
View the Southfury Watershed in Durotar |achieve 4827/12 |goto Durotar/0 38.8,38.5
step
View the Ruins of Auberdine in Darkshore |achieve 4827/9 |goto Darkshore/0 38.6,45.3
step
Congratulations, you have earned the Surveying the Damage achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Breaking The Sound Barrier",{
achieveid={5180},
description="Learn the master riding skill.",
},[[
step
This achievement _requires_ level 80
The cost of this riding training is _5000 Gold_
|tip The price can be reduced by home faction discounts based on current reputation.
talk Maztha##44919
learn Expert Riding##34090 |achieve 5180 |goto Orgrimmar 49.0,59.6
|tip You can purchase a flying mount from Drakma, who is just behind her.
step
Congratulations, you have _earned_ the _Breaking The Sound Barrier_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Delicious", {
achieveid={5753},
description="Sample Cataclysm delicacies.",
},[[
step
In order to get this achievement, it is suggested that you have a _Cooking_ skill of at least 500, and a _Fishing_ skill of at least 500.
If you don't have _Cooking_, you may be able to buy all of the items needed from the _Auction House_.
|tip You will need at least 79 Epicurean's Awards to complete this achievement.
confirm
step
talk Lenedil Moonwing##43411
buy 1 Tasty Puffball##58279 |condition itemcount(58279) >= 1 |achieve 5753 |goto Mount Hyjal/0 62.84,23.73
step
Sample a Tasty Puffball |use Tasty Puffball##58279 |achieve 5753/42
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Nordrassil |cast Fishing##7620
collect 1 Mountain Trout##53063 |achieve 5753 |goto 61.56,23.90
collect 2 Striped Lurker##53067 |achieve 5753 |goto 61.56,23.90
step
Enter the inn |goto Uldum/0 54.91,33.51
talk Kazemde##48886
buy 1 Hardtack##58275 |condition itemcount(58275) >= 1 |achieve 5753 |goto 54.68,32.94
buy 1 Pine Nut Bread##58260 |condition itemcount(58260) >= 1 |achieve 5753 |goto 54.68,32.94
buy 1 Simmered Squid##58277 |condition itemcount(58277) >= 1 |achieve 5753 |goto 54.68,32.94
buy 1 Sliced Raw Billfish##58262 |condition itemcount(58262) >= 1 |achieve 5753 |goto 54.68,32.94
buy 1 Grilled Shark##58263 |condition itemcount(58263) >= 1 |achieve 5753 |goto 54.68,32.94
step
Sample a Grilled Shark |use Grilled Shark##58263 |achieve 5753/15
Sample a Simmered Squid |use Simmered Squid##58277 |achieve 5753/36
Sample a Sliced Raw Billfish |use Sliced Raw Billfish##58262 |achieve 5753/38
Sample a piece of Hardtack |use Hardtack##58275 |achieve 5753/16
Sample a Pine Nut Bread |use Pine Nut Bread##58260 |achieve 5753/28
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in the waters of Ramkahen |cast Fishing##7620
collect 2 Lavascale Catfish##53068 |achieve 5753 |goto 54.36,37.75
collect 3 Sharptooth##53062 |achieve 5753 |goto 54.36,37.75
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Blackbelly Mudfish Schools around Ramkahen |cast Fishing##7620
|tip These can be found all around the lake.
collect 2 Blackbelly Mudfish##53066 |achieve 5753 |goto 54.36,37.75
step
kill Riverbed Crocolisk##45321+
collect 2 Crocolisk Tail##62784 |achieve 5753 |goto 56.04,46.20
step
kill Marsh Serpent##51676+
collect 1 Toughened Flesh##62778 |achieve 5753 |goto 62.82,79.47
|tip Serpents can be found on land around this area.
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Fathom Eel Swarms |cast Fishing##7620
|tip These can be found all along the coast.
collect 1 Fathom Eel##53070 |achieve 5753 |goto 64.76,79.61
step
kill Green Sand Crab##39418+
collect 1 Monstrous Claw##62779 |achieve 5753 |goto Shimmering Expanse/0 42.72,34.48
step
kill Speckled Sea Turtle##40223+
collect 1 Giant Turtle Tongue##62781 |achieve 5753 |goto Kelp'thar Forest/0 52.60,45.01
step
kill Brinescale Serpent##39948+
collect 1 Snake Eye##62780 |achieve 5753 |goto 56.50,38.51
step
talk Lizzy "Lemons"##49519
buy 1 Highland Sheep Cheese##58259 |condition itemcount(58259) >= 1 |achieve 5753 |goto Twilight Highlands/0 76.27,52.64
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Stewed Rabbit##58280 |condition itemcount(58280) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Roasted Beef##58268 |condition itemcount(58268) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Massive Turkey Leg##58269 |condition itemcount(58269) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Tropical Sunfruit##58278 |condition itemcount(58278) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Sour Green Apple##58264 |condition itemcount(58264) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Gilnean White##58276 |condition itemcount(58276) >= 1 |achieve 5753 |goto 76.27,52.64
buy 1 Smoked String Cheese##58258 |condition itemcount(58258) >= 1 |achieve 5753 |goto 76.27,52.64
step
Sample a Stewed Rabbit |use Stewed Rabbit##58280 |achieve 5753/41
Sample a Roasted Beef |use Roasted Beef##58268 |achieve 5753/29
Sample a Massive Turkey Leg |use Massive Turkey Leg##58269 |achieve 5753/24
Sample a Tropical Sunfruit |use Tropical Sunfruit##58278 |achieve 5753/44
Sample a Sour Green Apple |use Sour Green Apple##58264 |achieve 5753/40
Sample a Highland Pomegranate |use Highland Pomegranate##58265 |achieve 5753/18
Sample a Highland Sheep Cheese |use Highland Sheep Cheese##58259 |achieve 5753/19
Sample a Gilnean White |use Gilnean White##58276 |achieve 5753/13
Sample a Smoked String Cheese |use Smoked String Cheese##58258 |achieve 5753/39
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Stand on the rock
Fish in the waters off Highbank |cast Fishing##7620
collect 1 Algaefin Rockfish##53071 |goto 72.39,53.74
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Deepsea Sagefish Schools |cast Fishing##7620
|tip These can be found all along the coast.
collect 2 Deepsea Sagefish##53072 |achieve 5753 |goto 72.39,53.74
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in open water |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5753 |goto 72.39,53.74
step
kill Obsidian Viletongue##47796+, Obsidian Pyrewing##46141+, Obsidian Charscale##47797+
collect 1 Dragon Flank##62782 |achieve 5753 |goto 65.2,79.0
step
talk Gronk Hamcheeks##57262
buy 1 Oily Giblets##59231 |condition itemcount(59231) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Unidentifiable Meat Dish##59232 |condition itemcount(59232) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Rock-Hard Biscuit##59227 |condition itemcount(59227) >= 1 |achieve 5753 |goto 50.46,58.47
buy 1 Vile Purple Fungus##59228 |condition itemcount(59228) >= 1 |achieve 5753 |goto 50.46,58.47
step
Sample some Oily Giblets |use Oily Giblets##59231 |achieve 5753/26
Sample an Unidentifiable Meat Dish |use Unidentifiable Meat Dish##59232 |achieve 5753/45
Sample a Rock-Hard Biscuit |use Rock-Hard Biscuit##59227 |achieve 5753/30
Sample a Vile Purple Fungus |use Vile Purple Fungus##59228 |achieve 5753/46
step
Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
Fish in Highland Guppy Schools |cast Fishing##7620
|tip These can be found in the river also.
collect 1 Highland Guppy##53064 |achieve 5753 |goto 39.53,56.43
step
kill Shalehide Basilisk##43181+
collect 1 Basilisk "Liver"##62783 |achieve 5753 |goto Deepholm/0 41.12,32.78
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Broiled Mountain Trout##65411 |condition itemcount(65411) >= 1 |achieve 5753 |goto Orgrimmar/1 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Broiled Mountain Trout from the Auction House.
step
learn Broiled Mountain Trout##88012 |use Recipe: Broiled Mountain Trout##65411 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Broiled Mountain Trout##88012,Cooking,1 total |achieve 5753
step
Sample a Broiled Mountain Trout |use Broiled Mountain Trout##62655 |achieve 5753/6
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Lavascale Fillet##65407 |condition itemcount(65407) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lavascale Fillet from the Auction House.
step
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Fillet##88024,Cooking,1 total |achieve 5753
step
Sample a Lavascale Fillet |use Lavascale Fillet##62654 |achieve 5753/20
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Lightly Fried Lurker##65412 |condition itemcount(65412) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lightly Fried Lurker from the Auction House.
step
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lightly Fried Lurker##88028,Cooking,1 total |achieve 5753
step
Sample a Lightly Fried Lurker |use Lightly Fried Lurker##62651 |achieve 5753/22
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Lurker Lunch##65416 |condition itemcount(65416) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Lurker Lunch from the Auction House.
step
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lurker Lunch##88030,Cooking,1 total |achieve 5753
step
Sample a Lurker Lunch |use Lurker Lunch##62657 |achieve 5753/23
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Salted Eye##65410 |condition itemcount(65410) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Salted Eye from the Auction House.
step
learn Salted Eye##88035 |use Recipe: Salted Eye##65410 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Salted Eye##88035,Cooking,1 total |achieve 5753
step
Sample a Salted Eye |use Salted Eye##62653 |achieve 5753/31
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Seasoned Crab##65413 |condition itemcount(65413) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Seasoned Crab from the Auction House.
step
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Seasoned Crab##88037,Cooking,1 total |achieve 5753
step
Sample a Seasoned Crab |use Seasoned Crab##62652 |achieve 5753/34
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Whitecrest Gumbo##65406 |condition itemcount(65406) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Whitecrest Gumbo from the Auction House.
step
Click here if you would like to farm for this Blood Shrimp |next "Farm Blood Shrimp"
Click here if you would like to attempt to recieve these Blood Shrimp through collecting Tasty Meat Crates through the Cataclysm Cooking dailies |next "Tasty Meat"
confirm
step
label "Farm Blood Shrimp"
kill Zin'jatar Raider##39313+
collect Abyssal Clam##52340+ |use Abyssal Clam##52340 |n
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Kelp'thar Forest/0 39.98,30.87
|next "Whitecrest"
step
label "Tasty Meat"
talk Shazdar##49737
buy 1 Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto Orgrimmar/1 56.80,62.35
|next "Whitecrest"
step
label "Whitecrest"
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Whitecrest Gumbo##88047,Cooking,1 total |achieve 5753
step
Sample a Whitecrest Gumbo |use Whitecrest Gumbo##62656 |achieve 5753/48
step
talk Shazdar##49737 |only if skill("Cooking")>=450
buy 1 Recipe: Tender Baked Turtle##65419 |condition itemcount(65419) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=450
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=450
Your cooking skill is not high enough (450) to use this recipe. Reach at least 450 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 449
|tip You can also buy Tender Baked Turtle from the Auction House.
step
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Tender Baked Turtle##88046,Cooking,1 total |achieve 5753
step
Sample a Tender Baked Turtle |use Tender Baked Turtle##62658 |achieve 5753/43
step
talk Shazdar##49737 |only if skill("Cooking")>=475
buy 1 Recipe: Fish Fry##65423 |condition itemcount(65423) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Fish Fry from the Auction House.
step
learn Fish Fry##88018 |use Recipe: Fish Fry##65423 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fish Fry##88018,Cooking,1 total |achieve 5753
step
Sample a Fish Fry |use Fish Fry##62677 |achieve 5753/11
step
talk Shazdar##49737 |only if skill("Cooking")>=475
buy 1 Recipe: Hearty Seafood Soup##65418 |condition itemcount(65418) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Hearty Seafood Soup from the Auction House.
step
talk Shazdar##49737
buy 1 Crate of Tasty Meat##65513 |n
|tip These cost 2 Epicurean's Awards each. They have a chance to contain Blood Shrimp.
collect 1 Blood Shrimp##62791 |achieve 5753 |goto 56.80,62.35
step
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Hearty Seafood Soup##88021,Cooking,1 total |achieve 5753
step
Sample a Hearty Seafood Soup |use Hearty Seafood Soup##62659 |achieve 5753/17
step
talk Shazdar##49737 |only if skill("Cooking")>=475
buy 1 Recipe: Pickled Guppy##65417 |condition itemcount(65417) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=475
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=475
Your cooking skill is not high enough (475) to use this recipe. Reach at least 475 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 474
|tip You can also buy Pickled Guppy from the Auction House.
step
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Pickled Guppy##88033,Cooking,1 total |achieve 5753
step
Sample a Pickled Guppy |use Pickled Guppy##62660 |achieve 5753/27
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Baked Rockfish##65426 |condition itemcount(65426) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Baked Rockfish##88003,Cooking,1 total |achieve 5753
step
Sample a Baked Rockfish |use Baked Rockfish##62661 |achieve 5753/1
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Basilisk Liverdog##65427 |condition itemcount(65427) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Basilisk Liverdog##88004,Cooking,1 total |achieve 5753
step
Sample a Basilisk Liverdog |use Basilisk Liverdog##62665 |achieve 5753/2
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Beer-Basted Crocolisk##65429 |condition itemcount(65429) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Beer-Basted Crocolisk##88005,Cooking,1 total |achieve 5753
step
Sample a Beer-Basted Crocolisk |use Beer-Basted Crocolisk##62670 |achieve 5753/3
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Blackbelly Sushi##65424 |condition itemcount(65424) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Blackbelly Sushi##88034,Cooking,1 total |achieve 5753
step
Sample a Blackbelly Sushi |use Blackbelly Sushi##62670 |achieve 5753/4
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Crocolisk Au Gratin##65430 |condition itemcount(65430) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Crocolisk Au Gratin##88014,Cooking,1 total |achieve 5753
step
Sample a Crocolisk Au Gratin |use Crocolisk Au Gratin##62664 |achieve 5753/9
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Delicious Sagefish Tail##65422 |condition itemcount(65422) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Delicious Sagefish Tail##88016,Cooking,1 total |achieve 5753
step
Sample a Delicious Sagefish Tail |use Delicious Sagefish Tail##62666 |achieve 5753/10
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Grilled Dragon##65428 |condition itemcount(65428) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Grilled Dragon##88020,Cooking,1 total |achieve 5753
step
Sample a Grilled Dragon |use Grilled Dragon##62662 |achieve 5753/14
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Lavascale Minestrone##65409 |condition itemcount(65409) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Lavascale Minestrone##88025,Cooking,1 total |achieve 5753
step
Sample a Lavascale Minestrone |use Lavascale Minestrone##62662 |achieve 5753/21
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |condition itemcount(65420) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Mushroom Sauce Mudfish##88031,Cooking,1 total |achieve 5753
step
Sample a Mushroom Sauce Mudfish |use Mushroom Sauce Mudfish##62667 |achieve 5753/25
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Scalding Murglesnout##68688 |condition itemcount(68688) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Scalding Murglesnout##96133,Cooking,1 total |achieve 5753
step
Sample a Scalding Murglesnout |use Scalding Murglesnout##68687 |achieve 5753/32
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Severed Sagefish Head##65421 |condition itemcount(65421) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Severed Sagefish Head##88039,Cooking,1 total |achieve 5753
step
Sample a Severed Sagefish Head |use Severed Sagefish Head##62671 |achieve 5753/35
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Skewered Eel##65425 |condition itemcount(65425) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=500
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=500
Your cooking skill is not high enough (500) to use this recipe. Reach at least 500 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 499
step
learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Skewered Eel##88042,Cooking,1 total |achieve 5753
step
Sample a Skewered Eel |use Skewered Eel##62669 |achieve 5753/37
step
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Chocolate Cookie##65431 |condition itemcount(65431) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=505
|tip This recipe costs 3 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
buy 1 Imported Supplies##68689 |condition itemcount(68689) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=505
|tip One bag of Imported Supplies costs a single Epicurean's Award. These are obtained by doing cooking dailies. |only if skill("Cooking")>=505
Your cooking skill is not high enough (505) to use this recipe. Reach at least 505 cooking |achieve 5753 |confirm |only if skill("Cooking") <= 504
step
Open the bag of supplies |use Imported Supplies##68689
collect 1 Cocoa Beans##62786 |achieve 5753
|tip You may also purchase Cocoa Beans from the Auction House.
step
talk Borstan##3368
buy 1 Buttery Wheat Roll##58261 |achieve 5753 |goto 56.58,61.50
step
Sample a Buttery Wheat Roll |use Buttery Wheat Roll##58261 |achieve 5753/7
step
talk Suja##46708
buy 2 Simple Flour##30817 |condition itemcount(30817) >= 1 |achieve 5753 |goto 56.43,61.00
|tip The extra Flour will be used to make a Fortune Cookie.
step
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Chocolate Cookie##88013,Cooking,1 total |achieve 5753
step
Sample a Chocolate Cookie |use Chocolate Cookie##62680 |achieve 5753/8
step
talk Arugi##46709
learn Blackened Surprise##88006 |achieve 5753 |goto 56.15,61.66
step
Create a cooking fire |cast Cooking Fire##818
create Blackened Surprise##88006,Cooking,1 total |achieve 5753
step
Sample a Blackened Surprise |use Blackened Surprise##62676 |achieve 5753/5
step
talk Shazdar##49737 |only if skill("Cooking")>=525
buy 1 Recipe: Fortune Cookie##65432 |condition itemcount(65432) >= 1 |achieve 5753 |goto 56.80,62.35 |only if skill("Cooking")>=525
|tip This recipe costs 5 Epicurean's Awards. These are obtained by doing cooking dailies. |only if skill("Cooking")>=525
Your cooking skill is not high enough (525) to use this recipe. Reach at least 525 cooking |confirm |only if skill("Cooking") <= 524
step
#include "auctioneer"
buy 1 Mysterious Fortune Card##60838 |condition itemcount(60838) >= 1 |achieve 5753
|tip These are made with the Inscription profession. You can purchase them from the Auction House.
step
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |achieve 5753
Create a cooking fire |cast Cooking Fire##818
create Fortune Cookie##88019,Cooking,1 total |achieve 5753
step
Sample a Fortune Cookie |use Fortune Cookie##62649 |achieve 5753/12
step
talk Kor'jus##3329
buy 1 Scarlet Polypore##58267 |goto Orgrimmar/2 56.54,67.53
buy 1 Violet Morel##58266 |goto 56.54,67.53
step
Sample a Scarlet Polypore |use Scarlet Polypore##58267 |achieve 5753/33
Sample a Violet Morel |use Violet Morel##58266 |achieve 5753/47
step
Congratulations! You have completed the _Cataclysmically Delicious_ achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Epic",{
achieveid={5372},
description="Equip items in each slot that have at least an item level of 359",
},[[
step
You need to equip _Epic (purple) Quality items_ of at least item level 359 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
Head |achieve 5372/1
Neck |achieve 5372/2
Shoulder |achieve 5372/3
Chest |achieve 5372/4
Waist |achieve 5372/5
Legs |achieve 5372/6
Feet |achieve 5372/7
Wrist |achieve 5372/8
Hands |achieve 5372/9
Left Ring |achieve 5372/10
Right Ring |achieve 5372/11
First Trinket |achieve 5372/12
Second Trinket |achieve 5372/13
Cloak |achieve 5372/14
Weapon |achieve 5372/15
step
Congratulations, you have earned the Cataclysmically Epic achievement! |only if achieved(5372)
You still have gear to equip please refer back to the list. |only if not achieved(5372)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Cataclysmically Superior",{
achieveid={5373},
description="Equip a superior item in every slot with a minimum item level of 333.",
},[[
step
You need to equip _Superior (blue) Quality items_ of at least item level 333 in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
The lowest level dungeons you can run are normal Grim Batol, normal Halls of Origination, and normal Lost City of the Tol'vir
Head |achieve 5373/1
Neck |achieve 5373/2
Shoulder |achieve 5373/3
Chest |achieve 5373/4
Waist |achieve 5373/5
Legs |achieve 5373/6
Feet |achieve 5373/7
Wrist |achieve 5373/8
Hands |achieve 5373/9
Left Ring |achieve 5373/10
Right Ring |achieve 5373/11
First Trinket |achieve 5373/12
Second Trinket |achieve 5373/13
Cloak |achieve 5373/14
Weapon |achieve 5373/15
step
Congratulations, you have earned the Cataclysmically Superior achievement! |only if achieved(5373)
You still have gear to equip please refer back to the list. |only if not achieved(5373)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Drown Your Sorrows",{
achieveid={5754},
description="This guide will walk you through drinking these Cataclysm beverages.",
},[[
step
talk Kylene##19186
buy 1 Jug of Badlands Bourbon##2595 |condition itemcount(2595) >= 1 |goto Shattrath City 74.8,30.8
buy 2 Skin of Dwarven Stout##2596 |condition itemcount(2596) >= 2 |goto Shattrath City 74.8,30.8
only if not achieved(5754,1)
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Darkbrew Lager##88015,Cooking,1 total |n
Drink the Darkbrew Lager |use Darkbrew Lager##62790 |achieve 5754/1 |goto Shattrath City 75.2,32.4
step
talk Innkeeper Gryshka##6929
buy 3 Refreshing Spring Water##159 |condition itemcount(159) >= 3 |goto Orgrimmar 53.6,78.8
buy 1 Sparkling Oasis Water##58256 |condition itemcount(58256) >= 1 |goto Orgrimmar 53.6,78.8 |only if not achieved(5754,9)
buy 1 Fresh Water##58274 |condition itemcount(58274) >= 1 |goto Orgrimmar 53.6,78.8 |only if not achieved(5754,2)
buy 1 Highland Spring Water##58257 |condition itemcount(58257) >= 1 |goto Orgrimmar 53.6,78.8 |only if not achieved(5754,6)
step
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256 |achieve 5754/9
Drink the Fresh Water |use Fresh Water##58274 |achieve 5754/2
Drink the Highland Spring Water |use Highland Spring Water##58257 |achieve 5754/6
step
talk Innkeeper Gryshka##6929
home Orgrimmar |goto Orgrimmar 53.6,78.8
step
talk Caretaker Movra##39878
buy 1 Greasy Whale Milk##59029 |n
Drink the Greasy Whale Milk |use Greasy Whale Milk##59029 |achieve 5754/4 |goto Shimmering Expanse 49.1,42.0
step
talk Gronk Hamcheeks##57262
buy 1 Fungus Squeezings##59230 |condition itemcount(59230) >= 1 |goto Twilight Highlands 50.6,58.4 |only if not achieved(5754,3)
buy 1 Murky Water##59229 |condition itemcount(59229) >= 1 |goto Twilight Highlands 50.6,58.4 |only if not achieved(5754,7)
step
Drink the Fungus Squeezings |use Fungus Squeezings##59230 |achieve 5754/3
Drink the Murky Water |use Murky Water##59229 |achieve 5754/7
step
talk Lizzy "Lemons"##49519
buy 1 Tropical Sunfruit##58278 |condition itemcount(58278) >= 1 |goto Twilight Highlands 76.3,52.6
step
talk Batamsi##45008
buy 1 Highland Pomegranate##58265 |condition itemcount(58265) >= 1 |goto Orgrimmar 32.1,69.5
|next "CookYourself"
step
label "CookYourself"
Use the Orgrimmar Cooking Dailies guide to
earn 12 Epicurean's Award##81
Click here line if you would rather not spend the time earning these Epicurean's Awards |confirm |next "RatherNotCook"
step
talk Shazdar##49737
buy 1 Recipe: Starfire Espresso##65414 |condition itemcount(65414) >= 1 |goto Orgrimmar 56.8,62.3
buy 1 Recipe: Highland Spirits##65415 |condition itemcount(65415) >= 1 |goto Orgrimmar 56.8,62.3
buy 1 Recipe: South Island Iced Tea##65433 |condition itemcount(65433) >= 1 |goto Orgrimmar 56.8,62.3
step
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433
step
talk Shazdar##49737
buy 1 Imported Supplies##68689 |n
collect 1 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Orgrimmar 56.8,62.3
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Starfire Espresso##88045,Cooking,1 total |n
collect 1 Starfire Espresso##62675
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 Highland Spirits##88022,Cooking,1 total |n
collect 1 Highland Spirits##62674
step
Make a Cooking Fire |cast Cooking Fire##818
create 1 South Island Iced Tea##88044,Cooking,1 total |n
collect 1 South Island Iced Tea##62672
|next "ReadytoDrink"
step
label "RatherNotCook"
Find a Cook to make your drinks
|tip Ask in Trade chat in a major city, you should find someone to help you pretty quickly.
collect 1 Starfire Espresso##62675
collect 1 Highland Spirits##62674
collect 1 South Island Iced Tea##62672
step
label "ReadytoDrink"
Drink the Starfire Espresso |use Starfire Espresso##62675 |achieve 5754/10
Drink the Highland Spirits |use Highland Spirits##62674 |achieve 5754/5
Drink the South Island Iced Tea |use South Island Iced Tea##62672 |achieve 5754/8
step
Congratulations, you have earned the Drown Your Sorrows Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Dual Talent Specialization",{
achieveid={2716},
description="Visit your class trainer when you are at least level 30 and activate your Dual Talent Specialization.",
},[[
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Ormak Grimshot##3352
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 63.8,32.7
only Hunter
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Ormok##3328
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar/2 32.2,65.5 < 40
only Rogue
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Tyelis##45337
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 49.2,70.9
only Priest
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Shalla Whiteleaf##44726
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 44.8,51.5
only Druid
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Master Pyreanor##23128
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 49.3,71.1
only Paladin
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Marud##47247
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar/2 51.1,69.3
only Mage
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Sahi Cloudsinger##44740
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 44.6,52.0
only Shaman
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Gran'dul##88704
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar/2 52.5,37.5
only Warlock
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Nahu Ragehoof##44723
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 44.7,53.3
only Warrior
step
This achievement _requires_ level 30
The cost of dual talent specialization is _10 Gold_
talk Ji Firepaw##62445
_Learn_ Dual Talent Specialization |achieve 2716 |goto Orgrimmar 68.8,40.2
only Monk
step
Congratulations, you have _earned_ the _Dual Talent Specialization_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Epic",{
achieveid={556},
description="Equip items in each slot that have at least an item level of 213",
},[[
step
You need to equip _Epic (purple) Quality items_ of at least item level 213 in all your Armor and Weapon slots
For rings and trinkets you can just _equip_ one ring or trinket in both slots seperately
The _lowest level dungeons you can run_ are normal Forge of Souls, normal Pit of Saron, and normal Halls of Reflection
Head |achieve 556/1
Neck |achieve 556/2
Shoulder |achieve 556/3
Chest |achieve 556/4
Waist |achieve 556/5
Legs |achieve 556/6
Feet |achieve 556/7
Wrist |achieve 556/8
Hands |achieve 556/9
Left Ring |achieve 556/10
Right Ring |achieve 556/11
First Trinket |achieve 556/12
Second Trinket |achieve 556/13
Cloak |achieve 556/14
Weapon |achieve 556/15
step
Congratulations, you have _earned_ the _Epic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Fast and Furious",{
achieveid={889},
description="Learn the journeyman riding skill.",
},[[
step
This achievement _requires_ level 40
talk Maztha##44919
learn Journeyman Riding##33391 |achieve 889 |goto Orgrimmar 49.0,59.6
only Orc
step
This achievement _requires_ level 40
talk Velma Warnam##4773
learn Journeyman Riding##33391 |achieve 889 |goto Tirisfal Glades 61.8,51.8
only Undead
step
This achievement _requires_ level 40
talk Kar Stormsinger##3690
learn Journeyman Riding##33391 |achieve 889 |goto Mulgore 47.6,58.0
only Tauren
step
This achievement _requires_ level 40
talk Xar'Ti##7953
learn Journeyman Riding##33391 |achieve 889 |goto Durotar 55.2,75.4
only Troll
step
This achievement _requires_ level 40
talk Perascamin##16280
learn Journeyman Riding##33391 |achieve 889 |goto Eversong Woods 61.2,54.0
only Blood Elf
step
This achievement _requires_ level 40
talk Revi Ramrod##48513
learn Journeyman Riding##33391 |achieve 889 |goto Orgrimmar 36.6,87.0
only Goblin
step
This achievement _requires_ level 40
talk Maztha##44919
learn Journeyman Riding##33391 |achieve 889 |goto Orgrimmar 49.0,59.6
only Pandaren
step
Congratulations, you have _earned_ the _Fast and Furious_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Friend or Fowl?",{
achieveid={1254},
description="Slay 15 turkeys in 3 minutes.",
},[[
step
kill Fjord Turkey##24746+
_Slay_ #15# Turkeys in 3 Minutes |achieve 1254 |goto Howling Fjord 66.3,71.1
|tip Kill them as fast as you can, then hurry to kill another one each time
step
Congratulations, you have _earned_ the _Friend or Fowl?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Giddy Up!",{
achieveid={891},
description="Learn the apprentice riding skill.",
},[[
step
This achievement _requires_ level 20
talk Maztha##44919
learn Apprentice Riding##33388 |achieve 891 |goto Orgrimmar 49.0,59.6
only Orc
step
This achievement _requires_ level 20
talk Velma Warnam##4773
learn Apprentice Riding##33388 |achieve 891 |goto Tirisfal Glades 61.8,51.8
only Undead
step
This achievement _requires_ level 20
talk Kar Stormsinger##3690
learn Apprentice Riding##33388 |achieve 891 |goto Mulgore 47.6,58.0
only Tauren
step
This achievement _requires_ level 20
talk Xar'Ti##7953
learn Apprentice Riding##33388 |achieve 891 |goto Durotar 55.2,75.4
only Troll
step
This achievement _requires_ level 20
talk Perascamin##16280
learn Apprentice Riding##33388 |achieve 891 |goto Eversong Woods 61.2,54.0
only Blood Elf
step
This achievement _requires_ level 20
talk Revi Ramrod##48513
learn Apprentice Riding##33388 |achieve 891 |goto Orgrimmar 36.6,87.0
only Goblin
step
This achievement _requires_ level 20
talk Maztha##44919
learn Apprentice Riding##33388 |achieve 891 |goto Orgrimmar 49.0,59.6
only Pandaren
step
Congratulations, you have _earned_ the _Giddy Up!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Going Down?",{
achieveid={964},
description="Fall 65 yards without dying.",
},[[
step
You can do this in several different waysdepending on yoiur class, but we listed the _easiest way regardless of level and class_
_Ride up_ to the Elevator to the Terrace of Light
_Jump off_ either the right or the left side of the Terrace to the flat ground
_MAKE SURE TO JUMP!_
Earn the Going Down? Achievement! |achieve 964 |goto Shattrath City 63.8,41.6
step
Congratulations, you have _earned_ the _Going Down?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Greedy",{
achieveid={558},
description="Win a greed roll on a superior or better item above level 185 by rolling 100.",
},[[
step
You will need to be in a group and _roll a 100 on a Superior (blue) or higher quality item_
The content also needs to be level appropriate to your character
_Greed Roll_ a 100 on a Superior (Blue) item with iLvl 185+ |achieve 558
step
Congratulations, you have _earned_ the _Greedy_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Higher Learning",{
achieveid={1956},
description="Read the volumes of 'The Schools of Arcane Magic' found in Dalaran.",
},[[
step
_Warning:_ These books have respawn timers of about 3-4 hours (it seems to be random between those times) so this achievement may take you a while to get |tip The book you want won't always be there. Fake trash books spawn to make the achievement even harder to get, but keep at it. Make sure you click the fake trash books anyway, so the real books have a chance to spawn.
This is an achievement that _you may want to dedicate a lot of time to_ if you want it
|tip You'll have a much greater chance of earning the achievement if you camp each book until you have them all, rather than constantly running through the path in this guide
_Good luck!_
confirm
step
label "RestartHigherLearning"
click The Schools of Arcane Magic - Illusion##192865
|tip It looks like a brown book laying on a wooden crate.
_Read_ The Schools of Arcane Magic - Illusion |achieve 1956/6 |goto Dalaran 64.4,52.4
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Introduction##192708
|tip It looks like a blue book laying on ground next to a bookshelf inside this building.
_Read_ The Schools of Arcane Magic - Introduction |achieve 1956/1 |goto Dalaran 56.6,45.6
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Abjuration##192709
|tip It looks like a brown book laying on ground next to a small table inside this building.
_Read_ The Schools of Arcane Magic - Abjuration |achieve 1956/2 |goto Dalaran 52.3,54.8
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Enchantment##192713
|tip It looks like a blue book laying on a small wooden crate on the balcony upstairs in this building.
_Read_ The Schools of Arcane Magic - Enchantment |achieve 1956/5 |goto Dalaran 43.6,46.7
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Transmutation##192867
|tip It looks like a grayand green striped book laying on a bookshelf downstairs in this building.
_Read_ The Schools of Arcane Magic - Transmutation |achieve 1956/8 |goto Dalaran 46.8,40.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Necromancy##192866
|tip It looks like a blue book laying on a bookshelf upstairs in this building.
_Read_ The Schools of Arcane Magic - Necromancy |achieve 1956/7 |goto Dalaran 46.8,39.1
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Conjuration##192710
|tip It looks like a blue book laying on the left on the bottom shelf of a bookshelf in this building.
_Read_ The Schools of Arcane Magic - Conjuration |achieve 1956/3 |goto Dalaran 30.8,46.0
_Click here_ if this book isn't available |confirm
step
click The Schools of Arcane Magic - Divination##192711
|tip It looks like a blue book laying on the floor next to 2 bookshelves upstairs inside this building.
_Read_ The Schools of Arcane Magic - Divination |achieve 1956/4 |goto Dalaran 26.5,52.1
_Click here_ if this book isn't available |confirm
step
Looks like _you still need more_ education! _Click here_ to start the guide over. |confirm |next "RestartHigherLearning" |only if not achieved(1956)
Congratulations, you have _earned_ the _Higher Learning_ achievement! |only if achieved(1956)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Into The Wild Blue Yonder",{
achieveid={890},
description="Learn the expert riding skill.",
},[[
step
This achievement _requires_ level 60
The cost of this riding training is _250 Gold_
|tip The price can be reduced by home faction discounts based on current reputation
talk Maztha##44919
learn Expert Riding##34090 |achieve 890 |goto Orgrimmar 49.0,59.6
step
Congratulations, you have _earned_ the _Into The Wild Blue Yonder_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\It's Happy Hour Somewhere",{
achieveid={1833},
description="Drink 25 different types of beverages.",
},[[
stickystart "tracker"
step
talk Innkeeper Gryshka##6929
buy 1 Refreshing Spring Water##159 |goto Orgrimmar 53.6,78.8
buy 1 Ice Cold Milk##1179 |goto Orgrimmar 53.6,78.8
buy 1 Melon Juice##1205 |goto Orgrimmar 53.6,78.8
buy 1 Sweet Nectar##1708 |goto Orgrimmar 53.6,78.8
buy 1 Moonberry Juice##1645 |goto Orgrimmar 53.6,78.8
buy 1 Morning Glory Dew##8766 |goto Orgrimmar 53.6,78.8
buy 1 Filtered Draenic Water##28399 |goto Orgrimmar 53.6,78.8
buy 1 Fresh Water##58274 |goto Orgrimmar 53.6,78.8
buy 1 Pugnent Seal Whey##33444 |goto Orgrimmar 53.6,78.8
buy 1 Honeymint Tea##33445 |goto Orgrimmar 53.6,78.8
buy 1 Sparkling Oasis Water##58256 |goto Orgrimmar 53.6,78.8
buy 1 Highland Spring Water##58257 |goto Orgrimmar 53.6,78.8
only if not achieved(1833)
step
Drink the Refreshing Spring Water |use Refreshing Spring Water##159
Drink the Ice Cold Milk |use Ice Cold Milk##1179
Drink the Melon Juice |use Melon Juice##1205
Drink the Sweet Nectar |use Sweet Nectar##1708
Drink the Moonberry Juice |use Moonberry Juice##1645
Drink the Morning Glory Dew |use Morning Glory Dew##8766
Drink the Filtered Draenic Water |use Filtered Draenic Water##28399
Drink the Pugnent Seal Whey |use Pugnent Seal Whey##33444
Drink the Fresh Water |use Fresh Water##58274
Drink the Honeymint Tea |use Honeymint Tea##33445
Drink the Sparkling Oasis Water |use Sparkling Oasis Water##58256
Drink the Highland Spring Water |use Highland Spring Water##58257
_Click here_ to continue |confirm
only if not achieved(1833)
step
talk Daisy##40832
buy 1 Bottle of Pinot Noir##2723 |goto Thousand Needles 76.5,74.8
buy 1 Glass of Eversong Wine##44570 |goto Thousand Needles 76.5,74.8
buy 1 Honey Mead##40035 |goto Thousand Needles 76.5,74.8
buy 1 Flask of Port##2593 |goto Thousand Needles 76.5,74.8
buy 1 Bottle of Silvermoon Port##44571 |goto Thousand Needles 76.5,74.8
buy 1 Skin of Dwarven Stout##2596 |goto Thousand Needles 76.5,74.8
buy 1 Flask of Bitter Cactus Cider##44575 |goto Thousand Needles 76.5,74.8
buy 1 Snowplum Brandy##40036 |goto Thousand Needles 76.5,74.8
buy 1 Flagon of Mead##2594 |goto Thousand Needles 76.5,74.8
buy 1 Cup of Frog Venom Brew##44573 |goto Thousand Needles 76.5,74.8
buy 1 Caraway Burnwine##40042 |goto Thousand Needles 76.5,74.8
buy 1 Jug of Bourbon##2595 |goto Thousand Needles 76.5,74.8
buy 1 Skin of Mulgore Firewater##44574 |goto Thousand Needles 76.5,74.8
only if not achieved(1833)
step
_Drink_ the Bottle of Pinot Noir |use Bottle of Pinot Noir##2723
_Drink_ the Glass of Eversong Wine |use Glass of Eversong Wine##44570
_Drink_ the Honey Mead |use Honey Mead##40035
_Drink_ the Flask of Port |use Flask of Port##2593
_Drink_ the Bottle of Silvermooon Port |use Bottle of Silvermoon Port##44571
_Drink_ the Skin of Dwarven Stout |use Skin of Dwarven Stout##2596
_Drink_ the Flask of Bitter Cactus |use Flask of Bitter Cactus Cider##44575
_Drink_ the Snowplum Brandy |use Snowplum Brandy##40036
_Drink_ the Flagon of Mead |use Flagon of Mead##2594
_Drink_ the Cup of Frog Venom Brew |use Cup of Frog Venom Brew##44573
_Drink_ the Caraway Burnwine |use Caraway Burnwine##40042
_Drink_ the Jug of Bourbon |use Jug of Bourbon##2595
_Drink_ the Skin of Mulgore Firewater |use Skin of Mulgore Firewater##44574
_Click here_ to continue |confirm
step
label "tracker"
_Drink_ #25# different types of beverages |achieve 1833 |only if not achieved(1833)
Congratulations, you have _earned_ the _It's Happy Hour Somewhere_ Achievement! |only if achieved(1833)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\It's Over Nine Thousand!",{
achieveid={4496},
author="support@zygorguides.com",
startlevel=80,
description="This guide will walk you through completing the \"It's Over Nine Thousand!\" Achievement.",
},[[
step
For this achievement, you will need to earn at least 9,000 achievement points
|tip Refer to any of our achievement guides in order to accomplish this.
|tip If you haven't been actively collecting achievements already, this may take a while to earn.
Earn the _It's Over Nine Thousand!_ achievement |achieve 4496
step
_Congratulations!_
You have earned the _It's Over Nine Thousand!_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Needy",{
achieveid={559},
description="Win a need roll on a superior or better item above level 185 by rolling 100.",
},[[
step
You will need to be in a group and _roll a 100 on a Superior (blue) or higher quality item_
The content also needs to be level appropriate to your character
_Need Roll_ a 100 on a Superior (Blue) item with iLvl 185+ |achieve 559
step
Congratulations, you have _earned_ the _Needy_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\The Right Stuff",{
achieveid={892},
description="Learn the artisan riding skill.",
},[[
step
talk Maztha##44919
learn Artisan Riding##34093 |achieve 892 |goto Orgrimmar 49.0,59.6
|tip You need to be level 70 and have _5000 Gold_ available.
step
Congratulations, you have _earned_ the _The Right Stuff_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Safe Deposit",{
achieveid={546},
description="Buy 7 additional bank slots.",
},[[
step
This achievement will cost you _111 gold 10 silver_ to complete
talk Rilgiz##44852
Purchase #7# Bank Slots |achieve 546 |goto Orgrimmar 48.7,84.0
step
Congratulations, you have _earned_ the _Safe Deposit_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Shave and a Haircut",{
achieveid={545},
description="Visit a Barber Shop and get your hair cut.",
},[[
step
_Click_ on the Barbershop Chair
_Change_ your hair style or hair color then click "Okay" |achieve 545 |goto Orgrimmar,40.0,60.7
|tip This will cost money to do so be sure you have the extra gold to purchase a hair style.
step
Congratulations, you have _earned_ the _Shave and a Haircut_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Superior",{
achieveid={557},
description="Equip a superior item in every slot with a minimum item level of 187.",
},[[
step
You need to equip _Superior (blue) Quality items_ of at least item level 187in all your Armor and Weapon slots
For rings and trinkets you can just equip one ring or trinket in both slots seperately
The _lowest level dungeons you can run_ are normal Old Stratholme, normal The Oculus, normal Halls of Lightning, and normal Utgarde Pinnacle
Head |achieve 557/1
Neck |achieve 557/2
Shoulder |achieve 557/3
Chest |achieve 557/4
Waist |achieve 557/5
Legs |achieve 557/6
Feet |achieve 557/7
Wrist |achieve 557/8
Hands |achieve 557/9
Left Ring |achieve 557/10
Right Ring |achieve 557/11
First Trinket |achieve 557/12
Second Trinket |achieve 557/13
Cloak |achieve 557/14
Weapon |achieve 557/15
step
Congratulations, you have _earned_ the _Superior_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Tastes Like Chicken",{
achieveid={1832},
description="Sample 50 different kinds of Azeroth's delectable dishes.",
},[[
stickystart "tracker"
step
talk Innkeeper Gryshka##6929
buy 1 Tough Jerky##117 |goto Orgrimmar 53.6,78.8
buy 1 Haunch of Meat##2287 |goto Orgrimmar 53.6,78.8
buy 1 Mutton Chop##3770 |goto Orgrimmar 53.6,78.8
buy 1 Wild Hog Shank##3771 |goto Orgrimmar 53.6,78.8
buy 1 Cured Ham Steak##4599 |goto Orgrimmar 53.6,78.8
buy 1 Roasted Quail##8952 |goto Orgrimmar 53.6,78.8
buy 1 Smoked Talbuk Venison##27854 |goto Orgrimmar 53.6,78.8
buy 1 Salted Venison##33454 |goto Orgrimmar 53.6,78.8
buy 1 Mead Basted Caribou##35953 |goto Orgrimmar 53.6,78.8
buy 1 Roasted Beef##58268 |goto Orgrimmar 53.6,78.8
only if not achieved(1832)
step
talk Innkeeper Gryshka##6929
buy 1 Massive Turkey Leg##58269 |goto Orgrimmar 53.6,78.8
buy 1 Tough Hunk of Bread##4540 |goto Orgrimmar 53.6,78.8
buy 1 Freshly Baked Bread##4541 |goto Orgrimmar 53.6,78.8
buy 1 Moist Cornbread##4542 |goto Orgrimmar 53.6,78.8
buy 1 Mulgore Spice Bread##4544 |goto Orgrimmar 53.6,78.8
buy 1 Soft Banana Bread##4601 |goto Orgrimmar 53.6,78.8
buy 1 Homemade Cherry Pie##8950 |goto Orgrimmar 53.6,78.8
buy 1 Mag'har Grainbread##27855 |goto Orgrimmar 53.6,78.8
buy 1 Crusty Flatbread##33449 |goto Orgrimmar 53.6,78.8
buy 1 Sweet Potato Bread##35950 |goto Orgrimmar 53.6,78.8
buy 1 Pine Nut Bread##58260 |goto Orgrimmar 53.6,78.8
buy 1 Buttery Wheat Roll##58261 |goto Orgrimmar 53.6,78.8
only if not achieved(1832)
step
_Eat_ the Tough Jerky |use Tough Jerky##117
_Eat_ the Tough Hunk |use Tough Hunk of Bread##4540
_Eat_ the Haunch of Meat |use Haunch of Meat##2287
_Eat_ the Freshly Baked Bread |use Freshly Baked Bread##4541
_Eat_ the Mutton Chop |use Mutton Chop##3770
_Eat_ the Moist Cornbread |use Moist Cornbread##4542
_Eat_ the Wild Hog Shank |use Wild Hog Shank##3771
_Eat_ the Mulgore Spice Bread |use Mulgore Spice Bread##4544
_Eat_ the Cured Ham Steak |use Cured Ham Steak##4599
_Eat_ the Soft Banana Bread |use Soft Banana Bread##4601
_Click here_ to continue |confirm
step
_Eat_ the Roasted Quail |use Roasted Quail##8952
_Eat_ the Homemade Cherry Pie |use Homemade Cherry Pie##8950
_Eat_ the Smoked Talbuk Venison |use Smoked Talbuk Venison##27854
_Eat_ the Mag'har Grainbread |use Mag'har Grainbread##27855
_Eat_ the Salted Venison |use Salted Venison##33454
_Eat_ the Crusty Flatbread |use Crusty Flatbread##33449
_Eat_ the Mead Basted Cariboy |use Mead Basted Caribou##35953
_Eat_ the Sweet Potato Bread |use Sweet Potato Bread##35950
_Eat_ the Roasted Beef |use Roasted Beef##58268
_Eat_ the Pine Nut Bread |use Pine Nut Bread##58260
_Eat_ the Massive Turkey |use Massive Turkey Leg##58269
_Eat_ the Buttery Wheat Roll |use Buttery Wheat Roll##58261
_Click here_ to continue |confirm
step
talk Batamsi##45008
buy 1 Slitherskin Mackerel##787 |goto Orgrimmar 32.1,69.5
buy 1 Longjaw Mud Snapper##4592 |goto Orgrimmar 32.1,69.5
buy 1 Bristle Whisker Catfish##4593 |goto Orgrimmar 32.1,69.5
buy 1 Rockscale Cod##4594 |goto Orgrimmar 32.1,69.5
buy 1 Striped Yellowtail##21552 |goto Orgrimmar 32.1,69.5
buy 1 Spinefin Halibut##8957 |goto Orgrimmar 32.1,69.5
buy 1 Sunspring Carp##27858 |goto Orgrimmar 32.1,69.5
buy 1 Fillet of Icefin##33451 |goto Orgrimmar 32.1,69.5
buy 1 Poached Emperor Salmon##35951 |goto Orgrimmar 32.1,69.5
buy 1 Sliced Raw Billfish##58262 |goto Orgrimmar 32.1,69.5
buy 1 Grilled Shark##58263 |goto Orgrimmar 32.1,69.5
only if not achieved(1832)
step
talk Batamsi##45008
buy 1 Shiny Red Apple##4536 |goto Orgrimmar 32.6,68.6
buy 1 Tel'Abim Banana##4537 |goto Orgrimmar 32.6,68.6
buy 1 Snapvine Watermelon##4538 |goto Orgrimmar 32.6,68.6
buy 1 Goldenbark Apple##4539 |goto Orgrimmar 32.6,68.6
buy 1 Moon Harvest Pumpkin##4602 |goto Orgrimmar 32.6,68.6
buy 1 Deep Fried Plantains##8953 |goto Orgrimmar 32.6,68.6
buy 1 Skethyl Berries##27856 |goto Orgrimmar 32.6,68.6
buy 1 Tundra Berries##35949 |goto Orgrimmar 32.6,68.6
buy 1 Savory Snowplum##35948 |goto Orgrimmar 32.6,68.6
buy 1 Sour Green Apple##58264 |goto Orgrimmar 32.6,68.6
buy 1 Highland Pomegranate##58265 |goto Orgrimmar 32.6,68.6
only if not achieved(1832)
step
_Eat_ the Slitherskin Mackerel |use Slitherskin Mackerel##787
_Eat_ the Shiny Red Apple |use Shiny Red Apple##4536
_Eat_ the Longjaw Mud Snapper |use Longjaw Mud Snapper##4592
_Eat_ the Tel'Abim Banana |use Tel'Abim Banana##4537
_Eat_ the Bristle Whisker Catfish |use Bristle Whisker Catfish##4593
_Eat_ the Snapvine Watermelon |use Snapvine Watermelon##4538
_Eat_ the Rockscale Cod |use Rockscale Cod##4594
_Eat_ the Goldenbark Apple |use Goldenbark Apple##4539
_Eat_ the Striped Yellowtail |use Striped Yellowtail##21552
_Eat_ the Moon Harvest Pumpkin |use Moon Harvest Pumpkin##4602
_Click here_ to continue |confirm
step
_Eat_ the Spinefin Hailibut |use Spinefin Halibut##8957
_Eat_ the Deep Fried Plantains |use Deep Fried Plantains##8953
_Eat_ the Sunspring Carp |use Sunspring Carp##27858
_Eat_ the Skethyl Berries |use Skethyl Berries##27856
_Eat_ the Fillet of Icefin |use Fillet of Icefin##33451
_Eat_ the Tundra Berries |use Tundra Berries##35949
_Eat_ the Poached Emperor |use Poached Emperor Salmon##35951
_Eat_ the Savory Snowplum |use Savory Snowplum##35948
_Eat_ the Sliced Raw Billfish |use Sliced Raw Billfish##58262
_Eat_ the Sour Green Apple |use Sour Green Apple##58264
_Eat_ the Grilled Shark |use Grilled Shark##58263
_Eat_ the Highland Pomegranate |use Highland Pomegranate##58265
_Click here_ to continue |confirm
step
talk Kor'jus##3329
buy 1 Forest Mushroom Cap##4604 |goto Orgrimmar 49.7,61.8
buy 1 Red-Speckeled Mushroom##4605 |goto Orgrimmar 49.7,61.8
buy 1 Spongy Morel##4606 |goto Orgrimmar 49.7,61.8
buy 1 Delicious Cave Mold##4607 |goto Orgrimmar 49.7,61.8
buy 1 Raw Black Truffle##4608 |goto Orgrimmar 49.7,61.8
buy 1 Dried King Bolete##8948 |goto Orgrimmar 49.7,61.8
only if not achieved(1832)
step
_Eat_ the Forest Mushroom |use Forest Mushroom Cap##4604
_Eat_ the Red-Speckeled Mushroom |use Red-Speckeled Mushroom##4605
_Eat_ the Spongy Morel |use Spongy Morel##4606
_Eat_ the Delicious Cave Mold |use Delicious Cave Mold##4607
_Eat_ the Raw Black Truffle |use Raw Black Truffle##4608
_Eat_ the Dried King Bolete |use Dried King Bolete##8948
_Click here_ to continue |confirm
step
label "tracker"
_Sample_ #50# different kinds of Azeroth's delectable dishes |achieve 1832 |only if not achieved(1832)
Congratulations, you have _earned_ the _Tastes Like Chicken_ Achievement! |only if achieved(1832)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\To All The Squirrels (Loved, Shared, Cared)/Pest Control",{
condition_end=function() return achieved(5548) end,
achieveid={1206,2557,2556,5548},
description="Show the critters of Azeroth how much you /love them. Slay the pests.",
},[[
step
Use the _Love emote_ on a Rockchewer Whelk |clicknpc Rockchewer Whelk##48848 |script DoEmote("LOVE")
_Love_ a Rockchewer Whelk |achieve 5548/9 |goto Shimmering Expanse 41.3,53.9
step
Use the _Love emote_ on a Sea Cucumber |clicknpc Sea Cucumber##48802 |script DoEmote("LOVE")
_Love_ a Sea Cucumber |achieve 5548/11 |goto Shimmering Expanse 41.3,53.9
step
Use the _Love emote_ on a Toad |clicknpc Toad##1420 |script DoEmote("LOVE")
_Love_ a Toad |achieve 1206/20 |goto Orgrimmar 56.8,53.2
step
kill Water Snake##4953 |achieve 2556/2 |future |goto Orgrimmar 56.8,53.2
step
Use the _Love emote_ on an Alpine Chipmunk |clicknpc Alpine Chipmunk##49779 |script DoEmote("LOVE")
_Love_ an Alpine Chipmunk |achieve 5548/1 |goto Winterspring 51.5,47.9
step
kill Crystal Spider##32261 |achieve 2556/11 |goto Winterspring 48.8,54.8
step
Use the _Love emote_ on a Grotto Vole |clicknpc Grotto Vole##50419  |script DoEmote("LOVE")
_Love_ a Grotto Vole |achieve 5548/3 |goto Mount Hyjal 54.5,17.1
step
_Use_ the Love emote on a Rock Viper |clicknpc Rock Viper##50481 |script DoEmote("LOVE")
_Love_ a Rock Viper |achieve 5548/8 |goto Mount Hyjal 38.4,56.6
step
Use the _Love emote_ on a Hare |clicknpc Hare##5951 |script DoEmote("LOVE")
_Love_ a Hare |achieve 1206/10 |goto Durotar 45.6,16.0
step
kill Adder##3300 |achieve 2556/12 |goto Durotar 45.6,16.0
step
Use the _Love emote_ on a Swine |clicknpc Swine##10685 |script DoEmote("LOVE")
_Love_ a Swine |achieve 1206/19 |goto Durotar 48.5,15.9
step
Use the _Love emote_ on a Prairie Dog |clicknpc Prairie Dog##2620 |script DoEmote("LOVE")
_Love_ a Prairie Dog |achieve 1206/21 |future |goto Northern Barrens 66.0,42.1
step
Use the _Love emote_ on a Gazelle |clicknpc Gazelle##4166 |script DoEmote("LOVE")
_Love_ a Gazelle |achieve 1206/9 |goto Northern Barrens 51.8,56.4
step
Use the _Love emote_ on a Small Frog |clicknpc Small Frog##13321 |script DoEmote("LOVE")
_Love_ a Small Frog |achieve 1206/8 |future |goto Northern Barrens 37.9,46.1
step
kill Spider##14881 |achieve 2556/3 |goto Dustwallow Marsh 35.0,24.0
step
kill Mouse##6271 |achieve 2556/7 |goto Dustwallow Marsh 46.2,56.9
step
kill Snake##2914 |achieve 2556/10 |future |goto Dustwallow Marsh 50.0,57.6
step
Use the _Love emote_ on a Rattlesnake |clicknpc Rattlesnake##48686 |script DoEmote("LOVE")
_Love_ a Rattlesnake |achieve 5548/7 |goto Tanaris 46.9,26.9
step
Use the _Love emote_ on a Mac Frog |clicknpc Mac Frog##50491 |script DoEmote("LOVE")
_Love_ a Mac Frog |achieve 5548/5 |goto Uldum 56.6,35.1
step
Use the _Love emote_ on an Oasis Moth |clicknpc Oasis Moth##50496 |script DoEmote("LOVE")
_Love_ an Oasis Moth |achieve 5548/6 |goto Uldum 55.0,36.1
step
kill Rat##4075 |achieve 2556/18 |goto The Cape of Stranglethorn 40.0,67.7
step
kill Roach##4076 |achieve 2556/9 |goto The Cape of Stranglethorn 42.2,69.5
step
_Use_ the Love emote on a Wharf Rat |clicknpc Wharf Rat##47667 |script DoEmote("LOVE")
_Love_ a Wharf Rat |achieve 5548/12 |goto The Cape of Stranglethorn 42.7,72.8
step
Use the _Love emote_ on a Parrot |clicknpc Parrot##9600 |script DoEmote("LOVE")
_Love_ a Parrot |achieve 1206/11 |goto Northern Stranglethorn 50.5,66.4
step
kill Scorpion##61326 |achieve 2556/14 |future |goto Blasted Lands 42.5,21.9
step
kill Fire Beetle##9699 |achieve 2556/16 |future |goto Blasted Lands 44.4,32.9
step
_Use_ the Love emote on a Huge Toad |clicknpc Huge Toad##61368 |script DoEmote("LOVE")
_Love_ a Huge Toad |achieve 2557/7 |goto Swamp of Sorrows 39.7,51.0
step
_Use_ the Love emote on a Skunk |clicknpc Skunk##17467 |script DoEmote("LOVE")
_Love_ a Skunk |achieve 1206/16 |goto Duskwood 12.3,65.8
step
_Use_ the Love emote on a Rabbit |clicknpc Rabbit##61080 |script DoEmote("LOVE")
_Love_ a Rabbit |achieve 1206/12 |goto Elwynn Forest 36.3,85.8
step
_Use_ the Love emote on a Deer |clicknpc Deer##883 |script DoEmote("LOVE")
_Love_ a Deer |achieve 1206/5 |goto Elwynn Forest 24.9,83.0
step
_Use_ the Love emote on a Fawn##890 |clicknpc Fawn##890 |script DoEmote("LOVE")
_Love_ a Fawn |achieve 1206/7 |goto Elwynn Forest 24.9,83.0
step
_Use_ the Love emote on a Cow |clicknpc Cow##2442 |script DoEmote("LOVE")
_Love_ a Cow |achieve 1206/4 |goto Elwynn Forest 32.3,77.2
step
_Use_ the Love emote on a Chicken |clicknpc Chicken##620 |script DoEmote("LOVE")
_Love_ a Chicken |achieve 1206/3 |goto Elwynn Forest 36.5,60.1
step
_Use_ the Love emote on a Cat |clicknpc Cat##6368 |script DoEmote("LOVE")
_Love_ a Cat |achieve 1206/2 |goto Elwynn Forest 44.5,53.8
step
kill Gold Beetle##32258 |achieve 2556/17 |goto Badlands 50.4,43.9
step
_Use_ the Love emote on a Lava Crab |clicknpc Lava Crab##9700 |script DoEmote("LOVE")
_Love_ a Lava Crab |achieve 2557/8 |goto Searing Gorge 31.1,43.7
step
_Use_ the Love emote on a Sheep |clicknpc Sheep##1933 |script DoEmote("LOVE")
_Love_ a Sheep |achieve 1206/14 |goto Loch Modan 20.9,71.9
step
_Use_ the Love emote on a Ram |clicknpc Ram##2098 |script DoEmote("LOVE")
_Love_ a Ram |achieve 1206/13 |goto Loch Modan 25.1,37.8
step
_Use_ the Love emote on a Squirrel |clicknpc Squirrel##1412 |script DoEmote("LOVE")
_Love_ a Squirrel |achieve 1206/17 |goto Loch Modan 29.0,66.3
step
kill Squirrel##1412 |achieve 2556/4 |goto Loch Modan 29.0,66.3
step
_Use_ the Love emote on a Yellow-Bellied Marmot |clicknpc Yellow-Bellied Marmot##48683 |script DoEmote("LOVE")
_Love_ a Yellow-Bellied Marmot |achieve 5548/13 |goto Twilight Highlands 29.3,33.1
step
_Use_ the Love emote on a Highlands Turkey |clicknpc Highlands Turkey##48706 |script DoEmote("LOVE")
_Love_ a Highlands Turkey |achieve 5548/4 |goto Twilight Highlands 29.3,33.1
step
_Use_ the Love emote on a Shore Crab |clicknpc Shore Crab##60761 |script DoEmote("LOVE")
_Love_ a Shore Crab |achieve 1206/15 |goto Twilight Highlands 71.2,41.2
step
kill Maggot##16030 |achieve 2556/13 |goto The Hinterlands 31.9,57.9
step
kill Larva##16068 |achieve 2556/1 |goto Ghostlands 45.3,31.1
step
_Use_ the Love emote on an Ewe |clicknpc Ewe##19665 |script DoEmote("LOVE")
_Love_ a Ewe |achieve 1206/6 |goto Shattrath City 58.8,23.3
step
_Use_ the Love emote on a Borean Marmot |clicknpc Borean Marmot##31685 |script DoEmote("LOVE")
_Love_ a Borean Marmot |achieve 2557/2 |goto Borean Tundra 36.0,55.9
step
_Use_ the Love emote on a Tundra Penguin |clicknpc Tundra Penguin##28440 |script DoEmote("LOVE")
_Love_ a Tundra Penguin |achieve 2557/12 |goto Borean Tundra 24.5,61.8
step
_Use_ the Love emote on a Steam Frog |clicknpc Steam Frog##25679 |script DoEmote("LOVE")
_Love_ a Steam Frog |achieve 1206/18 |goto Borean Tundra 61.0,51.8
step
_Use_ the Love emote on a Borean Frog |clicknpc Borean Frog##25677 |script DoEmote("LOVE")
_Love_ a Borean Frog |achieve 1206/1 |goto Borean Tundra 72.7,41.0
step
_Use_ the Love emote on a Sholazar Tickbird |clicknpc Sholazar Tickbird##28093 |script DoEmote("LOVE")
_Love_ a Sholazar Tickbird |achieve 2557/11 |goto Sholazar Basin 27.1,60.5
step
_Use_ the Love emote on a Glacier Penguin |clicknpc Glacier Penguin##32498 |script DoEmote("LOVE")
_Love_ a Glacier Penguin |achieve 2557/5 |goto Icecrown 60.9,18.8
step
kill Underbelly Rat##32428 |achieve 2556/5 |goto Dalaran/2 47.4,42.5
step
kill Zul'Drak Rat##28202 |achieve 2556/8 |goto Zul'Drak 42.4,63.1
step
_Use_ the Love emote on an Arctic Hare |clicknpc Arctic Hare##29328 |script DoEmote("LOVE")
_Love_ an Artic Hare |achieve 2557/1 |goto Zul'Drak 71.8,69.8
step
_Use_ the Love emote on a Grizzly Squirrel |clicknpc Grizzly Squirrel##31889 |script DoEmote("LOVE")
_Love_ a Grizzly Squirrel |achieve 2557/6 |goto Grizzly Hills 66.7,13.1
step
_Use_ the Love emote on a Mountain Skunk |clicknpc Mountain Skunk##31890 |script DoEmote("LOVE")
_Love_ a Mountain Skunk |achieve 2557/9 |goto Grizzly Hills 68.6,11.8
step
kill Fjord Rat##24174 |achieve 2556/15 |goto Howling Fjord 45.0,30.3
step
_Use_ the Love emote on a Fjord Penguin |clicknpc Fjord Penguin##28407 |script DoEmote("LOVE")
_Love_ a Fjord Penguin |achieve 2557/3 |goto Howling Fjord 20.8,61.8
step
_Use_ the Love emote on a Scalawag Frog |clicknpc Scalawag Frog##26503 |script DoEmote("LOVE")
_Love_ a Scalawag Frog |achieve 2557/10 |goto Howling Fjord 35.6,81.8
step
_Follow_ the path to the bottom of the catacombs
kill Devouring Maggot##24270 |achieve 2556/6 |goto Howling Fjord 57.1,56.8
step
_Use_ the Love emote on a Fjord Turkey |clicknpc Fjord Turkey##24746 |script DoEmote("LOVE")
_Love_ a Fjord Turkey |achieve 2557/4 |goto Howling Fjord 66.4,71.1
step
_Use_ the Love emote on a Sassy Cat |clicknpc Sassy Cat##47682 |script DoEmote("LOVE")
_Love_ a Sassy Cat |achieve 5548/10 |goto Tol Barad Peninsula 61.2,35.5
step
_Use_ the Love emote on a Baradin Fox Kit |clicknpc Baradin Fox Kit##48630 |script DoEmote("LOVE")
_Love_ a Baradin Fox Kit |achieve 5548/2 |goto Tol Barad 44.5,25.8
step
Congratulations, you have _earned_ the
_To All The Squirrels I've Loved Before_ Achievement!
_To All The Squirrels Who Shared My Life_ Achievement!
_To All the Squirrels Who Cared for Me_ Achievement!
_Pest Control_ Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\Well Read",{
achieveid={1244},
author="support@zygorguides.com",
description="Read books.",
},[[
step
click The Betrayer Ascendant##268068 |achieve 1244/23 |goto Silvermoon City 68.6,64.1
|tip On a crate in the store behind Zathanna.
step
click Aegwynn and the Dragon Hunt##268044 |achieve 1244/1 |goto Tirisfal Glades 60.9,52.1
|tip The book is in front of the Inn next to Deathguard Burgess.
step
click Charge of the Dragonflights##268049 |achieve 1244/6 |goto Tirisfal Glades 60.8,50.5
|tip The book is outside behind the Inn on the ground.
step
click The Old Gods and the Ordering of Azeroth##268080 |achieve 1244/33 |goto Undercity 55.9,51.0
|tip The book is on the table.
step
click Icecrown and the Frozen Throne##268043 |achieve 1244/10 |goto Undercity 55.9,51.0
|tip The book is on the table.
step
click Kel'Thuzad and the Forming of the Scourge##268054 |achieve 1244/12 |goto Undercity 55.9,51.0
|tip On the table.
step
click Exile of the High Elves##268052 |achieve 1244/9 |goto Undercity/0 61.6,57.6
|tip The book is on a crate beside Ickabod Pimlen.
step
click Civil War in the Plaguelands##175761 |achieve 1244/7 |goto Undercity 67.7,37.7
|tip The book is on the table next to the stable master.
step
click Arathor and the Troll Wars##268046 |achieve 1244/3 |goto Hillsbrad Foothills 58.5,47.9
|tip Inside the downstairs level of the Tarren Mill Inn.
step
click The Alliance of Lordaeron##268066 |achieve 1244/21 |goto Hillsbrad Foothills 57.2,45.5
|tip The book is upstairs on the second floor balcony.
step
click The Invasion of Draenor##175747 |achieve 1244/28 |goto Scholomance/2 56.1,41.2
|tip This book is found after fighting Lilian Voss on the floor in the corner.
step
_Make your way_ into The Scarlet Bastion |goto Stratholme/1 31.9,34.8 < 10 |only if walking
click Kil'jaeden and the Shadow Pact##268055 |achieve 1244/13 |goto Stratholme/1 30.5,40.7
|tip On the table next to Commander Malor
step
click The Seven Kingdoms##268083 |achieve 1244/36 |goto Stratholme/1 30.1,41.3
|tip The book is on the table next to Commander Malor.
step
click Kel'Thuzad and the Forming of the Scourge##268054 |achieve 1244/12 |goto Stratholme/1 25.1,70.3
|tip The book is on the table between the bookshelves.
step
click The Lich King Triumphant##268078 |achieve 1244/31 |goto Stratholme/1 25.5,70.5
|tip The book is on the table between the bookshelves.
step
click The Birth of the Lich King##267991 |achieve 1244/24 |goto Stratholme/1 25.5,70.6
|tip The book is on the table between the bookshelves.
step
click War of the Spider##175753 |achieve 1244/40 |goto Stratholme/1 25.8,71.5
|tip The book is on the table between the bookshelves.
step
click Rise of the Blood Elves##268059 |achieve 1244/17 |goto Arathi Highlands 69.2,33.1
|tip The book is on the second floor of the Inn on the table between two benches.
step
_Remember_ this is an Alliance controlled area!
click The Last Guardian##268077 |achieve 1244/30 |goto Loch Modan 37.2,47.0
|tip The book is downstairs inside the home on the nightstand next to the bed
step
_Remember_ this is an Alliance controlled area!
click Lethargy of the Orcs##175751 |achieve 1244/14 |goto Elwynn Forest 85.3,69.7
|tip The book is upstairs on the table.
step
_Remember_ this is an Alliance controlled area!
click The World Tree and the Emerald Dream##268087 |achieve 1244/39 |goto Stormwind City 85.4,23.3
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The War of the Ancients##268086 |achieve 1244/38 |goto Stormwind City 85.3,23.2
|tip The Book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The Guardians of Tirisfal##268074 |achieve 1244/27 |goto Stormwind City 85.0,26.1
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click Aftermath of the Second War##268045 |achieve 1244/2 |goto Stormwind City 85.2,26.1
|tip The book is on the table.
step
_Remember_ this is an Alliance controlled area!
click The Kaldorei and the Well of Eternity##268076 |achieve 1244/29 |goto Stormwind City 84.7,25.9
|tip On the pillar base next to the candles
step
click The Dark Portal and the Fall of Stormwind##268072 |achieve 1244/25 |goto Swamp of Sorrows 49.3,55.5
|tip The book is in the building on the service counter.
step
click The New Horde##268079 |achieve 1244/32 |goto Swamp of Sorrows 49.3,55.5
|tip The book is on the top floor of the building on the bench next to Dispatch Commander Ruag.
step
click Rise of the Horde##268060 |achieve 1244/18 |goto Swamp of Sorrows 49.3,55.5
|tip The boook is on the top floor of the building on the bench next to Dispatch Commander Ruag.
step
_Remember_ this is an Alliance controlled area!
click Kil'jaeden and the Shadow Pact##268055 |achieve 1244/13 |goto Duskwood 74.2,45.3
|tip In the inn on the bookshelf on the second floor
step
_Remember_ this is an Alliance controlled area!
click The Founding of Quel'Thalas##268073 |achieve 1244/26 |goto Duskwood 73.7,45.1
|tip The book is in the next room over on the table.
step
click Sunwell - The Fall of Quel'Thalas##268065 |achieve 1244/20 |goto The Cape of Stranglethorn 41.0,74.4
|tip The book is inside the inn on the corner table right up the stairs.
step
click Beyond the Dark Portal##268048 |achieve 1244/5 |goto The Cape of Stranglethorn 40.7,73.8
|tip Inside the Inn on a top floor table easily accessible by entering by the flightmaster.
step
click The Twin Empires##268084 |achieve 1244/37 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click Empires' Fall##268051 |achieve 1244/8 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click Wrath of Soulflayer##175856 |achieve 1244/42 |goto The Cape of Stranglethorn 42.1,73.7
|tip The book is downstairs on a bookshelf in the same room as the auctioneer.
step
click The Scourge of Lordaeron##268081 |achieve 1244/34 |goto The Cape of Stranglethorn 41.9,73.5
|tip The book is downstairs on a bookshelf under the stairs in the same room as the auctioneer.
step
click The Sentinels and the Long Vigil##175732 |achieve 1244/35 |goto The Cape of Stranglethorn 42.1,73.6
|tip The book is upstairs on the nightstand next to the bed.
step
click Mount Hyjal and Illidan's Gift##268057 |achieve 1244/15 |goto Northern Barrens 66.9,74.6
|tip The book is in the Ratchet Inn on the wooden table on the western wall.
step
click Sargeras and the Betrayal##268061 |achieve 1244/19 |goto Northern Barrens 67.0,74.9
|tip The book is in the Ratchet Inn on the nightstand between two beds.
step
click Archimonde's Return and the Flight to Kalimdor##268047 |achieve 1244/4 |goto Northern Barrens 68.0,73.5
|tip The book is inside Liv Rizzlefix's hut.
step
click The Battle of Grim Batol##268067 |achieve 1244/22 |goto Mulgore 32.7,49.5
|tip The book is on the wooden table.
step
click Ironforge - the Awakening of the Dwarves##268053 |achieve 1244/11 |goto Mulgore 32.7,49.5
|tip On the wooden table
step
click War of the Three Hammers##175739 |achieve 1244/41 |goto Mulgore 32.7,49.5
|tip The book is on the wooden table.
step
click Old Hatreds - The Colonization of Kalimdor##268058 |achieve 1244/16 |goto Tanaris 50.97,30.29
|tip The boook is right next to the anvil.
step
_Congratulations!_
You Earned the "Well Read" Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\General\\You'll Feel Right as Rain",{
achieveid={5779},
description="This guide will walk you through feeling 1000% better by eating Chocolate Cookies.",
},[[
step
Use the Stormwind City Cooking Dailies guide to
earn 6 Epicurean's Award##81
|tip Three for the recipe and the rest for the cocoa beans you'll need.
only if not achieved(5779)
step
talk Shazdar##49737
buy Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Orgrimmar 56.8,62.3
step
talk Shazdar##49737
buy 2 Imported Supplies##68689 |n
|tip If you need more buy another until you have 91 beans.
collect 91 Cocoa Beans##62786 |use Imported Supplies##68689 |goto Orgrimmar 56.8,62.3
only if not achieved(5779)
step
talk Suja##46708
buy 91 Simple Flour##30817 |goto Orgrimmar 56.4,61.0
only if not achieved(5779)
step
Make a Cooking Fire |cast Cooking Fire##818
create 91 Chocolate Cookie##88013,Cooking,91 total |n
collect 91 Chocolate Cookie##62680
|tip You can also buy these from the Auction House.
only if not achieved(5779)
step
Eat #91# Chocolate Cookies in a row to feel 1000% better |use Chocolate Cookie##62680 |achieve 5779
step
Congratulations, you have earned the You'll Feel Right as Rain achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Crazy Cat Lady (10 player)",{
achieveid={3006},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Crazy Cat Lady (25 player)",{
achieveid={3007},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Disarmed (10 player)",{
achieveid={2953},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Disarmed (25 player)",{
achieveid={2954},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Firefighter (10 player)",{
achieveid={3180},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Firefighter (25 player)",{
achieveid={3189},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Glory of the Ulduar Raider (10 Player)",{
achieveid={2957},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Glory of the Ulduar Raider (25 Player)",{
achieveid={2958},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Heartbreaker (10 player)",{
achieveid={3058},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Heartbreaker (25 player)",{
achieveid={3059},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Choose You, Steelbreaker (10 player)",{
achieveid={2941},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Choose You, Steelbreaker (25 player)",{
achieveid={2944},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Could Say That This Cache Was Rare (10 player)",{
achieveid={3182},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
path Ulduar/1
path loop off; dist 20
path	50.98,85.52
map Ulduar/2
path	37.10,76.41
click Ulduar Teleporter##194569
Teleport to the Antechamber of Ulduar |goto Ulduar/2 37.10,76.41 |noway |c
only if not achieved(3182)
step
map Ulduar/2
path loop off; dist 20
path	37.10,54.92	34.83,35.10	37.06,18.31
path	37.12,8.17
map Ulduar/3
path	52.90,74.15	57.89,72.18	63.79,77.03
path	73.14,79.13	75.93,76.98	75.09,71.80
path	73.75,64.55	70.97,63.85
Enter the Halls of Winter |goto 70.97,63.85 |noway |c
only if not achieved(3182)
step
To earn this achievement, you need to kill Hodir within 3 minutes
Pop all cooldowns that increase your damage and defeat Hodir
|achieve 3182 |goto Ulduar/3 66.0,63.7
step
Congratulations, you have earned the I Could Say That This Cache Was Rare (10 player) Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Could Say That This Cache Was Rare (25 player)",{
achieveid={3184},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Love the Smell of Saronite in the Morning (10 player)",{
achieveid={3181},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\I Love the Smell of Saronite in the Morning (25 player)",{
achieveid={3188},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Iron Dwarf, Medium Rare (10 player)",{
achieveid={2923},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Iron Dwarf, Medium Rare (25 player)",{
achieveid={2924},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Knock, Knock, Knock on Wood (10 player)",{
achieveid={3179},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Knock, Knock, Knock on Wood (25 player)",{
achieveid={3187},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Lose Your Illusion (10 player)",{
achieveid={3176},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Lose Your Illusion (25 player)",{
achieveid={3183},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\One Light in the Darkness (10 player)",{
achieveid={3158},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\One Light in the Darkness (25 player)",{
achieveid={3163},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Orbit-uary (10 player)",{
achieveid={3056},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Orbit-uary (25 player)",{
achieveid={3057},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Stokin' the Furnace (10 player)",{
achieveid={3056},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Legacy\\Raids\\Stokin' the Furnace (25 player)",{
achieveid={2929},
description="This achievement was earned prior to patch 7.3.5 and can no longer be obtained.",
},[[
step
This achievement can no longer be obtained!
|tip It was earned prior to patch 7.3.5, before 10 and 25 player modes were eliminated.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Eastern Kingdoms Safari",{
achieveid={6586},
description="Catch every battle pet in Eastern Kingdoms.",
},[[
step
Capturing pets in Eastern Kingdoms _will require_ level 25 pets so train up!
confirm
step
_Capture_ Wharf Rat
|tip They share spawn points with other critters in the area.
learnpet Wharf Rat##61323 |achieve 6586/88 |goto The Cape of Stranglethorn 43.0,71.6
step
_Capture_ Forest Spiderling
learnpet Forest Spiderling##61320 |achieve 6586/21 |goto The Cape of Stranglethorn 58.2,78.6
step
_Capture_ Lizard Hatchling
learnpet Lizard Hatchling##61321 |achieve 6586/40 |goto The Cape of Stranglethorn 58.2,78.6
step
_Capture_ Strand Crab
learnpet Strand Crab##61312 |achieve 6586/61 |goto The Cape of Stranglethorn 56.2,77.2
step
_Capture_ Tree Python
learnpet Tree Python##61318 |achieve 6586/62 |goto The Cape of Stranglethorn 58.2,78.0
step
_Capture_ Beetle
learnpet Beetle##61319 |achieve 6586/17 |goto The Cape of Stranglethorn 58.2,78.0
step
_Capture_ Baby Ape
|tip Can only be found when it's raining.
learnpet Baby Ape##61324 |achieve 6586/70 |goto The Cape of Stranglethorn 62.6,78.2
step
_Capture_ Roach
learnpet Roach##61169 |achieve 6586/9 |goto The Cape of Stranglethorn 43.2,71.2
step
_Capture_ Long-tailed Mole
learnpet Long-tailed Mole##61317 |achieve 6586/5 |goto The Cape of Stranglethorn 43.2,71.2
step
_Capture_ Crimson Moth
learnpet Crimson Moth##61314 |achieve 6586/87 |goto The Cape of Stranglethorn 52.0,51.0
step
_Capture_ Polly
learnpet Polly##61322 |achieve 6586/60 |goto Northern Stranglethorn 39.6,30.8
step
_Capture_ Rat Snake
learnpet Rat Snake##61258 |achieve 6586/35 |goto Duskwood 72.6,69.0
step
_Capture_ Black Rat
learnpet Black Rat##61257 |achieve 6586/3 |goto Duskwood 75.6,56.4
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6586/37 |goto Duskwood 66.4,36.6
step
_Capture_ Dusk Spiderling
learnpet Dusk Spiderling##61253 |achieve 6586/33 |goto Duskwood 62.2,26.8
step
_Capture_ Widow Spiderling
|tip Only spawns at night.
learnpet Widow Spiderling##61259 |achieve 6586/82 |goto Duskwood 64.4,26.6
step
_Capture_ Chicken
learnpet Chicken##62664 |achieve 6586/34 |goto Duskwood 77.0,55.2
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6586/10 |goto Duskwood 71.6,15.6
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6586/36 |goto Duskwood 23.1,44.6
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6586/11 |goto Westfall 47.2,16.4
step
_Capture_ Tiny Harvester
learnpet Tiny Harvester##61160 |achieve 6586/81 |goto Westfall 52.2,22.6
step
_Capture_ Black Lamb
learnpet Black Lamb##60649 |achieve 6586/89 |goto Elwynn Forest 32.2,56.2
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6586/7 |goto Elwynn Forest 34.0,51.6
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6586/14 |goto Elwynn Forest 41.8,57.0
step
_Capture_ Fawn
learnpet Fawn##61165 |achieve 6586/43 |goto Elwynn Forest 36.8,56.0
step
_Capture_ Cat
learnpet Cat##62019 |achieve 6586/15 |goto Elwynn Forest 44.6,53.6
step
_Capture_ Stormwind Rat
learnpet Stormwind Rat##62954 |achieve 6586/45 |goto Elwynn Forest 27.6,86.4
step
_Capture_ Restless Shadeling
|tip Only spawns at 0:00 Server Time and despawns in the morning.
learnpet Restless Shadeling##61375 |achieve 6586/30 |goto Deadwind Pass 54.6,80.6
step
talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3 |walk
_Tell_ her "Show me the Blasted Lands before the invasion."
|tip You can go back to her to change it back again afterwards.
_Capture_ Scorpling
|tip It only shows up in the classic version of the Blasted Lands.
learnpet Scorpling##61329 |achieve 6586/28 |goto Blasted Lands 60.0,58.6
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6586/26 |goto Blasted Lands 55.4,32.6
step
_Capture_ Fire Beetle
learnpet Fire Beetle##61328 |achieve 6586/24 |goto Blasted Lands 44.6,33.4
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6586/1 |goto Blasted Lands 59.9,26.1
step
_Capture_ a Parrot
|tip They share a spawn point with other critters in the area.
learnpet Parrot##61313 |achieve 6586/59 |goto Swamp of Sorrows 39.6,50.6
step
_Capture_ Water Snake
learnpet Water Snake##61367 |achieve 6586/63 |goto Swamp of Sorrows 33.6,56.8
step
_Capture_ Huge Toad
learnpet Huge Toad##61368 |achieve 6586/52 |goto Swamp of Sorrows 46.6,42.8
step
_Capture_ Swamp Moth
learnpet Swamp Moth##61370 |achieve 6586/72 |goto Swamp of Sorrows 36.0,44.4
step
_Capture_ Moccasin
learnpet Moccasin##61372 |achieve 6586/71 |goto Swamp of Sorrows 38.0,44.6
step
_Capture_ Redridge Rat
learnpet Redridge Rat##61168 |achieve 6586/66 |goto Redridge Mountains 30.6,62.6
step
_Capture_ Fledgling Buzzard
learnpet Fledgling Buzzard##61171 |achieve 6586/64 |goto Redridge Mountains 24.2,32.8
step
_Capture_ Mountain Cottontail
learnpet Mountain Cottontail##61167 |achieve 6586/47 |goto Redridge Mountains 16.0,46.2
step
_Capture_ Lava Crab
learnpet Lava Crab##61383 |achieve 6586/32 |goto Burning Steppes 54.8,26.6
step
_Capture_ Lava Beetle
learnpet Lava Beetle##61386 |achieve 6586/29 |goto Burning Steppes 54.8,26.6
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6586/31 |goto Burning Steppes 48.4,33.4
step
_Capture_ Ash Viper
learnpet Ash Viper##61385 |achieve 6586/67 |goto Burning Steppes 48.4,33.4
step
_Capture_ Rattlesnake
learnpet Rattlesnake##61439 |achieve 6586/21 |goto Badlands 27.8,33.0
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6586/25 |goto Badlands 24.0,37.8
step
_Capture_ King Snake
learnpet King Snake##61443 |achieve 6586/22 |goto Badlands 22.0,37.0
step
_Capture_ Gold Beetle
learnpet Gold Beetle##61438 |achieve 6586/20 |goto Badlands 29.0,30.8
step
_Capture_ Spiky Lizard
learnpet Spiky Lizard##61441 |achieve 6586/23 |goto Badlands 28.8,31.0
step
_Capture_ Molten Hatchling
learnpet Molten Hatchling##61425 |achieve 6586/68 |goto Searing Gorge 31.6,75.0
step
_Capture_ Ash Spiderling
learnpet Ash Spiderling##61420 |achieve 6586/3 |goto Searing Gorge 31.6,75.0
step
_Capture_ Little Black Ram
learnpet Little Black Ram##61459 |achieve 6586/56 |goto Loch Modan 26.2,62.6
step
_Capture_ Snow Cub
learnpet Snow Cub##61689 |achieve 6586/12 |goto Dun Morogh 57.2,49.6
step
_Capture_ Irradiated Roach
learnpet Irradiated Roach##61691 |achieve 6586/4 |goto Dun Morogh 59.0,44.0
step
_Capture_ Alpine Hare
learnpet Alpine Hare##61690 |achieve 6586/2 |goto Dun Morogh 57.6,40.8
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6586/51 |goto Wetlands 59.2,52.2
step
_Capture_ Tiny Bog Beast
learnpet Tiny Bog Beast##61686 |achieve 6586/85 |goto Wetlands 53.0,39.2
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6586/84 |goto Wetlands 67.8,44.0
step
_Capture_ Highlands Mouse
learnpet Highlands Mouse##62905 |achieve 6586/78 |goto Wetlands 69.6,33.2
step
_Capture_ Yellow-Bellied Marmot
learnpet Yellow-Bellied Marmot##62904 |achieve 6586/86 |goto Twilight Highlands 56.6,14.2
step
_Capture_ Twilight Spider
learnpet Twilight Spider##62117 |achieve 6586/77 |goto Twilight Highlands 58.6,33.4
step
_Capture_ Twilight Fiendling
learnpet Twilight Fiendling##62914 |achieve 6586/76 |goto Twilight Highlands 58.6,33.4
step
_Capture_ Highlands Skunk
learnpet Highlands Skunk##62907 |achieve 6586/79 |goto Twilight Highlands 46.6,30.2
step
_Capture_ Grizzly Squirrel
learnpet Grizzly Squirrel##62818 |achieve 6586/65 |goto Twilight Highlands 46.6,30.2
step
_Capture_ Highlands Turkey
learnpet Highlands Turkey##62906 |achieve 6586/80 |goto Twilight Highlands 46.6,30.2
step
_Capture_ Wildhammer Gryphon Hatchling
learnpet Wildhammer Gryphon Hatchling##62900 |achieve 6586/83 |goto Twilight Highlands 56.6,15.6
step
_Capture_ Tiny Twister
learnpet Tiny Twister##61703 |achieve 6586/39 |goto Arathi Highlands 47.6,50.4
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6586/19 |goto Arathi Highlands 37.0,40.2
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6586/8 |goto Arathi Highlands 48.4,40.4
step
_Capture_ Grasslands Cottontail
learnpet Grasslands Cottontail##61704 |achieve 6586/18 |goto Arathi Highlands 24.6,43.6
step
_Capture_ Jade Oozeling
learnpet Jade Oozeling##61718 |achieve 6586/74 |goto The Hinterlands 58.0,42.6
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6586/6 |goto The Hinterlands 58.0,42.6
step
_Capture_ Hare
learnpet Hare##61751 |achieve 6586/16 |goto The Hinterlands 58.0,42.6
step
_Capture_ Brown Marmot
learnpet Brown Marmot##61752 |achieve 6586/73 |goto The Hinterlands 58.0,42.6
step
_Capture_ Infested Bear Cub
learnpet Infested Bear Cub##61758 |achieve 6586/53 |goto Hillsbrad Foothills 31.6,69.8
step
_Capture_ Snowshoe Hare
learnpet Snowshoe Hare##61755 |achieve 6586/55 |goto Hillsbrad Foothills 51.0,22.4
step
_Capture_ Red-Tailed Chipmunk
learnpet Red-Tailed Chipmunk##61757 |achieve 6586/54 |goto Hillsbrad Foothills 40.8,48.4
step
_Capture_ Blighted Squirrel
learnpet Blighted Squirrel##61890 |achieve 6586/69 |goto Silverpine Forest 51.6,76.2
step
_Capture_ Lost of Lordaeron
learnpet Lost of Lordaeron##61905 |achieve 6586/75 |goto Tirisfal Glades 61.8,59.2
step
_Capture_ Festering Maggot
learnpet Festering Maggot##61830 |achieve 6586/40 |goto Eastern Plaguelands 45.4,59.6
step
_Capture_ Infected Fawn
learnpet Infected Fawn##61827 |achieve 6586/41 |goto Eastern Plaguelands 45.2,56.0
step
_Capture_ Infected Squirrel
learnpet Infected Squirrel##61828 |achieve 6586/42 |goto Eastern Plaguelands 45.2,56.0
step
_Capture_ Bat
learnpet Bat##61829 |achieve 6586/38 |goto Eastern Plaguelands 45.2,56.0
step
_Capture_ Spider
learnpet Spider##61327 |achieve 6586/13 |goto Eastern Plaguelands 45.2,56.0
step
_Capture_ Larva
learnpet Larva##62022 |achieve 6586/50 |goto Ghostlands 29.6,47.0
step
_Capture_ Spirit Crab
learnpet Spirit Crab##62034 |achieve 6586/48 |goto Ghostlands 22.6,33.6
step
_Capture_ Ruby Sapling
learnpet Ruby Sapling##62020 |achieve 6586/46 |goto Eversong Woods 43.6,88.6
step
_Capture_ Undercity Rat
learnpet Undercity Rat##61889 |achieve 6586/49 |goto Undercity 62.8,34.2
step
_Capture_ Sea Gull
|tip Even though this is sending you to Kalimdor you will get credit.
learnpet Sea Gull##62953 |achieve 6586/44 |goto Tanaris 54.8,39.8
step
Congratulations, you have _earned_ the _Eastern Kingdoms Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Family Reunion",{
achieveid={6608},
description="Capture a battle pet from each family.",
},[[
step
The _Harpy Younglings_ in the area are around level 3
|tip Challenge one to a pet battle and capture it
learnpet Harpy Youngling##68804 |n
achieve 6608/1 |goto Northern Barrens 31.1,40.6
step
The _Frogs_ in this area are around level 5
|tip Challenge one to a pet battle and capture it
learnpet Frog##62312 |n
achieve 6608/9|goto Ashenvale 71.5,54.1
step
The _Tainted Rats_ are around level 14
|tip Challenge one to a pet battle and capture it.
learnpet Tainted Rat##62316 |n
achieve 6608/5 |goto Felwood 36.5,59.3
step
The _Tainted Moths_ are around level 14
|tip Challenge one to a pet battle and capture it.
learnpet Tainted Moth##62315 |n
achieve 6608/3 |goto Felwood 39.0,68.1
step
The _Venomspitter Hatchlings_ in this area are around level 5
|tip Challenge one to a pet battle and capture it.
learnpet Venomspitter Hatchling##62191 |n
achieve 6608/8 |goto Stonetalon Mountains 55.4,74.3
step
The _Rabid Nut Varmint 5000s_ in this area are around level 5
|tip Challenge one to a pet battle and capture it.
learnpet Rabid Nut Varmint 5000##62120 |n
achieve 6608/10 |goto Stonetalon Mountains 68.5,58.0
step
The _Spawn of Onyxia_ are around level 12
|tip They are a rare spawn so you may have to wait around a while for one.
learnpet Spawn of Onyxia##62201 |n
achieve 6608/2 |goto Dustwallow Marsh 52.2,75.9
step
The _Lofty Librams_ in the area are level 6
|tip Challenge one to a pet battle and capture it.
learnpet Lofty Libram##68806 |n
achieve 6608/6 |goto Hillsbrad Foothills 31.9,40.6
step
The _Lost of Lordaeron_ is level 1
|tip Challenge one to a pet battle and capture it.
learnpet Lost of Lordaeron##61905 |n
achieve 6608/4 |goto Tirisfal Glades 79.7,55.2
step
The _Ruby Saplings_ are level 1
|tip Challenge one to a pet battle and capture it.
learnpet Ruby Sapling##62020 |n
achieve 6608/7 |goto Eversong Woods 52.2,58.1
step
Congratulations, you have _earned_ the _Family Reuinion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\High Quality",{
achieveid={7463},
description="This guide will walk you through capturing 10 rare quality battle pets.",
},[[
step
Please refer to our pet battles guides to find specific pets to hunt. Most of them can be of rare quality
Collect #10# Rare pets from throughout the world of Azeroth |achieve 7463
step
Congratulations, you have earned the High Quality achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Kalimdor Safari",{
achieveid={6585},
description="Catch every battle pet in Kalimdor.",
},[[
step
_Capture_ Emerald Boa
learnpet Emerald Boa##62127 |achieve 6585/78 |goto Northern Barrens 56.4,78.6
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6585/16 |goto Northern Barrens 56.4,78.6
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6585/30 |goto Northern Barrens 58.4,48.8
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6585/18 |goto Northern Barrens 58.4,48.8
step
_Capture_ Cheetah Cub
learnpet Cheetah Cub##62129 |achieve 6585/77 |goto Northern Barrens 51.8,48.8
step
_Capture_ Giraffe Calf
learnpet Giraffe Calf##62130 |achieve 6585/82 |goto Southern Barrens 50.4,48.2
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6585/23 |goto Dustwallow Marsh 51.0,76.0
step
_Capture_ Black Rat
learnpet Black Rat##61257 |achieve 6585/21 |goto Dustwallow Marsh 51.0,76.0
step
_Capture_ Spawn of Onyxia
learnpet Spawn of Onyxia##62201 |achieve 6585/62 |goto Dustwallow Marsh 52.0,74.4
step
_Capture_ Chicken
|tip Chickens share spawns with other critters in the area.
learnpet Chicken##62664 |achieve 6585/13 |goto Dustwallow Marsh 53.2,55.4
step
_Capture_ Twilight Iguana
learnpet Twilight Iguana##62255 |achieve 6585/89 |goto Thousand Needles 53.8,60.8
step
_Capture_ Roach
learnpet Roach##61169 |achieve 6585/5 |goto Thousand Needles 53.8,60.8
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6585/37 |goto Thousand Needles 53.8,60.8
step
_Capture_ Silithid Hatchling
|tip Spawns during sandstorms
learnpet Silithid Hatchling##62258 |achieve 6585/87 |goto Tanaris 36.0,45.6
step
_Capture_ Desert Spider
learnpet Desert Spider##62186 |achieve 6585/54 |goto Tanaris 50.6,30.4
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6585/36 |goto Tanaris 50.6,30.4
step
_Capture_ Stinkbug
learnpet Stinkbug##62256 |achieve 6585/88 |goto Tanaris 50.6,30.4
step
_Capture_ Gold Beetle
learnpet Gold Beetle##61438 |achieve 6585/85 |goto Tanaris 50.6,30.4
step
_Capture_ Rattlesnake
learnpet Rattlesnake##61439 |achieve 6585/34 |goto Tanaris 50.6,30.4
step
_Capture_ Sand Kitten
learnpet Sand Kitten##62257 |achieve 6585/86 |goto Tanaris 50.6,30.4
step
_Capture_ Sea Gull
learnpet Sea Gull##62953 |achieve 6585/35 |goto Tanaris 54.8,39.8
step
_Capture_ Long-Tailed Mole
learnpet Long-Tailed Mole##61317 |achieve 6585/40 |goto Un'Goro Crater 55.0,61.0
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6585/39 |goto Un'Goro Crater 50.8,25.4
step
_Capture_ Fire Beetle
learnpet Fire Beetle##61328 |achieve 6585/26 |goto Un'Goro Crater 51.0,49.8
step
_Capture_ Ash Lizard
learnpet Ash Lizard##62364 |achieve 6585/70 |goto Un'Goro Crater 51.0,49.8
step
_Capture_ Parrot
learnpet Parrot##61313 |achieve 6585/41 |goto Un'Goro Crater 36.4,66.8
step
_Capture_ Tree Python
learnpet Tree Python##61318 |achieve 6585/42 |goto Un'Goro Crater 68.6,76.0
step
_Capture_ Beetle
learnpet Beetle##61319 |achieve 6585/1 |goto Un'Goro Crater 33.6,72.8
step
_Capture_ Spotted Bell Frog
learnpet Spotted Bell Frog##62370 |achieve 6585/96 |goto Un'Goro Crater 65.2,69.8
step
_Capture_ Diemetradon Hatchling
learnpet Diemetradon Hatchling##62375 |achieve 6585/90 |goto Un'Goro Crater 34.8,65.6
step
_Capture_ Rock Viper
learnpet Rock Viper##62184 |achieve 6585/27 |goto Silithus 31.4,14.4
step
_Capture_ Spiky Lizard
learnpet Spiky Lizard##61441 |achieve 6585/32 |goto Silithus 40.8,35.0
step
_Capture_ Scarab Hatchling
learnpet Scarab Hatchling##62524 |achieve 6585/80 |goto Silithus 37.6,77.8
step
_Capture_ Qiraji Guardling
|tip Only spawns during summer
learnpet Qiraji Guardling##62526 |achieve 6585/79 |goto Silithus 37.6,77.8
step
_Capture_ Sidewinder
learnpet Sidewinder##62523 |achieve 6585/81 |goto Silithus 37.0,81.4
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6585/6 |goto Feralas 51.2,15.6
step
_Capture_ Nether Faerie Dragon
learnpet Nether Faerie Dragon##62395 |achieve 6585/65 |goto Feralas 56.6,44.6
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6585/24 |goto Feralas 56.6,44.6
step
_Capture_ Gazelle Fawn
learnpet Gazelle Fawn##62176 |achieve 6585/76 |goto Mulgore 38.6,61.0
step
_Capture_ Amethyst Shale Hatchling
learnpet Amethyst Shale Hatchling##62182 |achieve 6585/55 |goto Desolace 30.4,59.6
step
_Capture_ Topaz Shale Hatchling
learnpet Topaz Shale Hatchling##62181 |achieve 6585/59 |goto Desolace 35.0,64.0
step
_Capture_ Stone Armadillo
|tip Spawns at night
learnpet Stone Armadillo##62187 |achieve 6585/58 |goto Desolace 70.8,46.6
step
_Capture_ Elfin Rabbit
learnpet Elfin Rabbit##62178 |achieve 6585/56 |goto Desolace 52.6,47.4
step
_Capture_ Red-Tailed Chipmunk
learnpet Red-Tailed Chipmunk##61757 |achieve 6585/12 |goto Desolace 52.6,47.4
step
_Capture_ Forest Moth
learnpet Forest Moth##62177 |achieve 6585/45 |goto Desolace 52.6,47.4
step
_Capture_ Horny Toad
learnpet Horny Toad##62185 |achieve 6585/57 |goto Desolace 64.4,23.2
step
_Capture_ Spider
learnpet Spider##61327 |achieve 6585/11 |goto Stonetalon Mountains 57.0,72.0
step
_Capture_ Venomspitter Hatchling
learnpet Venomspitter Hatchling##62191 |achieve 6585/84 |goto Stonetalon Mountains 57.0,72.0
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6585/9 |goto Stonetalon Mountains 63.6,61.6
step
_Capture_ Rabid Nut Varmint 5000
learnpet Rabid Nut Varmint 5000##62120 |achieve 6585/47 |goto Stonetalon Mountains 66.4,59.6
step
_Capture_ Alpine Chipmunk
learnpet Alpine Chipmunk##62189 |achieve 6585/69 |goto Stonetalon Mountains 52.0,51.2
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6585/33 |goto Stonetalon Mountains 51.2,52.0
step
_Capture_ Coral Snake
learnpet Coral Snake##62190 |achieve 6585/83 |goto Stonetalon Mountains 64.4,52.4
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6585/4 |goto Ashenvale 12.4,34.2
step
_Capture_ Rusty Snail
learnpet Rusty Snail##62313 |achieve 6585/46 |goto Ashenvale 14.0,28.4
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6585/8 |goto Ashenvale 80.8,63.8
step
_Capture_ Frog
learnpet Frog##62312 |achieve 6585/2 |goto Ashenvale 80.8,63.8
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6585/3 |goto Ashenvale 83.2,69.0
step
_Capture_ Water Snake
learnpet Water Snake##61367 |achieve 6585/98 |goto Durotar 39.0,41.6
step
_Capture_ Hare
learnpet Hare##61751 |achieve 6585/19 |goto Durotar 54.0,18.2
step
_Capture_ Creepy Crawly
learnpet Creepy Crawly##62116 |achieve 6585/20 |goto Durotar 48.6,18.8
step
_Capture_ Spiny Lizard
learnpet Spiny Lizard##62114 |achieve 6585/61 |goto Durotar 57.8,15.4
step
_Capture_ Dung Beetle
learnpet Dung Beetle##62115 |achieve 6585/60 |goto Durotar 57.8,15.4
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6585/10 |goto Azshara 42.2,67.8
step
_Capture_ Shore Crab
learnpet Shore Crab##61158 |achieve 6585/49 |goto Azshara 42.4,39.8
step
_Capture_ Turquoise Turtle
learnpet Turquoise Turtle##62121 |achieve 6585/50 |goto Azshara 42.4,39.8
step
_Capture_ Twilight Spider
learnpet Twilight Spider##62117 |achieve 6585/22 |goto Azshara 69.2,16.6
step
_Capture_ Twilight Beetle
learnpet Twilight Beetle##62118 |achieve 6585/28 |goto Azshara 69.2,16.6
step
_Capture_ Nordrassil Wisp
learnpet Nordrassil Wisp##62888 |achieve 6585/74 |goto Mount Hyjal 58.6,27.6
step
_Capture_ Silky Moth
learnpet Silky Moth##62373 |achieve 6585/68 |goto Mount Hyjal 58.6,27.6
step
_Capture_ Death's Head Cockroach
learnpet Death's Head Cockroach##62887 |achieve 6585/72 |goto Mount Hyjal 45.0,21.2
step
_Capture_ Carrion Rat
learnpet Carrion Rat##62885 |achieve 6585/71 |goto Mount Hyjal 78.8,49.0
step
_Capture_ Fire-Proof Roach
learnpet Fire-Proof Roach##62886 |achieve 6585/73 |goto Mount Hyjal 85.2,59.6
step
_Capture_ Bat
|tip If you are having trouble finding one of these in this area try fighting other pets in the area as the Wharf Rat may be a secondary for many of them.
learnpet Bat##61829 |achieve 6585/25 |goto Mount Hyjal 41.4,24.6
step
_Capture_ Minfernal
|tip Rare pet spawn. Killing critters around the area helps speed up the process.
learnpet Minfernal##62317 |achieve 6585/63 |goto Felwood 45.8,42.6
step
_Capture_ Tainted Cockroach
learnpet Tainted Cockroach##62314 |achieve 6585/66 |goto Felwood 39.0,68.6
step
_Capture_ Tainted Moth
learnpet Tainted Moth##62315 |achieve 6585/67 |goto Felwood 47.4,33.2
step
_Capture_ Tainted Rat
learnpet Tainted Rat##62316 |achieve 6585/64 |goto Felwood 47.4,33.2
step
_Capture_ Robo-Chick
learnpet Robo-Chick##62119 |achieve 6585/48 |goto Winterspring 59.8,50.0
step
_Capture_ Crystal Spider
learnpet Crystal Spider##62435 |achieve 6585/44 |goto Winterspring 49.8,57.0
step
_Capture_ Snowy Owl |tip Only spawns in winter from September to April
learnpet Snowy Owl##7554 |achieve 6585/97 |goto Winterspring 61.4,70.2
step
_Capture_ Alpine Hare
learnpet Alpine Hare##61690 |achieve 6585/43 |goto Winterspring 58.4,70.2
step
_Capture_ Darkshore Cub
learnpet Darkshore Cub##62250 |achieve 6585/17 |goto Darkshore 42.2,76.6
step
_Capture_ Shimmershell Snail
learnpet Shimmershell Snail##62246 |achieve 6585/52 |goto Darkshore 37.4,73.4
step
_Capture_ Strand Crab
learnpet Strand Crab##61312 |achieve 6585/7 |goto Darkshore 37.4,73.4
step
_Capture_ Grey Moth
learnpet Grey Moth##62050 |achieve 6585/51 |goto Azuremyst Isle 29.6,62.6
step
_Capture_ Infected Fawn
learnpet Infected Fawn##61827 |achieve 6585/14 |goto Bloodmyst Isle 58.8,88.2
step
_Capture_ Infected Squirrel
learnpet Infected Squirrel##61828 |achieve 6585/15 |goto Bloodmyst Isle 48.4,83.4
step
_Capture_ Ravager Hatchling
learnpet Ravager Hatchling##62051 |achieve 6585/53 |goto Bloodmyst Isle 58.8,64.6
step
_Capture_ Crested Owl
learnpet Crested Owl##62242 |achieve 6585/98 |goto Teldrassil 42.2,60.6
step
_Capture_ Tol'vir Scarab
learnpet Tol'vir Scarab##62899 |achieve 6585/95 |goto Uldum 41.4,40.4
step
_Capture_ Locust
learnpet Locust##62893 |achieve 6585/92 |goto Uldum 57.0,49.4
step
_Capture_ Mac Frog
learnpet Mac Frog##62892 |achieve 6585/93 |goto Uldum 57.0,49.4
step
_Capture_ Oasis Moth
learnpet Oasis Moth##62895 |achieve 6585/94 |goto Uldum 60.8,46.0
step
_Capture_ Horned Lizard
learnpet Horned Lizard##62894 |achieve 6585/38 |goto Uldum 69.2,45.8
step
_Capture_ Leopard Scorpid
learnpet Leopard Scorpid##62896 |achieve 6585/91 |goto Uldum 46.0,51.2
step
talk Zidormi##88206 |goto Blasted Lands/0 48.1,7.3 |walk
_Tell_ her "Show me the Blasted Lands before the invasion."
|tip You can go back to her to change it back again afterwards.
_Capture_ Scorpling
|tip Even though this is sending you to Eastern Kingdoms you will get credit.
learnpet Scorpling##61329 |achieve 6585/31 |goto Blasted Lands 60.0,58.6
step
_Capture_ Mountain Cottontail
|tip Even though this is sending you to Eastern Kingdoms you will get credit.
learnpet Mountain Cottontail##61167 |achieve 6585/29 |goto Redridge Mountains 16.0,46.2
step
_Capture_ Biletoad
|tip Even though this is sending you to Northrend you will get credit.
learnpet Biletoad##62815 |achieve 6585/75 |goto Sholazar Basin 47.6,66.4
step
Congratulations, you have _earned_ the _Kalimdor Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Northrend Safari",{
achieveid={6588},
description="Catch every battle pet in Northrend.",
},[[
step
_Capture_ Shore Crab
learnpet Shore Crab##61158 |achieve 6588/10 |goto Borean Tundra 41.8,18.4
step
_Capture_ Borean Marmot
learnpet Borean Marmot##62695 |achieve 6588/2 |goto Borean Tundra 49.0,26.6
step
_Capture_ Oily Slimeling
learnpet Oily Slimeling##62697 |achieve 6588/16 |goto Borean Tundra 58.2,23.6
step
_Capture_ Arctic Hare
learnpet Arctic Hare##62693 |achieve 6588/1 |goto Borean Tundra 76.2,18.6
step
_Capture_ Tundra Penguin
learnpet Tundra Penguin##62835 |achieve 6588/24 |goto Dragonblight 10.8,63.2
step
_Capture_ Dragonbone Hatchling
learnpet Dragonbone Hatchling##62852 |achieve 6588/6 |goto Dragonblight 55.0,41.2
step
_Capture_ Strand Crab
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Dragonblight.
learnpet Strand Crab##61312 |achieve 6588/5 |goto Dragonblight 55.0,41.2
step
_Capture_ Stunted Shardhorn
learnpet Stunted Shardhorn##62816 |achieve 6588/28 |goto Sholazar Basin 39.6,43.4
step
_Capture_ Biletoad
learnpet Biletoad##62815 |achieve 6588/27 |goto Sholazar Basin 53.4,58.2
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6588/21 |goto Sholazar Basin 24.0,50.2
step
_Capture_ Cockroach
learnpet Cockroach##61384 |achieve 6588/23 |goto Icecrown 68.4,67.6
step
_Capture_ Scourged Whelpling
learnpet Scourged Whelpling##62854 |achieve 6588/26 |goto Icecrown 72.2,39.4
step
_Capture_ Arctic Fox Kit
|tip It must be snowing on your home realm to see these guys.
learnpet Arctic Fox Kit##62864 |achieve 6588/29 |goto The Storm Peaks 31.0,48.2
step
_Capture_ Mountain Skunk
learnpet Mountain Skunk##61677 |achieve 6588/15 |goto The Storm Peaks 65.2,49.2
step
_Capture_ Mouse
learnpet Mouse##61143 |achieve 6588/12 |goto Crystalsong Forest 36.6,56.4
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6588/3 |goto Crystalsong Forest 44.0,45.6
step
_Capture_ Water Waveling
learnpet Water Waveling##62820 |achieve 6588/31 |goto Zul'Drak 41.2,78.6
step
_Capture_ Huge Toad
learnpet Huge Toad##61368 |achieve 6588/30 |goto Zul'Drak 44.0,60.6
step
_Capture_ Grizzly Squirrel
learnpet Grizzly Squirrel##62818 |achieve 6588/11 |goto Grizzly Hills 35.8,56.6
step
_Capture_ Fawn
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Grizzly Hills.
learnpet Fawn##61165 |achieve 6588/9 |goto Grizzly Hills 35.8,56.6
step
_Capture_ Imperial Eagle Chick
learnpet Imperial Eagle Chick##62819 |achieve 6588/14 |goto Grizzly Hills 23.0,39.6
step
_Capture_ Fjord Worg Pup
learnpet Fjord Worg Pup##62669 |achieve 6588/13 |goto Howling Fjord 30.4,62.2
step
_Capture_ Chicken
learnpet Chicken##62664 |achieve 6588/4 |goto Howling Fjord 31.8,43.6
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6588/8 |goto Howling Fjord 46.6,31.6
step
_Capture_ Maggot
learnpet Maggot##61753 |achieve 6588/17 |goto Howling Fjord 50.8,54.6
step
_Enter_ the cave here |goto Howling Fjord 56.7,49.3 < 20 |walk
_Capture_ Devouring Maggot
learnpet Devouring Maggot##62640 |achieve 6588/33 |goto Howling Fjord 57.6,56.6
step
_Capture_ Fjord Rat
learnpet Fjord Rat##62641 |achieve 6588/18 |goto Howling Fjord 58.6,54.8
step
_Capture_ Turkey
|tip Can be found as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Turkey##62648 |achieve 6588/32 |goto Howling Fjord 60.0,60.4
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6588/20 |goto Howling Fjord 52.6,61.6
step
_Capture_ Rabbit
|tip This shares a spawn critters around the area.
learnpet Rabbit##61080 |achieve 6588/7 |goto Howling Fjord 52.6,61.6
step
_Capture_ Roach
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Roach##61169 |achieve 6588/19 |goto Howling Fjord 52.6,61.6
step
_Capture_ Spider
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Spider##61327 |achieve 6588/22 |goto Howling Fjord 52.6,61.6
step
_Capture_ Toad
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Howling Fjord.
learnpet Toad##61369 |achieve 6588/25 |goto Howling Fjord 52.6,61.6
step
Congratulations, you have _earned_ the _Northrend Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\Outland Safari",{
achieveid={6587},
description="Catch every battle pet in Outland.",
},[[
step
_Capture_ Adder
learnpet Adder##61325 |achieve 6587/6 |goto Hellfire Peninsula 63.0,52.2
step
_Capture_ Scorpid
learnpet Scorpid##61326 |achieve 6587/5 |goto Hellfire Peninsula 63.0,52.2
step
_Capture_ Snake
learnpet Snake##61142 |achieve 6587/14 |goto Zangarmarsh 80.0,48.6
step
_Capture_ Sporeling Sprout
learnpet Sporeling Sprout##62564 |achieve 6587/25 |goto Zangarmarsh 18.8,51.8
step
_Capture_ Small Frog
learnpet Small Frog##61071 |achieve 6587/23 |goto Zangarmarsh 18.6,54.0
step
_Enter_ the cave here |goto Blade's Edge Mountains 51.6,75.4 < 20 |walk
_Capture_ Skittering Cavern Crawler
learnpet Skittering Cavern Crawler##62638 |achieve 6587/8 |goto Blade's Edge Mountains 52.6,88.8
step
_Capture_ Rabbit
learnpet Rabbit##61080 |achieve 6587/1 |goto Blade's Edge Mountains 53.4,71.5
step
_Capture_ Rock Viper
learnpet Rock Viper##62184 |achieve 6587/3 |goto Blade's Edge Mountains 57.8,63.8
step
_Capture_ Scalded Basilisk Hatchling
learnpet Scalded Basilisk Hatchling##62628 |achieve 6587/4 |goto Blade's Edge Mountains 73.0,19.4
step
_Capture_ Brown Marmot
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Blade's Edge Mountains.
learnpet Brown Marmot##61752 |achieve 6587/2 |goto Blade's Edge Mountains 73.0,19.4
step
_Capture_ Fledgling Nether Ray
learnpet Fledgling Nether Ray##62627 |achieve 6587/15 |goto Netherstorm 29.8,36.8
step
_Capture_ Mouse
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Netherstorm.
learnpet Mouse##61143 |achieve 6587/16 |goto Netherstorm 29.8,36.8
step
_Capture_ Nether Roach
learnpet Nether Roach##62625 |achieve 6587/17 |goto Netherstorm 29.8,63.4
step
_Capture_ Cat
|tip Can be found only as a secondary pet so look for them in battles with other creatures in Netherstorm.
learnpet Cat##62019 |achieve 6587/12 |goto Netherstorm 29.8,63.4
step
_Capture_ Flayer Youngling
learnpet Flayer Youngling##62555 |achieve 6587/7 |goto Terokkar Forest 50.6,11.0
step
_Capture_ Rat
learnpet Rat##61366 |achieve 6587/11 |goto Terokkar Forest 54.2,32.8
step
_Capture_ Squirrel
learnpet Squirrel##61081 |achieve 6587/13 |goto Terokkar Forest 47.6,22.4
step
_Capture_ Skunk
learnpet Skunk##61255 |achieve 6587/21 |goto Terokkar Forest 57.4,38.4
step
_Capture_ Warpstalker Hatchling
learnpet Warpstalker Hatchling##62583 |achieve 6587/26 |goto Terokkar Forest 50.8,28.6
step
_Capture_ Stripe-Tailed Scorpid
learnpet Stripe-Tailed Scorpid##61440 |achieve 6587/22 |goto Terokkar Forest 39.4,54.2
step
_Capture_ Prairie Dog
learnpet Prairie Dog##61141 |achieve 6587/10 |goto Nagrand 52.4,31.4
step
_Capture_ Toad
learnpet Toad##61369 |achieve 6587/24 |goto Nagrand 57.2,32.2
step
_Capture_ Clefthoof Runt
learnpet Clefthoof Runt##62620 |achieve 6587/9 |goto Nagrand 46.0,69.6
step
_Capture_ Tainted Cockroach
learnpet Tainted Cockroach##62314 |achieve 6587/20 |goto Shadowmoon Valley 51.8,31.6
step
_Capture_ Ash Viper
learnpet Ash Viper##61385 |achieve 6587/18 |goto Shadowmoon Valley 56.0,35.4
step
_Capture_ Fel Flame
learnpet Fel Flame##62621 |achieve 6587/19 |goto Shadowmoon Valley 48.4,48.2
step
Congratulations, you have _earned_ the _Outland Safari_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\Collect\\That's a Lot of Pet Food",{
condition_end=function() return achieved(7501) end,
achieveid={7500,5875,5877,5876,2516,1250,1248,15,1017,7501},
},[[
step
talk Donni Anthania##6367
buy Cat Carrier (Bombay)##8485 |n
use Cat Carrier (Bombay)##8485
Can I Keep Him? Achievement |achieve 1017 |goto Elwynn Forest 44.2,53.4
step
The _Fawn_ is level 1. Challenge one to a pet battle and capture it.
learnpet Fawn##61165 |goto Elwynn Forest 45.1,67.4
step
The _Rabbit_ is level 1. Challenge one to a pet battle and capture it.
learnpet Rabbit##61080 |goto Elwynn Forest 61.2,68.1
step
The _Black Lamb_ is level 1. Challenge one to a pet battle and capture it.
learnpet Black Lamb##60649 |goto Elwynn Forest 72.4,76.4
step
The _Chicken_ is level 1. Challenge one to a pet battle and capture it.
learnpet Chicken##62664 |goto Elwynn Forest 77.6,66.2
step
The _Tiny Harvester_ is level 3. Challenge one to a pet battle and capture it.
learnpet Tiny Harvester##61160 |goto Westfall 40.6,52.4
step
The _Rat Snake_ is level 6. Challenge one to a pet battle and capture it.
learnpet Rat Snake##61258 |goto Duskwood 34.0,37.2
step
The _Mouse_ is level 5 or 6. Challenge one to a pet battle and capture it.
learnpet Mouse##61143 |goto Duskwood 22.1,37.8
step
The _Skunk_ is level 5 or 6. Challenge one to a pet battle and capture it.
learnpet Skunk##61255 |goto Duskwood 23.8,29.4
step
The _Dusk Spiderlings_ are level 5-6. Challenge one to a pet battle and capture it.
learnpet Dusk Spiderling##61253 |goto Duskwood 63.8,26.1
step
The _Roach_ can be found when challenging Rat Snakes and Dusk Spiderlings.
The _Roach_ is level 5 or 6. Challenge a Rat Snake or Dusk Spiderling to a pet battle and if the Roach is there capture it.
learnpet Roach##61169 |goto Duskwood 34.0,37.2
step
The _Widow Spiderling_ can be found when challenging Dusk Spiderlings. Challenge a Dusk Spiderling to a pet battle and if the Widow Spiderling is there capture it.
learnpet Widow Spiderling##61259 |goto Duskwood 31.2,39.5
step
The _Fledgling Buzzards_ in this area are level 3-5. Challenge one to a pet battle and capture it.
learnpet Fledgling Buzzard##61171 |goto Redridge Mountains 28.9,28.5
step
The _Redridge Rats_ are around level 5. Challenge one to a pet battle and capture it.
learnpet Redridge Rat##61168 |goto Redridge Mountains 67.6,31.4
step
The _Strand Crabs_ are around level 7. Challenge one to a pet battle and capture it.
learnpet Strand Crab##61312 |goto Northern Stranglethorn 34.8,48.0
step
_Polly_ is a level 8 Creature flying in circles around this point. Challenge one to a pet battle and capture it.
learnpet Polly##61322 |goto Northern Stranglethorn 50.8,66.6
step
The _Crimson Moth_ will be attached to a _Polly_. They are both level 7. Defeat _Polly_ and capture the _Crimson Moth_ when it is below 35% health.
learnpet Crimson Moth##61314 |goto Northern Stranglethorn
step
The _Lizard Hatchlings_ in this area are level 8. Challenge one to a pet battle and capture it.
learnpet Lizard Hatchling##61321 |goto Northern Stranglethorn 62.1,52.6
step
The _Scorplings_ are around level 16. Challenge one to a pet battle and capture it.
learnpet Scorpling##61329 |goto Blasted Lands 58.8,59.7
step
The _Swamp Moths_ are level 14. Challenge one to a pet battle and capture it.
learnpet Swamp Moth##61370 |goto Swamp of Sorrows 39.6,52.9
step
The _Moccasins_ are level 14. Challenge one to a pet battle and capture it.
learnpet Moccasin##61372 |goto Swamp of Sorrows 54.3,52.1
step
The _Molten Hatchlings_ in this area are around level 13-15. Challenge one to a pet battle and capture it.
learnpet Molten Hatchling##61425 |goto Searing Gorge 43.6,40.4
step
The _Gold Beetles_ are around level 13. Challenge one to a pet battle and capture it.
learnpet Gold Beetle##61438 |goto Badlands 46.0,57.6
step
The King Snakes are around level 13. Challenge one to a pet battle and capture it.
learnpet King Snake##61443 |goto Badlands 12.9,29.7
step
The _Rattlesnakes_ are around level 13. Challenge one to a pet battle and capture it.
learnpet Rattlesnake##61439 |goto Badlands 72.5,43.9
step
Refer to our pets and mount guides in order to collect all the pets required
confirm |only if not achieved(7501)
step
Earn the That's a Lot of Pet Food Achievement |achieve 7501
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Pet Battles\\General\\Taming Azeroth",{
author="support@zygorguides.com",
description="This guide will walk you through earning the 'Taming Azeroth' achievement.",
condition_end=function() return achieved(6607) end,
achieveid={6607,6607},
condition_suggested=function() return level>=1 and level<=90 end,
},[[
step
Earn the _Taming Kalimdor_ achievement |achieve 6607/5
Click here to load the "Battle Pet Tamers: Kalimdor" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Kalimdor" |only if not achieved(6607,5)
|tip
Earn the _Taming Outland_ achievement |achieve 6607/1
Click here to load the "Battle Pet Tamers: Outland" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Outland" |only if not achieved(6607,1)
|tip
Earn the _Taming Northrend_ achievement |achieve 6607/2
Click here to load the "Battle Pet Tamers: Northrend" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Northrend" |only if not achieved(6607,2)
|tip
Earn the _Taming Cataclysm_ achievement |achieve 6607/3
Click here to load the "Battle Pet Tamers: Cataclysm" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Cataclysm" |only if not achieved(6607,3)
|tip
Earn the _Taming Pandaria_ achievement |achieve 6607/4
Click here to load the "Battle Pet Tamers: Pandaria" guide |confirm |next "Zygor's Pets & Mounts Guide\\Battle Pet Quests\\Battle Pet Tamers: Pandaria" |only if not achieved(6607,4)
step
Congratulations!
You have earned the _Taming Azeroth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\100 Cooking Awards",{
achieveid={1998,1999,2000,2001,2002},
achieveid={2002},
description="Obtain 100 Cooking Awards.",
},[[
step
Use the Orgrimmar and Dalaran Cooking Dailies section of this guide to obtain 100 Cooking Awards.
confirm
step
#include "Org_Cooking_Dailies"
step
talk Thomas Kolichio##26953
accept Northern Cooking##13089 |goto Howling Fjord,78.6,29.5
|tip This quest is only available to you if you have 350+ Cooking skill.
only if not completedq(13089)
step
kill Wild Worg##24128+
collect 4 Chilled Meat##43013 |q 13089/1 |goto 75.1,33.9
only if not completedq(13089)
step
talk Thomas Kolichio##26953
turnin Northern Cooking##13089 |goto 78.6,29.5
only if not completedq(13089)
step
#include "H_Dalaran_Cooking_Dailies"
step
You have completed the maximum amount of Cooking dailies you can do today.
Click here to go back to the beginning of the dailies. |confirm |next "dailies"
achieve 2002 |next
step
Congratualtions! You're earned the 100 Cooking Awards achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie",{
author="support@zygorguides.com",
achieveid={877},
description="Bake a Delicious Chocolate Cake.",
},[[
step
#include "the_cake_is_not_a_lie"
step
Congratulations!  You've earned The Cake Is Not A Lie Achievement.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Captain Rumsey's Lager",{
achieveid={1801},
description="Brew up some of Captain Rumsey's Lager.",
},[[
step
Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe
confirm
step
Routing to the proper section |next "create" |only if knowspell(45695)
Routing to the proper section |next "dailies" |only if default
step
label "dailies"
talk Razgar##43239
You will only be able to complete 1 of the following quests per day
accept A Furious Catch##26588 |or |goto Orgrimmar 65.7,41.1
accept A Golden Opportunity##26572 |or |goto Orgrimmar 65.7,41.1
accept A Staggering Effort##26557 |or |goto Orgrimmar 65.7,41.1
accept Clammy Hands##26543 |or |goto Orgrimmar 65.7,41.1
accept No Dumping Allowed##26556 |or |goto Orgrimmar 65.7,41.1
step
Fish in the river in this spot
collect Giant Furious Pike##58951 |q 26588/1 |goto Durotar 37.4,16.8
|tip This fish can only be caught in Durotar, so make sure you are standing and fishing in Durotar.
step
Use Razgar's Fillet Knife on a Drowned Thunder Lizard |use Razgar's Fillet Knife##58955
|tip They look like dead dinosaurs underwater around this area.
collect Drowned Thunder Lizard Tail##58958 |n
Use your Drowned Thunder Lizard Tail next to Golden Stonefish |use Drowned Thunder Lizard Tail##58958
|tip They look like big yellow fish underwater around this area.
collect 3 Golden Stonefish##58960 |q 26572/1 |goto 42.8,24.0
step
Click Monstrous Clams
|tip They look like huge white clams underwater around this area.
collect 10 Monstrous Clam Meat##58934 |q 26543/1 |goto 57.2,9.5
step
kill Weakened Mosshoof Stag##35096+
collect 1 Stag Eye##58949 |q 26557 |goto Azshara 27.6,74.5
step
Use your Stag Eye |use Stag Eye##58949
Fish in the water off the dock in this spot
collect Sandy Carp##58946 |q 26557/1 |goto Orgrimmar 46.2,46.5
step
Fish in the water in this spot
collect 6 Toxic Puddlefish##58945 |q 26556/1 |goto 38.5,80.1
step
talk Razgar##43239
You will only be able to complete 1 of the following quests per day
turnin A Furious Catch##26588 |goto 65.7,41.1
turnin A Golden Opportunity##26572 |goto 65.7,41.1
turnin A Staggering Effort##26557 |goto 65.7,41.1
turnin Clammy Hands##26543 |goto 65.7,41.1
turnin No Dumping Allowed##26556 |goto 65.7,41.1
step
talk The Rokk##24393
You will only be able to accept one of these daily quests per day
accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6 |next "soup"
accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6 |next "stew"
accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6 |next "mana"
accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6 |next "tasty"
step
label "soup"
talk Nula the Butcher##20097
buy Recipe: Roasted Clefthoof##27691 |n
Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
learn Roasted Clefthoof##33287 |q 11381 |goto Nagrand 58.0,35.6
step
kill Clefthoof##18205+, Clefthoof Calf##19183+
collect 4 Clefthoof Meat##27678 |q 11381 |goto Nagrand 47.0,64.7
You can find more Clefthooves at  45.5,72.7
step
Build a Basic Campfire |cast Basic Campfire##818
create Roasted Clefthoof##33287,Cooking,4 total |q 11381
step
Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
Cook a Spiritual Soup |q 11381/1 |goto 25.9,59.5
|next "turnin"
step
label "stew"
talk Xerintha Ravenoak##20916
buy Recipe: Mok'Nathal Shortribs##31675 |n
Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
learn Mok'Nathal Shortribs##31672 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
buy Recipe: Crunchy Serpent##31674 |n
Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
learn Crunchy Serpent##31673 |q 11379 |goto Blade's Edge Mountains 62.5,40.3
step
kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
collect 4 Raptor Ribs##31670+ |q 11379 |goto Blade's Edge Mountains 49.6,46.2
step
kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
collect 1 Serpent Flesh##31671 |q 11379 |goto 68.2,63.2
step
Build a Basic Campfire |cast Basic Campfire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
step
Build a Basic Campfire |cast Basic Campfire##818
create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
step
kill Abyssal Flamebringer##19973+
Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
collect Demon Broiled Surprise##33848 |q 11379/1 |goto 29.0,84.5
|next "turnin"
step
label "mana"
click Mana Berry Bush##186729
collect 15 Mana Berry##33849+ |q 11380/1 |goto Netherstorm 45.6,54.2
|next "turnin"
step
label "tasty"
talk Innkeeper Grilka##18957
buy Recipe: Warp Burger##27692 |n
Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
learn Warp Burger##33288 |q 11377 |goto Terokkar Forest 48.8,45.0
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |q 11377 |goto 64.0,83.5
step
kill Monstrous Kaliri##23051+
|tip They fly around in the sky close to the tree outposts and bridges.
collect Giant Kaliri Wing##33838 |q 11377 |goto 67.6,74.7
step
Build a Basic Campfire |cast Basic Campfire##818
create Warp Burger##33288,Cooking,3 total |q 11377 |goto 25.9,59.5
Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
create Kaliri Stew##43718,Cooking,1 total |q 11377/1 |goto 25.9,59.5
|next "turnin"
step
label "turnin"
talk The Rokk##24393
turnin Soup for the Soul##11381 |goto Shattrath City 61.8,15.6
turnin Super Hot Stew##11379 |goto Shattrath City 61.8,15.6
turnin Manalicious##11380 |goto Shattrath City 61.8,15.6
turnin Revenge is Tasty##11377 |goto Shattrath City 61.8,15.6
step
talk Thomas Kolichio##26953
accept Northern Cooking##13089 |goto Howling Fjord 78.6,29.5
|tip This quest is only available to you if you have 350+ Cooking skill.
only if not completedq(13089)
step
kill Wild Worg##24128+
collect 4 Chilled Meat##43013 |q 13089/1 |goto 75.1,33.9
only if not completedq(13089)
step
talk Thomas Kolichio##26953
turnin Northern Cooking##13089 |goto 78.6,29.5
only if not completedq(13089)
step
#include "H_Dalaran_Cooking_Dailies"
step
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
accept Blood Is Thicker##13833 |or |goto Dalaran 53.1,64.9
accept Dangerously Delicious##13834 |or |goto Dalaran 53.1,64.9
accept Jewel Of The Sewers##13832 |or |goto Dalaran 53.1,64.9
accept Disarmed!##13836 |or |goto Dalaran 53.1,64.9
accept The Ghostfish##13830 |or |goto Dalaran 53.1,64.9
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
Get the Animal Blood buff |havebuff 132311 |q 13833 |goto Borean Tundra 54.6,41.8
step
Walk into the water here to create a pool of blood
Fish in the pool of blood
collect 5 Bloodtooth Frenzy##45905 |q 13833/1 |goto 53.7,42.9
step
Fish in this big lake
collect 10 Terrorfish##45904 |q 13834/1 |goto Wintergrasp 79.9,41.8
step
_Enter_ the Dalaran sewers |goto Dalaran 60.2,47.7 < 10 |walk
Fish in the water in the Dalaran sewers
collect 1 Corroded Jewelry##45903 |q 13832/1 |goto 44.4,66.2
step
_Leave_ the Dalaran sewers |goto Dalaran 60.2,47.7 < 10 |walk
collect Bloated Slippery Eel##45328 |n
Click the Bloated Slippery Eel in your bags |use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q 13836/1 |goto Dalaran 64.8,60.8
step
Fish in the water here
collect 1 Phantom Ghostfish##45902 |n
Click the Phantom Ghostfish in your bags to eat it |use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q 13830/1 |goto Sholazar Basin 49.3,61.8
step
talk Marcia Chase##28742
You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
turnin Blood Is Thicker##13833 |goto Dalaran 53.1,64.9
turnin Dangerously Delicious##13834 |goto Dalaran 53.1,64.9
turnin Jewel Of The Sewers##13832 |goto Dalaran 53.1,64.9
turnin The Ghostfish##13830 |goto Dalaran 53.1,64.9
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |goto Dalaran 36.6,37.3
step
You have completed the maximum amount of dailies you can do today
Click here to go back to the beginning of the dailies |confirm |next "dailies"
collect 1 Recipe: Captain Rumsey's Lager##34834 |next "learn"
step
learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
label "create"
talk Daisy##40832
buy 1 Flagon of Mead##2594 |goto Thousand Needles 76.5,74.8
buy 1 Skin of Dwarven Stout##2596 |goto Thousand Needles 76.5,74.8
step
create Captain Rumsey's Lager##45695,Cooking,1 total
Brew up Captain Rumsey's Lager |achieve 1801
step
Congratulations! You've earned the Captain Rumsey's Lager achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Cataclysmic Gourmet",{
condition_end=function() return achieved(5473) end,
achieveid={5472,5473},
description="Cook Cataclysm recipes.",
},[[
step
You must be at least 525 in _Cooking_ to obtain this achievement
This will take a few weeks to get all of the cooking recipes necessary to complete the achievement
If you want, you can skip to the steps titled "Gather Materials" to farm the materials before you get the recipes
|tip It is very easy to also get requirements for the achievement Cataclysmically Delicious along side this achievement. It is advised you eat the food you make.
Click here to begin |confirm
step
Use the Professions section of this guide to get to 415 cooking |only if skill("Cooking")<415
talk Arugi##46709
learn Darkbrew Lager##88015 |goto Orgrimmar 56.3,61.5
step
talk Daisy##40832
buy 2 Skin of Dwarven Stout##2596 |goto Thousand Needles 76.5,74.8
buy 1 Jug of Bourbon##2595 |goto Thousand Needles 76.5,74.8
step
create 1 Darkbrew Lager##88015,Cooking,1 total
Cook Darkbrew Lager |achieve 5473/10
step
Use the Professions section of this guide to get to 425 cooking |only if skill("Cooking")<425
talk Arugi##46709
learn Blackened Surprise##88006  |goto Orgrimmar 56.3,61.5
step
kill Hyjal Stag##39588+
collect 1 Toughened Flesh##62778 |goto Mount Hyjal,28.2,30.8
step
Create a basic campfire |cast Basic Campfire##818
create 1 Blackened Surprise##88006,Cooking,1 total
Cook Blackened Surprise |achieve 5473/5
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
Use the Cooking Dailies section of the professions guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=450
|tip You will need a total of 33 Epicurean's Awards to buy all of the recipes.
talk Shazdar##49737
buy 1 Recipe: Whitecrest Gumbo##65406 |goto Orgrimmar 56.9,62.6
buy 1 Recipe: Lavascale Fillet##65407
buy 1 Recipe: Lavascale Minestrone##65409
buy 1 Recipe: Salted Eye##65410
buy 1 Recipe: Broiled Mountain Trout##65411
buy 1 Recipe: Lightly Fried Lurker##65412
buy 1 Recipe: Seasoned Crab##65413
buy 1 Recipe: Starfire Espresso##65414
buy 1 Recipe: Feathered Lure##65408
buy 1 Recipe: Highland Spirits##65415
buy 1 Recipe: Lurker Lunch##65416
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409
learn Salted Eye##88035 |use Recipe: Salted Eye##65410
learn Broiled Mountain Trout##88012 |use  Recipe: Broiled Mountain Trout##65411
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414
learn Feathered Lure##88017 |use Recipe: Feathered Lure##65408
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416
step
kill Zin'jatar Raider##39313+
Open the Abyssal Clam that you get |use Abyssal Clam##52340 |n
collect 2 Blood Shrimp##62791 |goto Kelp'thar Forest 49.1,28.0
step
kill Speckled Sea Turtle##40223+
collect 1 Giant Turtle Tongue##62781 |goto 52.6,45.0
step
kill Brinescale Serpent##39948+
collect 1 Snake Eye##62780 |goto Kelp'thar Forest 56.6,37.8
step
kill Sabreclaw Skitterer##40276
collect 1 Monstrous Claw##62779 |goto 58.6,39.6
step
kill Glittergill Grouper##40309+, Ravenous Thresher##40219+, Slickskin Eel##41002+
collect 1 Algaefin Rockfish##53071 |goto 56.8,53.0
collect 2 Deepsea Sagefish##53072 |goto 56.8,53.0
collect 1 Fathom Eel##53070 |goto 56.8,53.0
or |only if skill("Fishing")>450
You can fish these from various pools of fish |only if skill("Fishing")>450
step
kill Diseased Vulture##47202
collect 1 Delicate Wing##62785 |goto Uldum 44.6,69.8
step
kill Riverbed Crocolisk
collect 2 Crocolisk Tail##62784 |goto 55.6,45.8
step
Fish at this spot
collect 2 Lavascale Catfish##53068 |goto 54.9,37.1
collect 2 Blackbelly Mudfish##53066 |goto 54.9,37.1
collect 3 Sharptooth##53062 |goto 54.9,37.1
step
Fish at this spot
collect 2 Striped Lurker##53067 |goto Mount Hyjal 60.3,23.9
step
Find pools of Mountain Trout around this area.
|tip If there isn't a pool here, search all of Hyjal's lakes and rivers to find a pool.
collect 1 Mountain Trout##53063 |goto 60.3,23.9
step
kill Jadecrest Basilisk##43981+
collect 1 Basilisk Liver##62783 |goto Deepholm 56.6,85.4
step
talk Lizzy "Lemons"##49519
buy 1 Highland Pomegranate##58265 |goto Twilight Highlands 76.2,52.6
buy 1 Tropical Sunfruit##58278 |goto Twilight Highlands 76.2,52.6
step
talk Frenk##49547
buy 1 Refreshing Spring Water##159 |goto 73.5,51.0
step
kill Obsidian Charscale##47797+, Obsidian Viletongue##47796+
collect 1 Dragon Flank##62782 |goto Twilight Highlands 63.2,76.2
step
Fish in the Highland Guppy School pools
collect 1 Highland Guppy##53064 |goto 57.8,36.7
step
You can either purchase this item from the Auction House or you can buy it from Shazdar:
talk Shazdar##49737
buy 2 Cocoa Beans##62786 |goto Orgrimmar 56.9,62.6
step
Create a basic campfire |cast Basic Campfire##818
create 1 Whitecrest Gumbo##88047,Cooking,1 total
|tip Save the extra Blood Shrimp for later
Cook Whitecrest Gumbo |achieve 5473/32
step
create 1 Salted Eye##88035,Cooking,1 total
Cook Salted Eye |achieve 5473/24
step
create 1 Seasoned Crab##88037,Cooking,1 total
Cook Seasoned Crab |achieve 5473/26
step
create 1 Lavascale Fillet##88024,Cooking,1 total
Cook Lavascale Fillet |achieve 5473/18
step
create Lavascale Minestrone##88025,Cooking,1 total
Cook Lavascale Minestrone |achieve 5473/19
step
create Broiled Mountain Trout##88012,Cooking,1 total
Cook Broiled Mountain Trout |achieve 5473/6
step
create Lightly Fried Lurker##88028,Cooking,1 total
Cook Lightly Fried Lurker |achieve 5473/20
step
create Starfire Espresso##88045,Cooking,1 total
Cook Starfire Espresso |achieve 5473/30
step
create Feathered Lure##88017,Cooking,1 total
Cook Feathered Lure |achieve 5473/12
step
create Highland Spirits##88022,Cooking,1 total
Cook Highland Spirits |achieve 5473/17
step
create Lurker Lunch##88030,Cooking,1 total
Cook Lurker Lunch |achieve 5473/21
step
Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
Use the Cooking Dailies section of the professions guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=475
|tip You will need a total of 12 Epicurean's Awards to buy all of the recipes
talk Shazdar##49737
buy 1 Recipe: Pickled Guppy##65417 |goto Orgrimmar 56.9,62.6
buy 1 Recipe: Hearty Seafood Soup##65418 |goto Orgrimmar 56.9,62.6
buy 1 Recipe: Tender Baked Turtle##65419 |goto Orgrimmar 56.9,62.6
buy 1 Recipe: Fish Fry##65423 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419
learn Fish Fry##88018 |use Recipe: Fish Fry##65423
step
create 1 Pickled Guppy##88033,Cooking,1 total
Cook Pickled Guppy |achieve 5473/23
step
create 1 Hearty Seafood Soup##88021,Cooking,1 total
Cook Hearty Seafood Soup |achieve 5473/16
step
create 1 Tender Baked Turtle##88046,Cooking,1 total
Cook Tender Baked Turtle |achieve 5473/31
step
create 1 Fish Fry##88018,Cooking,1 total
Cook Fish Fry |achieve 5473/13
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
Use the Cooking Dailies section of the professions guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=500
|tip You will need a total of 30 Epicurean's Awards to buy all of the recipes.
talk Shazdar##49737 |only if skill("Cooking")>=500
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Severed Sagefish Head##65421 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Delicious Sagefish Tail##65422 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Blackbelly Sushi##65424 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Skewered Eel##65425 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Baked Rockfish##65426 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Basilisk Liverdog##65427 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Grilled Dragon##65428 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Beer-Basted Crocolisk##65429 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
buy 1 Recipe: Crocolisk Au Gratin##65430 |goto Orgrimmar 56.9,62.6 |only if skill("Cooking")>=500
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |only if skill("Cooking")>=500
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |only if skill("Cooking")>=500
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |only if skill("Cooking")>=500
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |only if skill("Cooking")>=500
learn Skewered Eel##88042 |use Recipe: Skewered Eel##65425 |only if skill("Cooking")>=500
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |only if skill("Cooking")>=500
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |only if skill("Cooking")>=500
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |only if skill("Cooking")>=500
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |only if skill("Cooking")>=500
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |only if skill("Cooking")>=500
step
create Mushroom Sauce Mudfish##88031,Cooking,1 total
Cook Mushroom Sauce Mudfish |achieve 5473/22
step
create Severed Sagefish Head##88039,Cooking,1 total
Cook Severed Sagefish Head |achieve 5473/27
step
create Delicious Sagefish Tail##88016,Cooking,1 total
Cook Delicious Sagefish Tail |achieve 5473/11
step
create Blackbelly Sushi##88034,Cooking,1 total
Cook Blackbelly Sushi |achieve 5473/4
step
create Skewered Eel##88042,Cooking,1 total
Cook Skewered Eel |achieve 5473/28
step
create Baked Rockfish##88003,Cooking,1 total
Cook Baked Rockfish |achieve 5473/1
step
create Basilisk Liverdog##88004,Cooking,1 total
Cook Basilisk Liverdog |achieve 5473/2
step
create Grilled Dragon##88005 ,Cooking,1 total
Cook Grilled Dragon |achieve 5473/15
step
create Beer-Basted Crocolisk##88005,Cooking,1 total
Cook Beer-Basted Crocolisk |achieve 5473/3
step
create Crocolisk Au Gratin##88014,Cooking,1 total
Cook Crocolisk Au Gratin |achieve 5473/9
step
Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
Use the Cooking Dailies section of the professions guide guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=505 |tip You will need a total of 3 Epicurean's Awards to buy this recipe
talk Shazdar##49737 |only if skill("Cooking")>=505
buy 1 Recipe: Chocolate Cookie##65431 |goto Orgrimmar,56.9,62.6  |only if skill("Cooking")>=505
step
Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |only if skill("Cooking")>=505
step
Create a basic campfire |cast Basic Campfire##818
create 1 Chocolate Cookie##88013,Cooking,1 total
Cook Chocolate Cookie |achieve 5473/8
step
Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
Use the Cooking Dailies section of the professions guide to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=525
|tip You will need a total of 10 Epicurean's Awards to buy these recipes.
talk Shazdar##49737 |only if skill("Cooking")>=525
buy 1 Recipe: Fortune Cookie##65432 |goto Orgrimmar 56.9,62.6  |only if skill("Cooking")>=525
buy 1 Recipe: South Island Iced Tea##65433 |goto Orgrimmar 56.9,62.6  |only if skill("Cooking")>=525
step
Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |only if skill("Cooking")>=525
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433 |only if skill("Cooking")>=525
step
Create a basic campfire |cast Basic Campfire##818
create 1 Fortune Cookie##88019,Cooking,1 total
|tip The Mysterious Fortune Card required for this recipe are acquired through Inscription.
create 1 South Island Iced Tea##62672,Cooking 1 total
Cook Fortune Cookie |achieve 5473/14
Cook South Island Iced Tea |achieve 5473/29
step
Earn the Cataclysm Gourmet achievement! |achieve 5473
step
Congratulations! You've earned the Cataclysm Gourmet achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Cooking With Style",{
achieveid={3296},
description="Obtain a Chef's Hat.",
},[[
step
label "start"
Use the Dalaran Cooking Dailies section of this guide to earn 100 Dalaran Cooking awards
confirm
step
talk Thomas Kolichio##26953
accept Northern Cooking##13089 |goto Howling Fjord 78.6,29.5
|tip This quest is only available to you if you have 350+ Cooking skill.
only if not completedq(13089)
step
kill Wild Worg##24128+
collect 4 Chilled Meat##43013 |q 13089/1 |goto 75.1,33.9
only if not completedq(13089)
step
talk Thomas Kolichio##26953
turnin Northern Cooking##13089 |goto 78.6,29.5
only if not completedq(13089)
step
#include "H_Dalaran_Cooking_Dailies"
step
earn 100 Dalaran Cooking Award##81 |next "turnin"
Click here to go back to the beginning of the dailies |confirm |next "start"
step
label "turnin"
talk Misensi##31031
buy 1 Chef's Hat##46349
Obtain a Chef's Hat |achieve 3296 |goto Dalaran 70.2,37.2
step
Congratulations! You've earned the Cooking with Style achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Critter Gitter",{
achieveid={1781},
description="This guide will walk you through coerceing 10 critters to be your pet within 3 minutes or less using Critter Bites.",
},[[
step
This requires 10 Critter Bites, which can be made using the following:
collect 20 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
|tip You can also buy these from the Auction House.
step
Use the Dalaran Cooking Dailies guide to get Small Spice Bags
collect Spice Bag##44113 |n
collect 10 Northern Spices##43007
|tip You can also buy these from the Auction House.
step
Get someone to make your 10 Critter Bites
|tip Ask in your guild or in trade for someone to make these. Be sure to tip well!
Or... |only if skill("Cooking")>=400
Make a Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
collect 10 Critter Bites##43004
Click here if you don't have the recipe |confirm |next "recipe" |only if skill("Cooking")>=400
|next "gitter"
step
label "recipe"
Use the Dalaran Cooking Dailies guide to earn 3 Dalaran Cooking Awards
earn 3 Dalaran Cooking Award##81
step
talk Misensi##31031
buy 1 Recipe: Critter Bites##43029 |goto Dalaran 70.2,37.2
step
learn Critter Bites##57435 |use Recipe: Critter Bites##43029
step
Make a Campfire |cast Basic Campfire##818
create Critter Bites##57435,Cooking,10 total
collect 10 Critter Bites##43004
step
label "gitter"
Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them |use Critter Bites##43004
|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
Coerce #10# critters to be your pet within 3 minutes or less |achieve 1781 |goto Eastern Plaguelands 4.7,35.5
step
Congratulations, you have earned the Critter Gitter achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Dinner Impossible",{
achieveid={1785},
description="Present a Great Feast in each of the battlegrounds.",
},[[
step
#include "trainer_Cooking"
learn Great Feast##45554
step
kill Scourged Mammoth##25452+
collect 5 Chunk o'Mammoth##34736 |goto Borean Tundra 78.2,24.0
collect 10 Chilled Meat##43013 |goto Borean Tundra 78.2,24.0
|tip You can also buy these from the Auction House.
step
kill Tundra Crawler##25454+
collect 5 Worm Meat##43010 |goto Borean Tundra 76.2,23.0
|tip You can also buy these from the Auction House.
step
kill Shoveltusk##23690+
collect 5 Shoveltusk Flank##43009 |goto Howling Fjord 73.6,40.0
|tip You can also buy these from the Auction House.
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create 5 Great Feast##45554,Cooking,5 total |n
collect 5 Great Feast##34753
If you can't cook, have someone make them for you
step
label "usefeast"
_Push_ [H] on your keyboard to open your Player vs. Player interface
_Click on Alterac Valley_ and then _click on the Join Battle button_ on the lower left-hand corner of the Player vs. Player interface |tip Wait for the que to pop-up in the middle of your screen and click on accept
_Use_ one of your Great Feasts |use Great Feast##34753 |achieve 1785/1
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
_Push_ [H] on your keyboard to open your Player vs. Player interface
_Click on Arathi Basin_ and then _click on the Join Battle button_ on the lower left-hand corner of the Player vs. Player interface |tip Wait for the que to pop-up in the middle of your screen and click on accept
_Use_ one of your Great Feasts |use Great Feast##34753 |achieve 1785/2
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
_Push_ [H] on your keyboard to open your Player vs. Player interface
_Click on Warsong Gulch_ and then _click on the Join Battle button_ on the lower left-hand corner of the Player vs. Player interface |tip Wait for the que to pop-up in the middle of your screen and click on accept
_Use_ one of your Great Feasts |use Great Feast##34753 |achieve 1785/3
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
_Push_ [H] on your keyboard to open your Player vs. Player interface
_Click on Strand of the Ancients_ and then _click on the Join Battle button_ on the lower left-hand corner of the Player vs. Player interface |tip Wait for the que to pop-up in the middle of your screen and click on accept
_Use_ one of your Great Feasts |use Great Feast##34753 |achieve 1785/4
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
_Push_ [H] on your keyboard to open your Player vs. Player interface
_Click on Eye of the Storm_ and then _click on the Join Battle button_ on the lower left-hand corner of the Player vs. Player interface |tip Wait for the que to pop-up in the middle of your screen and click on accept
_Use_ one of your Great Feasts |use Great Feast##34753 |achieve 1785/5
|tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step.
step
Congratulations, you have _earned_ the _Dinner Impossible_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Hail to the Chef",{
achieveid={1563},
description="This guide will show you all the achievements you need to complete the Hail to the Chef Achievement.",
},[[
step
label "start"
Complete the Achievement Grand Master Cook |achieve 1563/1
Click here to use our _Cooking Guide_ and level up your Cooking skill. |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
step
Complete the Achievement The Cake Is Not A Lie |achieve 1563/11
Click here to use our _The Cake Is Not A Lie_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Cake Is Not A Lie Achievement"
step
Complete the Achievement Kickin' It Up a Notch |achieve 1563/2
Click here to use our _Kickin' It Up a Notch_ guide Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch Achievement"
step
Complete the Achievement The Northrend Gourmet |achieve 1563/6
Click here to use our _The Northrend Gourmet_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet Achievement"
step
Complete the Achievement Second That Emotion |achieve 1563/8
Click here to use our _Second That Emotion_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Second That Emotion Achievement"
step
Complete the Achievement Critter Gitter |achieve 1563/3
Click here to use our _Critter Gitter_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Critter Gitter Achievement"
step
Complete the Achievement Our Daily Bread |achieve 1563/10
Click here to use our _Our Daily Bread_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Our Daily Bread Achievement"
step
Complete the Achievement Dinner Impossible |achieve 1563/4
Click here to use our _Dinner Impossible_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Dinner Impossible Achievement"
step
Complete the Achievement Sous Chef |achieve 1563/7
Click here to use our _Sous Chef_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Iron Chef"
step
Complete the Achievement Captain Rumsey's Lager |achieve 1563/5
Click here to use our _Captain Rumsey's Lager_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\Captain Rumsey's Lager Achievement"
step
Complete the Achievement The Outland Gourmet |achieve 1563/9
Click here to use our _The Outland Gourmet_ Achievement Guide |confirm |next "Zygor's Achievement Guides\\Professions\\Cooking\\The Outland Gourmet Achievement"
step
You still have some Achievements to earn before you complete the _Hail to the Chef_ Achievement. |only if not achieved(1563)
Click here to return to the beginning of this guide |confirm |only if not achieved(1563) |next "start"
Congratulations! You have earned the Achievement _Hail to the Chef_! |achieve 1563 |only if achieved(1563)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Iron Chef",{
condition_end=function() return achieved(7328) end,
achieveid={1795,1796,1797,1798,1799,5471,7328},
description="Learn 200 cooking recipes.",
},[[
step
These spells are learned by simply training your Cooking Skill
#include "trainer_Cooking"
learn Herb Baked Egg##8604
learn Roasted Boar Meat##2540
learn Charred Wolf Meat##2538
step
#include "trainer_Cooking"
learn Spice Bread##37836
learn Kaldorei Spider Kabob##6412
learn Spiced Wolf Meat##2539
learn Venison Jerky##93741
learn Boiled Clams##6499
learn Coyote Steak##2541
learn Fillet of Frenzy##6415
learn Crab Cake##2544
learn Dry Pork Ribs##2546
learn Goblin Deviled Clams##6500
learn Tasty Lion Steak##3399
learn Barbecued Buzzard Wing##4094
learn Soothing Turtle Bisque##3400
step
#include "trainer_Cooking"
learn Spider Sausage##21175
learn Spotted Yellowtail##18238
learn Grilled Squid##18240
learn Charred Bear Kabobs##46684
learn Juicy Bear Burger##46688
step
#include "trainer_Cooking"
learn Nightfin Soup##18243
learn Poached Sunscale Salmon##18244
learn Stewed Trout##42296
learn Dalaran Clam Chowder##58065
learn Baked Manta Ray##45569
learn Fisherman's Feast##42302
learn Grilled Bonescale##45561
step
#include "trainer_Cooking"
learn Grilled Sculpin##45563
learn Hot Buttered Trout##42305
learn Mammoth Meal##45549
learn Pickled Fangtooth##45566
learn Poached Nettlefish##45565
learn Rhino Dogs##45553
learn Roasted Worg##45552
learn Sauteed Goby##45562
step
#include "trainer_Cooking"
learn Shoveltusk Steak##45550
learn Smoked Rockfin##45560
learn Smoked Salmon##45564
learn Worm Delight##45551
learn Great Feast##45554
learn Black Jelly##64358
learn Darkbrew Lager##88015
learn Blackened Surprise##88006
step
talk Suja##46708
buy 1 Recipe: Sagefish Delight##21219 |n
buy 1 Recipe: Smoked Sagefish##21099 |n
learn Sagefish Delight##25954 |goto Orgrimmar 56.4,61.2 |use Recipe: Sagefish Delight##21219
learn Smoked Sagefish##25704 |goto Orgrimmar 56.4,61.2 |use Recipe: Smoked Sagefish##21099
step
talk Sewa Mistrunner##3029
buy 1 Recipe: Brilliant Smallfish##6325 |n
buy 1 Bristle Whisker Catfish##6330 |n
learn Brilliant Smallfish##7751 |goto Thunder Bluff 56.0,47.0 |use Recipe: Brilliant Smallfish##6325
learn Bristle Whisker Catfish##7755 |goto Thunder Bluff 56.0,47.0 |use Bristle Whisker Catfish##6330
step
talk Wunna Darkmane##3081
buy 1 Recipe: Roasted Kodo Meat##5484 |n
learn Roasted Kodo Meat##6414 |goto Mulgore 46.4,57.8 |use Recipe: Roasted Kodo Meat##5484
step
talk Harn Longcast##5940
buy 1 Recipe: Longjaw Mud Snapper##6328 |n
learn Longjaw Mud Snapper##7753 |goto Mulgore 47.6,54.8  |use Recipe: Longjaw Mud Snapper##6328
step
talk Abigail Shiel##2118
buy 1 Recipe: Crispy Bat Wing##12226 |n
learn Crispy Bat Wing##15935 |goto Tirisfal Glades 61.0,51.0 |use Recipe: Crispy Bat Wing##12226
step
talk Andrew Hilbert##3556
buy 1 Recipe: Smoked Bear Meat##6892 |n
learn Smoked Bear Meat##8607 |goto Silverpine Forest 43.2,40.6 |use Recipe: Smoked Bear Meat##6892
step
talk Zansoa##5942
buy 1 Recipe: Slitherskin Mackerel##6326 |n
buy 1 Recipe: Rainbow Fin Albacore##6368 |n
learn Slitherskin Mackerel##7752 |use Recipe: Slitherskin Mackerel##6326 |goto Durotar 57.4,77.0
learn Rainbow Fin Albacore##7827 |use Recipe: Rainbow Fin Albacore##6368 |goto Durotar 57.4,77.0
step
talk Landraelanis##16262
buy 1 Recipe: Lynx Steak##27685 |n
learn Lynx Steak##33276 |use Recipe: Lynx Steak##27685	|goto Eversong Woods 49.0,47.0
step
talk Grimtak##3881
buy 1 Recipe: Scorpid Surprise##5483 |n
learn Scorpid Surprise##6413 |use Recipe: Scorpid Surprise##5483 |goto Durotar 50.8,42.8
step
talk Nerrist##1148
buy 1 Recipe: Curiously Tasty Omelet##3682 |n
buy 1 Recipe: Jungle Stew##12231 |n
buy 1 Recipe: Roast Raptor##12228 |n
learn Curiously Tasty Omelet##3376 |use Recipe: Curiously Tasty Omelet##3682 |goto Northern Stranglethorn 39.2,51.0
learn Jungle Stew##15861 |use Recipe: Jungle Stew##12231 |goto Northern Stranglethorn 39.2,51.0
learn Roast Raptor##15855 |use Recipe: Roast Raptor##12228 |goto Northern Stranglethorn 39.2,51.0
step
kill Greater Fleshripper##154+
collect 1 Recipe: Cooked Crab Claw##2698 |n
collect 1 Recipe: Westfall Stew##728 |n
learn Cooked Crab Claw##2545 |goto Westfall 26.7,43.3
learn Westfall Stew##2543 |goto Westfall 26.7,43.3
step
talk Tari'qa##3482
buy 1 Recipe: Strider Stew##5486 |n
buy 1 Recipe: Crispy Lizard Tail##5488 |n
learn Strider Stew##6416 |use Recipe: Strider Stew##5486 |goto Northern Barrens 49.0,58.2
learn Crispy Lizard Tail##6418 |use Recipe: Crispy Lizard Tail##5488 |goto Northern Barrens 49.0,58.2
step
talk Master Chef Mouldier##16253
buy 1 Recipe: Bat Bites##27687 |n
buy 1 Recipe: Crunchy Spider Surprise##22647 |n
learn Bat Bites##33278 |use Recipe: Bat Bites##27687
learn Crunchy Spider Surprise##28267 |use Recipe: Crunchy Spider Surprise##22647 |goto Ghostlands 48.4,31.0
step
kill Dig Rat##3444+
collect Plump Dig Rat##78342 |n
|tip Dig Rat Stew is Bind on Pickup. You cannot purchase this from the Auction House.
Create a Cooking Fire |cast Cooking Fire##818
learn Dig Rat Stew##6417 |use Plump Dig Rat##78342 |goto Southern Barrens/0 48.3,88.0
step
Kill any mob in Northern Barrens:
collect 1 Recipe: Savory Deviate Delight##6661 |n
learn Savory Deviate Delight##8238 |use Recipe: Savory Deviate Delight##6661 |goto Northern Barrens 52.2,55.0
step
talk Zargh##3489
buy 1 Recipe: Hot Lion Chops##3735 |n
learn Hot Lion Chops##3398 |use Recipe: Hot Lion Chops##3735 |goto Northern Barrens 50.6,57.8
step
talk Ogg'marr##4879
buy 1 Recipe: Dragonbreath Chili##12239 |n
buy 1 Recipe: Carrion Surprise##12232 |n
buy 1 Recipe: Heavy Crocolisk Stew##20075 |n
learn Dragonbreath Chili##15906 |use Recipe: Dragonbreath Chili##12239 |goto Dustwallow Marsh 36.6,31.0
learn Carrion Surprise##15863 |use Recipe: Carrion Surprise##12232 |goto Dustwallow Marsh 36.6,31.0
learn Heavy Crocolisk Stew##24418 |use Recipe: Heavy Crocolisk Stew##20075 |goto Dustwallow Marsh 36.6,31.0
step
talk Sheendra Tallgrass##8145
buy 1 Recipe: Hot Wolf Ribs##12229 |n
buy 1 Recipe: Baked Salmon##13949 |n
buy 1 Recipe: Lobster Stew##13947 |n
buy 1 Recipe: Mightfish Steak##13948 |n
learn Hot Wolf Ribs##15856 |use Recipe: Hot Wolf Ribs##12229 |goto Feralas 74.6,42.8
learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949 |goto Feralas 74.6,42.8
learn Lobster Stew##18245 |use Recipe: Lobster Stew##13947 |goto Feralas 74.6,42.8
learn Mightfish Steak##18246 |use Recipe: Mightfish Steak##13948 |goto Feralas 74.6,42.8
step
talk Kireena##9636
buy 1 Recipe: Heavy Kodo Stew##12240 |n
learn Heavy Kodo Stew##15910 |use Recipe: Heavy Kodo Stew##12240 |goto Desolace 51.0,53.4
step
talk Nerrist##1148
buy 1 Recipe: Curiously Tasty Omelet##3682 |n
learn Curiously Tasty Omelet##3376 |use Recipe: Curiously Tasty Omelet##3682 |goto Northern Stranglethorn 39.2,51.0
step
talk Uthok##1149
buy 1 Recipe: Spiced Chili Crab##16111 |n
learn Spiced Chili Crab##15915 |use Recipe: Spiced Chili Crab##16111 |goto Northern Stranglethorn 37.6,49.2
step
talk Kelsey Yance##2664
buy 1 Recipe: Giant Clam Scorcho##6039 |n
buy 1 Recipe: Cooked Glossy Mightfish##13940 |n
buy 1 Recipe: Filet of Redgill##13941 |n
buy 1 Recipe: Hot Smoked Bass##13943 |n
buy 1 Recipe: Mithril Head Trout##17062 |n
buy 1 Recipe: Rockscale Cod##6369 |n
learn Giant Clam Scorcho##7213 |use Recipe: Giant Clam Scorcho##6039 |goto The Cape of Stranglethorn 42.8,69.0
learn Cooked Glossy Mightfish##18239 |use Recipe: Cooked Glossy Mightfish##13940 |goto The Cape of Stranglethorn 42.8,69.0
learn Filet of Redgill##18241 |use Recipe: Filet of Redgill##13941 |goto The Cape of Stranglethorn 42.8,69.0
learn Hot Smoked Bass##18242 |use Recipe: Hot Smoked Bass##13943 |goto The Cape of Stranglethorn 42.8,69.0
learn Mithril Head Trout##20916 |use Recipe: Mithril Head Trout##17062 |goto The Cape of Stranglethorn 42.8,69.0
learn Rockscale Cod##7828 |use Recipe: Rockscale Cod##6369 |goto The Cape of Stranglethorn 42.8,69.0
step
kill Mo'grosh Earthbender##44760+, Mo'grosh Darkmauler##44758++
collect 1 Recipe Succulent Pork Ribs##2700 |n
learn Succulent Pork Ribs##2548 |use Recipe Succulent Pork Ribs##2700 |goto Loch Modan 70.8,23.2
step
talk Dirge Quikcleave##40589
accept Clamlette Surprise##6610 |goto Tanaris 52.4,29.0
step
kill Southsea Scoundrel##40665+
collect 20 Fine Aged Cheddar##3927 |q 6610/3 |goto 54.0,40.0
You can also buy the cheese from Carmen Ibanozzle here [Tanaris 55.6,60.8]
talk Carmen Ibanozzle##38714
step
kill Fire Roc##5429
collect 10 Giant Egg##12207 |q 6610/1 |goto 45.6,39.4
step
kill Tidal Strider##39022
collect Big-Mouth Clam##7973 |n
Click on the Big-Mouth Clams in your bags |use Big-Mouth Clam##7973
collect 10 Zesty Clam Meat##7974 |q 6610/2 |goto 55.2,40.6
step
talk Dirge Quikcleave##40589
turnin Clamlette Surprise##6610
learn Clamlette Magnifigue##64054 |goto Tanaris 52.4,29.0
step
talk Innkeeper Fizzgrimble##7733 |n
buy 1 Recipe: Tender Wolf Steak##18046 |n
learn Tender Wolf Steak##22480 |use Recipe: Tender Wolf Steak##18046 |goto 52.6,27.0
step
talk Himmik##11187
buy 1 Recipe: Monster Omelet##16110 |n
learn Monster Omelet##15933 |use Recipe: Monster Omelet##16110 |goto Winterspring 59.8,51.6
step
talk Mrs. Gant##54232
buy 1 Recipe: Undermine Clam Chowder##16767 |n
learn Undermine Clam Chowder##20626 |use Recipe: Undermine Clam Chowder##16767	|goto The Cape of Stranglethorn 42.6,72.8
step
talk Sheendra Tallgrass##8145
buy 1 Recipe: Baked Salmon##13949 |n
buy 1 Recipe: Lobster Stew##13947 |n
learn Baked Salmon##18247 |use Recipe: Baked Salmon##13949 |goto 74.6,42.8
learn Lobster Stew##18245 |use Recipe: Lobster Stew##13947 |goto 74.6,42.8
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "tuber" |only if step:Find("+tuber"):IsComplete()
step
talk Pusillin##14354 |goto Dire Maul/5 12.2,31.2 < 5 |walk
Tell him _"Game? Are you crazy?"_
Pusillin will run off, chase him down
|tip Kill anything in your way!
Catch up to Pusillin |goto Dire Maul/5 22.0,75.6 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 22.0,75.6 < 5 |walk
Say "Why you little..."
Catch up to Pusillin |goto Dire Maul/5 32.2,27.2 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 32.2,27.2 < 5 |walk
Say "Mark my words, I will catch you, imp. And when I do!"
Catch up to Pusillin |goto Dire Maul/5 66.5,37.9 |noway |c
step
talk Pusillin##14354 |goto Dire Maul/5 66.5,37.9 < 5 |walk
Say "DIE!"
Catch up to Pusillin  |goto 74.9,44.9 |noway |c
step
label "tuber"
talk Pusillin##14354 |goto Dire Maul/5 75.8,44.9 < 5 |walk
Say "Prepare to meet your maker."
kill Pusillin##14354
collect Recipe: Runn Tum Tuber Surprise##18267 |n
learn Runn Tum Tuber Surprise##22761 |use Recipe: Runn Tum Tuber Surprise##18267
step
talk Calandrath##15174
accept Desert Recipe##8307 |goto Silithus 55.4,36.6
step
Click on the Sandy Cookbook
|tip It looks like a book lying on a crate.
turnin Desert Recipe##8307 |goto 43.6,42.0
accept Sharing the Knowledge##8313 |goto 43.6,42.0
step
talk Calandrath##15174
turnin Sharing the Knowledge##8313 |goto 55.4,36.6
learn Smoked Desert Dumplings##24801 |goto 55.4,36.6
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
step
kill Razorfang Hatchling##16932+, Razorfang Ravager##16933+
collect 12 Ravager Egg##23217 |q 9349/1 |goto 39.0,88.4
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
step
talk Legassi##19344
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
step
kill Deranged Helboar##16863
collect 8 Tainted Helboar Meat##23270 |q 9361 |goto 51.2,69.8
step
Use the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q 9361/1
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
step
talk Legassi##19344
accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
step
kill Bonestripper Buzzard##16972
collect 12 Plump Buzzard Wing##23239 |q 9356/1 |goto 61.0,66.6
step
talk Legassi##19344
turnin Smooth as Butter##9356
collect 1 Recipe: Buzzard Bites##27684 |n
learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684 |goto Hellfire Peninsula 49.2,74.8
|tip If you have already turned in this quest and discarded the recipe, you can purchase it on the AH.
step
talk Cookie One-Eye##16585
buy 1 Recipe: Ravager Dog##27688 |n
learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688 |goto Hellfire Peninsula 54.6,41.0
step
click Glowcap##182053
collect 1 Glowcap##24245 |goto Zangarmarsh 31.2,39.2
|tip You will need this to purchase the Clam Meat Recipe in the next step.
step
talk Mycah##18382
buy 1 Recipe: Clam Bar##30156 |n
learn Clam Bar##36210 |use Recipe: Clam Bar##30156 |goto Zangarmarsh 17.8,51.2
step
talk Gambarinka##18015
buy 1 Recipe: Blackened Trout##27694 |n
learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694 |goto Zangarmarsh 31.6,49.2
step
talk Zurai##18011
buy 1 Recipe Feltail Delight##27695 |n
learn Feltail Delight##33291 |use Recipe Feltail Delight##27695 |goto Zangarmarsh 85.2,54.6
step
talk Juno Dufrain##18911
buy 1 Recipe: Blackened Sporefish##27696 |n
learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696 |goto Zangarmarsh 78.0,66.0
step
talk Nula the Butcher##20097
buy 1 Recipe: Grilled Mudfish##27697 |n
buy 1 Recipe: Talbuk Steak##27693 |n
buy 1 Recipe: Poached Bluefish##27698 |n
buy 1 Recipe: Roasted Clefthoof##27691 |n
learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693 |goto Nagrand 58.0,35.6
learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697 |goto Nagrand 58.0,35.6
learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698 |goto Nagrand 58.0,35.6
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691 |goto Nagrand 58.0,35.6
step
talk Rungor##18960
buy 1 Recipe: Golden Fish Sticks##27699 |n
buy 1 Recipe: Spicy Crawdad##27700 |n
learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699 |goto Terokkar Forest 48.8,46.0
learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700 |goto Terokkar Forest 48.8,46.0
step
talk Innkeeper Grilka##18957
buy 1 Recipe Blackened Basilisk##27690 |n
buy 1 Recipe: Warp Burger##27692 |n
learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690 |goto Terokkar Forest 48.8,45.0
learn Warp Burger##33288 |use Recipe: Warp Burger##27692 |goto Terokkar Forest 48.8,45.0
step
talk Xerintha Ravenoak##20916
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
buy 1 Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675 |goto Blade's Edge Mountains 62.4,40.2
learn Crunchy Serpent##38868 |use Recipe: Crunchy Serpent##31674 |goto Blade's Edge Mountains 62.4,40.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Mega Mammoth Meal##43018 |n
buy 1 Recipe: Tender Shoveltusk Steak##43019 |n
buy 1 Recipe: Spiced Worm Burger##43020 |n
buy 1 Recipe: Very Burnt Worg##43021 |n
learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018 |goto Dalaran 70.1,38.2
learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019 |goto Dalaran 70.1,38.2
learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020 |goto Dalaran 70.1,38.2
learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021 |goto Dalaran 70.1,38.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Worg Tartare##44954 |n
buy 1 Recipe: Mighty Rhino Dogs##43022 |n
buy 1 Recipe: Poached Northern Sculpin##43023 |n
buy 1 Recipe: Firecracker Salmon##43024 |n
learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954 |goto Dalaran 70.1,38.2
learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022 |goto Dalaran 70.1,38.2
learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023 |goto Dalaran 70.1,38.2
learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024 |goto Dalaran 70.1,38.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Spicy Blue Nettlefish##43025 |n
buy 1 Recipe: Imperial Manta Steak##43026 |n
buy 1 Recipe: Spicy Fried Herring##43027 |n
buy 1 Recipe: Rhinolicious Wormsteak##43028 |n
learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025 |goto Dalaran 70.1,38.2
learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026 |goto Dalaran 70.1,38.2
learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027 |goto Dalaran 70.1,38.2
learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028 |goto Dalaran 70.1,38.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Critter Bites##43029 |n
buy 1 Recipe: Hearty Rhino##43030 |n
buy 1 Recipe: Snapper Extreme##43031 |n
buy 1 Recipe: Blackened Worg Steak##43032 |n
learn Critter Bites##57435 |use Recipe: Critter Bites##43029 |goto Dalaran 70.1,38.2
learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030 |goto Dalaran 70.1,38.2
learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031 |goto Dalaran 70.1,38.2
learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032 |goto Dalaran 70.1,38.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Cuttlesteak##43033 |n
buy 1 Recipe: Spiced Mammoth Treats##43034 |n
buy 1 Recipe: Blackened Dragonfin##43035 |n
buy 1 Recipe: Dragonfin Fillet##43036 |n
learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033 |goto Dalaran 70.1,38.2
learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034 |goto Dalaran 70.1,38.2
learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035 |goto Dalaran 70.1,38.2
learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036 |goto Dalaran 70.1,38.2
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Misensi##31031
buy 1 Recipe: Tracker Snacks##43037 |n
buy 1 Recipe: Gigantic Feast##43505 |n
buy 1 Recipe: Small Feast##43506 |n
buy 1 Recipe: Fish Feast##43017 |n
learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037 |goto Dalaran 70.1,38.2
learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505 |goto Dalaran 70.1,38.2
learn Small Feast##58528 |use Recipe: Small Feast##43506 |goto Dalaran 70.1,38.2
learn Fish Feast##57423 |use Recipe: Fish Feast##43017	|goto Dalaran 70.1,38.2
step
talk Orn Tenderhoof##26972
accept Northern Cooking##13090 |goto Borean Tundra 42,54.2
step
kill Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
collect 4 Chilled Meat##43013 |q 13090 |goto 45,47.4
step
talk Orn Tenderhoof##26972
turnin Northern Cooking##13090 |goto 42,54.2
learn Northern Stew##57421 |goto 42,54.2
step
kill Crypt Crawler##25227
|tip If you are having a hard time getting these, you can try running a dungeon also.
collect 1 Recipe: Bad Clams##43509 |n
collect 1 Recipe: Last Week's Mammoth##43508 |n
collect 1 Recipe: Haunted Herring##43510 |n
collect 1 Recipe: Tasty Cupcake##43507 |n
learn Bad Clams##58523 |use Recipe: Bad Clams##43509 |goto 54.6,70.0
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510 |goto 54.6,70.0
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508 |goto 54.6,70.0
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507 |goto 54.6,70.0
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Shazdar##49737
buy 1 Recipe: Whitecrest Gumbo##65406 |n
buy 1 Recipe: Lavascale Fillet##65407 |n
buy 1 Recipe: Lavascale Minestrone##65409 |n
buy 1 Recipe: Salted Eye##65410 |n
learn Whitecrest Gumbo##88047 |use Recipe: Whitecrest Gumbo##65406 |goto Orgrimmar 56.9,62.6
learn Lavascale Fillet##88024 |use Recipe: Lavascale Fillet##65407 |goto Orgrimmar 56.9,62.6
learn Lavascale Minestrone##88025 |use Recipe: Lavascale Minestrone##65409 |goto Orgrimmar 56.9,62.6
learn Salted Eye##88035 |use Recipe: Salted Eye##65410	|goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Shazdar##49737
buy 1 Recipe: Broiled Mountain Trout##65411 |n
buy 1 Recipe: Lightly Fried Lurker##65412 |n
buy 1 Recipe: Seasoned Crab##65413 |n
buy 1 Recipe: Starfire Espresso##65414 |n
learn Broiled Mountain Trout##88012 |use  Recipe: Broiled Mountain Trout##65411 |goto Orgrimmar 56.9,62.6
learn Lightly Fried Lurker##88028 |use Recipe: Lightly Fried Lurker##65412 |goto Orgrimmar 56.9,62.6
learn Seasoned Crab##88037 |use Recipe: Seasoned Crab##65413 |goto Orgrimmar 56.9,62.6
learn Starfire Espresso##88045 |use Recipe: Starfire Espresso##65414 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
talk Shazdar##49737
buy 1 Recipe: Feathered Lure##65408 |n
buy 1 Recipe: Highland Spirits##65415 |n
buy 1 Recipe: Lurker Lunch##65416 |n
learn Feathered Lure##88017 |use Recipe: Feathered Lure##65408 |goto Orgrimmar 56.9,62.6
learn Highland Spirits##88022 |use Recipe: Highland Spirits##65415 |goto Orgrimmar 56.9,62.6
learn Lurker Lunch##88030 |use Recipe: Lurker Lunch##65416 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 475 cooking |only if skill("Cooking")<475
talk Shazdar##49737
buy 1 Recipe: Pickled Guppy##65417 |n
buy 1 Recipe: Hearty Seafood Soup##65418 |n
buy 1 Recipe: Tender Baked Turtle##65419 |n
buy 1 Recipe: Fish Fry##65423 |n
learn Pickled Guppy##88033 |use Recipe: Pickled Guppy##65417 |goto Orgrimmar 56.9,62.6
learn Hearty Seafood Soup##88021 |use Recipe: Hearty Seafood Soup##65418 |goto Orgrimmar 56.9,62.6
learn Tender Baked Turtle##88046 |use Recipe: Tender Baked Turtle##65419 |goto Orgrimmar 56.9,62.6
learn Fish Fry##88018 |use Recipe: Fish Fry##65423 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
Use the Cooking Dailies in the Professions guides to earn Epicurean's Awards to buy the following recipies: |only if skill("Cooking")>=500
|tip You will need a total of 91 Epicurean's Awards to buy all of the recipes.
talk Shazdar##49737
buy 1 Recipe: Mushroom Sauce Mudfish##65420 |n
buy 1 Recipe: Severed Sagefish Head##65421 |n
buy 1 Recipe: Delicious Sagefish Tail##65422 |n
buy 1 Recipe: Scalding Murglesnout##68688 |n
learn Mushroom Sauce Mudfish##88031 |use Recipe: Mushroom Sauce Mudfish##65420 |goto Orgrimmar 56.9,62.6
learn Severed Sagefish Head##88039 |use Recipe: Severed Sagefish Head##65421 |goto Orgrimmar 56.9,62.6
learn Delicious Sagefish Tail##88016 |use Recipe: Delicious Sagefish Tail##65422 |goto Orgrimmar 56.9,62.6
learn Scalding Murglesnout##96133 |use Recipe: Scalding Murglesnout##68688 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
talk Shazdar##49737
buy 1 Recipe: Blackbelly Sushi##65424 |n
buy 1 Recipe: Skewered Eel##65425 |n
buy 1 Recipe: Baked Rockfish##65426 |n
buy 1 Recipe: Basilisk Liverdog##65427 |n
learn Blackbelly Sushi##88034 |use Recipe: Blackbelly Sushi##65424 |goto Orgrimmar 56.9,62.6
learn Skewered Eeel##88042 |use Recipe: Skewered Eel##65425 |goto Orgrimmar 56.9,62.6
learn Baked Rockfish##88003 |use Recipe: Baked Rockfish##65426 |goto Orgrimmar 56.9,62.6
learn Basilisk Liverdog##88004 |use Recipe: Basilisk Liverdog##65427 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 500 cooking |only if skill("Cooking")<500
talk Shazdar##49737
buy 1 Recipe: Grilled Dragon##65428 |n
buy 1 Recipe: Beer-Basted Crocolisk##65429 |n
buy 1 Recipe: Crocolisk Au Gratin##65430 |n
learn Grilled Dragon##88020 |use Recipe: Grilled Dragon##65428 |goto Orgrimmar 56.9,62.6
learn Beer-Basted Crocolisk##88005 |use Recipe: Beer-Basted Crocolisk##65429 |goto Orgrimmar 56.9,62.6
learn Crocolisk Au Gratin##88014 |use Recipe: Crocolisk Au Gratin##65430 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 505 cooking |only if skill("Cooking")<505
talk Shazdar##49737
buy 1 Recipe: Chocolate Cookie##65431 |n
learn Chocolate Cookie##88013 |use Recipe: Chocolate Cookie##65431 |goto Orgrimmar 56.9,62.6
step
Use the Professions section of this guide to get to 525 cooking |only if skill("Cooking")<525
talk Shazdar##49737
buy 1 Recipe: Fortune Cookie##65432 |n
buy 1 Recipe: South Island Iced Tea##65433 |n
learn Fortune Cookie##88019 |use Recipe: Fortune Cookie##65432 |goto Orgrimmar 56.9,62.6
learn South Island Iced Tea##88044 |use Recipe: South Island Iced Tea##65433 |goto Orgrimmar 56.9,62.6
step
Use the Shattrath Cooking Dailies section of the professions guide to get these recipes:
|tip It's not always guarenteed to come from these daily prizes so be patient.
Make sure to choose the Crate of Meat
talk The Rokk##24393
collect 1 Recipe: Spicy Hot Talbuk##33873 |n
collect 1 Recipe: Broiled Bloodfin##33869 |n
collect 1 Recipe: Skullfish Soup##33870 |n
collect 1 Recipe: Kibler's Bits##33875 |n
collect 1 Recipe: Stormchops##33871 |n
collect 1 Recipe: Delicious Chocolate Cake##33925 |n
learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873 |goto Shattrath City/0 61.5,15.7
learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869 |goto Shattrath City/0 61.5,15.7
learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870 |goto Shattrath City/0 61.5,15.7
learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875 |goto Shattrath City/0 61.5,15.7
learn Stormchops##43758 |use Recipe: Stormchops##33871 |goto Shattrath City/0 61.5,15.7
learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925 |goto Shattrath City/0 61.5,15.7
step
These recipes are bought during the Winter's Veil Holiday:
talk Penney Copperpinch##13420
buy 1 Recipe: Hot Apple Cider##34413 |n
buy 1 Recipe: Egg Nog##17201 |n
buy 1 Recipe: Gingerbread Cookie##17200 |n
learn Hot Apple Cider##45022 |use Recipe: Hot Apple Cider##34413 |goto Orgrimmar 52.6,77.6
learn Egg Nog##21144 |use Recipe: Egg Nog##17201 |goto Orgrimmar 52.6,77.6
learn Gingerbread Cookie##21143 |use Recipe: Gingerbread Cookie##17200	|goto Orgrimmar 52.6,77.6
step
This recipe is bought during the Day of the Dead Holiday
talk Chapman##34382
buy 1 Recipe: Bread of the Dead##46710 |n
learn Bread of the Dead##65454 |use Recipe: Bread of the Dead##46710 |goto Undercity 67.8,11.2
step
This recipe is learned during the Pilgrim's Week holiday
talk Bountiful Barrel##35342
buy 1 Bountiful Cookbook##46810 |n
Open your Bountiful Cookbook |use Bountiful Cookbook##46810
|tip Keep buying these until you have all of the recipes.
collect 1 Recipe: Slow-Roasted Turkey##46807 |n
collect 1 Recipe: Candied Sweet Potato##46806 |n
collect 1 Recipe: Cranberry Chutney##46805 |n
collect 1 Recipe: Pumpkin Pie##46804 |n
collect 1 Recipe: Spice Bread Stuffing##46803 |n
learn Slow-Roasted Turkey##66037 |use Recipe: Slow-Roasted Turkey##46807 |goto Durotar 46.6,13.8
learn Candied Sweet Potato##66034 |use Recipe: Candied Sweet Potato##46806 |goto Durotar 46.6,13.8
learn Cranberry Chutney##66035 |use Recipe: Cranberry Chutney##46805 |goto Durotar 46.6,13.8
learn Pumpkin Pie##66036 |use Recipe: Pumpkin Pie##46804 |goto Durotar 46.6,13.8
learn Spice Bread Stuffing##66038 |use Recipe: Spice Bread Stuffing##46803 |goto Durotar 46.6,13.8
step
Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe:
|tip It's not always guarenteed to come from these daily prizes so be patient.
collect 1 Recipe: Captain Rumsey's Lager##34834 |n
learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
step
You have to be in a guild and have done these achievements to obtain these next recipes:
Set the Oven to Cataclysmic |achieve 5467
That's A Lot of Bait |achieve 5036
step
talk Goram##46572
buy 1 Recipe: Broiled Dragon Feast##62799 |n
buy 1 Recipe: Seafood Magnifique##62800 |n
learn Broiled Dragon Feast##88011 |use Recipe: Broiled Dragon Feast##62799 |goto Orgrimmar 48.4,75.8
learn Seafood Magnifique##88036 |use Recipe: Seafood Magnifique##62800	|goto Orgrimmar 48.4,75.8
step
The following recipes are obtained from the Alliance. You can purchase them on neutral Auction House
Sometimes you can find them on the regular Auction House
buy 1 Recipe: Clam Chowder##552 |n
buy 1 Recipe: Beer Basted Boar Ribs##2889 |n
buy 1 Recipe: Blood Sausage##3679 |n
buy 1 Recipe: Cooked Crab Claw##2698 |n
buy 1 Recipe: Crocolisk Gumbo##3681 |n
learn Clam Chowder##6501 |use Recipe: Clam Chowder##5528
learn Beer Basted Boar Ribs##2795 |use Recipe: Beer Basted Boar Ribs##2889
learn Blood Sausage##3371 |use Recipe: Blood Sausage##3679
learn Cooked Crab Claw##2545 |use Recipe: Cooked Crab Claw##2698
learn Crocolisk Gumbo##3373 |use Recipe: Crocolisk Gumbo##3681
step
The following recipes are obtained from the Alliance. You can purchase them on neutral Auction House
Sometimes you can find them on the regular Auction House
buy 1 Recipe: Crocolisk Steak##3678 |n
buy 1 Recipe: Gooey Spider Cake##3683 |n
buy 1 Recipe: Goretusk Liver Pie##2697 |n
buy 1 Recipe: Murloc Fin Soup##3680 |n
buy 1 Recipe: Redridge Goulash##2699 |n
learn Crocolisk Steak##3370 |use Recipe: Crocolisk Steak##3678
learn Gooey Spider Cake##3377 |use Recipe: Gooey Spider Cake##3683
learn Goretusk Liver Pie##2542 |use Recipe: Goretusk Liver Pie##2697
learn Murloc Fin Soup##3372 |use Recipe: Murloc Fin Soup##3372
learn Redridge Goulash##2547 |use Recipe: Redridge Goulash##2699
step
The following recipes are obtained from the Alliance. You can purchase them on neutral Auction House
Sometimes you can find them on the regular Auction House
buy 1 Recipe: Seasoned Wolf Kabob##2701 |n
buy 1 Recipe: Westfall Stew##728 |n
buy 1 Recipe: Loch Frenzy Delight##6329 |n
buy 1 Recipe: Moongraze Tenderloin##33277 |n
buy 1 Recipe: Mystery Stew##12233 |n
learn Seasoned Wolf Kabob##2549 |use Recipe: Seasoned Wolf Kabob##2701
learn Westfall Stew##2543 |use Recipe: Westfall Stew##728
learn Loch Frenzy Delight##7754 |use Recipe: Loch Frenzy Delight##6329
learn Roasted Moongraze Tenderloin##33277 |use Recipe: Moongraze Tenderloin##33277
learn Mystery Stew##15865 |use Recipe: Mystery Stew##12233
|next "Zygor's Achievement Guides\\Professions\\Cooking\\Ironpaw Chef"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Kickin' It Up a Notch",{
achieveid={906},
description="Complete each of The Rokk's 4 cooking daily quests.",
},[[
step
talk The Rokk##24393
You will only be able to _complete 1 of the following quests_ per day
accept Soup for the Soul##11381 |or |goto Shattrath City 61.8,15.6
accept Super Hot Stew##11379 |or |goto Shattrath City 61.8,15.6
accept Manalicious##11380 |or |goto Shattrath City 61.8,15.6
accept Revenge is Tasty##11377 |or |goto Shattrath City 61.8,15.6
step
talk Uriku##20096
buy Recipe: Roasted Clefthoof##27691 |n
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691 |goto Nagrand 56.2,73.3
only if havequest(11381)
step
kill Clefthoof##18205+, Clefthoof Calf##19183+
collect 4 Clefthoof Meat##27678 |goto Nagrand 58.5,46.8
You can _find more_ Clefthooves at the following location |goto 45.5,72.7
only if havequest(11381)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Roasted Clefthoof##33287,Cooking,4 total
_Use_ your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
_Cook_ a Spiritual Soup |q Soup for the Soul##11381/1 |goto Nagrand 25.9,59.4
only if havequest(11381)
step
talk Xerintha Ravenoak##20916
buy Recipe: Mok'Nathal Shortribs##31675 |n
buy Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##31672 |use Recipe: Mok'Nathal Shortribs##31675 |goto Blade's Edge Mountains 62.5,40.3
learn Crunchy Serpent##31673 |use Recipe: Mok'Nathal Shortribs##31674 |goto Blade's Edge Mountains 62.5,40.3
only if havequest(11379)
step
kill Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
collect 4 Raptor Ribs##31670+ |goto Blade's Edge Mountains 49.6,46.2
only if havequest(11379)
step
kill Scalewing Serpent##20749+, Felsworn Scalewing##21123+
collect 1 Serpent Flesh##31671 |goto Blade's Edge Mountains 68.2,63.2
only if havequest(11379)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |n
collect 2 Mok'Nathal Shortribs##31672
create 1 Crunchy Serpent##38868,Cooking,1 total |n
collect 1 Crunchy Serpent##31673
only if havequest(11379)
step
kill Abyssal Flamebringer##19973+
_Use_ your Cooking Pot next to the Abyssal Flamebringer corpse to cook up some Demon Broiled Surprise |use Cooking Pot##33852
collect Demon Broiled Surprise##33848 |q Super Hot Stew##11379/1 |goto Blade's Edge Mountains 29.0,84.5
only if havequest(11379)
step
click Mana Berry Bush##186729
collect 15 Mana Berry##33849+ |q Manalicious##11380/1 |goto Netherstorm 45.6,54.2
only if havequest(11380)
step
talk Supply Officer Mills##19038
buy Recipe: Warp Burger##27692 |n
learn Warp Burger##33288 |use Recipe: Warp Burger##27692 |goto Terokkar Forest 55.8,53.0
only if havequest(11377)
step
kill Blackwind Warp Chaser##23219+
collect 3 Warped Flesh##27681 |goto Terokkar Forest 64.0,83.5
only if havequest(11377)
step
kill Monstrous Kaliri##23051+
|tip They fly around in the sky close to the tree outposts and bridges
collect Giant Kaliri Wing##338381 |goto Terokkar Forest 67.6,74.7
only if havequest(11377)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Warp Burger##33288,Cooking,3 total
_Use_ your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
create Kaliri Stew##43718,Cooking,1 total |q Revenge is Tasty##11377/1 |goto Terokkar Forest 25.9,59.5
only if havequest(11377)
step
talk The Rokk##24393
turnin Soup for the Soul##11381 |only if havequest(11381) |goto Shattrath City 61.8,15.6
turnin Super Hot Stew##11379 |only if havequest(11379) |goto Shattrath City 61.8,15.6
turnin Manalicious##11380 |only if havequest(11380) |goto Shattrath City 61.8,15.6
turnin Revenge is Tasty##11377 |only if havequest(11377) |goto Shattrath City 61.8,15.6
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(906)
Congratulations, you have _earned_ the _Kickin' It Up a Notch_ achievement! |only if achieved(906)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Orgrimmar",{
achieveid={5475},
description="Complete each of the Orgrimmar cooking daily quests.",
},[[
step
talk Marogg##42506
You will only be able to _complete 1 of the following quests_ per day
accept Careful, This Fruit Bites Back##26227 |or |goto Orgrimmar 56.5,62.5
accept Crawfish Creole##26226 |or |goto Orgrimmar 56.5,62.5
accept Even Thieves Get Hungry##26235 |or |goto Orgrimmar 56.5,62.5
accept Everything Is Better with Bacon##26220 |or |goto Orgrimmar 56.5,62.5
accept Stealing From Our Own##26234 |or |only Troll |goto Orgrimmar 56.5,62.5
accept Stealing From Our Own##26233 |or |only Orc,Scourge,Tauren,BloodElf,Goblin |goto Orgrimmar 56.5,62.5
step
click Prickly Pear Fruit##203969
collect 8 Prickly Pear Fruit##57766 |q Careful, This Fruit Bites Back##26227/1 |goto Orgrimmar 52.7,62.1
only if havequest(26227)
step
clicknpc Muddy Crawfish##42548
collect 10 Muddy Crawfish##57765 |q Crawfish Creole##26226/1 |goto Orgrimmar 65.3,43.5
only if havequest(26226)
step
kill Orgrimmar Thief##42594+
|tip They are stealthed next to the crates trying to steal them
collect 3 Horde Infantry Rations##57879 |q Even Thieves Get Hungry##26235/1 |goto Orgrimmar 66.2,39.4
only if havequest(26235)
step
kill Mature Swine##42504+, Wild Mature Swine##42859+
collect 6 Swine Belly##57758 |q Everything Is Better with Bacon##26220/1 |goto Durotar 48.7,16.0
only if havequest(26220)
step
click Barrel of Kezan Rice##203979
collect 6 Barrel of Kezan Rice##57878 |q Stealing From Our Own##26234/1 |goto Orgrimmar 40.3,80.0
only Troll
only if havequest(26234)
step
click Barrel of Kezan Rice##203979
collect 6 Barrel of Kezan Rice##57878 |q Stealing From Our Own##26233/1 |goto Orgrimmar 34.5,69.8
only Orc,Scourge,Tauren,BloodElf,Goblin
only if havequest(26233)
step
talk Marogg##42506
turnin Careful, This Fruit Bites Back##26227 |only if havequest(26227) |goto Orgrimmar 56.5,62.5
turnin Crawfish Creole##26226 |only if havequest(26226) |goto Orgrimmar 56.5,62.5
turnin Even Thieves Get Hungry##26235 |only if havequest(26235) |goto Orgrimmar 56.5,62.5
turnin Everything Is Better with Bacon##26220 |only if havequest(26220) |goto Orgrimmar 56.5,62.5
turnin Stealing From Our Own##26234 |only Troll |only if havequest(26234) |goto Orgrimmar 56.5,62.5
turnin Stealing From Our Own##26233 |only Orc,Scourge,Tauren,BloodElf,Goblin |only if havequest(26233) |goto Orgrimmar 56.5,62.5
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5475)
Congratulations, you have _earned_ the _Let's Do Luunch: Orgrimmar achievement! |only if achieved(5475)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Thunder Bluff",{
achieveid={5843},
description="Complete each of the Thunder Bluff cooking daily quests.",
},[[
step
talk Aska Mistrunner##3026
You will only be able to _complete 1 of the following quests_ per day
accept Pining for Nuts##29358 |or |goto Thunder Bluff 51.0,52.8
accept "Magic" Mushrooms##29362 |or |goto Thunder Bluff 51.0,52.8
accept Mulgore Spice Bread##29363 |or |goto Thunder Bluff 51.0,52.8
accept Corn Mash##29364 |or |goto Thunder Bluff 51.0,52.8
accept Perfectly Pickled Portions##29365 |or |goto Thunder Bluff 51.0,52.8
step
click on the Mulgore Pine Cone##424
_Make_ a Cooking Fire |cast Cooking Fire##818
_Cook_ the Mulgore Pine Cones over a cooking fire to release Pine Nuts |use Mulgore Pine Cones##69990
collect 30 Pine Nut##69988 |q Pining for Nuts##29358/1 |goto Thunder Bluff 48.4,62.2
only if havequest(29358)
step
click "Magic" Mushroom##208878
collect 6 "Magic" Mushroom##69994 |q "Magic" Mushrooms##29362/1 |goto Thunder Bluff 26.3,23.6
only if havequest(29362)
step
talk Naal Mistrunner##3027
buy 5 Simple Flour##30817 |goto Thunder Bluff 51.1,52.7
buy 5 Mild Spices##2678 |goto Thunder Bluff 51.1,52.7
only if havequest(29363)
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Spice Bread##37836,Cooking,5 total
collect 5 Spice Bread##37836
_Use_ the Mulgore Spices in your bags to make Fresh Mulgore Spice Bread |use Mulgore Spices##69997
collect 5 Fresh Mulgore Spice Bread##69996 |q Mulgore Spice Bread##29363/1 |goto Thunder Bluff 51.1,52.7
only if havequest(29363)
step
click Corn Kernels##208880
_Grind_ #6# bowls of Corn Kernels |q Corn Mash##29364/1 |goto Thunder Bluff 52.1,45.6
only if havequest(29364)
step
collect Succulent Sweet Potatoes##70000 |q Perfectly Pickled Portions##29365/1 |goto Thunder Bluff 47.7,42.3
only if havequest(29365)
step
collect Savory Spices##70001 |q Perfectly Pickled Portions##29365/2 |goto Thunder Bluff 49.7,41.5
only if havequest(29365)
step
collect 1 Fresh-Caught Fish##70002 |q 29365/3 |goto Thunder Bluff 56.1,44.9
|tip It looks like a rope hanging down with a bunch of fish on it
collect 1 Fresh-Hunted Fowl##70003 |q 29365/4 |goto Thunder Bluff 56.1,44.9
only if havequest(29365)
step
talk Aska Mistrunner##3026
turnin Pining for Nuts##29358 |only if havequest(29358) |goto Thunder Bluff 51.0,52.8
turnin "Magic" Mushrooms##29362 |only if havequest(29362) |goto Thunder Bluff 51.0,52.8
turnin Mulgore Spice Bread##29363 |only if havequest(29363) |goto Thunder Bluff 51.0,52.8
turnin Corn Mash##29364 |only if havequest(29364) |goto Thunder Bluff 51.0,52.8
turnin Perfectly Pickled Portions##29365 |only if havequest(29365) |goto Thunder Bluff 51.0,52.8
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5843)
Congratulations, you have _earned_ the _Let's Do Luunch: Thunder Bluff achievement! |only if achieved(5843)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Let's Do Lunch: Undercity",{
achieveid={5844},
description="Complete each of the Undercity cooking daily quests.",
},[[
step
talk Eunice Burch##4552
You will only be able to _complete 1 of the following quests_ per day
accept Fungus Among Us##29315 |or |goto Undercity 62.8,44.2
accept Lily, Oh Lily##29332 |or |goto Undercity 62.8,44.2
accept Escargot A Go-Go##29333 |or |goto Undercity 62.8,44.2
accept Roach Coach##29334 |or |goto Undercity 62.8,44.2
accept Would You Like Some Flies With That?##29360 |or |goto Undercity 62.8,44.2
step
click Sewer Cap##208816
collect 12 Sewer Cap##208816 |q Fungus Among Us##29315/1 |goto Undercity 36.1,30.2
only if havequest(29315)
step
click Stillwater Lily##208833
collect 10 Stillwater Lily##69917 |q Lily, Oh Lily##29332/1 |goto Undercity 51,55.3
only if havequest(29332)
step
clicknpc Brightwater Snail##53526
collect 8 Brightwater Snail##69918 |q Escargot A Go-Go##29333/1 |goto Tirisfal Glades 67.2,44.0
only if havequest(29333)
step
click Cockroach Cabin##208839
collect 20 Plump Cockroach##69919 |q Roach Coach##29334/1 |goto Undercity 60.4,44.1
only if havequest(29334)
step
click Fly Covered Meat##208876
collect 25 Bloated Fly##69989 |q Would You Like Some Flies With That?##29360/1 |goto Undercity 69.4,52.3
only if havequest(29360)
step
talk Chef Audrey##53528m
turnin Roach Coach##29334 |only if havequest(29334) |goto Undercity 63.0,36.6
step
talk Eunice Burch##4552
turnin Fungus Among Us##29315 |only if havequest(29315) |goto Undercity 62.8,44.2
turnin Lily, Oh Lily##29332 |only if havequest(29332) |goto Undercity 62.8,44.2
turnin Escargot A Go-Go##29333 |only if havequest(29333) |goto Undercity 62.8,44.2
turnin Would You Like Some Flies With That?##29360 |only if havequest(29360) |goto Undercity 62.8,44.2
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5844)
Congratulations, you have _earned_ the _Let's Do Luunch: Undercity achievement! |only if achieved(5844)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Northrend Gourmet",{
condition_end=function() return achieved(1779) end,
achieveid={1777,1778,1779},
description="Cook 45 of the Northrend recipes.",
},[[
step
#include "trainer_Cooking"
learn Dalaran Clam Chowder##58065
learn Grilled Sculpin##45563
learn Mammoth Meal##45549
learn Pickled Fangtooth##45566
learn Poached Nettlefish##45565
learn Rhino Dogs##45553
learn Roasted Worg##45552
step
#include "trainer_Cooking"
learn Shoveltusk Steak##45550
learn Smoked Salmon##45564
learn Worm Delight##45551
learn Fisherman's Feast##42302
learn Hot Buttered Trout##42305
learn Great Feast##45554
learn Black Jelly##64358
learn Darkbrew Lager##88015
learn Blackened Surprise##88006
step
talk Orn Tenderhoof##26972
accept Northern Cooking##13090 |goto Borean Tundra 42,54.2
step
kill Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
collect 4 Chilled Meat##43013 |q Northern Cooking##13090/1 |goto Borean Tundra 45,47.4
step
talk Orn Tenderhoof##26972
turnin Northern Cooking##13090 |goto Borean Tundra 42,54.2
learn Northern Stew##57421
step
kill Crypt Crawler##25227
collect 1 Recipe: Bad Clams##43509 |n |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Last Week's Mammoth##43508 |n |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Haunted Herring##43510 |n |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Tasty Cupcake##43507 |n |goto Borean Tundra 54.6,70.0
learn Bad Clams##58523 |use Recipe: Bad Clams##43509 |goto Borean Tundra 54.6,70.0
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510 |goto Borean Tundra 54.6,70.0
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508 |goto Borean Tundra 54.6,70.0
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507 |goto Borean Tundra 54.6,70.0
step
talk Grimbooze Thunderbrew##29157
accept Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
step
click the Sturdy Vine##190622
|tip They look like brown vines that hang from trees around this area. Sometimes a Dwarf will fall out and give you fruit you need.
_Click_ the fruit that falls to the ground or talk to the dwarf that falls
collect Orange##38656 |q Some Make Lemonade, Some Make Liquor##12634/1 |goto Sholazar Basin 37.6,61.8
collect 2 Banana Bunch##38653 |q Some Make Lemonade, Some Make Liquor##12634/2 |goto Sholazar Basin 37.6,61.8
collect Papaya##38655 |q Some Make Lemonade, Some Make Liquor##12634/3 |goto Sholazar Basin 37.6,61.8
step
talk Grimbooze Thunderbrew##29157
turnin Some Make Lemonade, Some Make Liquor##12634 |goto Sholazar Basin 26.8,60.1
accept Still At It##12644 |goto Sholazar Basin 26.8,60.1
step
talk "Tipsy" McManus##28566
_Tell him_ you are ready to start the distillation process
_Click_ the items on the ground or on the machine that he yells at you during the process, it's random
_Click_ the barrel on the ground when the process is done
collect Thunderbrew's Jungle Punch##38688 |q Still At It##12644/1 |goto Sholazar Basin 26.7,60
step
talk Grimbooze Thunderbrew##29157
turnin Still At It##12644 |goto Sholazar Basin 26.8,60.1
accept The Taste Test##12645 |goto Sholazar Basin 26.8,60.1
step
_Use_ your Jungle Punch Sample on Hadrius Harlowe |use Jungle Punch Sample##38697
|tip Standing next to a tiki torch.
_Complete_ Hadrius' taste test |q The Taste Test##12645/2 |goto Sholazar Basin 27.4,59.4
step
_Use_ your Jungle Punch Sample on Hemet Nesingwary |use Jungle Punch Sample##38697
|tip Standing in front of a tent.
_Complete_ Hemet's taste test |q The Taste Test##12645/1 |goto Sholazar Basin 27.1,58.6
step
_Use_ your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697
|tip Standing by a camp fire.
_Complete_ Hemet's taste test |q The Taste Test##12645/3 |goto Sholazar Basin 50.4,62.0
step
talk Grimbooze Thunderbrew##29157
turnin The Taste Test##12645 |goto Sholazar Basin 26.8,60.1
step
talk Washed-Up Mage##32516
accept Fletcher's Lost and Found##13571 |goto Dalaran/2 44.2,25.6
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
_Use_ the Dalaran Cooking Dailies guide to get the currency for these recipes
|tip You will need a total of 74 Epicurean Awards to get all of the recipes.
#include "vendor_Cooking"
buy 1 Recipe: Mega Mammoth Meal##43018
buy 1 Recipe: Tender Shoveltusk Steak##43019
buy 1 Recipe: Spiced Worm Burger##43020
buy 1 Recipe: Very Burnt Worg##43021
buy 1 Recipe: Worg Tartare##44954
buy 1 Recipe: Mighty Rhino Dogs##43022
buy 1 Recipe: Poached Northern Sculpin##43023
buy 1 Recipe: Firecracker Salmon##43024
buy 1 Recipe: Spicy Blue Nettlefish##43025
buy 1 Recipe: Imperial Manta Steak##43026
buy 1 Recipe: Spicy Fried Herring##43027
buy 1 Recipe: Rhinolicious Wormsteak##43028
step
_Use_ the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018
learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019
learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020
learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021
learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954
learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022
learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023
learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024
learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025
learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027
learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
_Use_ the Dalaran Cooking Dailies guide to get the currency for these recipes
|tip You will need a total of 74 Epicurean Awards to get all of the recipes.
#include "vendor_Cooking"
buy 1 Recipe: Critter Bites##43029
buy 1 Recipe: Hearty Rhino##43030
buy 1 Recipe: Snapper Extreme##43031
buy 1 Recipe: Blackened Worg Steak##43032
buy 1 Recipe: Cuttlesteak##43033
buy 1 Recipe: Spiced Mammoth Treats##43034
buy 1 Recipe: Blackened Dragonfin##43035
buy 1 Recipe: Dragonfin Fillet##43036
buy 1 Recipe: Tracker Snacks##43037
buy 1 Recipe: Gigantic Feast##43505
buy 1 Recipe: Small Feast##43506
buy 1 Recipe: Fish Feast##43017
step
_Use_ the Professions guide to get to 450 cooking |only if skill("Cooking")<450
learn Critter Bites##57435 |use Recipe: Critter Bites##43029
learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030
learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031
learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032
learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033
learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034
learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035
learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036
learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037
learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505
learn Small Feast##58528 |use Recipe: Small Feast##43506
learn Fish Feast##57423 |use Recipe: Fish Feast##43017
step
You can either _purchase_ these items from the Auction House or farm them
collect 1 Barrelhead Goby##41812
collect 4 Bonescale Snapper##41808
collect 5 Chilled Meat##43013
collect 8 Chunk o' Mammoth##34736
collect 2 Deep Sea Monsterbelly##41800
collect 2 Dragonfin Angelfish##41807
collect 1 Essence of Undeath##12808
collect 2 Fangtooth Herring##41810
collect 6 Glacial Salmon##41809
collect 2 Imperial Manta Ray##41809
collect 1 Moonglow Cuttlefish##41801
collect 1 Mote of Shadow##22577
collect 4 Musselback Sculpin##41806
collect 6 Nettlefish##51813
collect 1 Northern Egg##43501
collect 23 Northern Spices##43007
collect 7 Rhino Meat##43012
collect 3 Rockfin Grouper##41803
collect 4 Shoveltusk Flank##43009
collect 3 Succulent Clam Meat##36782
collect 5 Worg Haunch##43011
collect 5 Worm Meat##43010
step
talk Suja##46708
buy 2 Simple Flour##30817 |goto Orgrimmar 56.5,61.2
step
talk Shan'ti##3342
buy 2 Tundra Berries##35949 |goto Orgrimmar 50.8,74.6
buy 1 Savory Snowplum##35948 |goto Orgrimmar 50.8,74.6
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Bad Clams##58523,Cooking,1 total
_Cook_ Bad Clams |achieve 1777/1
step
create Baked Manta Ray##45569,Cooking,1 total
_Cook_ Baked Manta Ray |achieve 1777/2
step
create Blackened Dragonfin##57441,Cooking,1 total
_Cook_ Blackened Dragonfin |achieve 1777/3
step
create Blackened Worg Steak##57438,Cooking,1 total
_Cook_ Blackened Worg Steak |achieve 1777/4
step
create Critter Bites##57435,Cooking,1 total
_Cook_ Critter Bites |achieve 1777/5
step
create Cuttlesteak##57439,Cooking,1 total
_Cook_ Cuttlesteak |achieve 1777/6
step
create Dalaran Clam Chowder##58065,Cooking,1 total
_Cook_ Dalaran Clam Chowder |achieve 1777/7
step
create Dragonfin Filet##57442,Cooking,1 total
_Cook_ Dragonfin Filet |achieve 1777/8
step
create Firecracker Salmon##45568,Cooking,1 total
_Cook_ Firecracker Salmon |achieve 1777/9
step
create Fish Feast##57423,Cooking,1 total
_Cook_ Fish Feast |achieve 1777/10
step
create Gigantic Feast##58527,Cooking,1 total
_Cook_ Gigantic Feast |achieve 1777/11
step
create Great Feast##45554,Cooking,1 total
_Cook_ Great Feast |achieve 1777/12
step
create Grilled Bonescale##45561,Cooking,1 total
_Cook_ Grilled Bonescale |achieve 1777/13
step
create Grilled Sculpin##45563,Cooking,1 total
_Cook_ Grilled Sculpin |achieve 1777/14
step
create Haunted Herring##58525,Cooking,1 total
_Cook_ Haunted Herring |achieve 1777/15
step
create Hearty Rhino##57436,Cooking,1 total
_Cook_ Hearty Rhino |achieve 1778/16
step
create Imperial Manta Steak##45570,Cooking,1 total
_Cook_ Imperial Manta Steak |achieve 1778/17
step
create Kungaloosh##53056,Cooking,1 total
_Cook_ Kungaloosh |achieve 1778/18
step
create Last Week's Mammoth##58521,Cooking,1 total
_Cook_ Last Week's Mammoth |achieve 1778/19
step
create Mammoth Meal##45549,Cooking,1 total
_Cook_ Mammoth Meal |achieve 1778/20
step
create Mega Mammoth Meal##45555,Cooking,1 total
_Cook_ Mega Mammoth Meal |achieve 1778/21
step
create Mighty Rhino Dogs##45559,Cooking,1 total
_Cook_ Mighty Rhino Dogs |achieve 1778/22
step
create Northern Stew##57421,Cooking,1 total
_Cook_ Northern Stew |achieve 1778/23
step
create Pickeled Fangtooth##45566,Cooking,1 total
_Cook_ Pickeled Fangtooth |achieve 1778/24
step
create Poached Nettlefish##45565,Cooking,1 total
_Cook_ Poached Nettlefish |achieve 1778/25
step
create Poached Northern Sculpin##45567,Cooking,1 total
_Cook_ Poached Northern Sculpin |achieve 1778/26
step
create Rhino Dogs##45553,Cooking,1 total
_Cook_ Rhino Dogs |achieve 1778/27
step
create Rhinolicious Wormsteak##57434,Cooking,1 total
_Cook_ Rhinolicious Wormsteak |achieve 1778/28
step
create Roasted Worg##45552,Cooking,1 total
_Cook_ Roasted Worg |achieve 1778/29
step
create Sauteed Goby##45562,Cooking,1 total
_Cook_ Sauteed Goby |achieve 1778/30
step
create Shoveltusk Steak##45550,Cooking,1 total
_Cook_ Shoveltusk Steak |achieve 1779/31
step
create Small Feast##58528,Cooking,1 total
_Cook_ Small Feast |achieve 1779/32
step
create Smoked Rockfin##45560,Cooking,1 total
_Cook_ Smoked Rockfin |achieve 1779/33
step
create Smoked Salmon##45564,Cooking,1 total
_Cook_ Smoked Salmon |achieve 1779/34
step
create Snapper Extreme##57437,Cooking,1 total
_Cook_ Snapper Extreme |achieve 1779/35
step
create Spiced Mammoth Treats##57440,Cooking,1 total
_Cook_ Spiced Mammoth |achieve 1779/36
step
create Spiced Worm Burger##45557,Cooking,1 total
_Cook_ Spiced Worm Burger |achieve 1779/37
step
create Spicy Blue Nettlefish##45571,Cooking,1 total
_Cook_ Spicy Blue Nettlefish |achieve 1779/38
step
create Spicy Fried Herring##57433,Cooking,1 total
_Cook_ Spicy Fried Herring |achieve 1779/39
step
create Tasty Cupcake##58512,Cooking,1 total
_Cook_ Tasty Cupcake |achieve 1779/40
step
create Tender Shoveltusk Steak##45556,Cooking,1 total
_Cook_ Tender Shoveltusk Steak |achieve 1779/41
step
create Tracker Snacks##57443,Cooking,1 total
_Cook_ Tracker Snacks |achieve 1779/42
step
create Very Burnt Worg##45558,Cooking,1 total
_Cook_ Very Burnt Worg |achieve 1779/43
step
create Worg Tartare##62350,Cooking,1 total
_Cook_ Worg Tartare |achieve 1779/44
step
create Worm Delight##45551,Cooking,1 total
_Cook_ Worm Delight |achieve 1779/45
step
Congratulations, you have _earned_ the _The Northrend Gourment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Our Daily Bread",{
achieveid={1783},
description="Complete each of the cooking daily quests offered by Katherine Lee in Dalaran.",
},[[
#include "Our_Daily_Bread"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\The Outland Gourmet",{
achieveid={1800},
description="Cook each of the Outland cooking recipes.",
},[[
step
#include "trainer_Cooking"
learn Stewed Trout##42296
learn Fisherman's Feast##42302
learn Hot Buttered Trout##42305
step
talk Legassi##19344
accept Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
step
kill Razorfang Hatchling##16932+, Razorfang Ravager##16933+
collect 12 Ravager Egg##23217 |q Ravager Egg Roundup##9349/1 |goto Hellfire Peninsula 39.0,88.4
step
talk Legassi##19344
turnin Ravager Egg Roundup##9349 |goto Hellfire Peninsula 49.2,74.8
accept Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
step
kill Deranged Helboar##16863
_Use_ the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
collect 8 Purified Helboar Meat##23248 |q Helboar, the Other White Meat##9361/1 |goto Hellfire Peninsula 51.2,69.8
step
talk Legassi##19344
turnin Helboar, the Other White Meat##9361 |goto Hellfire Peninsula 49.2,74.8
accept Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
step
kill Bonestripper Buzzard##16972
collect 12 Plump Buzzard Wing##23239 |q Smooth as Butter##9356/1 |goto Hellfire Peninsula 61.0,66.6
step
talk Legassi##19344
turnin Smooth as Butter##9356 |goto Hellfire Peninsula 49.2,74.8
step
collect 1 Recipe: Buzzard Bites##27684 |n
learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684
step
talk Cookie One-Eye##16585
buy 1 Recipe: Ravager Dog##27688 |n
learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688 |goto Hellfire Peninsula 54.6,41.0
step
talk Mycah##18382
collect Glowcap##24245 |n
|tip Glowcaps are scattered out around usually at bottom of the large mushrooms around Sporeggar.
buy 1 Recipe: Clam Bar##30156 |n
learn Clam Bar##36210 |use Recipe: Clam Bar##30156 |goto Zangarmarsh 17.8,51.2
|tip You must be at least Neutral with Sporeggar to purchase this recipe. If you are not please refer to our Reputation Guide for Sporeggar to achieve this.
step
talk Zurai##18011
buy 1 Recipe Feltail Delight##27695 |n
learn Feltail Delight##33291 |use Recipe Feltail Delight##27695 |goto Zangarmarsh 85.2,54.6
step
talk Gambarinka##18015
buy Recipe: Blackened Trout##27694 |n
learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694 |goto Zangarmarsh 31.6,49.2
step
talk Juno Dufrain##18911 |goto Zangarmarsh 78.0,66.0
buy 1 Recipe: Blackened Sporefish##27696 |n
learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
step
talk Nula the Butcher##20097 |goto Nagrand 58.0,35.6
buy 1 Recipe: Grilled Mudfish##27697 |n
buy 1 Recipe: Talbuk Steak##27693 |n
buy 1 Recipe: Poached Bluefish##27698 |n
buy 1 Recipe: Roasted Clefthoof##27691 |n
learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
step
talk Rungor##18960 |goto Terokkar Forest 48.8,46.0
buy 1 Recipe: Golden Fish Sticks##27699 |n
buy 1 Recipe: Spicy Crawdad##27700 |n
learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700
step
talk Innkeeper Grilka##18957 |goto Terokkar Forest 48.8,45.0
buy 1 Recipe Blackened Basilisk##27690 |n
buy 1 Recipe: Warp Burger##27692 |n
learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690
learn Warp Burger##33288 |use Recipe: Warp Burger##27692
step
talk Xerintha Ravenoak##20916 |goto Blade's Edge Mountains 62.4,40.2
buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
buy 1 Recipe: Crunchy Serpent##31674 |n
learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675
learn Crunchy Serpent##38868 |use Recipe: Crunchy Serpent##31674
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient.
Make sure to _choose_ the Crate of Meat
collect 1 Recipe: Spicy Hot Talbuk##33873 |n
learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient.
Make sure to _choose_ the Barrel of Fish
collect 1 Recipe: Broiled Bloodfin##33869 |n
collect 1 Recipe: Skullfish Soup##33870 |n
learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869
learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient.
You can _choose_ either the Crate of Meat or Barrel of Fish
collect 1 Recipe: Kibler's Bits##33875 |n
learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875
step
_Use_ the Shattrath Cooking Dailies guide to get these recipes
|tip It's not always guarenteed to come from these daily prizes so be patient.
You can _choose_ either Crate of Meat, Barrel of Fish, or Small Spice Bag
collect 1 Recipe: Stormchops##33871 |n
collect 1 Recipe: Delicious Chocolate Cake##33925 |n
learn Stormchops##43758 |use Recipe: Stormchops##33871
learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925
step
You can either _purchase_ these items from the Auction House or farm them
collect 8 Small Eggs##6889
collect 2 Buzzard Meat##27671
collect 2 Clefthoof Meat##27678
collect 2 Jaggal Clam Meat##24477
collect 2 Talbuk Venison##27682
collect 1 Chunk o' Basilisk##27677
collect 1 Raptor Ribs##31670
collect 1 Ravager Flesh##27674
collect 1 Serpent Flesh##31671
collect 1 Warped Flesh##27681
collect 3 Mageroyal##785
step
You can either _purchase_ these items from the Auction House or fish for them
collect 2 Barbed Gill Trout##27422
collect 1 Bloodfin Catfish##33823
collect 1 Crescent-Tail Skullfish##33824
collect 1 Enormous Barbed Gill Trout##27516
collect 1 Figluster's Mudfish##27435
collect 1 Golden Darter##27438
collect 1 Huge Spotted Feltail##27515
collect 1 Icefin Bluefish##27437
collect 1 Lightning Eel##13757
collect 1 Spotted Feltail##27425
collect 1 Zangarian Sporefish##27429
step
talk Shan'ti##3342 |goto Orgrimmar 50.8,74.6
buy 5 Goldenbark Apple##4539
step
talk Innkeeper Gryshka##6929 |goto Orgrimmar 53.6,78.8
buy 4 Ice Cold Milk##1179
step
talk Suja##46708 |goto Orgrimmar 56.5,61.2
buy 8 Simple Flour##30817
buy 4 Mild Spices##2678
step
talk Daisy##40832 |goto Thousand Needles 76.5,74.8
buy 1 Flask of Port##2593
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Delicious Chocolate Cake##43779,Cooking,1 total
_Cook_ Delicious Chocolate Cake |achieve 1800/1
step
create Blackened Trout##33290,Cooking,1 total
_Cook_ Blackened Trout |achieve 1800/2
step
create Buzzard Bites##33279,Cooking,1 total
_Cook_ Buzzard Bites |achieve 1800/3
step
create Clam Bar##36210,Cooking,1 total
_Cook_ Clam Bar |achieve 1800/4
step
create Feltail Delight##33291,Cooking,1 total
_Cook_ Feltail Delight |achieve 1800/5
step
create Ravager Dog##33284,Cooking,1 total
_Cook_ Ravager Dog |achieve 1800/6
step
create Stormchops##43758,Cooking,1 total
_Cook_ Stormchops |achieve 1800/7
step
create Blackened Sporefish##33292,Cooking,1 total
_Cook_ Blackened Sporefish |achieve 1800/8
step
create Blackened Basilisk##33286,Cooking,1 total
_Cook_ Blackened Basilisk |achieve 1800/9
step
create Grilled Mudfish##33293,Cooking,1 total
_Cook_ Grilled Mudfish |achieve 1800/10
step
create Poached Bluefish##33294,Cooking,1 total
_Cook_ Poached Bluefish |achieve 1800/11
step
create Broiled Bloodfin##43761,Cooking,1 total
_Cook_ Broiled Bloodfin |achieve 1800/12
step
create Golden Fish Sticks##33295,Cooking,1 total
_Cook_ Golden Fish Sticks |achieve 1800/13
step
create Kibler's Bits##43772,Cooking,1 total
_Cook_ Kibler's Bits |achieve 1800/14
step
create Roasted Clefthoof##33287,Cooking,1 total
_Cook_ Roasted Clefthoof |achieve 1800/15
step
create Talbuk Steak##33289,Cooking,1 total
_Cook_ Talbuk Steak |achieve 1800/16
step
create Warp Burger##33288,Cooking,1 total
_Cook_ Warp Burger |achieve 1800/17
step
create Crunchy Serpent##38868,Cooking,1 total
_Cook_ Crunchy Serpent |achieve 1800/18
step
create Mok'Nathal Shortribs##38867,Cooking,1 total
_Cook_ Mok'Nathal |achieve 1800/19
step
create Fisherman's Feast##42302,Cooking,1 total
_Cook_ Fisherman's Feast |achieve 1800/20
step
create Hot Buttered Trout##42305,Cooking,1 total
_Cook_ Hot Buttered Trout |achieve 1800/21
step
create Skullfish Soup##43707,Cooking,1 total
_Cook_ Skullfish Soup |achieve 1800/22
step
create Spicy Crawdad##33296,Cooking,1 total
_Cook_ Spicy Crawdad |achieve 1800/23
step
create Spicy Hot Talbuk##43765,Cooking,1 total
_Cook_ Spicy Hot Talbuk |achieve 1800/24
step
create Stewed Trout##42296,Cooking,1 total
_Cook_ Stewed Trout |achieve 1800/25
step
Congratulations, you have _earned_ the _The Outland Gourmet_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Cooking\\Second That Emotion",{
achieveid={1780},
description="Eat the 'emotion' foods.",
},[[
step
kill Winterfin Warrior##25217+
collect Darkwater Clam##36781 |n
_Open_ the Darkwater Clams in your bags |use Darkwater Clam##36781
collect 1 Succulent Clam Meat##36782 |goto Borean Tundra 41.2,17.6
step
kill Scourged Mammoth##25452+
collect 1 Chunk o' Mammoth##34736 |goto Borean Tundra 78.2,24.0
step
kill Carrion Condor##26174
collect 1 Northern Egg##43501 |goto Borean Tundra 85.2,36.2
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |goto Howling Fjord 60.2,33.6
step
talk Misensi##31031
buy 2 Simple Flour##30817 |goto Dalaran 41.2,65.0
step
kill Voidspawn##17981
collect 1 Mote of Shadow##22577 |goto Nagrand 37.8,66.6
step
_Enter_ Scholomance here
_Kill_ all undead mobs in the dungeon
collect 1 Essence of Undeath##12808 |goto Western Plaguelands 69.1,73.0 < 20
step
kill Crypt Crawler##25227+
collect 1 Recipe: Bad Clams##43509 |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Last Week's Mammoth##43508 |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Haunted Herring##43510 |goto Borean Tundra 54.6,70.0
collect 1 Recipe: Tasty Cupcake##43507 |goto Borean Tundra 54.6,70.0
step
learn Bad Clams##58523 |use Recipe: Bad Clams##43509
step
learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
step
learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
step
learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
step
_Make_ a Cooking Fire |cast Cooking Fire##818
create Haunted Herring##58525,Cooking,1 total |n
collect 1 Haunted Herring##43492
|tip You can use the Auction House to attain this item
step
create Bad Clams##58523,Cooking,1 total |n
collect 1 Bad Clams##43491
|tip You can use the Auction House to attain this item
step
create Last Week's Mammoth##58521,Cooking,1 total |n
collect 1 Last Week's Mammoth##43488
|tip You can use the Auction House to attain this item
step
create Tasty Cupcake##58512,Cooking,1 total |n
collect 1 Tasty Cupcake##43490
|tip You can use the Auction House to attain this item
step
label "eat"
_Eat_ the Haunted Herring to become scared |use Haunted Herring##43492
_Eat_ Haunted Herring |achieve 1780/3
step
_Eat_ the Bad Clams to become angry |use Bad Clams##43491
_Eat_ Bad Clams |achieve 1780/2
step
_Eat_ the Last Week's Mammoth to become sad |use Last Week's Mammoth##43488
_Eat_ Last Week's Mammoth |achieve 1780/1
step
_Eat_ the Tasty Cupcake to become happy! |use Tasty Cupcake##43490
_Eat_ Tasty Cupcake |achieve 1780/4
step
Congratulations, you have _earned_ the _Second That Emotion_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\25 Fish",{
achieveid={1556},
description="Fish up 25 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #25# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _25 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\50 Fish",{
achieveid={1557},
description="Fish up 50 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #50# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _50 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\100 Fish",{
achieveid={1558},
description="Fish up 100 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #100# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _100 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\250 Fish",{
achieveid={1559},
description="Fish up 250 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #250# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _250 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\500 Fish",{
achieveid={1560},
description="Fish up 500 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #500# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _500 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\1000 Fish",{
achieveid={1561},
description="Fish up 1000 items.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Catch_ #1000# fish |achieve 1561 |goto Orgrimmar 66.6,41.6
step
Congratulations, you have _earned_ the _1000 Fish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Accomplished Angler",{
achieveid={1516},
description="Complete the fishing achievements listed.",
},[[
step
label "start"
_Click here_ to earn 1000 Fish |achieve 1516/13 |confirm |next "Fish"
_Click here_ to earn Fish Don't Leave Footprints |achieve 1516/12 |confirm |next "Footprints"
_Click here_ to earn Grand Master Fisherman |achieve 1516/1 |confirm |next "Fisherman"
_Click here_ to earn Master Angler of Azeroth |achieve 1516/5 |confirm |next "Azeroth"
_Click here_ to earn Mr. Pinchy's Magical Crawdad Box |achieve 1516/6 |confirm |next "Crawdad"
_Click here_ to earn Northrend Angler |achieve 1516/1 |confirm |next "Northrend"
_Click here_ to earn Old Man Barlowned |achieve 1516/8 |achieve 1516/9 |confirm |next "Barlowned"
_Click here_ to earn One That Didn't Get Away |achieve 1516/7 |confirm |next "Away"
_Click here_ to earn The Lurker Above |achieve 1516/9 |confirm |next "Lurker"
_Click here_ to earn The Old Gnome and the Sea |achieve 1516/2 |confirm |next "Gnome"
_Click here_ to earn Outland Angler |achieve 1516/10 |confirm |next "Outland"
_Click here_ to earn The Coin Master |achieve 1516/14 |confirm |next "Master"
_Click here_ to earn The Fishing Diplomat |achieve 1516/4 |confirm |next "Diplomat"
_Click here_ to earn Use |achieve 1516/3 |confirm |next "Scavenger"
|next "end" |only if achieved(1516)
step
label "Gnome"
#include "Old_Gnome_and_the_Sea"
|next "start"
step
label "Scavenger"
#include "The_Scavenger"
|next "start"
step
label "Diplomat"
#include "The_Fishing_Diplomat"
|next "start"
step
label "Crawdad"
#include "Mr_Pinchy"
|next "start"
step
label "Lurker"
#include "The_Lurker_Above"
|next "start"
step
label "Barlowned"
#include "Old_Man_Barlowned"
|next "start"
step
label "Outland"
#include "Outland_Angler"
|next "start"
step
label "Northrend"
#include "Master_Angler_of_Northrend"
|next "start"
step
label "Footprints"
#include "Fish_Don't_Leave_Footprints"
|next "start"
step
label "Away"
#include "One_That_Didn't_Get_Away"
|next "start"
step
label "Master"
#include "The_Coin_Master"
|next "start"
step
label "Fisherman"
#include "Grand_Master_Fisherman"
|next "start"
step
label "Fish"
#include "Thousand_Fish"
|next "start"
step
label "Azeroth"
#include "Master_Angler_of_Azeroth"
|next "start"
step
Congratulations, you have _earned_ the _Accomplished Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Artisan Fisherman",{
achieveid={128},
description="Obtain 300 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 300 skill points in fishing |achieve 128
step
Congratulations, you have _earned_ the _Artisan Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Chasing Marcia",{
achieveid={3217},
description="Complete each of Marcia Chase's 5 fishing daily quests.",
},[[
step
talk Marcia Chase##28742
You will only be able to _complete 1 of the following quests_ per day
accept Blood Is Thicker##13833 |or |goto Dalaran 53.1,64.9
accept Dangerously Delicious##13834 |or |goto Dalaran 53.1,64.9
accept Jewel Of The Sewers##13832 |or |goto Dalaran 53.1,64.9
accept Disarmed!##13836 |or |goto Dalaran 53.1,64.9
accept The Ghostfish##13830 |or |goto Dalaran 53.1,64.9
step
kill Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
_Get_ the Animal Blood buff |havebuff 132311 |q Blood Is Thicker##13833 |goto Borean Tundra 54.6,41.8
only if havequest (13833)
step
_Walk into_ the water here to create a pool of blood
_Use_ your fishing ability |cast Fishing##7620
collect 5 Bloodtooth Frenzy##45905 |q Blood Is Thicker##13833/1 |goto Borean Tundra 53.7,42.9
only if havequest (13833)
step
_Use_ your fishing ability |cast Fishing##7620
collect 10 Terrorfish##45904 |q Dangerously Delicious##13834/1 |goto Wintergrasp 79.9,41.8
only if havequest (13834)
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect 1 Corroded Jewelry##45903 |q Jewel Of The Sewers##13832/1 |goto Dalaran 44.4,66.2
only if havequest (13832)
step
_Use_ your fishing ability |cast Fishing##7620
collect Bloated Slippery Eel##45328 |n
use Bloated Slippery Eel##45328
collect 1 Severed Arm##45323 |q Disarmed!##13836/1 |goto Dalaran 64.8,60.8
only if havequest (13836)
step
_Use_ your fishing ability |cast Fishing##7620
collect Phantom Ghostfish##45902 |n
use Phantom Ghostfish##45902
Discover the Ghostfish mystery |q The Ghostfish##13830/1 |goto Sholazar Basin 49.3,61.8
only if havequest (13830)
step
talk Marcia Chase##28742
turnin Blood Is Thicker##13833 |only if havequest(13833) |goto Dalaran 53.1,64.9
turnin Dangerously Delicious##13834 |only if havequest(13834) |goto Dalaran 53.1,64.9
turnin Jewel Of The Sewers##13832 |only if havequest(13832) |goto Dalaran 53.1,64.9
turnin The Ghostfish##13830 |only if havequest(13830) |goto Dalaran 53.1,64.9
step
talk Olisarra the Kind##28706
turnin Disarmed!##13836 |only if havequest(13836) |goto Dalaran 36.6,37.3
step
Congratulations, you have _earned_ the _Chasing Marcia_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Coin Master",{
condition_end=function() return achieved(2096) end,
achieveid={2094,2095,1957,2096},
description="Complete the coin fishing achievements.",
},[[
step
This guide will help you _earn_ the achievements A Penny For Your Thoughts, Silver in the City, There's Gold In That There Fountain, and finally The Coin Master
confirm
step
label "start"
_Use_ your fishing ability in the fountain |cast Fishing##7620
_Earn_ the A penny For Your Thoughts achievement |achieve 2096/1 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "penny"
_AND_
_Earn_ the Silver in the City achievement |achieve 2096/2 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "silver"
_AND_
_Earn_ the There's Gold In That There Fountain achievement |achieve 2096/3 |goto Dalaran 52.6,66.5
_Click here_ for a more detailed look of this achievement |confirm |next "gold"
|next "end" |only if achieved(2096)
step
label "penny"
You will need to _fish up each_ one of the coins listed below to complete this achievement
_Fish up_ Alonsus Faol's Copper Coin |achieve 2094/11 |goto Dalaran 52.6,66.5
_Fish up_ Ansirem's Copper Coin |achieve 2094/19 |goto Dalaran 52.6,66.5
_Fish up_ Attumen's Copper Coin |achieve 2094/21 |goto Dalaran 52.6,66.5
_Fish up_ Danath's Copper Coin |achieve 2094/13 |goto Dalaran 52.6,66.5
_Fish up_ Dornaa's Shiny Copper Coin |achieve 2094/1 |goto Dalaran 52.6,66.5
_Fish up_ Eitrigg's Copper Coin |achieve 2094/2 |goto Dalaran 52.6,66.5
_Fish up_ Elling Trias' Copper Coin |achieve 2094/3 |goto Dalaran 52.6,66.5
_Fish up_ Falstad Wildhammer's Copper Coin |achieve 2094/14 |goto Dalaran 52.6,66.5
_Fish up_ Genn's Copper Coin |achieve 2094/12 |goto Dalaran 52.6,66.5
_Fish up_ Inigo's Copper Coin |achieve 2094/9 |goto Dalaran 52.6,66.5
_Fish up_ Krasus' Copper Coin |achieve 2094/10 |goto Dalaran 52.6,66.5
_Fish up_ Kryll's Copper Coin |achieve 2094/22 |goto Dalaran 52.6,66.5
_Fish up_ Landro Longshot's Copper Coin |achieve 2094/20 |goto Dalaran 52.6,66.5
_Fish up_ Molok's Copper Coin |achieve 2094/4 |goto Dalaran 52.6,66.5
_Fish up_ Murky's Copper Coin |achieve 2094/5 |goto Dalaran 52.6,66.5
_Fish up_ Princess Calia Menethil's Copper Coin |achieve 2094/16 |goto Dalaran 52.6,66.5
_Fish up_ Private Marcus Jonathan's Copper Coin |achieve 2094/15 |goto Dalaran 52.6,66.5
_Fish up_ Salandria's Shiny Copper Coin |achieve 2094/17 |goto Dalaran 52.6,66.5
_Fish up_ Squire Rowe's Copper Coin |achieve 2094/6 |goto Dalaran 52.6,66.5
_Fish up_ Stalvan's Copper Coin |achieve 2094/7 |goto Dalaran 52.6,66.5
_Fish up_ Vareesa's Copper Coin |achieve 2094/8 |goto Dalaran 52.6,66.5
_Fish up_ Vargoth's Copper Coin |achieve 2094/18 |goto Dalaran 52.6,66.5
step
label "silver"
_Fish up_ A Peasant's Silver Coin |achieve 2095/12 |goto Dalaran 52.6,66.5
_Fish up_ Aegwynn's Silver Coin |achieve 2095/7 |goto Dalaran 52.6,66.5
_Fish up_ Alleria's Silver Coin |achieve 2095/8 |goto Dalaran 52.6,66.5
_Fish up_ Antonidas' Silver Coin |achieve 2095/3 |goto Dalaran 52.6,66.5
_Fish up_ Arcanist Doan's Silver Coin |achieve 2095/14 |goto Dalaran 52.6,66.5
_Fish up_ Fandral Staghelm's Silver Coin |achieve 2095/4 |goto Dalaran 52.6,66.5
_Fish up_ High Tinker Mekkatorque's Silver Coin |achieve 2095/6 |goto Dalaran 52.6,66.5
_Fish up_ Khadgar's Silver Coin |achieve 2095/9 |goto Dalaran 52.6,66.5
_Fish up_ King Anasterian Sunstrider's Silver Coin |achieve 2095/10 |goto Dalaran 52.6,66.5
_Fish up_ King Terenas Menethil's Silver Coin |achieve 2095/13 |goto Dalaran 52.6,66.5
_Fish up_ King Varian Wrynn's Silver Coin |achieve 2095/5 |goto Dalaran 52.6,66.5
_Fish up_ Maiev Shadowsong's Silver Coin |achieve 2095/1 |goto Dalaran 52.6,66.5
_Fish up_ Medivh's Silver Coin |achieve 2095/15 |goto Dalaran 52.6,66.5
_Fish up_ Muradin Bronzebeard's Silver Coin |achieve 2095/11 |goto Dalaran 52.6,66.5
_Fish up_ Prince Magni Bronzebeard's Silver Coin |achieve 2095/2 |goto Dalaran 52.6,66.5
step
label "gold"
_Fish up_ Anduin Wrynn's Gold Coin |achieve 1957/6 |goto Dalaran 52.6,66.5
_Fish up_ Archimonde's Gold Coin |achieve 1957/7 |goto Dalaran 52.6,66.5
_Fish up_ Arthas' Gold Coin |achieve 1957/5 |goto Dalaran 52.6,66.5
_Fish up_ Arugal's Gold Coin |achieve 1957/8 |goto Dalaran 52.6,66.5
_Fish up_ Brann Bronzebeard's Gold Coin |achieve 1957/10 |goto Dalaran 52.6,66.5
_Fish up_ Chromie's Gold Coin |achieve 1957/1 |goto Dalaran 52.6,66.5
_Fish up_ Kel'Thuzad's Gold Coin |achieve 1957/4 |goto Dalaran 52.6,66.5
_Fish up_ Lady Jaina Proudmoore's Gold Coin |achieve 1957/9 |goto Dalaran 52.6,66.5
_Fish up_ Lady Katrana Prestor's Gold Coin |achieve 1957/11 |goto Dalaran 52.6,66.5
_Fish up_ Prince Kael'thas Sunstrider's Gold Coin |achieve 1957/14 |goto Dalaran 52.6,66.5
_Fish up_ Sylvanas Windrunner's Gold Coin |achieve 1957/15 |goto Dalaran 52.6,66.5
_Fish up_ Teron's Gold Coin |achieve 1957/2 |goto Dalaran 52.6,66.5
_Fish up_ Thrall's Gold Coin |achieve 1957/3 |goto Dalaran 52.6,66.5
_Fish up_ Tirion Fordring's Gold Coin |achieve 1957/12 |goto Dalaran 52.6,66.5
_Fish up_ Uther Lightbringer's Gold Coin |achieve 1957/13 |goto Dalaran 52.6,66.5
step
label "end"
Congratulations, you have _earned_ the _A Penny For Your Thoughts_ achievement! |only if achieved(2094)
Congratulations, you have _earned_ the _Silver in the City_ achievement! |only if achieved(2095)
Congratulations, you have _earned_ the _The Coin Master_ achievement! |only if achieved(2096)
Congratulations, you have _earned_ the _There's Gold In That There Fountain_ achievement! |only if achieved(1957)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Expert Fisherman",{
achieveid={127},
description="Obtain 225 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 225 skill points in fishing |achieve 127
step
Congratulations, you have _earned_ the _Expert Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish Don't Leave Footprints",{
achieveid={1243},
description="Learn the ability to find fish.",
},[[
step
_Use_ your fishing ability to fish from Schooner Wreckage along The Savage Coast |cast Fishing##7620
|tip You may need to fish out the other schools of fish to get them to spawn.
collect Weather-Beaten Journal##34109
use Weather-Beaten Jounral##34109 |achieve 1243 |goto Northern Stranglethorn 31.0,37.7
step
Congratulations, you have _earned_ the _Fish Don't Leave Footprints_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Orgrimmar",{
achieveid={5477},
description="Complete each of the Orgrimmar fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Thunder Bluff, Orgrimmar, or Undercity
|confirm
step
talk Razgar##43239
You will only be able to _complete 1 of the following quests_ per day
accept A Furious Catch##26588 |or |goto Orgrimmar 65.7,41.1
accept A Golden Opportunity##26572 |or |goto Orgrimmar 65.7,41.1
accept A Staggering Effort##26557 |or |goto Orgrimmar 65.7,41.1
accept Clammy Hands##26543 |or |goto Orgrimmar 65.7,41.1
accept No Dumping Allowed##26556 |or |goto Orgrimmar 65.7,41.1
step
_Use_ your fishing ability |cast Fishing##7620
collect Giant Furious Pike##58951 |q A Furious Catch##26588/1 |goto Durotar 37.4,16.8
|tip This fish can only be caught in Durotar so make sure you are standing and fishing in Durotar.
only if havequest(26588)
step
_Use_ Razgar's Fillet Knife on a Drowned Thunder Lizard |use Razgar's Fillet Knife##58955
collect Drowned Thunder Lizard Tail##58958 |n
_Use_ your Drowned Thunder Lizard Tail next to a Golden Stonefish |use Drowned Thunder Lizard Tail##58958
collect 3 Golden Stonefish##58960 |q A Golden Opportunity##26572/1 |goto Durotar 42.8,24.0
only if havequest(26572)
step
click Monstrous Clam##204360
collect 10 Monstrous Clam Meat##58934 |q Clammy Hands##26543/1 |goto Durotar 57.2,9.5
only if havequest(26543)
step
kill Weakened Mosshoof Stag##35096+
collect 1 Stag Eye##58949 |q A Staggering Effort##26557/1 |goto Azshara 27.6,74.5
only if havequest(26557)
step
|use Stag Eye##58949
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sandy Carp##58946 |q A Staggering Effort##26557/1 |goto Orgrimmar 46.2,46.5
only if havequest(26557)
step
_Use_ your fishing ability |cast Fishing##7620
collect 6 Toxic Puddlefish##58945 |q No Dumping Allowed##26556/1 |goto Orgrimmar 38.5,80.1
only if havequest(26556)
step
talk Razgar##43239
turnin A Furious Catch##26588 |only if havequest(26588) |goto Orgrimmar 65.7,41.1
turnin A Golden Opportunity##26572 |only if havequest(26572) |goto Orgrimmar 65.7,41.1
turnin A Staggering Effort##26557 |only if havequest(26557) |goto Orgrimmar 65.7,41.1
turnin Clammy Hands##26543 |only if havequest(26543) |goto Orgrimmar 65.7,41.1
turnin No Dumping Allowed##26556 |only if havequest(26556) |goto Orgrimmar 65.7,41.1
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5477)
Congratulations, you have _earned_ the _Fish or Cut Bait: Orgrimmar_ achievement! |only if achieved(5477)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Thunder Bluff",{
achieveid={5849},
description="Complete each of the Undercity fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Thunder Bluff, Orgrimmar, or Undercity
|confirm
step
talk Kah Mistrunner##3028
You will only be able to _complete 1 of the following quests_ per day
accept Craving Crayfish##29349 |or |goto Thunder Bluff 56.0,47.0
accept Pond Predators##29345 |or |goto Thunder Bluff 56.0,47.0
accept Shiny Baubles##29354 |or |goto Thunder Bluff 56.0,47.0
accept The Race to Restock##29348 |or |goto Thunder Bluff 56.0,47.0
accept The Ring's the Thing##29346 |or |goto Thunder Bluff 56.0,47.0
step
clicknpc Stonebull Crayfish##53561
collect 10 Stonebull Crayfish##69977 |q Craving Crayfish##29349/1 |goto Mulgore 44.9,54.8
only if havequest(29349)
step
_Use_ your fishing ability |cast Fishing##7620
collect 8 Azshara Snakehead##69934 |q Pond Predators##29345/1 |goto Thunder Bluff 41.7,59.4
only if havequest(29345)
step
click Shiny Stones##208867
collect 20 Shiny Stone##69983 |q Shiny Baubles##29354/1 |goto Thunder Bluff 35.6,40.9
only if havequest(29354)
step
_Use_ your fishing ability |cast Fishing##7620
collect 2 Randy Smallfish##69964 |q The Race to Restock##29348/1 |goto Mulgore 49.6,49.5
collect 2 Amorous Mud Snapper##69967 |q The Race to Restock##29348/2 |goto Mulgore 49.6,49.5
only if havequest(29348)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Poshken's Ring##69935 |q The Ring's the Thing##29346/1 |goto Thunder Bluff 28.8,20.4
only if havequest(29346)
step
talk Kah Mistrunner##3028
turnin Craving Crayfish##29349 |only if havequest(29349) |goto Thunder Bluff 56.0,47.0
turnin Pond Predators##29345 |only if havequest(29345) |goto Thunder Bluff 56.0,47.0
turnin The Race to Restock##29348 |only if havequest(29348) |goto Thunder Bluff 56.0,47.0
step
talk Nahari Cloudchaser##29354
turnin Shiny Baubles##29354 |only if havequest(29354) |goto Thunder Bluff 35,53.8
step
talk Poshken Hardbinder##30709
turnin The Ring's the Thing##29346 |only if havequest(29346) |goto Thunder Bluff 28.8,20.4
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5849)
Congratulations, you have _earned_ the _Fish or Cut Bait: Thunder Bluff_ achievement! |only if achieved(5477)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Fish or Cut Bait: Undercity",{
achieveid={5850},
description="Complete each of the Undercity fishing daily quests.",
},[[
step
You will only be able to _complete one fishing daily per day_ in either Thunder Bluff, Orgrimmar, or Undercity
|confirm
step
talk Armand Cromwell##4573
You will only be able to _complete 1 of the following quests_ per day
accept Fish Head##29317 |or |goto Undercity 81.6,30.8
accept Like Pike?##29320 |or |goto Undercity 81.6,30.8
accept Moat Monster!##29361 |or |goto Undercity 81.6,30.8
accept Tadpole Terror##29319 |or |goto Undercity 81.6,30.8
accept Time for Slime##29322 |or |goto Undercity 81.6,30.8
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Severed Abomination Head##69901 |q Fish Head##29317/1 |goto Undercity 81.6,31.5
only if havequest(29317)
step
click Corpse Worm Mound##208828
collect 1 Corpse Worm##69907 |goto Undercity 67.3,15.2
only if havequest(29320)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Corpse-Fed Pike##69909 |q Like Pike?##29320/1 |goto Tirisfal Glades 67.1,50.8
only if havequest(29320)
step
_Open_ your Moat Monster Feeding Kit |use Moat Monster Feeding Kit##69999
_Lure_ the Moat Monster out with the Alliance Decoy |use Alliance Decoy Kit##69998
_Feed_ the Moat Monster with your Bloated Frogs |use Bloated Frog##69995
_Feed_ Bloated Frogs to the Moat Monster |q Moat Monster!##29361/1 |goto Undercity 64.7,16.5
only if havequest(29361)
step
_Use_ your fishing ability |cast Fishing##7620
collect 8 Giant Flesh-Eating Tadpole##69905 |q Tadpole Terror##29319/1 |goto Tirisfal Glades 50.6,56.5
only if havequest(29319)
step
clicknpc Squirming Slime Mold##53517
collect 10 Squirming Slime Mold##69911 |q Time for Slime##29322/1 |goto Undercity 81.1,32.0
only if havequest(29322)
step
talk Armand Cromwell##4573
turnin Like Pike?##29320 |or |only if havequest(29320) |goto Undercity 81.6,30.8
turnin Moat Monster!##29361 |or |only if havequest(29361) |goto Undercity 81.6,30.8
turnin Tadpole Terror##29319 |or |only if havequest(29319) |goto Undercity 81.6,30.8
turnin Time for Slime##29322 |or |only if havequest(29322) |goto Undercity 81.6,30.8
step
talk Master Apothecary Faranell##2055
turnin Fish Head##29317 |or |only if havequest(29317) |goto Undercity 48.4,69.4
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(5850)
Congratulations, you have _earned_ the _Fish or Cut Bait: Undercity_ achievement! |only if achieved(5850)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Fishing Diplomat",{
achieveid={150},
description="Fish something up in Orgrimmar and Stormwind.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
Fish something up in Orgrimmar |achieve 150/1 |goto Orgrimmar 24.8,62.8
step
_Use_ your fishing ability |cast Fishing##7620
Fish something up in Stormwind City |achieve 150/2 |goto Stormwind City 69.0,92.2
step
Congratulations, you have _earned_ the _The Fishing Diplomat_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Grand Master Fisherman",{
achieveid={130},
description="Obtain 450 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 450 skill points in fishing |achieve 130
step
Congratulations, you have _earned_ the _Grand Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\I Smell A Giant Rat",{
achieveid={1958},
description="Fish up the Giant Sewer Rat from The Underbelly in Dalaran.",
},[[
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5 < 10 |walk
_Use_ your fishing ability |cast Fishing##7620
collect Giant Sewer Rat##43698
use Giant Sewer Rat##43698 |achieve 1958 |goto Dalaran 44.1,66.4
step
Congratulations, you have _earned_ the _I Smell A Giant Rat achievement_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Illustrious Grand Master Fisherman",{
achieveid={4917},
description="Obtain 525 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 525 skill points in fishing |achieve 4917
step
Congratulations, you have _earned_ the _Illustrious Grand Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Journeyman Fisherman",{
achieveid={126},
description="Obtain 150 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 150 skill points in fishing |achieve 126
step
Congratulations, you have _earned_ the _Journeyman Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Limnologist/The Oceanographer",{
condition_end=function() return achieved(5478) end,
achieveid={5478,5479,5478},
description="Catch 42 different freshwater fish and catch 31 different saltwater fish.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Sagefish##21071 |achieve 5478/34 |goto Loch Modan 50.9,54.2
collect 1 Raw Loch Frenzy##6317 |achieve 5478/27 |goto Loch Modan 50.9,54.2
collect 1 Raw Longjaw Mud Snapper##6289 |achieve 5478/28 |goto Loch Modan 50.9,54.2
collect 1 Raw Brilliant Smallfish##6291 |achieve 5478/7 |goto Loch Modan 50.9,54.2
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Murglesnout##53069 |achieve 5479/18 |goto Twilight Highlands 73.2,76.8
|tip Fished from open water around this area.
collect 1 Deapsea Sagefish##53072 |achieve 5479/9 |goto Twilight Highlands 73.2,76.8
|tip Fished from pools around this area.
collect 1 Algaefin Rockfish##53071 |achieve 5479/2 |goto Twilight Highlands 73.2,76.8
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Highland Guppy##53064 |achieve 5478/23 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area.
collect 1 Striped Lurker##53067 |achieve 5478/41 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area.
collect 1 Sharptooth##53062 |achieve 5478/36 |goto Twilight Highlands 32.8,65.0
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Bristle Whisker Catfish##6308 |achieve 5478/8 |goto Arathi Highlands 64.4,67.4
|tip Fished from open water around this area.
collect 1 Raw Greater Sagefish##21153 |achieve 5478/22 |goto Arathi Highlands 64.4,67.4
|tip Fished from pools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Oily Blackmouth##6358 |achieve 5479/19 |goto Arathi Highlands 22.8,86.6
|tip Fished from open water around this area.
collect 1 Raw Rainbow Fin Albacore##6361 |achieve 5479/21 |goto Arathi Highlands 22.8,86.6
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sickly Looking Fish##6299 |achieve 5478/38 |goto Tirisfal Glades 67.1,50.9
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Slitherskin Mackerel##6303 |achieve 5479/25 |goto Tirisfal Glades 71.7,25.4
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Mithril Head Trout##8365 |achieve 5478/29 |goto The Hinterlands 29.3,47.7
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Firefin Snapper##6359 |achieve 5479/11 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area.
collect 1 Raw Rockscale Cod##6362 |achieve 5479/24 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area.
collect 1 Raw Spotted Yellowtail##4603 |achieve 5479/26 |goto The Hinterlands 79.2,63.5
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Big-Mouth Clam##7973 |achieve 5479/3 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area.
collect 1 Stonescale Eel##13422 |achieve 5479/27 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area.
collect 1 Raw Glossy Mightfish##13754 |achieve 5479/13 |goto Eastern Plaguelands 96.5,54.8
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Sunfish##35285 |achieve 5479/12 |goto Isle of Quel'Danas 47.7,21.9
|tip Fished from open water around this area.
collect 1 Jaggal Clam##24476 |achieve 5479/15 |goto Isle of Quel'Danas 47.7,21.9
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Crescent-Tail Skullfish##33824 |achieve 5478/9 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area.
collect 1 Bloodfin Catfish##33823 |achieve 5478/5 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area.
collect 1 Barbed Gill Trout##27422 |achieve 5478/2 |goto Deadwind Pass 42.5,28.0
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Large Raw Mightfish##13893 |achieve 5479/16 |goto Blasted Lands 70.0,26.4
|tip Fished from open water around this area.
collect 1 Darkclaw Lobster##13888 |achieve 5479/5 |goto Blasted Lands 70.0,26.4
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Summer Bass##13756 |achieve 5479/28 |goto Blasted Lands 70.8,35.7
|tip Can only be caught in open waters during Spring, Summmer, and Fall.
collect 1 Winter Squid##13755 |achieve 5479/31 |goto Blasted Lands 70.8,35.7
|tip Can only be caught in open waters during Spring, Fall, and Winter.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Whitescale Salmon##13889 |achieve 5479/30 |goto Blasted Lands 43.1,83.8
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Felblood Snapper##27441 |achieve 5478/13 |goto Shadowmoon Valley 39.8,60.0
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Furious Crawdad##27439 |achieve 5478/16 |goto Terokkar Forest 63.2,73.5
|tip Fished from Highland Mixed Schools around this area.
collect 1 Barbed Gill Trout##27422 |achieve 5478/2 |goto Terokkar Forest 63.2,73.5
|tip Fished from open water around this area.
collect 1 Golden Darter##27438 |achieve 5478/20 |goto Terokkar Forest 63.2,73.5
|tip Fished from Highland Mixed Schools and Darter Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Figluster's Mudfish##27435 |achieve 5478/14 |goto Nagrand 33.8,47.0
|tip Fished from Mudfish Schools around this area.
collect 1 Icefin Bluefish##27437 |achieve 5478/25 |goto Nagrand 33.8,47.0
|tip Fished from Bluefish Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Zangarian Sporefish##27429 |achieve 5478/42 |goto Zangarmarsh 60.3,44.6
|tip Fished from Sporefish Schools around this area.
collect 1 Huge Spotted Feltail##27515 |achieve 5478/24 |goto Zangarmarsh 60.3,44.6
|tip Fished from various schools around this area.
collect 1 Goldenscale Vendorfish##27442 |achieve 5478/21 |goto Zangarmarsh 60.3,44.6
|tip Fished from various schools around this area.
collect 1 Spotted Feltail##27425 |achieve 5478/40 |goto Zangarmarsh 60.3,44.6
|tip Fished from Brackish Mixed Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Darkshore Grouper##12238 |achieve 5479/6 |goto Darkshore 48.6,18.0
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Raw Nightfin Snapper##13759 |achieve 5478/33 |goto Moonglade 52.4,46.9
|tip Fished from open water, and have a higher drop chance at night.
collect 1 Raw Sunscale Salmon##13760 |achieve 5479/29 |goto Moonglade 52.4,46.9
|tip Fished from open water, and have a higher drop chance in daylight.
collect 1 Raw Redgill##13758 |achieve 5479/22 |goto Moonglade 52.4,46.9
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Striped Lurker##53067 |achieve 5478/41 |goto Mount Hyjal 60.6,23.7
|tip Fished from open water around this area.
collect 1 Mountain Trout##53063 |achieve 5478/30 |goto Mount Hyjal 60.6,23.7
|tip Fished from Mountain Trout Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Deviate Fish##6522 |achieve 5478/10 |goto Northern Barrens 39.0,74.0
|tip Fished from Schools of Deviate Fish around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Blackbelly Mudfish##53066 |achieve 5478/4 |goto Uldum 54.4,37.7
|tip Fished from Blackbelly Mudfish Schools around this area.
collect 1 Lavascale Catfish##53068 |achieve 5478/26 |goto Uldum 54.4,37.7
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fathom Eel##53070 |achieve 5479/10 |goto Uldum 60.5,85.9
|tip Fished from Fathom Eel Swarms around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Albino Cavefish##53065 |achieve 5478/1 |goto Deepholm 31.4,31.2
|tip Fished from Albino Cavefish Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Imperial Manta Ray##41802 |achieve 5479/14 |goto Borean Tundra 54.5,75.2
|tip Fished from Imperial Manta Ray Schools around this area.
collect 1 Borean Man O' War##41805 |achieve 5479/4 |goto Borean Tundra 54.5,75.2
|tip Fished from Borean Man O' War Schools around this area.
collect 1 Rockfin Grouper##41803 |achieve 5479/23 |goto Borean Tundra 54.5,75.2
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Musselback Sculpin##41806 |achieve 5478/31 |goto Borean Tundra 51.5,47.9
|tip Fished from Musselback Sculpin Schools around this area.
collect 1 Dragonfin Angelfish##41807 |achieve 5478/11 |goto Borean Tundra 51.5,47.9
|tip Fished from Dragonfin Angelfish Schools around this area.
collect 1 Bonescale Snapper##41808 |achieve 5478/6 |goto Borean Tundra 51.5,47.9
|tip Fished from open water around this area.
step
kill Winterfin Warrior##25217+, Winterfin Shorestriker##25215+, Winterfin Oracle##25216+
collect 1 Darkwater Clam##36781 |achieve 5479/7 |goto Borean Tundra 41.3,16.9
|tip Dropped from killing the above mobs in the area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Moonglow Cuttlefish##41801 |achieve 5479/17 |goto Borean Tundra 82.7,59.5
|tip Fished from open water around this area.
collect 1 Deep Sea Monsterbelly##41800 |achieve 5479/8 |goto Borean Tundra 82.7,59.5
|tip Fished from Deep Sea Monsterbelly Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Nettlefish##41813 |achieve 5478/32 |goto Sholazar Basin 49.6,62.1
|tip Fished from Nettlefish Schools around this area.
collect 1 Barrelhead Goby##41812 |achieve 5478/3 |goto Sholazar Basin 49.6,62.1
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Giant Darkwater Clam##45909 |achieve 5478/17 |goto Wintergrasp 77.6,39.8
|tip Fished from open water around this area.
collect 1 Glacial Salmon##41809 |achieve 5478/18 |goto Wintergrasp 77.6,39.8
|tip Fished from Glacial Salmon Schools around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Glassfin Minnow##41814 |achieve 5478/19 |goto Crystalsong Forest 48.6,53.9
|tip Fished from Glassfin Minnow Schools around this area.
step
_Go down_ into the sewers |goto Dalaran 36.3,45.5<10
_Use_ your fishing ability |cast Fishing##7620
collect 1 Sewer Carp##43571 |achieve 5478/35 |goto Dalaran 43.9,66.8
|tip Fished from open water around this area.
step
_Go up_ the ramp out of the sewers |goto Dalaran 36.3,45.5<10
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fountain Goldfish##43646 |achieve 5478/15 |goto Dalaran 52.7,66.8
|tip Fished from fountain water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Slippery Eel##43652 |achieve 5478/39 |goto Dalaran 64.3,66.1
|tip Fished from open water around this area.
collect 1 Shimmering Minnow##43647 |achieve 5478/37 |goto Dalaran 64.3,66.1
|tip Fished from open water around this area.
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Fangtooth Herring##41810 |achieve 5478/12 |goto Howling Fjord 59.8,59.1
|tip Fished from Fangtooth Herring Schools around this area.
step
Congratulations, you have _earned_ the _The Limnologist_ achievement! |achieve 5478 |only if achieved(5478)
Congratulations, you have _earned_ the _The Oceanographer_ achievement! |achieve 5479 |only if achieved(5479)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Lurker Above",{
achieveid={144},
description="Fish up The Lurker Below in Serpentshrine Cavern.",
endlevel=70
},[[
step
ding 70
step
_Swim down_ underwater through the tube to the Coilfang Reservoir |goto Zangarmarsh 50.4,41.0<20
step
_Ride_ the elevator down |goto Serpentshrine Cavern 13.5,59.6 < 10
_Walk up_ the ramp and ride the elevator up |goto Serpentshrine Cavern 19.6,68.5 < 20
_Walk over_ to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern 38.6,59.5 < 20
_Use_ your fishing ability |cast Fishing##7620
_Fish up_ The Lurker Below |achieve 144 |goto Serpentshrine Cavern 38.6,59.5
step
Congratulations, you have _earned_ the _The Lurker Above_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Master Angler of Azeroth",{
achieveid={306},
description="Win first, second, or third place in the Booty Bay fishing contest.",
},[[
step
To earn this Achievement _you need to go_ to Booty Bay
|tip You can try this every Sunday from 2pm to 4pm SERVER TIME.
It is recommended you _bring along as many items as you have_ to increase your fishing level
confirm
step
_Use_ your fishing ability on schools of Speckled Tastyfish |cast Fishing##7620
collect 40 Speckled Tastyfish##19807 |goto The Cape of Stranglethorn 39.1,57.9
map The Cape of Stranglethorn
path follow loose; loop off; ants curved
path	64.9,39.2	64.8,41.0	63.9,45.5
path	62.3,46.5	61.5,45.3	59.8,48.2
path	59.5,49.8	58.0,53.1	57.0,57.7
path	56.6,60.7	55.6,63.5	54.1,66.4
path	52.5,68.4	52.4,73.4	52.1,74.3
path	49.9,76.9	49.8,81.0	49.8,81.7
path	48.0,81.0	46.7,82.8	43.7,83.0
path	41.8,84.1	39.5,85.0	39.6,81.5
step
talk Riggle Bassbait##15077
turnin Grand Prize##8193 |or |goto The Cape of Stranglethorn 41.7,73.0
turnin Second Prize##32435 |or |goto The Cape of Stranglethorn 41.7,73.0
turnin Third Prize##32436 |or |goto The Cape of Stranglethorn 41.7,73.0
_Earn_ First, Second, or Third prize |achieve 306
step
Congratulations, you have _earned_ the _Master Angler of Azeroth_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Master Fisherman",{
achieveid={129},
description="Obtain 375 skill points in fishing.",
},[[
step
|next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
step
Obtain 375 skill points in fishing |achieve 129
step
Congratulations, you have _earned_ the _Master Fisherman_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Mr. Pinchy's Magical Crawdad Box",{
achieveid={726},
description="Fish your way to Mr. Pinchy's Magical Crawdad Box.",
},[[
step
map Terokkar Forest
path follow loose; loop; ants curved
path	65.9,73.0	68.5,76.8	68.9,80.9
path	67.3,83.7	64.5,82.2	63.6,78.3
path	63.6,73.8	58.9,63.2	58.8,60.7
path	58.9,58.3	60.2,57.9	60.4,60.2
path	59.6,62.5
_Use_ your fishing ability in Highland Mixed Schools |cast Fishing##7620
collect Mr. Pinchy##27388
collect Magical Crawdad Box##27445
step
Mr. Pinchy will _grant you 3 wishes_ on a four hour cooldown
|tip He has a chance to grant you the Magical Crawdad Box.
_If all three wishes fail_ to give you the pet you will have to fish him up again
use Mr. Pinchy##27388
collect Magical Crawdad Box##27445 |achieve 726
step
Congratulations, you have _earned_ the _Mr. Pinchy's Magical Crawdad Box_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Northrend Angler",{
achieveid={1517},
description="Catch a fish in each of the specific nodes in Northrend.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from an Imperial Manta Ray school |achieve 1517/8 |goto Borean Tundra 49.5,79.0
|tip Check around this area
_Fish_ from a Borean Man O' War school |achieve 1517/10 |goto Borean Tundra 40.3,77.0
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Musselback Scuplin school |achieve 1517/2 |goto Borean Tundra 51.2,42.4
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Deep Sea Monsterbelly school |achieve 1517/3 |goto Borean Tundra 82.7,59.5
|tip Check around this area
_Fish_ from a Moonglow Cuttlefish school |achieve 1517/9 |goto Borean Tundra 82.7,59.5
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Nettlefish school |achieve 1517/1 |goto Sholazar Basin 46.8,64.7
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Dragonfin Angelfish school |achieve 1517/4 |goto Dragonblight 42.3,67.8
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Glassfin Minnow school |achieve 1517/7 |goto Crystalsong Forest 49.0,54.1
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Glacial Salmon school |achieve 1517/6 |goto Grizzly Hills 28.6,60.8
|tip Check around this area
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Fangtooth Herring school |achieve 1517/5 |goto Howling Fjord 60.8,60.3
|tip Check around this area
step
Congratulations, you have _earned_ the _Northrend Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Crafty",{
achieveid={1836},
description="Fish up Old Crafty in Orgrimmar.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Crafty##34486 |achieve 1836 |goto Orgrimmar 59.3,39.9
step
Congratulations, you have _earned_ the _Old Crafty_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Ironjaw",{
achieveid={1837},
description="Fish up Old Ironjaw in Ironforge.",
},[[
step
This achievement will _flag you for PVP_ while you are in Stormwind
|tip You can achieve this on an Alliance character to avoid deaths.
_Use_ your fishing ability |cast Fishing##7620
collect 1 Old Ironjaw##34484 |achieve 1837 |goto Ironforge 47.6,14.2
step
Congratulations, you have _earned_ the _Old Ironjaw_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Old Man Barlowned",{
achieveid={905},
description="Complete each of Old Man Barlo's 5 fishing daily quests.",
},[[
step
talk Old Man Barlo##25580
You will only be able to _complete 1 of the following quests_ per day
accept Crocolisks in the City##11665 |or |goto Terokkar Forest 38.7,12.8
accept Bait Bandits##11666 |or |goto Terokkar Forest 38.7,12.8
accept Felblood Fillet##11669 |or |goto Terokkar Forest 38.7,12.8
accept The One That Got Away##11667 |or |goto Terokkar Forest 38.7,12.8
accept Shrimpin' Ain't Easy##11668 |or |goto Terokkar Forest 38.7,12.8
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Baby Crocolisk##34864 |q Crocolisks in the City##11665/1 |goto Orgrimmar/1 66.5,42.2
only if havequest(11665)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 Blackfin Darter##34865 |q Bait Bandits##11666/1 |goto Terokkar Forest 51.8,37.2
only if havequest(11666)
step
_Use_ your fishing ability |cast Fishing##7620
collect 1 World's Largest Mudfish##34868 |q The One That Got Away##11667/1 |goto Nagrand 37.4,47.1
only if havequest(11667)
step
_Use_ your fishing ability |cast Fishing##7620
collect 10 Giant Freshwater Shrimp##34866 |use Bloated Barbed Gill Trout##35313 |q Shrimpin' Ain't Easy##11668/1 |goto Zangarmarsh 77.9,79.7
only if havequest(11668)
step
_Use_ your fishing ability |cast Fishing##7620
collect Monstrous Felblood Snapper##34867 |q Felblood Fillet##11669/1 |goto Shadowmoon Valley 18.9,22.2
only if havequest(11669)
step
talk Old Man Barlo##25580
turnin Crocolisks in the City##11665 |only if havequest(11665) |goto Terokkar Forest 38.7,12.8
turnin Bait Bandits##11666 |only if havequest(11666) |goto Terokkar Forest 38.7,12.8
turnin Felblood Fillet##11669 |only if havequest(11669) |goto Terokkar Forest 38.7,12.8
turnin The One That Got Away##11667 |only if havequest(11667) |goto Terokkar Forest 38.7,12.8
turnin Shrimpin' Ain't Easy##11668 |only if havequest(11668) |goto Terokkar Forest 38.7,12.8
step
You'll need to _come back tomorrow_ for another daily |only if not achieved(905)
Congratulations, you have _earned_ the _Old Man Barlowned_ achievement! |only if achieved(905)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\One That Didn't Get Away",{
achieveid={878},
description="Catch one of the rare fish in the list.",
},[[
step
label "Snapper"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 15 Pound Mud Snapper |achieve 878/6 |goto Elwynn Forest 47.7,62.5
step
label "Lobster"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 22 Pound Lobster |achieve 878/8 |goto Swamp of Sorrows 84.0,86.4
step
label "Salmon"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 29 Pound Salmon |achieve 878/5 |goto Blasted Lands 41.4,64.7
step
label "Catfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 32 Pound Catfish |achieve 878/4 |goto Ashenvale 48.1,68.1
step
label "Redgill"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 52 Pound Redgill |achieve 878/9 |goto Felwood 42.6,46.4
step
label "Grouper"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 68 Pound Grouper |achieve 878/1 |goto Thousand Needles 39.2,32.2
step
label "Mightfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a 103 Pound Mightfish |achieve 878/7 |goto Azshara 60.6,67.7
step
label "Herring"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Dark Herring |achieve 878/3 |goto Howling Fjord 57.2,33.9
step
label "Strongfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Rockhide Strongfish |achieve 878/2 |goto Northern Stranglethorn 33.8,41.8
step
label "Crushfish"
_Use_ your fishing ability |cast Fishing##7620
_Catch_ a Steelscale Crushfish |achieve 878/10 |goto Darkmoon Island 52.1,91.3
step
label "end"
Congratulations, you have _earned_ the _One That Didn't Get Away_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Outland Angler",{
achieveid={1225},
description="Catch a fish in each of the specific nodes in Outland.",
},[[
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Sporefish school |achieve 1225/6 |goto Zangarmarsh 72.5,59.9
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Highland Mixed school |achieve 1225/5 |goto Terokkar Forest 60.8,59.0
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a School of Darter school |achieve 1225/4 |goto Terokkar Forest 55,44
_Fish_ from a Brackish Mixed school |achieve 1225/1 |goto Terokkar Forest 53,38
step
_Use_ your fishing ability |cast Fishing##7620
_Fish_ from a Bluefish school |achieve 1225/2 |goto Nagrand 53,39
_Fish_ from a Mudfish school |achieve 1225/3 |goto Nagrand 54,30
step
Congratulations, you have _earned_ the _Outland Angler_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Old Gnome and the Sea",{
achieveid={153},
description="Successfully fish from a school.",
},[[
step
_Walk along_ the river until you find Sagefish Schools if you're unable to see one at this spot
_Use_ your fishing ability |cast Fishing##7620
_Successfully fish_ from a school |achieve 153 |goto Ashenvale 78.0,51.7
step
Congratulations, you have _earned_ the _The Old Gnome and the Sea_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\The Scavenger",{
achieveid={1257},
description="To earn this acheivement, you will need to fish from all of the various junk nodes around Azeroth.",
},[[
step
map Zangarmarsh/0
path	follow smart; loop on; ants curved; dist 30
path	59.91,42.00	57.21,37.52	48.76,34.23
path	44.32,34.94	38.46,43.88	40.40,45.77
path	42.50,43.83	45.72,46.13	56.17,45.12
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Steam Pump Flotsam can be found in the water near areas of land.
Follow the path and fish from a Steam Pump Flotsam node |achieve 1257/1
step
label "Floating_Wreckage_Path_1"
map Swamp of Sorrows/0
path	follow smart; loop off; ants curved; dist 30
path	72.79,8.86	77.53,11.36	87.57,25.60
path	90.20,44.04	79.79,45.78	64.91,44.57
path	62.36,54.45	66.81,62.69	77.73,57.79
path	89.70,59.76	88.27,71.17	79.40,89.50
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Floating Wreckage can be found in the water near areas of land.
'|goto 79.40,89.50 |noway |c |next "Floating_Wreckage_Path_2" |or
Follow the path and fish from a Floating Wreckage node |achieve 1257/5 |next "Bloodsail_Wreckage_Path_1" |or
step
label "Floating_Wreckage_Path_2"
map Swamp of Sorrows/0
path	follow smart; loop off; ants curved; dist 30
path	79.40,89.50	88.27,71.17	89.70,59.76
path	77.73,57.79	66.81,62.69	62.36,54.45
path	64.91,44.57	79.79,45.78	90.20,44.04
path	87.57,25.60	77.53,11.36	72.79,8.86
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Floating Wreckage can be found in the water near areas of land.
'|goto 72.79,8.86 |noway |c |next "Floating_Wreckage_Path_1" |or
Follow the path and fish from a Floating Wreckage node |achieve 1257/5 |next "Bloodsail_Wreckage_Path_1" |or
step
label "Bloodsail_Wreckage_Path_1"
map The Cape of Stranglethorn/0
path	follow smart; loop off; ants curved; dist 30
path	64.43,42.56	56.68,62.76	48.00,82.83
path	38.34,83.76	34.13,73.31	37.88,61.38
path	32.84,39.04	32.67,25.15	39.80,23.85
path	39.99,13.37	45.42,7.15
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Bloodsail Wreckage can be found in the water near areas of land.
'|goto 45.42,7.15 |noway |c |next "Bloodsail_Wreckage_Path_2" |or
Follow the path and fish from a Bloodsail Wreckage node |achieve 1257/2 |next "Schooner_Wreckage_Path" |or
step
label "Bloodsail_Wreckage_Path_2"
map The Cape of Stranglethorn/0
path	follow smart; loop off; ants curved; dist 30
path	45.42,7.15	39.99,13.37	39.80,23.85
path	32.67,25.15	32.84,39.04	37.88,61.38
path	34.13,73.31	38.34,83.76	48.00,82.83
path	56.68,62.76	64.43,42.56
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Bloodsail Wreckage can be found in the water near areas of land.
'|goto 64.43,42.56 |noway |c |next "Bloodsail_Wreckage_Path_1" |or
Follow the path and fish from a Bloodsail Wreckage node |achieve 1257/2 |next "Schooner_Wreckage_Path" |or
step
label "Schooner_Wreckage_Path"
map Wetlands/0
path	follow smart; loop on; ants curved; dist 30
path	13.42,55.76	15.65,62.02	19.72,58.67
path	16.21,49.92	21.47,37.16	30.52,35.53
path	41.53,35.54	48.58,37.70	54.56,45.94
path	59.98,56.87	59.65,69.99	62.65,75.20
path	65.60,71.36	63.07,52.94	52.79,34.22
path	36.98,28.14	26.41,22.00	19.64,25.19
path	15.62,30.52	13.18,43.91
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Schooner Wreckage can be found in the water near areas of land.
Follow the path and fish from a Schooner Wreckage node |achieve 1257/3
step
label "Waterlogged_Wreckage_Path_1"
map Western Plaguelands/0
path	follow smart; loop off; ants curved; dist 30
path	31.18,65.39	36.72,68.79	40.64,74.08
path	46.10,74.48	49.70,69.44	54.18,70.51
path	61.90,63.32	68.09,59.37	68.76,49.57
path	68.56,41.52
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Waterlogged Wreckage can be found in the water near areas of land.
'|goto 68.56,41.52 |noway |c |next "Waterlogged_Wreckage_Path_2" |or
Follow the path and fish from a Waterlogged Wreckage node |achieve 1257/4 |next "Congratulations" |or
step
label "Waterlogged_Wreckage_Path_2"
map Western Plaguelands/0
path	follow smart; loop off; ants curved; dist 30
path	70.01,46.23	70.20,59.35	75.71,60.05
path	80.25,71.02	77.95,81.15	68.73,84.95
path	58.29,81.06	54.55,75.91	50.22,74.10
path	46.09,78.52	37.26,76.75	31.83,71.26
Use your fishing ability |cast Fishing##7620
|tip If you have the Find Fish ability, enable it by clicking the tracking button on your minimap.
|tip Waterlogged Wreckage can be found in the water near areas of land.
'|goto 31.83,71.26 |noway |c |next "Waterlogged_Wreckage_Path_1" |or
Follow the path and fish from a Waterlogged Wreckage node |achieve 1257/4 |next "Congratulations" |or
step
label "Congratulations"
Congratulations!
You have earned _The Scavenger_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Fishing\\Turtles All the Way Down",{
achieveid={3218},
description="Fish up a Sea Turtle mount from any fishing pool in Deepholm, Mount Hyjal, Twilight Highlands, Uldum, or Northrend.",
},[[
step
In order to earn this achievement, you will need to fish from any school of fish within a Northrend or Cataclysm Zone
Click here to proceed |confirm
step
Fish from school of fish along the river here |cast Fishing##7620
You will only be able to catch the sea turtle from fish schools
collect Sea Turtle##46109
Use the Sea Turtle |use Sea Turtle##46109
Earn the Turtles All the Way Down achievement |achieve 3218 |goto Crystalsong Forest 48.7,54.0
step
Congratulations, you have earned the Turtles All the Way Down achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Artisan Medic",{
achieveid={133},
description="Obtain 300 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 300 skill points in first aid |achieve 133
step
Congratulations, you have _earned_ the _Artisan Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Expert Medic",{
achieveid={132},
description="Obtain 225 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 225 skill points in first aid |achieve 132
step
Congratulations, you have _earned_ the _Expert Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Grand Master Medic",{
achieveid={135},
description="Obtain 450 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 450 skill points in first aid |achieve 135
step
Congratulations, you have _earned_ the _Grand Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Illustrious Grand Master Medic",{
achieveid={4918},
description="Obtain 525 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 525 skill points in first aid |achieve 4918
step
Congratulations, you have _earned_ the _Illustrious Grand Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Journeyman Medic",{
achieveid={131},
description="Obtain 150 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 150 skill points in first aid |achieve 131
step
Congratulations, you have _earned_ the _Journeyman Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Master Medic",{
achieveid={134},
description="Obtain 375 skill points in first aid.",
},[[
step
|next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
Obtain 375 skill points in first aid |achieve 134
step
Congratulations, you have _earned_ the _Master Medic_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Preparing for Disaster",{
achieveid={5480},
description="Create 500 Dense Embersilk Bandages.",
},[[
step
label "aid_350-450"
#include "trainer_FirstAid"
skillmax First Aid,525 |tip You must be at least level 65
learn Dense Embersilk Bandage##88893
step
label "create"
#include "auctioneer"
buy 1500 Embersilk Cloth##53010 |n
create 500 Dense Embersilk Bandage##88893,First Aid,500 total |n
_Create_ a total of #500# Dense Embersilk Bandages |achieve 5480 |next "end"
_Click here_ to farm these instead of buying them |confirm |next "farm"
step
label "farm"
kill Twilight Augur##40713+, Twilight Retainer##40767+ |goto Mount Hyjal 35.0,24.0
collect 1500 Embersilk Cloth##53010
confirm |next "create"
step
label "end"
Congratulations, you have _earned_ the _Stocking Up_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Stocking Up",{
achieveid={137},
description="Create 500 Heavy Frostweave Bandages.",
},[[
step
label "aid_350-450"
#include "trainer_FirstAid"
skillmax First Aid,450 |tip You must be at least level 65.
learn Heavy Frostweave Bandage##45546
step
label "create"
#include "auctioneer"
buy Frostweave Cloth##33470 |n
You need _{_G.ceil(_G.max(0, (1000-itemcount(33470))))}_ Frostweave Cloth to make 500 Bandages
create 500 Heavy Frostweave Bandage##45546,First Aid,500 total |n
_Create_ a total of #500# Heavy Frostweave Bandages |achieve 137 |next "end"
_Click here_ to farm the cloth instead of buying it |confirm |next "farm"
step
label "farm"
kill Dark Ritualist##34734+, Dark Zealot##34728+ |goto Icecrown 61.8,20.8
collect Frostweave Cloth##33470 |n
confirm |next "create"
step
Congratulations, you have _earned_ the _Stocking Up_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Ultimate Triage",{
achieveid={141},
description="Use a Heavy Frostweave Bandage, or any Embersilk or Windwool Bandage, to heal a player who has less than 5% health.",
},[[
step
The easiest way to earn this achievement is to _use the bandage on yourself during combat_ |achieve 141
Enter a zone at your level and _let enemies damage you down to five percent_ and then use one of the below bandages
_Use_ Heavy Frostweave Bandage |use Heavy Frostweave Bandage##34722
_Use_ Embersik Bandage |use Embersilk Bandage##53049
_Use_ Dense Embersilk |use Dense Embersilk##53050
_Use_ Heavy Embersilk Bandage |use Heavy Embersilk Bandage##53050
_Use_ Field Bandage: Dense Embersilk |use Field Bandage: Dense Embersilk##53051
_Use_ Windwool Bandage |use Windwool Bandage##72985
_Use_ Heavy Windwool Bandage Rank 1 |use Heavy Windwool Bandage##72986
_Use_ Heavy Windwool Bandage Rank 2 |use Heavy Windwool Bandage##82830
step
Congratulations, you have _earned_ the _Ultimate Triage_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\First Aid\\Zen Master Medic",{
achieveid={6838},
description="This guide will tell you how to earn the achievment Journeyman Medic",
},[[
step
Proceeding to proper section |next |only if default
Proceeding to proper section |next "end" |only if achieved(6838)
step
You can use our First Aid guide to earn the achievement Zen Master Medic
Click here to use the First Aid Guide |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
step
label "end"
Congratulations! You have earned the Achievement Zen Master Medic_!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Professional Zen Master",{
achieveid={116,731,732,733,734,4924,6830},
achieveid={6830},
description="Obtain 525 skill points in a profession.",
},[[
step
This achievement requires using our Professions guide to level your characters skill level to 600 in a profession.
Click here to select the profession you wish to level to obtain this achievement |confirm
step
Choose any primary profession below:
Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide"
Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-600 Leveling Guide"
Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-600 Leveling Guide"
Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide"
Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-600 Leveling Guide"
Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide"
Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide"
Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide"
Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide"
Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide"
confirm
step
Earn the achievement Professional Illustrious Grand Master! |achieve 6830
step
Congratulations! You've earned the Professional Zen Master achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Serious Skills to Pay the Bills",{
condition_end=function() return achieved(6836) end,
achieveid={730,4915,6836},
description="Obtain 600 skill points in Fishing, First Aid, Cooking, and Archaeology.",
},[[
step
Use Zygor's Professions & Achievements guide to do the following:
Become a Grand Master Fisherman |achieve 730/1
Become a Grand Master in First Aid |achieve 730/2
Become a Grand Master Cook |achieve 730/3
|confirm
step
Click here to become a Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become a Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become a Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
|achieve 730 |next
step
Earn the achievement Skills to Pay the Bills! |achieve 730
step
Use Zygor's Professions & Achievements guide to do the following:
Become an Illustrious Grand Master Fisherman |achieve 4915/1
Become an Illustrious Grand Master in First Aid |achieve 4915/2
Become an Illustrious Grand Master Cook |achieve 4915/3
Become an Illustrious Grand Master in Archaeology |achieve 4915/4
|confirm
step
Click here to become an Illustrious Grand Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
Click here to become an Illustrious Grand Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
|achieve 4915 |next
step
Use Zygor's Professions & Achievements guide to do the following:
Become an Zen Master Fisherman |achieve 6836/1
Become an Zen Master in First Aid |achieve 6836/2
Become an Zen Master Cook |achieve 6836/3
Become an Zen Master in Archaeology |achieve 6836/4
|confirm
step
Click here to become an Zen Master Fisherman |confirm |next "Profession Guides\\Fishing\\Leveling Guides\\Fishing 1-600 Leveling Guide"
Click here to become an Zen Master in First Aid |confirm |next "Profession Guides\\First Aid\\Leveling Guides\\First Aid 1-600 Leveling Guide"
Click here to become an Zen Master Cook |confirm |next "Profession Guides\\Cooking\\Cooking 1-600 Leveling Guide"
Click here to become an Zen Master in Archaeology |confirm |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
|achieve 6836 |next
step
Earn the achievement Serious Skills to Pay the Bills! |achieve 6836
step
Congratulations! You've earned the Serious Skills to Pay the Bills achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Professions\\Working Around the Clock",{
condition_end=function() return achieved(6835) end,
achieveid={4914,735,6835,6835},
description="Obtain 600 skill points in two primary professions.",
},[[
step
This achievement requires using our Professions guide to level your characters skill level to 600 in _two professions_.
Click here to select the professions you wish to level to obtain this achievement |confirm
step
Choose any primary profession below:
Click here to use _Alchemy_ for the achievement. |next "Profession Guides\\Alchemy\\Leveling Guides\\Alchemy 1-600 Leveling Guide"
Click here to use _Blacksmithing_ for the achievement. |next "Profession Guides\\Archaeology\\Leveling Guides\\Archaeology 1-600 Leveling Guide"
Click here to use _Enchanting_ for the achievement. |next "Profession Guides\\Enchanting\\Leveling Guides\\Enchanting 1-600 Leveling Guide"
Click here to use _Engineering_ for the achievement. |next "Profession Guides\\Engineering\\Leveling Guides\\Engineering 1-600 Leveling Guide"
Click here to use _Herbalism_ for the achievement. |next "Profession Guides\\Herbalism\\Leveling Guides\\Herbalism 1-600 Leveling Guide"
Click here to use _Inscription_ for the achievement. |next "Profession Guides\\Inscription\\Leveling Guides\\Inscription 1-600 Leveling Guide"
Click here to use _Jewelcrafting_ for the achievement. |next "Profession Guides\\Jewelcrafting\\Leveling Guides\\Jewelcrafting 1-600 Leveling Guide"
Click here to use _Leatherworking_ for the achievement. |next "Profession Guides\\Leatherworking\\Leveling Guides\\Leatherworking 1-600 Leveling Guide"
Click here to use _Mining_ for the achievement. |next "Profession Guides\\Mining\\Leveling Guides\\Mining 1-600 Leveling Guide"
Click here to use _Skinning_ for the achievement. |next "Profession Guides\\Skinning\\Leveling Guides\\Skinning 1-600 Leveling Guide"
Click here to use _Tailoring_ for the achievement. |next "Profession Guides\\Tailoring\\Leveling Guides\\Tailoring 1-600 Leveling Guide"
confirm
step
Earn the achievement Working Around the Clock! |achieve 6835
step
Congratulations! You've earned the Working Around the Clock achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Arathi Highlands Quests",{
achieveid={4896},
author="support@zygorguides.com",
startlevel=25,
description="This guide will walk you through completing the \"Arathi Highlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Arathi Highlands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Arathi Highlands (25-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Arathi Highlands (25-60)"
_Complete the following story chapters:_
Faldir's Cove |achieve 4896/1
step
Earn the _Arathi Highlands Quests_ achievement |achieve 4896
step
Congratulations!
You have earned the _Arathi Highlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Badlands Quests",{
achieveid={4900},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Badlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in the Badlands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Badlands (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Badlands (40-60)"
_Complete the following story chapters:_
Rhea |achieve 4900/1
The Fate of a Dragonflight |achieve 4900/2
The Titans' Knowledge |achieve 4900/3
The Day that Deathwing Came |achieve 4900/4
step
Earn the _Badlands Quests_ achievement |achieve 4900
step
Congratulations!
You have earned the _Badlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Blasted Lands Quests",{
achieveid={4909},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Blasted Lands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Blasted Lands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Blasted Lands (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)"
_Complete the following story chapters:_
Razelikh |achieve 4909/1
The Tainted Forest |achieve 4909/2
Avenging the Rockpool |achieve 4909/3
step
Earn the _Blasted Lands Quests_ achievement |achieve 4909
step
Congratulations!
You have earned the _Blasted Lands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Burning Steppes Quests",{
achieveid={4901},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Burning Steppes Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Burning Steppes
|tip Refer to our leveling guides to achieve this.
Click here to load the "Burning Steppes (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Burning Steppes (40-60)"
_Complete the following story chapters:_
Preparation |achieve 4901/1
Annihilation |achieve 4901/2
Infiltration |achieve 4901/3
Anticipation |achieve 4901/4
step
Earn the _Burning Steppes Quests_ achievement |achieve 4901
step
Congratulations!
You have earned the _Burning Steppes Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Cape of Stranglethorn Quests",{
achieveid={4905},
author="support@zygorguides.com",
startlevel=30,
description="This guide will walk you through completing the \"Cape of Stranglethorn Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in the Cape of Stranglethorn
|tip Refer to our leveling guides to achieve this.
Click here to load the "The Cape of Stranglethorn (30-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Cape of Stranglethorn (30-60)"
_Complete the following story chapters:_
The Trolls of Zul'Gurub |achieve 4905/1
Bustling Booty Bay |achieve 4905/2
A Pirate's Life For You |achieve 4905/3
Bloodsail and Brashtide |achieve 4905/4
step
Earn the _Cape of Stranglethorn Quests_ achievement |achieve 4905
step
Congratulations!
You have earned the _Cape of Stranglethorn Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Eastern Plaguelands Quests",{
achieveid={4892},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Eastern Plaguelands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Eastern Plaguelands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Eastern Plaguelands (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Eastern Plaguelands (40-60)"
_Complete the following story chapters:_
The Paladin Pals |achieve 4892/1
The Redpaths of Darrowshire |achieve 4892/2
Tyr's Hand |achieve 4892/3
Serving the Argent Crusade |achieve 4892/4
Journey's End |achieve 4892/5
step
Earn the _Eastern Plaguelands Quests_ achievement |achieve 4892
step
Congratulations!
You have earned the _Eastern Plaguelands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Full Caravan",{
achieveid={5442},
description="Recruit all 8 characters into Fiona's travelling party in Eastern Plaguelands.",
},[[
step
talk Fiona##45417
accept Gidwin Goldbraids##27367 |goto Eastern Plaguelands 9.0,66.3
accept Tarenar Sunstrike##27370 |goto Eastern Plaguelands 9.0,66.3
step
talk Gidwin Goldbraids##45428
turnin Gidwin Goldbraids##27367 |goto Eastern Plaguelands 4.2,36.1
accept Just Encased##27368 |goto Eastern Plaguelands 4.2,36.1
step
_Enter_ the tunnel |goto Eastern Plaguelands 4.7,35.6 < 15 |walk
kill Crypt Stalker##8555+, Crypt Horror##8557+
collect 8 Crypt Bile##60983 |q Just Encased##27368/1 |goto Eastern Plaguelands 5.1,33.4
step
_Leave_ the tunnel |goto 4.7,35.6 < 15 |walk
talk Gidwin Goldbraids##45428
turnin Just Encased##27368 |goto Eastern Plaguelands 4.1,36.0
accept Greasing the Wheel##27369 |goto Eastern Plaguelands 4.1,36.0
step
click Banshee's Bell##9889+
|tip They are located right along the edge of the water
collect 10 Banshee's Bells##60984 |q Greasing the Wheel##27369/1 |goto Eastern Plaguelands 3.4,38.0
More Banshee's Bells _can be found_ along the Thondroril River, around this area |goto 8.9,55.7
step
talk Fiona##45417
turnin Greasing the Wheel##27369 |goto Eastern Plaguelands 9.0,66.5
_Recruit_ Gidwin Goldbraids to the Caravan |achieve 5442/2
step
talk Tarenar Sunstrike##45429
turnin Tarenar Sunstrike##27370 |goto Eastern Plaguelands 18.4,74.8
accept What I Do Best##27371 |goto Eastern Plaguelands 18.4,74.8
step
kill 5 Death's Step Miscreation##45444+ |q What I Do Best##27371/1 |goto Eastern Plaguelands 18.6,76.9
step
_Click_ the Quest Complete box that displays on the right side of the screen under your minimap
turnin What I Do Best##27371 |goto Eastern Plaguelands 18.6,76.9
accept A Gift For Fiona##27372 |goto Eastern Plaguelands 18.6,76.9
step
kill Plaguehound Runt##8596+
|tip They share spawn locations with the Carrion Grubs so if you are having trouble find Plaguehound Runts kill Carrion Grubs and more should spawn
collect 10 Plaguehound Blood##60986 |q A Gift For Fiona##27372/1 |goto Eastern Plaguelands 17.2,68.7
More Plaguehound Runts _can be found_ here |goto 12.4,70.0
step
talk Fiona##45417
turnin A Gift For Fiona##27372 |goto Eastern Plaguelands 9.0,66.5
accept Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands 9.0,66.5
_Recruit_ Fiona to the Caravan |achieve 5442/1
_Recruit_ Tarenar Sunstrike to the Caravan |achieve 5442/5
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q Onward, to Light's Hope Chapel##27373/1 |goto Eastern Plaguelands 9.0,66.4
step
talk Fiona##45417
turnin Onward, to Light's Hope Chapel##27373 |goto Eastern Plaguelands 34.8,69.1
step
talk Tarenar Sunstrike##45429
accept Traveling Companions##27381 |goto Eastern Plaguelands 35.2,68.8
step
talk Argus Highbeacon##45451
|tip He's at the top of this tower
_Ask him_ if he wants to join the Caravan |q Traveling Companions##27381/1 |goto Eastern Plaguelands 35.8,68.7
accept Rough Roads##27382 |goto Eastern Plaguelands 35.8,68.7
step
talk Tarenar Sunstrike##45429
turnin Traveling Companions##27381 |goto Eastern Plaguelands 35.2,68.8
step
kill 13 Plaguebat##8600 |q Rough Roads##27382/1 |goto Eastern Plaguelands 37.5,71.3
step
talk Argus Highbeacon##45451
|tip He's at the top of this tower
turnin Rough Roads##27382 |goto Eastern Plaguelands 35.8,68.7
step
talk Urk Gagbaz##45500
accept Zaeldarr the Outcast##27432 |goto Eastern Plaguelands 35.0,68.2
step
talk Carlin Redpath##11063
accept Little Pamela##27383 |goto Eastern Plaguelands 35.5,68.9
step
_Enter_ the crypt |goto 24.2,78.3 < 15 |walk
kill Zaeldarr the Outcast##12250+
collect Zaeldarr's Head##15785 |q Zaeldarr the Outcast##27432/1 |goto Eastern Plaguelands/0 23.8,78.3
step
talk Pamela Redpath##10926
turnin Little Pamela##27383 |goto Eastern Plaguelands 32.5,83.8
accept Pamela's Doll##27384 |goto Eastern Plaguelands 32.5,83.8
accept I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.5,83.8
step
click Pamela's Doll's Head##176116
collect Pamela's Doll's Head##12886 |goto Eastern Plaguelands 34.0,85.3
step
click Pamela's Doll's Right Side##176143
collect Pamela's Doll's Right Side##12888 |goto Eastern Plaguelands 35.4,85.3
step
click Pamela's Doll's Left Side##176142
collect Pamela's Doll's Left Side##12887 |goto Eastern Plaguelands 35.5,85.5
step
Put the doll _back together_ again |use Pamela's Doll's Head##12886
collect 1 Pamel's Doll##12885 |q Pamela's Doll##27384/1
step
kill The Lone Hunter##45450
collect Joseph's Hunting Blade##60987 |q I'm Not Supposed to Tell You This##27392/1 |goto Eastern Plaguelands 40.1,83.7
step
talk Pamela Redpath##10926
turnin Pamela's Doll##27384 |goto Eastern Plaguelands 32.5,83.7
turnin I'm Not Supposed to Tell You This##27392 |goto Eastern Plaguelands 32.5,83.7
accept Uncle Carlin##27385 |goto Eastern Plaguelands 32.5,83.7
step
talk Urk Gagbaz##45500
turnin Zaeldarr the Outcast##27432 |goto Eastern Plaguelands 35.0,68.3
step
talk Carlin Redpath##11063
turnin Uncle Carlin##27385 |goto Eastern Plaguelands 35.5,68.9
accept A Strange Historian##27386 |goto Eastern Plaguelands 35.5,68.9
step
talk Chromie##10667
turnin A Strange Historian##27386 |goto Eastern Plaguelands 35.2,68.1
accept Marauders of Darrowshire##27389 |goto Eastern Plaguelands 35.2,68.1
accept Villains of Darrowshire##27387 |goto Eastern Plaguelands 35.2,68.1
accept Heroes of Darrowshire##27388 |goto Eastern Plaguelands 35.2,68.1
step
click Shattered Sword of Marduk##176209
collect Shattered Sword of Marduk##12957 |q Villains of Darrowshire##27387/2 |goto Eastern Plaguelands 39.8,72.3
step
click Horgus' Skull##176208
collect Skull of Horgus##12956 |q Villains of Darrowshire##27387/1 |goto Eastern Plaguelands 37.4,60.4
step
kill Scourge Champion##8529+
collect 5 Fetid Skull##13157 |n
_Use_ the Mystic Crystal |use Mystic Crystal##13156
collect 5 Resonating Skull##13155 |q Marauders of Darrowshire##27389/1 |goto Eastern Plaguelands 34.0,48.8
step
click Redpath's Shield##176207
collect Redpath's Shield##12955 |q Heroes of Darrowshire##27388/3 |goto Eastern Plaguelands 22.2,68.2
step
click Davil's Libram##176206
collect Davil's Libram##12954 |q Heroes of Darrowshire##27388/2 |goto Eastern Plaguelands 22.3,68.3
step
talk Carlin Redpath##11063
_Ask_ if he has the Annals of Darrowshire
collect Extended Annals of Darrowshire##13202 |q Heroes of Darrowshire##27388/1 |goto Eastern Plaguelands 35.5,68.8
step
talk Chromie##10667
turnin Villains of Darrowshire##27387 |goto Eastern Plaguelands 35.1,68.1
turnin Heroes of Darrowshire##27388 |goto Eastern Plaguelands 35.1,68.1
turnin Marauders of Darrowshire##27389 |goto Eastern Plaguelands 35.1,68.1
accept The Battle of Darrowshire##27390 |goto Eastern Plaguelands 35.1,68.1
step
_Use_ the Relic Bundle |use Relic Bundle##15209
_Kill_ the enemies at Darrowshire's entrance
kill Joseph Redpath##10936
|tip He'll become hostile as you kill enemies
talk Joseph Redpath##10936
_Accept_ Redpath's Forgiveness |q The Battle of Darrowshire##27390/1 |goto Eastern Plaguelands 34.8,83.5
step
talk Pamela Redpath##10926
turnin The Battle of Darrowshire##27390
_Recruit_ Pamela Redpath to the Caravan |achieve 5442/6 |goto Eastern Plaguelands 32.5,83.7
step
talk Fiona##45417
accept The Trek Continues##27448 |goto Eastern Plaguelands 34.8,69.1
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q The Trek Continues##27448/1 |goto Eastern Plaguelands 34.9,69.3
step
talk Fiona##45417
turnin The Trek Continues## |goto Eastern Plaguelands 52.9,53.2
step
_Recruit_ Argus Highbeacon to the Caravan |achieve 5442/4
accept Boys Will Be Boys##27455 |goto Eastern Plaguelands 52.9,53.2
step
talk Vex'tul##45574
accept Honor and Strength##27449 |goto Eastern Plaguelands 52.8,51.5
kill 3 Mossflayer Rogue##45579 |q Honor and Strength##27449/1 |goto Eastern Plaguelands 52.8,51.5
step
talk Vex'tul##45574
turnin Honor and Strength##27449 |goto Eastern Plaguelands 52.8,51.5
_Recruit_ Vex'tul to the Caravan |achieve 5442/8
step
talk Gidwin Goldbraids##45431
turnin Boys Will Be Boys##27455 |goto Eastern Plaguelands 74.3,53.4
accept A Boyhood Dream##27463 |goto Eastern Plaguelands 74.3,53.4
step
talk Lord Maxwell Tyrosus##11034
turnin A Boyhood Dream##27463 |goto Eastern Plaguelands 75.8,52.0
accept Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands 75.8,52.0
step
_Enter_ the crypt |goto 77.2,50.8 < 5 |walk
_Go down_ to the bottom floor
_Use_ the Argent Scroll |use Argent Scroll##61309
_Kill_ all the enemies that attack you |q Argent Call: The Trial of the Crypt##27464/1
step
talk Lord Maxwell Tyrosus##11034
turnin Argent Call: The Trial of the Crypt##27464 |goto Eastern Plaguelands 75.8,52.0
accept Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands 75.8,52.0
stickystart "argentquestpt2"
step
kill Dread Weaver##8528+, Diseased Flayer##8532+, Death Singer##8542+, Stitched Golem##8545+
Kill #16# Noxious Glade Scourge |q Argent Call: The Noxious Glade##27465/1 |goto Eastern Plaguelands 77.3,34.7
step
label "argentquestpt2"
kill Skullmage##45691+, Noxious Assassin##45692+
Kill #8# Noxious Glade Cultists |q Argent Call: The Noxious Glade##27465/2 |goto Eastern Plaguelands 77.3,34.7
step
talk Lord Maxwell Tyrosus##11034
turnin Argent Call: The Noxious Glade##27465 |goto Eastern Plaguelands 75.8,52.1
step
talk Rimblat Earthshatter##16134
accept Gathering Some Grub(s)##27456 |goto Eastern Plaguelands 73.9,52.0
step
kill Carrion Grub##8603+
collect 15 Slab of Carrion Worm Meat##13853 |q Gathering Some Grub(s)##27456/1 |goto Eastern Plaguelands 71.9,61.0
step
talk Rimblat Earthshatter##16134
turnin Gathering Some Grub(s)##27456 |goto Eastern Plaguelands 73.9,52.0
accept An Opportune Alliance##27457 |goto Eastern Plaguelands 73.9,52.0
step
talk Fiona##45417
turnin Argent Call: Northdale##27466 |goto Eastern Plaguelands 61.5,42.9
turnin An Opportune Alliance##27457 |goto Eastern Plaguelands 61.5,42.9
_Recruit_ Rimblat Earthshatter to the Caravan |achieve 5442/7
step
talk Tarenar Sunstrike##45729
accept Ix'lar the Underlord##27487 |goto Eastern Plaguelands 61.5,43.2
step
kill Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
Kill #10# Ix'lar's Minions |q Ix'lar the Underlord##27487/2 |goto Eastern Plaguelands 60.6,35.5
kill Ix'lar the Underlord##45744 |q Ix'lar the Underlord##27487/1 |goto Eastern Plaguelands 60.6,35.5
|tip He patrols the area.
step
talk Fiona##45417
turnin Ix'lar the Underlord##27487 |goto Eastern Plaguelands 61.4,42.8
step
talk Tarenar Sunstrike##45729
accept Impatience##27488 |goto Eastern Plaguelands 61.5,43.2
step
click Gidwin's Prayer Book##254
collect Gidwin's Prayer Book##61318 |q Impatience##27488/1 |goto Eastern Plaguelands 65.5,24.5
step
talk Tarenar Sunstrike##45729
turnin Impatience##27488 |goto Eastern Plaguelands 61.5,43.3
accept Nobody to Blame but Myself##27489 |goto Eastern Plaguelands 61.5,43.3
step
talk Fiona's Caravan##45400
_Ride the Caravan_ to the next destination |q Nobody to Blame but Myself##27489/1 |goto Eastern Plaguelands 61.5,42.6
step
talk Tarenar Sunstrike##45729
turnin Nobody to Blame but Myself##27489 |goto Eastern Plaguelands 50.5,20.3
accept Beat it Out of Them##27522 |goto Eastern Plaguelands 50.5,20.3
step
kill 6 Scourge Siege Engineer##17878 |q Beat it Out of Them##27522/1 |goto Eastern Plaguelands 55.1,17.1
Discover Gidwin's captor |q Beat it Out of Them##27522/3 |goto Eastern Plaguelands 55.1,17.1
Discover Gidwin's location |q Beat it Out of Them##27522/2 |goto Eastern Plaguelands 55.1,17.1
step
talk Fiona##45417
turnin Beat it Out of Them##27522 |goto Eastern Plaguelands 50.5,20.3
accept Blind Fury##27524 |goto Eastern Plaguelands 50.5,20.3
step
talk Tarenar Sunstrike##45729
turnin Blind Fury##27524 |goto Eastern Plaguelands 27.5,21.2
accept Guardians of Stratholme##27525 |goto Eastern Plaguelands 27.5,21.2
step
kill Karthis Darkrune##45868 |q Guardians of Stratholme##27525/2 |goto Eastern Plaguelands 29.8,20.0
step
kill Omasum Blighthoof |q Guardians of Stratholme##27525/1 |goto Eastern Plaguelands 25.3,20.0
collect The Baroness' Missive##61378
step
_Use_ The Baroness' Missive |use The Baroness' Missive##61378
accept The Baroness' Missive##27551
step
talk Tarenar Sunstrike##45729
turnin Guardians of Stratholme##27525 |goto Eastern Plaguelands 27.4,21.3
turnin The Baroness' Missive##27551 |goto Eastern Plaguelands 27.4,21.3
accept Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands 27.4,21.3
step
_Enter_ the ziggurat
_Find_ Gidwin Goldbraids |q Gidwin's Fate Revealed##27526/1 |goto Eastern Plaguelands 29.3,26.3
step
talk Gidwin Goldbraids##45730
turnin Gidwin's Fate Revealed##27526 |goto Eastern Plaguelands 28.3,25.9
accept Journey's End##27527 |goto Eastern Plaguelands 28.3,25.9
step
_Use_ Gidwin's Hearthstone to go to Lightshope Chapel |use Gidwin's Hearthstone##61379 |goto Eastern Plaguelands 75.6,52.5<0.5
talk Fiona##45417
turnin Journey's End##27527 |goto Eastern Plaguelands 73.8,52.1
step
talk Beezil Linkspanner##46022 |goto Eastern Plaguelands 73.8,52.3
_Recruit_ Beezil Linkspanner to the Caravan |achieve 5442/1
step
Congratulations, you have _earned_ the _Full Caravan_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Ghostlands Quests",{
achieveid={4908},
author="support@zygorguides.com",
startlevel=10,
keywords={"Ghost","Lands"},
description="This guide will walk you through completing the \"Ghostlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete all of the storylines in Ghostlands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Ghostlands (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Ghostlands (10-60)"
_Complete the following story chapters:_
Citizens of Tranquillien |achieve 4908/1
Farstrider Enclave |achieve 4908/2
Dar'Khan Drathir |achieve 4908/3
step
Earn the _Ghostlands Quests_ achievement |achieve 4908
step
Congratulations!
You have earned the _Ghostlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Hillsbrad Foothills Quests",{
achieveid={4895},
author="support@zygorguides.com",
startlevel=15,
description="This guide will walk you through completing the \"Hillsbrad Foothills Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Hillsbrad Foothills
|tip Refer to our leveling guides to achieve this.
Click here to load the "Hillsbrad Foothills (15-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Hillsbrad Foothills (15-60)"
_Complete the following story chapters:_
The Sludge Fields |achieve 4895/1
Stormpike |achieve 4895/2
Eastpoint Tower |achieve 4895/3
Azurelode Mine |achieve 4895/4
step
Earn the _Hillsbrad Foothills Quests_ achievement |achieve 4895
step
Congratulations!
You have earned the _Hillsbrad Foothills Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Hinterlands Quests",{
achieveid={4897},
author="support@zygorguides.com",
startlevel=30,
keywords={"Hinter","Lands"},
description="This guide will walk you through completing the \"Hinterlands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in the Hinterlands
|tip Refer to our leveling guides to achieve this.
Click here to load the "The Hinterlands (30-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Hinterlands (30-60)"
_Complete the following story chapters:_
Jintha'Alor |achieve 4897/1
Hiri'watha |achieve 4897/2
Revantusk Village |achieve 4897/3
step
Earn the _Hinterlands Quests_ achievement |achieve 4897
step
Congratulations!
You have earned the _Hinterlands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Loremaster of Eastern Kingdoms",{
achieveid={1676},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Eastern Kingdoms Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Arathi Highlands Quests |achieve 4896 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Arathi Highlands (25-60)"
Badlands Quests |achieve 4900 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Badlands (40-60)"
Blasted Lands Quests |achieve 4909 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Blasted Lands (40-60)"
Burning Steppes Quests |achieve 4901 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Burning Steppes (40-60)"
Cape of Stranglethorn Quests |achieve 4905 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Cape of Stranglethorn (30-60)"
Silverpine Quests |achieve 4894 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)"
Eastern Plaguelands Quests |achieve 4892 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Eastern Plaguelands (40-60)"
Hinterlands Quests |achieve 4897 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\The Hinterlands (30-60)"
Ghostlands Quests |achieve 4908 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Ghostlands (10-60)"
Northern Stranglethorn Quests |achieve 4906 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Northern Stranglethorn (25-60)"
Hillsbrad Foothills Quests  |achieve 4895 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Hillsbrad Foothills (15-60)"
Searing Gorge Quests |achieve 4910 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Searing Gorge (40-60)"
Swamp of Sorrows Quests |achieve 4904  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Swamp of Sorrows (40-60)"
Western Plaguelands Quests |achieve 4893 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Western Plaguelands (35-60)"
step
Congratulations, you have _earned_ the _Loremaster of Eastern Kingdoms_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Northern Stranglethorn Quests",{
achieveid={4906},
author="support@zygorguides.com",
startlevel=25,
description="This guide will walk you through completing the \"Northern Stranglethorn Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Northern Stranglethorn
|tip Refer to our leveling guides to achieve this.
Click here to load the "Northern Stranglethorn (25-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Northern Stranglethorn (25-60)"
_Complete the following story chapters:_
Ohgan'aka |achieve 4906/1
Yenniku |achieve 4906/2
Nesingwary's Expedition |achieve 4906/3
step
Earn the _Northern Stranglethorn Quests_ achievement |achieve 4906
step
Congratulations!
You have earned the _Northern Stranglethorn Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Ready, Set, Goat!",{
achieveid={5444},
description="Using the Billy Goat Blaster or the Billy Goat Blaster DX, blast 12 Billy Goats in under 1 minute.",
},[[
step
talk Garyanne Fleezlebop##46653
accept When the Going Gets Tough, Cheat##27775 |goto Badlands 64.2,38.0
only if not completedq(27776)
step
kill Dustbelcher Instructor##46693+
collect Instructor's Rod##62396 |q 27775/1 |goto Badlands 59.2,32.4
only if not completedq(27776)
step
talk Garyanne Fleezlebop##46653
turnin When the Going Gets Tough, Cheat##27775 |goto Badlands 64.2,38.0
accept It's Goat Time, Baby##27776 |goto Badlands 64.2,38.0
only if not completedq(27776)
step
_Use_ your Billy Goat Blaster on Billy Goats |use Billy Goat Blaster##62397
|tip They are rams all around the outskirts of this town
_Nudge_ #12# Billy Goats in under 1 minute |q 27776/1 |goto Badlands 64.6,37.1
|achieve 5444
only if not completedq(27776)
step
talk Gina Gotgoods##48067 |goto Badlands 64.2,37.5
buy 1 Billy Goat Blaster DX##65898
only if completedq(27776)
step
_Use_ your Billy Goat Blaster DX on Billy Goats |use Billy Goat Blaster DX##65898
|tip They are rams all around the outskirts of this town
_Blast_ #12# Billy Goats in under 1 minute |achieve 5444 |goto Badlands 64.2,37.5
only if completedq(27776)
step
Congratulations, you have _earned_ the _Ready, Set, Goat!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Searing Gorge Quests",{
achieveid={4910},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Searing Gorge Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Searing Gorge
|tip Refer to our leveling guides to achieve this.
Click here to load the "Searing Gorge (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Searing Gorge (40-60)"
_Complete the following story chapters:_
Thorium Advance |achieve 4910/1
The Seat of the Brotherhood |achieve 4910/2
In the Hall of the Mountain-Lord |achieve 4910/3
Into the Gorge |achieve 4910/4
step
Earn the _Searing Gorge Quests_ achievement |achieve 4910
step
Congratulations!
You have earned the _Searing Gorge Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Silverpine Forest Quests",{
achieveid={4894},
author="support@zygorguides.com",
startlevel=10,
keywords={"Silver","Pine"},
description="This guide will walk you through completing the \"Silverpine Forest Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete all of the storylines in Silverpine Forest
|tip Refer to our leveling guides to achieve this.
Click here to load the "Silverpine Forest (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Silverpine Forest (10-60)"
_Complete the following story chapters:_
Forsaken High Command |achieve 4894/1
Forsaken Rear Guard |achieve 4894/2
The Sepulcher |achieve 4894/3
The Ruins of Gilneas |achieve 4894/4
Ambermill |achieve 4894/5
On the Battlefront |achieve 4894/6
step
Earn the _Silverpine Forest Quests_ achievement |achieve 4894
step
Congratulations!
You have earned the _Silverpine Forest Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Swamp of Sorrows Quests",{
achieveid={4904},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Swamp of Sorrows Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Swamp of Sorrows
|tip Refer to our leveling guides to achieve this.
Click here to load the "Swamp of Sorrows (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Swamp of Sorrows (40-60)"
_Complete the following story chapters:_
Bogpaddle |achieve 4904/1
The Bloodmire |achieve 4904/2
The Shifting Mire |achieve 4904/3
The Sunken Temple |achieve 4904/4
step
Earn the _Swamp of Sorrows Quests_ achievement |achieve 4904
step
Congratulations!
You have earned the _Swamp of Sorrows Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Eastern Kingdoms\\Western Plaguelands Quests",{
achieveid={4893},
author="support@zygorguides.com",
startlevel=35,
keywords={"Western","Plaguelands","Quests"},
description="This guide will walk you through completing the \"Western Plaguelands Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Western Plaguelands
|tip Refer to our leveling guides to achieve this.
Click here to load the "Western Plaguelands (35-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Eastern Kingdoms\\Western Plaguelands (35-60)"
_Complete the following story chapters:_
The First Battle for Andorhal |achieve 4893/1
A Temporary Peace |achieve 4893/2
The Second Battle for Andorhal |achieve 4893/3
The Mender's Stead |achieve 4893/4
step
Earn the _Western Plaguelands Quests_ achievement |achieve 4893
step
Congratulations!
You have earned the _Western Plaguelands Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Ashenvale Quests",{
achieveid={4976},
author="support@zygorguides.com",
startlevel=15,
description="This guide will walk you through completing the \"Ashenvale Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Ashenvale
|tip Refer to our leveling guides to achieve this.
Click here to load the "Ashenvale (15-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Ashenvale (15-60)"
_Complete the following story chapters:_
The Corrupted Heart of the Forest |achieve 4976/1
The Diplomat from Silvermoon |achieve 4976/2
Splintertree's Demonic Defense |achieve 4976/3
Zoram'gar Outpost |achieve 4976/4
The Bombing of Astranaar |achieve 4976/5
Weapons of Their Destruction |achieve 4976/6
Bringing Harmony to the Elements |achieve 4976/7
step
Earn the _Ashenvale Quests_ achievement |achieve 4976
step
Congratulations!
You have earned the _Ashenvale Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Azshara Quests",{
achieveid={4927},
author="support@zygorguides.com",
startlevel=10,
description="This guide will walk you through completing the \"Azshara Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Azshara
|tip Refer to our leveling guides to achieve this.
Click here to load the "Azshara (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Azshara (10-60)"
_Complete the following story chapters:_
Defending Orgrimmar |achieve 4927/1
Redirecting the Ley Lines |achieve 4927/2
Sisters of the Sea |achieve 4927/3
Subject Nine from Space! |achieve 4927/4
The Rarest Substance on Azeroth |achieve 4927/5
Heart of Arkkoroc |achieve 4927/6
The Best Apprentice |achieve 4927/7
The Conquest of Azshara |achieve 4927/8
step
Earn the _Azshara Quests_ achievement |achieve 4927
step
Congratulations!
You have earned the _Azshara Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Bloodmyst Isle Quests",{
achieveid={4926},
author="support@zygorguides.com",
startlevel=10,
description="This guide will walk you through completing the \"Bloodmyst Isle Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Bloodmyst Isle
|tip Refer to our leveling guides to achieve this.
Click here to load the "Bloodmyst Isle (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Bloodmyst Isle (10-60)"
_Complete the following story chapters:_
The Triumvirate's First, Boros |achieve 4926/1
The Triumvirate's Second, Kuros |achieve 4926/2
The Triumvirate's Third, Aesom |achieve 4926/3
Galaen's Fate |achieve 4926/4
Defending Vindicator's Rest |achieve 4926/5
Ending the Bloodcurse |achieve 4926/6
Loreth'Aran |achieve 4926/7
The Unwritten Prophecy |achieve 4926/8
step
Earn the _Bloodmyst Isle Quests_ achievement |achieve 4926
step
Congratulations!
You have earned the _Bloodmyst Isle Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Darkshore Quests",{
achieveid={4928},
author="support@zygorguides.com",
startlevel=10,
description="This guide will walk you through completing the \"Darkshores Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Darkshore
|tip Refer to our leveling guides to achieve this.
Click here to load the "Darkshore (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Darkshore (10-60)"
_Complete the following story chapters:_
The Great Animal Spirit |achieve 4928/1
The Shatterspear |achieve 4928/2
The Eye of All Storms |achieve 4928/3
The Devourer |achieve 4928/4
Consumed by Madness |achieve 4928/5
The Battle for Darkshore |achieve 4928/6
step
Earn the _Darkshore Quests_ achievement |achieve 4928
step
Congratulations!
You have earned the _Darkshore Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Desolace Quests",{
achieveid={4930},
author="support@zygorguides.com",
startlevel=30,
description="This guide will walk you through completing the \"Desolace Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Desolace
|tip Refer to our leveling guides to achieve this.
Click here to load the "Desolace (30-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Desolace (30-60)"
_Complete the following story chapters:_
The Naga Threat |achieve 4930/1
Karnum's Glade |achieve 4930/2
Threats from Sar'theris Stand |achieve 4930/3
Uniting the Tribes |achieve 4930/4
On Behalf of the Horde |achieve 4930/5
step
Earn the _Desolace Quests_ achievement |achieve 4930
step
Congratulations!
You have earned the _Desolace Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Dustwallow Marsh Quests",{
achieveid={4978},
author="support@zygorguides.com",
startlevel=35,
description="This guide will walk you through completing the \"Dustwallow Marsh Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Dustwallow Marsh
|tip Refer to our leveling guides to achieve this.
Click here to load the "Dustwallow Marsh (35-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Dustwallow Marsh (35-60)"
_Complete the following story chapters:_
Wild Threats |achieve 4978/1
Work Left Undone |achieve 4978/2
"Swamp Eye" Story |achieve 4978/3
Connection to the Grimtotem |achieve 4978/4
Onyxia's Brood |achieve 4978/5
Challenging the Overlord |achieve 4978/6
The Challenge of the Stonemaul |achieve 4978/7
step
Earn the _Dustwallow Marsh Quests_ achievement |achieve 4978
step
Congratulations!
You have earned the _Dustwallow Marsh Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\E'ko Madness",{
achieveid={5443},
description="Obtain E'ko from creatures in Winterspring.",
},[[
step
kill Shardtooth Mauler##7443+
_Obtain_ E'ko from Shardtooth Bears |achieve 5443/2 |goto Winterspring 57.7,39.6
step
kill Frostsaber##7431+, Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+, Young Frostsaber##7430+, Shy-Rotam##10737
_Obtain_ E'ko from Frostsabers |achieve 5443/3 |goto Winterspring 46.5,18.4
step
kill Chillwind Chimaera##7448+
_Obtain_ E'ko from Chillwind Chimaera |achieve 5443/4 |goto Winterspring 58.2,21.8
step
kill Winterfall Shaman##7439+, Winterfall Ursa##7438+
_Obtain_ E'ko from Winterspring Furbolgs |achieve 5443/7 |goto Winterspring 66.5,47.3
step
kill Ice Thistle Yeti##7458+
_Obtain_ E'ko from Ice Thistle Yeti |achieve 5443/5 |goto Winterspring 66.1,55.9
step
kill Frostmaul Tumbler##50258+
_Obtain_ E'ko from Frostmaul Giants |achieve 5443/6 |goto Winterspring 61.3,80.1
step
kill Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
_Obtain_ E'ko from Wildkin |achieve 5443/1 |goto Winterspring 57.5,75.7
step
Congratulations, you have _earned_ the _E'ko Madness_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Felwood Quests",{
achieveid={4931},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Felwood Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Felwood
|tip Refer to our leveling guides to achieve this.
Click here to load the "Felwood (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Felwood (40-60)"
_Complete the following story chapters:_
Emerald Sanctuary |achieve 4931/1
Ruins of Constellas |achieve 4931/2
Wildheart Point |achieve 4931/3
Bloodvenom Post |achieve 4931/4
Whisperwind Grove |achieve 4931/5
Rejoining the Forest |achieve 4931/6
A Destiny of Flame and Sorrow |achieve 4931/7
War in the Forest |achieve 4931/8
The Timbermaw's Ally |achieve 4931/9
step
Earn the _Felwood Quests_ achievement |achieve 4931
step
Congratulations!
You have earned the _Felwood Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Feralas Quests",{
achieveid={4979},
author="support@zygorguides.com",
startlevel=35,
description="This guide will walk you through completing the \"Feralas Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Feralas
|tip Refer to our leveling guides to achieve this.
Click here to load the "Feralas (35-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Feralas (35-60)"
_Complete the following story chapters:_
The Fate of Taerar |achieve 4979/1
The Twilight Sermon |achieve 4979/2
Muisek |achieve 4979/3
Freed |achieve 4979/4
The Dragons of Nightmare |achieve 4979/5
step
Earn the _Feralas Quests_ achievement |achieve 4979
step
Congratulations!
You have earned the _Feralas Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Fiery Punishment",{
achieveid={5448},
description="In Archmage Xylem's Trial of Fire in Azshara, gain 10 stacks of Fire Dancing without taking damage.",
},[[
step
_Stand on the red fire runes_ without getting hit by fire 10 times in a row
|tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up. Follow the Blood Elf, he always runs to a safe spot.
_Gain_ #10# stacks of Fire Dancing without taking damage |achieve 5448 |goto Azshara 33.4,23.5
step
Congratulations, you have _earned_ the _Glutton for Fiery Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Icy Punishment",{
achieveid={5546},
description="In Archmage Xylem's Trial of Frost in Azshara, gain 20 stacks of Essence of Ice without taking damage.",
},[[
step
_Run around_ on top of the mountain and get next to the floating white orbs
|tip Don't step on the snowy ground and try not to let the blue mist hit you. It will help to dismiss your pet if you have one. Take your time and stay on the outskirts.
_Gain_ #20# stacks of Essence of Ice without taking damage |achieve 5546 |goto Azshara 62.0,20.5
step
Congratulations, you have _earned_ the _Glutton for Icy Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Glutton for Shadowy Punishment",{
achieveid={5547},
description="In Archmage Xylem's Trial of Shadow in Azshara, trap 20 Weeping Souls without taking damage.",
},[[
step
_Click_ the Touch to Begin crystal
|tip It's a big floating purple crystal
You have to _lure 20 Weeping Souls_ into the purple shadow runes on the ground without getting hit
|tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals. Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you.
_IMMEDIATELY_ try to mount up
|tip If you don't make it you'll have to do this the hard way!
_Trap_ #20# Weeping Souls of without taking damage |achieve 5547 |goto Azshara 31.0,27.5
step
Congratulations, you have _earned_ the _Glutton for Shadowy Punishment_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Joy Ride",{
achieveid={5454},
description="Ride the full length of the Rocketway in Azshara.",
},[[
step
talk Bilgewater Rocket-jockey##43217
_Tell him_ "Northern Rocketway Terminus, please."
_Ride_ the Redhound Projectile Transit to Northern Rocketway Terminus |achieve 5454 |goto Azshara 50.7,74.2
step
Congratulations, you have _earned_ the _Joy Ride_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Loremaster of Kalimdor",{
achieveid={1678},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Kalimdor Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Ashenvale Quests |achieve 4976 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Ashenvale (15-60)"
Northern Barrens Quests |achieve 4933  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)"
Azshara Quests |achieve 4927  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Azshara (10-60)"
Desolace Quests |achieve 4930  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Desolace (30-60)"
Dustwallow March Quests |achieve 4978  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Dustwallow Marsh (35-60)"
Felwood Quests |achieve 4931  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Felwood (40-60)"
Feralas Quests |achieve 4979  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Feralas (35-60)"
Silithus Quests |achieve 4934  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Silithus (40-60)"
Southern Barrens Quests |achieve 4981  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Southern Barrens (25-60)"
Stonetalon Mountains Quests |achieve 4980  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Stonetalon Mountains (20-60)"
Tanaris Quests |achieve 4935 |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Tanaris (40-60)"
Thousand Needles Quests |achieve 4938  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Thousand Needles (40-60)"
Un'Goro Crater Quests |achieve 4939  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Un'Goro Crater (40-60)"
Winterspring Quests |achieve 4940  |loadguide "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Winterspring (40-60)"
step
Congratulations, you have _earned_ the _Loremaster of Kalimdor_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Northern Barrens Quests",{
achieveid={4933},
author="support@zygorguides.com",
startlevel=10,
description="This guide will walk you through completing the \"Northern Barrens Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in the Northern Barrens
|tip Refer to our leveling guides to achieve this.
Click here to load the "Northern Barrens (10-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Northern Barrens (10-60)"
_Complete the following story chapters:_
Far Watch |achieve 4933/1
Grol'dom Farm |achieve 4933/2
Defeating the Kolkar |achieve 4933/3
Mysteries of the Oases |achieve 4933/4
Ratchet |achieve 4933/5
Nozzlepot's Outpost |achieve 4933/6
Inspiration and Hope |achieve 4933/7
step
Earn the _Northern Barrens Quests_ achievement |achieve 4933
step
Congratulations!
You have earned the _Northern Barrens Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Silithus Quests",{
achieveid={4934},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Silithus Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Silithus
|tip Refer to our leveling guides to achieve this.
Click here to load the "Silithus (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Silithus (40-60)"
_Complete the following story chapters:_
Twilight's Run |achieve 4934/1
Mistress Natalia Mar'alith |achieve 4934/2
Unraveling the Mystery |achieve 4934/3
A Terrible Purpose |achieve 4934/4
Twilight Lexicon |achieve 4934/5
step
Earn the _Silithus Quests_ achievement |achieve 4934
step
Congratulations!
You have earned the _Silithus Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Southern Barrens Quests",{
achieveid={4981},
author="support@zygorguides.com",
startlevel=25,
description="This guide will walk you through completing the \"Southern Barrens Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in the Southern Barrens
|tip Refer to our leveling guides to achieve this.
Click here to load the "Southern Barrens (25-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Southern Barrens (25-60)"
_Complete the following story chapters:_
Hunter's Hill |achieve 4981/1
Camp Una'fe |achieve 4981/2
Life from the Dream |achieve 4981/3
Vendetta Point |achieve 4981/4
Desolation Hold |achieve 4981/5
Firestone Point |achieve 4981/6
Spearhead |achieve 4981/7
step
Earn the _Southern Barrens Quests_ achievement |achieve 4981
step
Congratulations!
You have earned the _Southern Barrens Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Stonetalon Mountains Quests",{
achieveid={4980},
author="support@zygorguides.com",
startlevel=20,
description="This guide will walk you through completing the \"Stonetalon Mountains Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Stonetalon Mountains
|tip Refer to our leveling guides to achieve this.
Click here to load the "Stonetalon Mountains (20-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Stonetalon Mountains (20-60)"
_Complete the following story chapters:_
A Short-Lived Victory |achieve 4980/1
Legionnaire |achieve 4980/2
Da Voodoo |achieve 4980/3
Honor... Never Forsake It |achieve 4980/4
step
Earn the _Stonetalon Mountains Quests_ achievement |achieve 4980
step
Congratulations!
You have earned the _Stonetalon Mountains Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Tanaris Quests",{
achieveid={4935},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Tanaris Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Tanaris
|tip Refer to our leveling guides to achieve this.
Click here to load the "Tanaris (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Tanaris (40-60)"
_Complete the following story chapters:_
Southsea Pirates |achieve 4935/1
Bug Free |achieve 4935/2
Advancing Our Interests |achieve 4935/3
Grudge Match! |achieve 4935/4
The Titans |achieve 4935/5
step
Earn the _Tanaris Quests_ achievement |achieve 4935
step
Congratulations!
You have earned the _Tanaris Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Thousand Needles Quests",{
achieveid={4938},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Thousand Needles Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Thousand Needles
|tip Refer to our leveling guides to achieve this.
Click here to load the "Thousand Needles (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Thousand Needles (40-60)"
_Complete the following story chapters:_
The Treasure Trove |achieve 4938/1
Bugs in the Ice Cream |achieve 4938/2
The Chief of Chiefs |achieve 4938/3
Mind the Drop |achieve 4938/4
The Evil You Know... |achieve 4938/5
step
Earn the _Thousand Needles Quests_ achievement |achieve 4938
step
Congratulations!
You have earned the _Thousand Needles Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Un'Goro Crater Quests",{
achieveid={4939},
author="support@zygorguides.com",
startlevel=40,
keywords={"Ungoro"},
description="This guide will walk you through completing the \"Un'Goro Crater Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Un'Goro Crater
|tip Refer to our leveling guides to achieve this.
Click here to load the "Un'Goro Crater (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Un'Goro Crater (40-60)"
_Complete the following story chapters:_
The Pylons of Un'Goro |achieve 4939/1
Observe the World |achieve 4939/2
The Ballad of Maximillian |achieve 4939/3
step
Earn the _Un'Goro Crater Quests_ achievement |achieve 4939
step
Congratulations!
You have earned the _Un'Goro Crater Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Kalimdor\\Winterspring Quests",{
achieveid={4940},
author="support@zygorguides.com",
startlevel=40,
description="This guide will walk you through completing the \"Winterspring Quests\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Winterspring
|tip Refer to our leveling guides to achieve this.
Click here to load the "Winterspring (40-60)" leveling guide |confirm |next "Zygor's Leveling Guides\\Classic (10-60)\\Kalimdor\\Winterspring (40-60)"
_Complete the following story chapters:_
The Winterfall Furbolg |achieve 4940/1
Ruins of Kel'Theril |achieve 4940/2
Superior Weapons |achieve 4940/3
Spray It and Slay It |achieve 4940/4
The Hub of Goodgrub's Grub |achieve 4940/5
Yeti Surprise! |achieve 4940/6
Jadrag's Fate |achieve 4940/7
Umbranse's Deliverance |achieve 4940/8
step
Earn the _Winterspring Quests_ achievement |achieve 4940
step
Congratulations!
You have earned the _Winterspring Quests_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Blade's Edge Bomberman",{
achieveid={1276},
description="Complete the Bomb Them Again! quest in under 2 minutes 15 seconds while not in a group.",
},[[
step
talk Chu'a'lor##23233
accept The Crystals##11025 |goto Blade's Edge Mountains 28.8,57.5
step
kill Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
collect 5 Apexis Shard##32569 |q The Crystals##11025/1 |goto Blade's Edge Mountains 29.5,63.1
step
talk Chu'a'lor##23233
turnin The Crystals##11025 |goto Blade's Edge Mountains 28.8,57.5
accept An Apexis Relic##11058 |goto Blade's Edge Mountains 28.8,57.5
step
talk Torkus##23316
accept Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.4,57.7
step
kill Mo'arg Extractor##22304+, Apexis Flayer##22175+, Shard-Hide Boar##22180+, Gan'arg Analyzer##23385+
collect 10 Apexis Shard##32569 |goto Blade's Edge Mountains 29.5,63.1
step
click Fel Crystalforge##185920
buy 1 Unstable Flask of the Beast##32598
collect Unstable Flask of the Beast##32598 |q Our Boy Wants To Be A Skyguard Ranger##11030/1 |goto Blade's Edge Mountains 32.8,40.5
step
talk Torkus##23316
turnin Our Boy Wants To Be A Skyguard Ranger##11030 |goto Blade's Edge Mountains 28.4,57.6
step
talk Chu'a'lor##23233
accept The Skyguard Outpost##11062 |goto Blade's Edge Mountains 28.8,57.5
step
talk Sky Commander Keller##23334
turnin The Skyguard Outpost##11062 |goto Blade's Edge Mountains 27.5,52.7
step
talk Sky Sergeant Vanderlip##23120
accept Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.6,52.9
accept Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.6,52.9
step
_Use_ your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the ground around this area.
_Destroy_ #15# Fel Cannonball Stacks |q Bombing Run##11010/1 |goto Blade's Edge Mountains 33.3,44.0
only if not Druid
step
_Use_ your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456
|tip They look like piles of gray stones on the ground around this area.
_Destroy_ #15# Fel Cannonball Stacks |q Bombing Run##11102/1 |goto Blade's Edge Mountains 33.3,44.0
only Druid
step
talk Sky Sergeant Vanderlip##23120
turnin Bombing Run##11010 |only if not Druid |goto Blade's Edge Mountains 27.6,52.9
turnin Bombing Run##11102 |only Druid |goto Blade's Edge Mountains 27.6,52.9
step
talk Sky Sergeant Vanderlip##23120
_Make sure_ you're not in a group
|tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
accept Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.6,52.9
step
_HURRY!  HURRY!_
_Use_ the Skyguard Bombs to destroy the Fel Cannonball Stacks |use Skyguard Bombs##32456
|tip Bomb your way from here toward the Skyguard Outpost and remember to KEEP MOVING!
_Destroy_ #15# Fel Cannonball Stacks |q Bomb Them Again!##11023/1 |goto Blade's Edge Mountains 37.7,38.2
|tip They look like stacks of cannon balls next to the Fel Cannons, they have red markers over them.
step
_HURRY!  HURRY!_
|tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
talk Sky Sergeant Vanderlip##23120
turnin Bomb Them Again!##11023 |goto Blade's Edge Mountains 27.6,52.9
Earn the Blade's Edge Bomberman achievement!
step
Too slow! You'll have to try again! |only if not achieved(1276)
Congratulations, you have _earned_ the _Blade's Edge Bomberman_ achievement! |only if achieved(1276)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Bombs Away",{
achieveid={1275},
description="Complete the Fires Over Skettis quest in under 2 minutes 15 seconds while not in a group.",
},[[
step
talk Yuula##23449
accept To Skettis!##11098 |goto Shattrath City 64.2,42.3
step
talk Sky Sergeant Doryn##23048
turnin To Skettis!##11098 |goto Terokkar Forest 64.5,66.7
step
talk Sky Sergeant Doryn##23048
_Make sure_ you're not in a group
|tip It is highly advised that you turn on the auto turn in quests feature of this add-on since time is a huge factor to complete this achievement and also track this achievement to see the timer.
accept Fires Over Skettis##11008 |goto Terokkar Forest 64.5,66.7
step
_HURRY!  HURRY!_
_Use_ your Skyguard Blasting Charges to destroy the Monstrous Kaliri Eggs |use Skyguard Blasting Charges##32406
|tip They look like big white egg cocoons all over the tops of buildings in Skettis. Bomb your way to here and fly toward the Blackwind Landing and remember to KEEP MOVING and hit as many eggs as you can!
_Destroy_ #20# Monstrous Kaliri Egg |q Fires Over Skettis##11008/1 |goto Terokkar Forest 74.5,88.3
step
_HURRY!  HURRY!_
|tip Return here as fast as possible! If you don't make it you can abandon the quest and try it again.
talk Sky Sergeant Doryn##23048
turnin Fires Over Skettis##11008 |goto Terokkar Forest 64.5,66.7
step
Too slow! You'll have to try again! |only if not achieved(1275)
Congratulations, you have _earned_ the _Bombs Away_ achievement! |only if achieved(1275)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\To Hellfire and Back",{
achieveid={1271},
author="support@zygorguides.com",
startlevel=58,
description="This guide will walk you through completing the \"To Hellfire and Back\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Hellfire Peninsula
|tip Refer to our leveling guides to achieve this.
Click here to load the "Hellfire Peninsula (58-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Hellfire Peninsula (58-80)"
_Complete the following story chapters:_
Disrupt the Burning Legion |achieve 1271/1
Cruel's Intentions |achieve 1271/2
The Hand of Kargath |achieve 1271/3
Spinebreaker Post |achieve 1271/4
The Mag'har |achieve 1271/5
Falcon Watch |achieve 1271/6
Green, But Not Orcs |achieve 1271/7
Cenarion Post |achieve 1271/8
step
Earn the _To Hellfire and Back_ achievement |achieve 1271
step
Congratulations!
You have earned the _To Hellfire and Back_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Into the Nether",{
achieveid={1194},
author="support@zygorguides.com",
startlevel=67,
description="This guide will walk you through completing the \"Into the Nether\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Netherstorm
|tip Refer to our leveling guides to achieve this.
Click here to load the "Netherstorm (67-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Netherstorm (67-80)"
_Complete the following story chapters:_
Socrethar |achieve 1194/1
The Violet Tower |achieve 1194/2
Building the X-52 Nether-Rocket |achieve 1194/3
Protect Area 52! |achieve 1194/4
The Consortium |achieve 1194/5
Destroying the All-Devouring |achieve 1194/6
step
Earn the _Into the Nether_ achievement |achieve 1194
step
Congratulations!
You have earned the _Into the Nether_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Loremaster of Outland",{
achieveid={1262},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Outland Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Hellfire Peninsula Quests |achieve 1271 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Hellfire Peninsula (58-80)"
Zangarmarsh Quests |achieve 1190 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Zangarmarsh (60-80)"
Terrokar Forest Quests |achieve 1272 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Terokkar Forest (62-80)"
Nagrand Quests |achieve 1273 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Nagrand (64-80)"
Blades Edge Mountains March Quests |achieve 1193  |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Blade's Edge Mountains (65-80)"
Netherstorm Quests |achieve 1194 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Netherstorm (67-80)"
Shadowmoon Valley Quests |achieve 1195 |loadguide "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Shadowmoon Valley (67-80)"
step
Congratulations, you have _earned_ the _Loremaster of Outland_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Mysteries of the Marsh",{
achieveid={1190},
author="support@zygorguides.com",
startlevel=60,
description="This guide will walk you through completing the \"Mysteries of the Marsh\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Zangarmarsh
|tip Refer to our leveling guides to achieve this.
Click here to load the "Zangarmarsh (60-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Zangarmarsh (60-80)"
_Complete the following story chapters:_
Swamprat Post |achieve 1190/1
Zabra'jin |achieve 1190/2
The Defense of Zabra'jin |achieve 1190/3
Don't Eat THOSE Mushrooms! |achieve 1190/4
Draining the Marsh |achieve 1190/5
Saving the Sporeloks |achieve 1190/6
A Trip With the Sporelings |achieve 1190/7
step
Earn the _Mysteries of the Marsh_ achievement |achieve 1190
step
Congratulations!
You have earned the _Mysteries of the Marsh_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Nagrand Slam",{
achieveid={1273},
author="support@zygorguides.com",
startlevel=64,
description="This guide will walk you through completing the \"Nagrand Slam\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Nagrand
|tip Refer to our leveling guides to achieve this.
Click here to load the "Nagrand (64-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Nagrand (64-80)"
_Complete the following story chapters:_
Birth of a Warchief |achieve 1273/1
The Ring of Blood |achieve 1273/2
Throne of the Elements |achieve 1273/3
Lantresor of the Blade |achieve 1273/4
The Murkblood |achieve 1273/5
Threats to Nagrand |achieve 1273/6
The Ultimate Bloodsport |achieve 1273/7
Encountering the Ethereals |achieve 1273/8
step
Earn the _Nagrand Slam_ achievement |achieve 1273
step
Congratulations!
You have earned the _Nagrand Slam_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\On the Blade's Edge",{
achieveid={1193},
author="support@zygorguides.com",
startlevel=65,
keywords={"Blades"},
description="This guide will walk you through completing the \"On the Blade's Edge\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Blade's Edge Mountains
|tip Refer to our leveling guides to achieve this.
Click here to load the "Blade's Edge Mountains (65-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Blade's Edge Mountains (65-80)"
_Complete the following story chapters:_
Thunderlord Stronghold |achieve 1193/1
Reunion |achieve 1193/2
The Mok'Nathal |achieve 1193/3
Ogres of Ogri'la |achieve 1193/4
Ruuan Weald |achieve 1193/5
step
Earn the _On the Blade's Edge_ achievement |achieve 1193
step
Congratulations!
You have earned the _On the Blade's Edge_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Shadow of the Betrayer",{
achieveid={1195},
author="support@zygorguides.com",
startlevel=67,
description="This guide will walk you through completing the \"Shadow of the Betrayer\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Shadowmoon Valley
|tip Refer to our leveling guides to achieve this.
Click here to load the "Shadowmoon Valley (67-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Shadowmoon Valley (67-80)"
_Complete the following story chapters:_
Shadowmoon Village |achieve 1195/1
Netherwing Ledge |achieve 1195/2
The First Death Knight |achieve 1195/3
Borrowed Power |achieve 1195/4
Akama's Promise |achieve 1195/5
The Cipher of Damnation |achieve 1195/6
Anti-Demon Weapons |achieve 1195/7
The Dark Conclave |achieve 1195/8
step
Earn the _Shadow of the Betrayer_ achievement |achieve 1195
step
Congratulations!
You have earned the _Shadow of the Betrayer_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Outland\\Terror of Terokkar",{
achieveid={1272},
author="support@zygorguides.com",
startlevel=62,
description="This guide will walk you through completing the \"Terror of Terokkar\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Terokkar Forest
|tip Refer to our leveling guides to achieve this.
Click here to load the "Terokkar Forest (62-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\The Burning Crusade (60-80)\\Terokkar Forest (62-80)"
_Complete the following story chapters:_
The Skettis Offensive |achieve 1272/1
Refugee Caravan |achieve 1272/2
Sha'tari Base Camp |achieve 1272/3
The Warden's Secret |achieve 1272/4
Stonebreaker Hold |achieve 1272/5
step
Earn the _Terror of Terokkar_ achievement |achieve 1272
step
Congratulations!
You have earned the _Terror of Terokkar_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Argent Aspiration",{
achieveid={2756},
keywords={"Argent","Aspiration","Tournament"},
description="This guilde will walk you through obtaining the Argent Aspiration achievement",
},[[
step
To earn this achievement, you will need to complete the Aspirant Rank of the Argent Tournament Grounds
Refer to our Argent Tournament Grounds Aspirant guide to accomplish this
Load the "Argent Tournament Grounds Aspirant Rank" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies"
|tip Click the line above to load the guide.
Earn the Argent Aspiration achievement |achieve 2756
step
Congratulations!
You have earned the Argent Aspiration achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Argent Valor",{
achieveid={2756},
keywords={"Argent","Valor","Tournament"},
description="This guilde will walk you through obtaining the Argent Valor achievement",
},[[
step
To earn this achievement, you will need to complete the Aspirant Rank of the Argent Tournament Grounds
Refer to our Argent Tournament Grounds Aspirant guide to accomplish this
Load the "Argent Tournament Grounds Aspirant Rank" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies"
|tip Click the line above to load the guide.
After completing the above step, you will then need to complete the Valiant Rank of the Argent Tournament Grounds
Load the "Argent Tournament Grounds Valiant Rank" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Earn the Argent Valor achievement |achieve 2758
step
Congratulations!
You have earned the Argent Valor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\D.E.H.T.A's Little P.I.T.A.",{
achieveid={561},
description="This guide will walk you through completing the D.E.H.T.A. questline in Borean Tundra.",
},[[
step
talk Arch Druid Lathorius##25809
accept A Mission Statement##11864 |goto Borean Tundra 57,44.3
accept Ears of Our Enemies##11866 |goto Borean Tundra 57,44.3
accept Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.3
step
talk Hierophant Cenius##25810
accept Happy as a Clam##11869 |goto Borean Tundra 57.3,44.1
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
accept Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
accept Unfit for Death##11865 |goto Borean Tundra 56.8,44
stickystart "lootdiver"
step
Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228
Free #8# Mammoth Calves |q Help Those That Cannot Help Themselves##11876/1 |goto Borean Tundra 53.8,40.6
step
label "lootdiver"
kill 10 Loot Crazed Diver##25836 |q Happy as a Clam##11869/1 |goto Borean Tundra 53.4,42.7
kill Loot Crazed Diver##25836+ |n
collect 15 Nesingwary Lackey Ear##35188 |q Ears of Our Enemies##11866/1 |goto Borean Tundra 53.4,42.7
step
kill "Lunchbox"##25968 |q Ned, Lord of Rhinos...##11884/2 |goto Borean Tundra 46.4,40
kill Nedar, Lord of Rhinos##25801 |q Ned, Lord of Rhinos...##11884/1 |goto Borean Tundra 46.4,40
|tip He walks around this area. Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
Stand inside the Caribou Traps on the ground
|tip They look like metal spiked traps on the ground.
Use your Pile of Fake Furs |use Pile of Fake Furs##35127
Trap #8# Nesingwary Trappers |q Unfit for Death##11865/1 |goto Borean Tundra 56.2,50.5
step
Make sure you don't have _Animal Blood_ on you
If you do, go for a swim to wash it off, before approaching the druids
|nobuff Ability_Seal
step
talk Arch Druid Lathorius##25809
turnin Ears of Our Enemies##11866 |goto Borean Tundra 57,44.3
turnin Help Those That Cannot Help Themselves##11876 |goto Borean Tundra 57,44.3
accept Khu'nok Will Know##11878 |goto Borean Tundra 57,44.3
step
talk Hierophant Cenius##25810
turnin Happy as a Clam##11869 |goto Borean Tundra 57.3,44.1
accept The Abandoned Reach##11870 |goto Borean Tundra 57.3,44.1
step
talk Killinger the Den Watcher##25812
|tip He walks around the small pond in the middle of the camp.
turnin Ned, Lord of Rhinos...##11884 |goto Borean Tundra 57,44
step
talk Zaza##25811
turnin Unfit for Death##11865 |goto Borean Tundra 56.8,44
accept The Culler Cometh##11868 |goto Borean Tundra 56.8,44
step
Deliver the Orphaned Mammoth Calf to Khu'nok |q Khu'nok Will Know##11878/1 |goto Borean Tundra 59.5,30.4
|tip The calf is slow so don't move too fast or you'll lose it.
step
talk Khu'nok the Behemoth##25862
turnin Khu'nok Will Know##11878 |goto Borean Tundra 59.5,30.4
accept Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 59.5,30.4
step
Ride around and find a Wooly Mammoth Bull |n
Click it to ride it |invehicle
step
Use the skills on your mammoth action bar to do the following:
kill Kaw the Mammoth Destroyer##25802
click Kaw's War Halberd##188066
collect Kaw's War Halberd##35234 |q Kaw the Mammoth Destroyer##11879/1 |goto Borean Tundra 53.7,23.9
step
talk Arch Druid Lathorius##25809
turnin Kaw the Mammoth Destroyer##11879 |goto Borean Tundra 57,44.3
step
kill Karen "I Don't Caribou" the Culler##25803 |q The Culler Cometh##11868/1 |goto Borean Tundra 57.3,56.5
step
talk Hierophant Liandra##25838
turnin The Abandoned Reach##11870 |goto Borean Tundra 57.8,55.1
accept Not On Our Watch##11871 |goto Borean Tundra 57.8,55.1
step
kill Northsea Thug##25843+ |n
click Shipment of Animal Parts##188018
collect 12 Shipment of Animal Parts##35222 |q Not On Our Watch##11871/1 |goto Borean Tundra 59.1,55.9
step
talk Hierophant Liandra##25838
turnin Not On Our Watch##11871 |goto Borean Tundra 57.8,55.1
accept The Nefarious Clam Master...##11872 |goto Borean Tundra 57.8,55.1
step
kill Clam Master K##25800 |q The Nefarious Clam Master...##11872/1 |goto Borean Tundra 61.5,66.5
step
talk Hierophant Cenius##25810
turnin The Nefarious Clam Master...##11872 |goto Borean Tundra 57.3,44.1
step
talk Arch Druid Lathorius##25809
accept The Assassination of Harold Lane##11892 |goto Borean Tundra 57.0,44.2
step
Use the Cenarion Horn in your bags to help you fight Harold Lane |use Cenarion Horn##35293
kill Harold Lane##25804 |q The Assassination of Harold Lane##11892/1 |goto Borean Tundra 50.0,41.4
step
talk Arch Druid Lathorius##25809
turnin The Assassination of Harold Lane##11892 |goto Borean Tundra 57.0,44.2
step
Congratulations, you have earned the D.E.T.H.A's Little P.I.T.A. achievement! |achieve 561
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\The Empire of Zul'Drak",{
achieveid={36},
author="support@zygorguides.com",
startlevel=64,
keywords={"Zuldrak"},
description="This guide will walk you through completing the \"The Empire of Zul'Drak\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Zul'Drak
|tip Refer to our leveling guides to achieve this.
Click here to load the "Zul'Drak (64-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Zul'Drak (64-80)"
_Complete the following story chapters:_
Sseratus |achieve 36/1
Quetz'lun |achieve 36/2
Akali |achieve 36/3
The Amphitheater of Anguish |achieve 36/4
Finding Allies |achieve 36/5
The Storm King's Crusade |achieve 36/6
Betrayal |achieve 36/7
The Argent Patrol |achieve 36/8
step
Earn the _The Empire of Zul'Drak_ achievement |achieve 36
step
Congratulations!
You have earned the _The Empire of Zul'Drak_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Fo' Grizzle My Shizzle",{
achieveid={1357},
author="support@zygorguides.com",
startlevel=63,
description="This guide will walk you through completing the \"Fo' Grizzle My Shizzle\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Grizzly Hills
|tip Refer to our leveling guides to achieve this.
Click here to load the "Gizzly Hills (63-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Grizzly Hills (63-80)"
_Complete the following story chapters:_
Ursoc, the Bear God |achieve 1357/1
The Final Showdown |achieve 1357/2
The Iron Thane |achieve 1357/3
Loken's Orders |achieve 1357/4
Hour of the Worg |achieve 1357/5
Revelation! |achieve 1357/6
Eons of Misery |achieve 1357/7
step
Earn the _Fo' Grizzle My Shizzle_ achievement |achieve 1357
step
Congratulations!
You have earned the _Fo' Grizzle My Shizzle_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Guru of Drakuru",{
achieveid={1596},
description="Complete the main storyline quests involving Drakuru.",
},[[
step
#include "CleansingDrakTharon"
step
#include "BetrayalDrakuru"
step
talk Stefan Vadu##28518
turnin Betrayal##12713 |goto Zul'Drak 14.1,73.8
Complete the Betrayal |achieve 1596/2
Earn the Guru of Drakuru achievement! |achieve 1596
step
Congratulations! You've earned the Guru of Drakuru achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Honorary Frenzyheart",{
achieveid={961},
description="This guide will walk you through completing the 8 daily quests for the Frenzyheart.",
},[[
step
The 8 Dailies are as follows
Complete the "Chicken Party!" daily |achieve 961/1
Complete the "Tools of War" daily |achieve 961/2
Complete "The Heartblood's Strength" daily |achieve 961/3
Complete the "Rejek: First Blood" daily |achieve 961/4
Complete the "Kartak's Rampage" daily |achieve 961/5
Complete the "Secret Strength of the Frenzyheart" daily |achieve 961/6
Complete the "Strength of the Tempest" daily |achieve 961/7
Complete "A Hero's Headgear" daily |achieve 961/8
confirm
step
Routing |next "achieve" |only if default
Routing |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Sholazar Basin\\Frenzyheart Tribe Dailies" |only if not achieved(961)
step
label "achieve"
Congratulations, you have earned the Honorary Frenzyheart achievement! |achieve 961
step
Congratulations, you have earned the Honorary Frenzyheart achievement! |only if achieved(961)
You'll need to come back for another set of dailies to earn this achievment.  |only if not achieved(961)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\I've Toured the Fjord",{
achieveid={1356},
author="support@zygorguides.com",
startlevel=58,
description="This guide will walk you through completing the \"I've Toured the Fjord\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Howling Fjord
|tip Refer to our leveling guides to achieve this.
Click here to load the "Howling Fjord (58-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Howling Fjord (58-80)"
_Complete the following story chapters:_
Visitors from the Keep |achieve 1356/1
Assassinating Bjorn Halgurdsson |achieve 1356/2
A New Plague |achieve 1356/3
Doom Approaches |achieve 1356/4
The End of Jonah Sterling |achieve 1356/5
The Debt Collector |achieve 1356/6
Volatile Viscera |achieve 1356/7
Sisters of the Fjord |achieve 1356/8
The Iron Dwarves |achieve 1356/9
The Conqueror of Skorn |achieve 1356/10
The Scourge and the Vrykul |achieve 1356/11
Alpha Worg |achieve 1356/12
step
Earn the _I've Toured the Fjord_ achievement |achieve 1356
step
Congratulations!
You have earned the _I've Toured the Fjord_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Icecrown: The Final Goal",{
achieveid={40},
author="support@zygorguides.com",
startlevel=67,
description="This guide will walk you through completing the \"Icecrown: The Final Goal\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Icecrown
|tip Refer to our leveling guides to achieve this.
Click here to load the "Icecrown (67-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Icecrown (67-80)"
_Complete the following story chapters:_
Crusader Bridenbrad |achieve 40/1
The Unthinkable |achieve 40/2
Teaching the Meaning of Fear |achieve 40/3
The Heart of the Lich King |achieve 40/4
What's Yours Is Mine |achieve 40/5
Seizing Saronite |achieve 40/6
Malykriss: The Vile Hold |achieve 40/7
In Defiance of the Scourge |achieve 40/8
Mord'rethar: The Death Gate |achieve 40/9
Aldur'thar: The Desolation Gate |achieve 40/10
Corp'rethar: The Horror Gate |achieve 40/11
step
Earn the _Icecrown: The Final Goal_ achievement |achieve 40
step
Congratulations!
You have earned the _Icecrown: The Final Goal_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Into the Basin",{
achieveid={39},
author="support@zygorguides.com",
startlevel=66,
description="This guide will walk you through completing the \"Into the Basin\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Sholazar Basin
|tip Refer to our leveling guides to achieve this.
Click here to load the "Sholazar Basin (66-80)" guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Sholazar Basin (66-80)"
_Complete the following story chapters:_
Hunting Bigger Game |achieve 39/1
Teeth, Spikes, and Talons |achieve 39/2
The Wolvar |achieve 39/3
The Oracles |achieve 39/4
The Lifewarden |achieve 39/5
Watching Over the Basin |achieve 39/6
step
Earn the _Into the Basin_ achievement |achieve 39
step
Congratulations!
You have earned the _Into the Basin_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\It's Just a Flesh Wound",{
achieveid={2773},
keywords={"It's","Just","a","Flesh","Wound","Argent","Tournament"},
description="This guilde will walk you through obtaining the It's Just a Flesh Wound achievement",
},[[
step
To earn this achievement, you will need to be Champion rank in the Argent Tournament Grounds
Refer to our Argent Tournament Grounds Aspirant guide to accomplish this
Load the "Argent Tournament Grounds Aspirant Rank" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies"
|tip Click the line above to load the guide.
After completing the above step, you will then need to complete the Valiant Rank of the Argent Tournament Grounds
Load the "Argent Tournament Grounds Valiant Rank" Dailies Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Once you have completed the Valiant Rank, you will have access to the Black Knight questline
Load the "ATG Black Knight Quest Chain" Guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\ATG Black Knight Quest Chain"
|tip Click the line above to load the guide.
Earn the It's Just a Flesh Wound achievement |achieve 2773
step
Congratulations!
You have earned the It's Just a Flesh Wound achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Lance a Lot",{
achieveid={2836},
keywords={"Lance","a","Lot","Argent","Tournament"},
description="This guilde will walk you through obtaining the Lance a Lot achievement",
},[[
step
To earn this achievement, you will need to defeat a rider from each faction at the Argent Tournament
Darnassus |achieve 2836/1
The Exodar |achieve 2836/2
Gnomeregan |achieve 2836/3
Ironforge |achieve 2836/4
Orgrimmar |achieve 2836/5
Sen'jin |achieve 2836/6
Silvermoon City |achieve 2836/7
Stormwind |achieve 2836/8
Thunder Bluff |achieve 2836/9
The Undercity |achieve 2836/10
step
Congratulations!
You have earned the Lance a Lot achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Loremaster of Northrend",{
achieveid={41},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Northrend Horde Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Borean Tundra Quests |achieve 1358 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Borean Tundra (58-80)"
Howling Fjord Quests |achieve 1356 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Howling Fjord (58-80)"
Grizzly Hills Quests |achieve 1357 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Grizzly Hills (63-80)"
Dragonblight Quests |achieve 1359 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Dragonblight (61-80)"
Zul'drak Quests |achieve 36 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Zul'Drak (64-80)"
Sholazar Basin Quests |achieve 39 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Sholazar Basin (66-80)"
Storm Peaks Quests |achieve 38 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\The Storm Peaks (67-80)"
Icecrown Valley Quests |achieve 40 |loadguide "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Icecrown (67-80)"
step
Congratulations, you have _earned_ the _Loremaster of Northrend_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Might of Dragonblight",{
achieveid={1359},
author="support@zygorguides.com",
startlevel=61,
description="This guide will walk you through completing the \"Might of Dragonblight\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Dragonblight
|tip Refer to our leveling guides to achieve this.
Click here to load the "Dragonblight (61-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Dragonblight (61-80)"
_Complete the following story chapters:_
The Taunka |achieve 1359/1
Traitors to the Horde |achieve 1359/2
Redirecting the Ley Lines |achieve 1359/3
Containing the Rot |achieve 1359/4
Angrathar the Wrathgate |achieve 1359/5
Informing the Queen |achieve 1359/6
The Dragonflights |achieve 1359/7
"Strategic Alliance" |achieve 1359/8
The Scarlet Onslaught |achieve 1359/9
Oacha'noa |achieve 1359/10
step
Earn the _Might of Dragonblight_ achievement |achieve 1359
step
Congratulations!
You have earned the _Might of Dragonblight_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Mine Sweeper",{
achieveid={1428},
description="Get caught in 10 consecutive land mine explosions in the Sparksocket Minefield without landing.",
},[[
step
You will see a field of mines
Use a ground mount and run into them as fast as you can
There will be a short grace period to find the next mine before the timer runs out
_Get "caught"_ by 10 mines consecutively |achieve 1428 |goto The Storm Peaks 36.2,86.9
step
Congratulations, you have _earned_ the _Mine Sweeper_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Nothing Boring About Borean",{
achieveid={1358},
author="support@zygorguides.com",
startlevel=58,
description="This guide will walk you through completing the \"Nothing Boring About Borean\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Borean Tundra
|tip Refer to our leveling guides to achieve this.
Click here to load the "Borean Tundra (58-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\Borean Tundra (58-80)"
_Complete the following story chapters:_
The Fate of Farseer Grimwalker |achieve 1358/1
Return of the Dread Citadel |achieve 1358/2
The Scourge Necrolord |achieve 1358/3
D.E.H.T.A. |achieve 1358/4
The Blue Dragonflight |achieve 1358/5
Friends from the Sea |achieve 1358/6
Participant Observation |achieve 1358/7
Hellscream's Champion |achieve 1358/8
To the Aid of the Taunka |achieve 1358/9
Somber Realization |achieve 1358/10
step
Earn the _Nothing Boring About Borean_ achievement |achieve 1358
step
Congratulations!
You have earned the _Nothing Boring About Borean_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Rapid Defense",{
achieveid={1277},
description="This guide will walk you through completing the Defending Wyrmrest Temple quest in under 3 minutes while not in a group.",
},[[
step
talk Lord Afrasastrasz##27575
accept Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
step
talk Wyrmrest Defender##27629
Tell him: "_I am ready to get into the fight._"
Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
kill 3 Azure Dragon |q Defending Wyrmrest Temple##12372/1 |goto Dragonblight 58.3,55.2
kill 5 Azure Drake |q Defending Wyrmrest Temple##12372/2 |goto Dragonblight 58.3,55.2
step
Fly into the huge purple swirling column
Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
Destabilize the Azure Dragonshrine |q Defending Wyrmrest Temple##12372/3 |goto Dragonblight 55.1,66.4
step
Make your way here |goto Dragonblight 58.7,54.5 < 15 |walk
Click the red arrow to get off the dragon on the middle level of the temple |script VehicleExit() |outvehicle |c
step
talk Lord Afrasastrasz##27575
turnin Defending Wyrmrest Temple##12372 |goto Dragonblight 59.2,54.3
step
Congratulations, you have earned the Rapid Defense achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Savior of the Oracles",{
achieveid={962},
description="This guide will walk you through completing the 8 daily quests for the Oracles.",
},[[
step
The 8 Dailies are as follows
Complete the "Appeasing the Great Rain Stone" daily |achieve 962/8
Complete the "Will of the Titans" daily |achieve 962/1
Complete the "Mastery of the Crystals" daily |achieve 962/2
Complete the "Power of the Great Ones" daily |achieve 962/3
Complete the "Song of Reflection" daily |achieve 962/4
Complete the "Song of Wind and Water" daily |achieve 962/7
Complete "A Cleansing Song" daily |achieve 962/5
Complete the "Song of Fecundity" daily |achieve 962/6
confirm
step
#include "Oracles_PreQuests"
step
#include "Oracles_Dailies"
step
Congratulations, you have earned the Savior of the Oracles achievement! |only if achieved(962)
You'll need to come back for another set of dailies to earn this achievment. |only if not achieved(962)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\The Summit of Storm Peaks",{
achieveid={38},
author="support@zygorguides.com",
startlevel=67,
description="This guide will walk you through completing the \"The Summit of Storm Peaks\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in The Storm Peaks
|tip Refer to our leveling guides to achieve this.
Click here to load "The Storm Peaks (67-80)" leveling guide |confirm |next "Zygor's Leveling Guides\\Wrath of the Lich King (60-80)\\The Storm Peaks (67-80)"
_Complete the following story chapters:_
Defending K3 |achieve 38/1
Norgannon's Shell |achieve 38/2
Bringing Down the Iron Colossus |achieve 38/3
Pursuing a Legend |achieve 38/4
The Story of Stormhoof |achieve 38/5
Bearly Ready |achieve 38/6
Heartbreak |achieve 38/7
The Sons of Hodir |achieve 38/8
Loken |achieve 38/9
step
Earn the _The Summit of Storm Peaks_ achievement |achieve 38
step
Congratulations!
You have earned the _The Summit of Storm Peaks_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Northrend\\Veteran of the Wrathgate",{
achieveid={547},
description="This guide will walk you through completing the Dragonblight quests leading up to and including the Return to Angrathar.",
},[[
step
talk Emissary Brighthoof##26181
accept Into the Fold##11978 |goto Dragonblight 12.8,48.5
step
click Horde Armaments##188238
|tip The Horde Armaments look like crates sitting on the ground around this area.
collect 10 Horde Armaments##35726 |q Into the Fold##11978/1 |goto Dragonblight 15.5,51.2
step
talk Emissary Brighthoof##26181
turnin Into the Fold##11978 |goto Dragonblight 12.8,48.5
accept Blood Oath of the Horde##11983 |goto Dragonblight 12.8,48.5
step
talk Taunka'le Refugee##26184
Admit #5# Taunka Into the Horde |q Blood Oath of the Horde##11983/1 |goto Dragonblight 13.6,49.6
step
talk Emissary Brighthoof##26181
turnin Blood Oath of the Horde##11983 |goto Dragonblight 12.8,48.5
accept Agmar's Hammer##12008 |goto Dragonblight 12.8,48.5
step
talk Overlord Agmar##26379
turnin Agmar's Hammer##12008 |goto Dragonblight 38.1,46.3
accept Victory Nears...##12034 |goto Dragonblight 38.1,46.3
step
talk Senior Sergeant Juktok##26415
turnin Victory Nears...##12034 |goto Dragonblight 36.6,46.6
accept From the Depths of Azjol-Nerub##12036 |goto Dragonblight 36.6,46.6
step
Inside the cave explore the Pit of Narjun |q From the Depths of Azjol-Nerub##12036/1 |goto Dragonblight 26.2,50.4
|tip Next to the instance portal.
step
talk Senior Sergeant Juktok##26415
turnin From the Depths of Azjol-Nerub##12036 |goto Dragonblight 36.6,46.6
accept The Might of the Horde##12053 |goto Dragonblight 36.6,46.6
step
Use your Warsong Battle Standard in this spot |use Warsong Battle Standard##36738
Defend the Warsong Battle Standard |q The Might of the Horde##12053/1 |goto Dragonblight 24.8,41.2
step
talk Senior Sergeant Juktok##26415
turnin The Might of the Horde##12053 |goto Dragonblight 36.6,46.6
accept Attack by Air!##12071 |goto Dragonblight 36.6,46.6
step
talk Valnok Windrager##26574
turnin Attack by Air!##12071 |goto Dragonblight 37.2,45.7
accept Blightbeasts be Damned!##12072 |goto Dragonblight 37.2,45.7
step
Use Valnok's Flare Gun on this bridge to call a Kor'kron War Rider |use Valnok's Flare Gun##36774 |goto Dragonblight 27.5,44.8 < 5
clicknpc Kor'kron War Rider##26813 |invehicle |c
Use the abilities on your action bar
kill 25 Anub'ar Blightbeast##26607 |q Blightbeasts be Damned!##12072/1 |goto Dragonblight 27.8,38.9
|tip They are flying around the buildings here.
step
talk Valnok Windrager##26574
turnin Blightbeasts be Damned!##12072 |goto Dragonblight 37.2,45.7
step
talk Greatmother Icemist##26652
accept Strength of Icemist##12063 |goto Dragonblight 35.8,46.7
step
talk Banthok Icemist##26733
turnin Strength of Icemist##12063 |goto Dragonblight 22.6,41.7
accept Chains of the Anub'ar##12064 |goto Dragonblight 22.6,41.7
step
kill Tivax the Breaker##26770
collect Tivax's Key Fragment##36753 |q Chains of the Anub'ar##12064/2 |goto Dragonblight 26.6,39.2
You can also find Tivax the Breaker in another big hut |goto 24.0,39.5
step
kill Sinok the Shadowrager##26771
collect Sinok's Key Fragment##36754 |q Chains of the Anub'ar##12064/3 |goto Dragonblight 26.2,44.5
|tip Sinok the Shadowrager will has several spawn points inside of the building.
step
kill Anok'ra the Manipulator##26769
collect Anok'ra's Key Fragment##36752 |q Chains of the Anub'ar##12064/1 |goto Dragonblight 24.9,43.9
step
talk Banthok Icemist##26733
turnin Chains of the Anub'ar##12064 |goto Dragonblight 22.6,41.7
accept Return of the High Chief##12069 |goto Dragonblight 22.6,41.7
step
click Anub'ar Mechanism##188463 |tip Help kill Under-king Anub'et'kan.
kill Under-king Anub'et'kan##26608
click Anub'et'kan's Carapace##188462
collect Fragment of Anub'et'kan's Husk##36759 |q Return of the High Chief##12069/1 |goto Dragonblight 25.6,40.9
step
talk Overlord Agmar##26379
turnin Return of the High Chief##12069 |goto Dragonblight 38.2,46.3
accept All Hail Roanauk!##12140 |goto Dragonblight 38.2,46.3
step
talk Roanauk Icemist##26810
Initiate Roanauk Icemist |q All Hail Roanauk!##12140/1 |goto Dragonblight 36.2,45.4
step
talk Overlord Agmar##26379
turnin All Hail Roanauk!##12140 |goto Dragonblight 36.3,45.6
step
talk Doctor Sintar Malefious##26505
accept Imbeciles Abound!##12189 |goto Dragonblight 36.1,48.9
step
talk Chief Plaguebringer Middleton##27172
turnin Imbeciles Abound!##12189  |goto Dragonblight 77.7,62.8
accept The Forsaken Blight and You: How Not to Die##12188 |goto Dragonblight 77.7,62.8
step
kill Forgotten Peasant##27226+, Forgotten Rifleman##27225+, Forgotten Footman##27229+, Forgotten Knight##27224+, Forgotten Captain##27220+
collect 10 Ectoplasmic Residue##37121 |q The Forsaken Blight and You: How Not to Die##12188/1 |goto Dragonblight 82.9,65.1
step
talk Chief Plaguebringer Middleton##27172
turnin The Forsaken Blight and You: How Not to Die##12188 |goto Dragonblight
accept Emerald Dragon Tears##12200 |goto Dragonblight 77.7,62.8
step
click Emerald Dragon Tear##188650
collect 8 Emerald Dragon Tear##37124 |q Emerald Dragon Tears##12200/1 |goto Dragonblight 63.3,70.3
step
talk Chief Plaguebringer Middleton##27172
turnin Emerald Dragon Tears##12200 |goto Dragonblight 77.7,62.8
accept Spread the Good Word##12218 |goto Dragonblight 77.7,62.8
step
clicknpc Forsaken Blight Spreader##26523 |goto Dragonblight 77.8,61.6 < 5
Shoot your catapult toward the ghouls and skeletons to the northwest
kill 30 Hungering Dead##27290 |q Spread the Good Word##12218/1 |goto Dragonblight 85.9,57.9
step
talk Chief Plaguebringer Middleton##27172
turnin Spread the Good Word##12218 |goto Dragonblight 77.7,62.8
accept The Forsaken Blight##12221 |goto Dragonblight 77.7,62.8
step
talk Doctor Sintar Malefious##26505
turnin The Forsaken Blight##12221 |goto Dragonblight 36.1,48.9
step
talk Overlord Agmar##26379
accept The Kor'kron Vanguard!##12224 |goto Dragonblight 38.2,46.3
step
talk Saurfang the Younger##25257
turnin The Kor'kron Vanguard!##12224 |goto Dragonblight 40.7,18.1
accept Audience With The Dragon Queen##12496 |goto Dragonblight 40.7,18.1
step
talk Alexstrasza the Life-Binder##26917
turnin Audience With The Dragon Queen##12496 |goto Dragonblight 59.8,54.7
accept Galakrond and the Scourge##12497 |goto Dragonblight 59.8,54.7
step
talk Torastrasza##26949
turnin Galakrond and the Scourge##12497 |goto Dragonblight 59.5,53.3
accept On Ruby Wings##12498 |goto Dragonblight 59.5,53.3
step
Use your Ruby Beacon of the Dragon Queen |use Ruby Beacon of the Dragon Queen##38302
Click the red dragon to ride it |invehicle
step
Use the abilities on your hotbar
kill 30 Wastes Scavenger##28005 |q On Ruby Wings##12498/1 |goto Dragonblight 57.2,33.1
step
Use the abilities on your hotbar
kill Thiassi the Lightning Bringer##28018
kill Grand Necrolord Antiok##28006
click Scythe of Antiok##190354
collect Scythe of Antiok##38305 |q On Ruby Wings##12498/2 |goto Dragonblight 54.5,31.3
step
talk Alexstrasza the Life-Binder##26917
turnin On Ruby Wings##12498 |goto Dragonblight 59.8,54.7
accept Return To Angrathar##12500 |goto Dragonblight 59.8,54.7
step
talk Saurfang the Younger##25257
turnin Return To Angrathar##12500 |goto Dragonblight 40.7,18.1
step
achieve 547
Congratulations, you have earned the Veteran of the Wrathgate achievement! |only if achieved(547)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The 'Unbeatable?' Pterodactyl: BEATEN.",{
achieveid={5860},
description="Complete the Vigilance on Wings daily quest in Mount Hyjal 10 times.",
},[[
step
_Go inside_ the blue portal |goto Mount Hyjal 38.77,58.01 < 15 |walk
talk Farden Talonshrike##40578
You can only complete this quest _once a day_ so come back again tomorrow until you're finished
accept Vigilance on Wings##29177 |goto Mount Hyjal 37.2,56.2
step
click Twilight Weapon Rack##130
collect 1 Twilight Firelance##52716 |goto Mount Hyjal 37.2,56.1
step
_Equip_ the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40719 |c |goto Mount Hyjal 37.4,56.0
step
_Use_ your Flap ability on your hotbar repeatedly to fly to this green flag
kill 10 Twilight Lancers |q Vigilance on Wings##29177/1 |goto Mount Hyjal 36.6,53.4
step
talk Farden Talonshrike##40578
turnin Vigilance on Wings##29177 |goto Mount Hyjal 37.2,56.2
step
_You have completed_ the daily available for today
_Complete_ the Vigilance on Wings daily #10# more times |achieve 5860
step
Congratulations, you have _earned_ the _'Unbeatable?' Pterodactyl: BEATEN._ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\20 Dungeon Quests Completed",{
achieveid={4957},
author="support@zygorguides.com",
startlevel=1,
keywords={"Dungeon","Quests","Completed"},
description="This guide will walk you through completing the \"20 Dungeon Quests Completed\" Achievement.",
},[[
step
To earn this achievement, complete quests that correspond with a dungeon
Generally, there will be quests at the start of a dungeon
Use our dungeon guides to accomplish this
|tip Note that characters who have completed dungeon quests previous to this achievement being implemented may be bugged.
|tip It is advised to use a new character if you end up experiencing the bug.
Earn the _20 Dungeon Quests Completed_ achievement |achieve 4957
step
_Congratulations!_
You have earned the _20 Dungeon Quests Completed_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\20,000 Leagues Under the Sea",{
achieveid={5319},
description="Complete the Neptulon quests in Vashj'ir up to and including Defending the Rift.",
},[[
step
To earn this achievement, you will need to complete the Neptulon quests in Vashj'ir up to and including Defending the Rift
|tip Refer to our Vashj'ir leveling guide to achieve this.
Click here to load the "Vashj'ir (80-82)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Vashj'ir (80-90)"
Earn the _20,000 Leagues Under the Sea_ achievement |achieve 5319
step
Congratulations! You've earned the 20,000 Leagues Under the Sea achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\And the Meek Shall Inherit Kalimdor",{
achieveid={5868},
description="Help critters get revenge on the mean old fire elementals.",
},[[
step
label "MeekInheritStart"
talk Matoclaw##52669
accept Call the Flock##29147 |goto Mount Hyjal,27.2,62.6
or
confirm
step
talk Mylune##52671
You will only be able to accept one of these quests per day:
accept Punting Season##29101 |goto 27.1,62.0  |or
accept Those Bears Up There##29161 |goto 27.1,62.0 |or
or
confirm
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
Transform into the Wings of Aviana |invehicle |c |q 29147
only if havequest(29147)
step
Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks
|tip They are all birds that fly in the sky all around this area. Alpine Songbirds are small and white. Forest Owls are medium sized and gray. Goldwing Hawks are big and brown.
Gather 12 Alpine Songbirds |q 29147/1 |goto 14.1,41.8
Gather 5 Forest Owls |q 29147/2 |goto 14.1,41.8
Gather 2 Goldwing Hawks |q 29147/3 |goto 14.1,41.8
only if havequest(29147)
step
Click the _Quest Complete_ Box:
turnin Call the Flock##29147
accept Wings Aflame##29148
only if havequest(29147) or completedq(29147)
step
Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69212
kill Millagazor |q 29148/1 |goto 13.4,44.6
|tip One of your Alpine Songbirds must deal the killing blow on Millagazor, or you won't get credit. Luckily, you can summon Millagazor over and over until you get it.
Help an Alpine Songbird Get Revenge on the Mean Old Fire Elementals |achieve 5868/1 |goto 13.4,44.6
only if havequest(29148)
step
Click Children of Tortolla
|tip They look like small turtles on the ground around this area.
Use your Punt Turtle ability to punt the turtle at a Flame Terror
|tip Use your right mouse button to aim.
Help an Alpine Tortolla Get Revenge on the Mean Old Fire Elementals |achieve 5868/3 |goto 23.6,60.1
only if havequest(29101)
step
Click the Climbing Tree
|tip They look like small ladders leaning aginst the trees around this area.
Click Hyjal Bear Cubs in the tree
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw a cub at a living Brimstone Hound
|tip They look like big orange fire beasts on the ground all around this area.
Help a Hyjal Bear Cub Get Revenge on the Mean Old Fire Elementals |achieve 5868/2 |goto 14.3,33.0
only if havequest(29161)
step
kill Brimstone Hound##52795
|tip There are 2 squirrels sitting on this huge gray rock. Fight a Brimstone Hound next to this rock until one of the squirrels throws an acorn at it. You will hear a Bonk sound.
Help an Angry Little Squirrel Get Revenge on the Mean Old Fire Elementals |achieve 5868/4 |goto 12.7,34.8
Earn the And the Meek Shall Inherit Kalimdor achievement! |achieve 5868 |goto 12.7,34.8
step
Congratulations! You've earned the And the Meek Shall Inherit Kalimdor achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Beware of the 'Unbeatable?' Pterodactyl",{
achieveid={4959},
description="Complete the jousting quests in Mount Hyjal up to and including Egg Wave.",
},[[
step
click Warchief's Command Board##207325
accept Warchief's Command: Mount Hyjal!##27721 |goto Orgrimmar 49.7,76.5
You will automatically accept a quest by entering Orgrimmar
accept A Personal Summons##28790 |goto Orgrimmar 49.7,76.5
step
talk Farseer Krogar##45244
turnin A Personal Summons##28790 |goto 50.5,38.4
accept The Eye of the Storm##28805 |goto 50.5,38.4
step
clicknpc Waters of Farseeing##50088
Witness the Vision of the Farseer |q 28805/1 |goto 50.8,37.8
step
talk Farseer Krogar##45244
turnin The Eye of the Storm##28805 |goto 50.5,38.4
step
talk Emissary Windsong##39865
turnin Warchief's Command: Mount Hyjal!##27721 |goto Moonglade 45.5,44.9
accept As Hyjal Burns##25316 |goto Moonglade 45.5,44.9
step
talk Sebelia##40843
home Nordrassil |goto Mount Hyjal 63.1,24.1
step
talk Ysera##40928
turnin As Hyjal Burns##25316 |goto 62.0,24.9
accept Protect the World Tree##25317 |goto 62.0,24.9
step
talk Anren Shadowseeker##39925
accept The Earth Rises##25460 |goto 64.0,22.6
step
talk Tholo Whitehoof##40278
accept Inciting the Elements##25370 |goto 64.0,22.5
step
kill 8 Scalding Rock Elemental##40229+ |q 25460/1 |goto 65.8,20.8
click Juniper Berries##202754
collect 4 Juniper Berries##53009 |n
Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
|tip They look like small blue flying dragons around this area.
Follow the Faerie Dragons to find Twilight Inciters
kill 4 Twilight Inciter##39926+ |q 25370/1 |goto 65.8,20.8
step
talk Tholo Whitehoof##40278
turnin Inciting the Elements##25370 |goto 64.0,22.5
accept Flames from Above##25574 |goto 64.0,22.5
step
talk Anren Shadowseeker##39925
turnin The Earth Rises##25460 |goto 64.0,22.6
step
Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
Burn the Infiltrators' Encampment |q 25574/1 |goto 55.9,15.8
step
talk Tholo Whitehoof##40278
turnin Flames from Above##25574 |goto 64.0,22.5
step
talk Malfurion Stormrage##15362
turnin Protect the World Tree##25317 |goto 47.7,35.5
accept War on the Twilight's Hammer##25319 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept The Flameseer's Staff##25472 |goto 47.7,35.5
step
kill 4 Twilight Flamecaller##38926+ |q 25319/1 |goto 47.8,29.4
kill 10 Twilight Vanquisher##38913+ |q 25319/2 |goto 47.8,29.4
click Charred Staff Fragment##202846
collect 8 Charred Staff Fragment##54461 |q 25472/1 |goto 47.8,29.4
step
talk Malfurion Stormrage##15362
turnin War on the Twilight's Hammer##25319 |goto 47.7,35.5
turnin The Flameseer's Staff##25472 |goto 47.7,35.5
accept Flamebreaker##25323 |goto 47.7,35.5
step
Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
kill 30 Unbound Flame Spirit |q 25323/1 |goto 44.7,33.2
You can find more Blazebound Revenants found here |goto 48.5,29.2
step
talk Malfurion Stormrage##15362
turnin Flamebreaker##25323 |goto 47.7,35.5
accept The Return of Baron Geddon##25464 |goto 47.7,35.5
step
Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463
|tip He's a big fire elemental standing in the middle of this crater.
Weaken Baron Geddon 20 Times |q 25464/1 |goto 44.1,27.0
|tip Run away when you see Galrond of the Claw yell "Look out!".
step
talk Malfurion Stormrage##15362
turnin The Return of Baron Geddon##25464 |goto 47.7,35.5
step
talk Windspeaker Tamila##39869
accept Emerald Allies##25430 |goto 47.7,35.5
step
talk Alysra##38917
turnin Emerald Allies##25430 |goto 48.4,19.0
accept The Captured Scout##25320 |goto 48.4,19.0
step
talk Scout Larandia##40096
turnin The Captured Scout##25320 |goto 44.5,18.9
accept Twilight Captivity##25321 |goto 44.5,18.9
step
kill Twilight Overseer##40123
collect Twilight Overseer's Key##53139 |q 25321/1 |goto 44.4,20.7
step
talk Scout Larandia##40096
turnin Twilight Captivity##25321 |goto 44.5,18.9
accept Return to Alysra##25424 |goto 44.5,18.9
step
talk Alysra##38917
turnin Return to Alysra##25424 |goto 48.4,19.0
accept A Prisoner of Interest##25324 |goto 48.4,19.0
step
_Enter_ the cave |goto 52.6,17.3 < 10 |walk
Follow the path in the cave
talk Captain Saynna Stormrunner##40139
turnin A Prisoner of Interest##25324 |goto 56.8,18.8
accept Through the Dream##25325 |goto 56.8,18.8
step
_Leave_ the cave |goto 52.6,17.3 < 10 |walk
Deliver Arch Druid Fandral Staghelm |q 25325/1
step
talk Alysra##40178
turnin Through the Dream##25325 |goto 52.2,17.4
accept Return to Nordrassil##25578 |goto 52.2,17.4
step
talk Ysera##40928
turnin Return to Nordrassil##25578 |goto 62.0,24.9
accept The Return of the Ancients##25584 |goto 62.0,24.9
step
talk Oomla Whitehorn##39429
turnin The Return of the Ancients##25584 |goto 35.7,19.4
accept Harrying the Hunters##25255 |goto 35.7,19.4
step
talk Jadi Falaryn##39427
accept End of the Supply Line##25233 |goto 35.8,19.7
accept In the Rear With the Gear##25234 |goto 35.8,19.7
step
kill 6 Twilight Hunter##39437+ |q 25255/1 |goto 34.6,24.5
kill 4 Twilight Proveditor##39436+ |q 25233/1 |goto 34.6,24.5
|tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
click Twilight Supplies##202652
|tip You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
collect 36 Twilight Supplies##52568 |q 25234/1
step
talk Jadi Falaryn##39427
turnin End of the Supply Line##25233 |goto 35.8,19.7
turnin In the Rear With the Gear##25234 |goto 35.8,19.7
step
talk Oomla Whitehorn##39429
turnin Harrying the Hunters##25255 |goto 35.7,19.4
accept The Voice of Lo'Gosh##25269 |goto 35.7,19.4
step
talk Takrik Ragehowl##39432
turnin The Voice of Lo'Gosh##25269 |goto 30.1,31.7
accept Howling Mad##25270 |goto 30.1,31.7
step
kill Lycanthoth Vandal##39445+
collect 6 Polluted Incense##52658 |q 25270/1 |goto 29.0,31.4
step
talk Takrik Ragehowl##39432
turnin Howling Mad##25270 |goto 30.1,31.7
accept Lycanthoth the Corruptor##25272 |goto 30.1,31.7
step
Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682
|tip Inside the cave.
kill Lycanthoth##39446 |q 25272/1 |goto 32.4,37.3
step
talk Spirit of Lo'Gosh##39622
turnin Lycanthoth the Corruptor##25272 |goto 32.5,37.4
step
talk Spirit of Lo'Gosh##39622
accept The Shrine Reclaimed##25279 |goto 29.6,29.3
step
talk Takrik Ragehowl##39432
turnin The Shrine Reclaimed##25279 |goto 28.4,29.9
accept Cleaning House##25277 |goto 28.4,29.9
step
talk Royce Duskwhisper##39435
accept The Eye of Twilight##25300 |goto 28.3,30.0
step
talk Rio Duran##39434
accept From the Mouth of Madness##25297 |goto 28.2,29.9
step
click Bitterblossom##202703
collect Bitterblossom##52727 |q 25297/2 |goto 28.9,32.1
step
click Stonebloom##202702
collect Stonebloom##52726 |q 25297/1 |goto 26.5,35.0
step
click Eye of Twilight##206569
turnin The Eye of Twilight##25300 |goto 27.2,35.2
accept Mastering Puppets##25301 |goto 27.2,35.2
step
click Darkflame Ember##202705
collect Darkflame Ember##52728 |q 25297/3 |goto 28.4,35.8
step
click Twilight Cauldron##202706
turnin From the Mouth of Madness##25297 |goto 28.4,36.5
accept Free Your Mind, the Rest Follows##25298 |goto 28.4,36.5
step
_Enter_ the cave |goto 26.9,36.3 < 10 |walk
talk Kristoff Manheim##39797
accept Gar'gol's Gotta Go##25328 |goto 27.2,40.8
stickystart "miniongargol"
step
click Gar'gol's Personal Treasure Chest##204580
collect Rusted Skull Key##52789 |q 25328/1 |goto 26.5,38.5
step
click The Twilight Apocrypha##202712
turnin Mastering Puppets##25301 |goto 25.8,41.6
accept Elementary!##25303 |goto 25.8,41.6
step
clicknpc Crucible of Fire##39730
Activate the Crucible of Fire |q 25303/3 |goto 26.0,41.8
step
clicknpc Crucible of Earth##39737
Activate the Crucible of Earth |q 25303/1 |goto 25.6,41.7
step
clicknpc Crucible of Air##39736
Activate the Crucible of Air |q 25303/2 |goto 25.8,41.9
step
clicknpc Crucible of Water##39738
Activate the Crucible of Water |q 25303/4 |goto 26.0,41.6
step
click The Twilight Apocrypha##202712
turnin Elementary!##25303 |goto 25.8,41.6
accept Return to Duskwhisper##25312 |goto 25.8,41.6
step
label "miniongargol"
kill Hovel Brute##39642+, Hovel Shadowcaster##39643+
Slay 8 Minions of Gar'gol |q 25277/1 |goto 26.7,39.2
talk Twilight Servitor##39644
Administor the drought
Free 8 Twilight Servitors |q 25298/1 |goto 26.7,39.2
step
talk Kristoff Manheim##39797
turnin Gar'gol's Gotta Go##25328 |goto 27.2,40.8
accept Get Me Outta Here!##25332 |goto 27.2,40.8
step
Leave the cave |goto 27.1,36.0 < 10 |walk
Escort Kristoff Out |q 25332/1 |goto 27.1,36.0
step
talk Royce Duskwhisper##39435
turnin Return to Duskwhisper##25312 |goto 28.6,30.2
turnin Get Me Outta Here!##25332 |goto 28.6,30.2
step
talk Takrik Ragehowl##39432
turnin Cleaning House##25277 |goto 28.4,29.9
accept Sweeping the Shelf##25354 |goto 28.4,29.9
accept Lightning in a Bottle##25355 |goto 28.4,29.9
step
talk Rio Duran##39434
turnin Free Your Mind, the Rest Follows##25298 |goto 28.2,29.9
step
kill 8 Twilight Stormcaller##39843+ |q 25354/1 |goto 29.1,40.7
kill 5 Howling Riftdweller##39844+ |q 25354/2 |goto 29.1,40.7
click Lightning Channel##202743
collect Charged Condenser Jar##52834 |q 25355/1 |goto 29.1,40.7
step
Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
talk Spirit of Lo'Gosh##39622
turnin Lightning in a Bottle##25355
accept Into the Maw!##25617
step
Go inside the blue portal |goto 25.8,41.5 < 10 |walk
talk Jordan Olafson##40834
turnin Into the Maw!##25617 |goto 26.3,41.9
accept Forged of Shadow and Flame##25575 |goto 26.3,41.9
accept Crushing the Cores##25577 |goto 26.3,41.9
step
talk Yargra Blackscar##40837
accept Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
kill 12 Dark Iron Laborer##40838+ |q 25576/1 |goto 29.6,41.8
kill Searing Guardian##40841+
collect 8 Smoldering Core##55123 |n
Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123
|tip They are small anvils sitting on the ground around this area.
Destroy 8 Smoldering Cores |q 25577/1 |goto 29.6,41.8
click Twilight Arms Crate##9393+
Destroy 10 Twilight Arms Crates |q 25575/1 |goto 29.6,41.8
step
talk Yargra Blackscar##40837
turnin Rage of the Wolf Ancient##25576 |goto 26.3,42.0
step
talk Jordan Olafson##40834
turnin Forged of Shadow and Flame##25575 |goto 26.3,41.9
turnin Crushing the Cores##25577 |goto 26.3,41.9
accept Cindermaul, the Portal Master##25599 |goto 26.3,41.9
step
kill Cindermaul##40844 |q 25599/1 |goto 30.7,41.7
click Battered Stone Chest##203089
collect Tome of Openings##55136 |q 25599/2 |goto 30.7,41.7
step
talk Jordan Olafson##40834
turnin Cindermaul, the Portal Master##25599 |goto 26.3,41.9
accept Forgemaster Pyrendius##25600 |goto 26.3,41.9
step
click Portal Runes##2670+
Lure Forgemaster Pyrendius onto the activated Portal Runes
|tip This will weaken him and allow you to kill him.
kill Forgemaster Pyrendius##40845 |q 25600/1 |goto 31.9,46.3
step
talk Jordan Olafson##40834
turnin Forgemaster Pyrendius##25600 |goto 26.3,41.9
accept Return from the Firelands##25612 |goto 26.3,41.9
step
_Go inside_ the blue portal |goto 26.3,40.9 < 10 |walk
talk Takrik Ragehowl##39432
turnin Sweeping the Shelf##25354 |goto 28.4,29.9
turnin Return from the Firelands##25612 |goto 28.4,29.9
step
talk Vision of Ysera##46987
accept Aviana's Legacy##27874 |goto 28.4,29.8
step
talk Rio Duran##39434
accept The Fires of Mt. Hyjal##25630 |goto 28.2,29.9
step
talk Laina Nightsky##39927
turnin The Fires of Mt. Hyjal##25630 |goto 19.0,40.9
accept Fighting Fire With ... Anything##25381 |goto 19.0,40.9
accept Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
accept Save the Wee Animals##25385 |goto 19.2,37.9
step
talk Matoclaw##39928
accept If You're Not Against Us...##25404 |goto 19.0,37.0
step
talk Tyrus Blackhorn##39933
Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
Persuade Blackhorn |q 25404/1 |goto 22.3,44.9
step
talk Tyrus Blackhorn##39933
turnin If You're Not Against Us...##25404 |goto 22.3,44.9
accept Seeds of Their Demise##25408 |goto 22.3,44.9
step
kill Wailing Weed##40066+
collect 8 Bileberry##53102 |q 25408/1 |goto 21.1,42.6
step
talk Tyrus Blackhorn##39933
turnin Seeds of Their Demise##25408 |goto 22.3,44.9
accept A New Master##25411 |goto 22.3,44.9
step
kill Twilight Inferno Lord##39974
Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
Subjugate a Twilight Inferno Lord |q 25411/1 |goto 14.5,45.3
step
Next to you:
talk Subjugated Inferno Lord##40093
turnin A New Master##25411
accept The Name Never Spoken##25412
stickystart "ragingtwi"
step
click Southern Firestone##202763
Examine the Southern Firestone |q 25412/3 |goto 14.3,45.4
step
click Central Firestone##202764
Examine the Central Firestone |q 25412/2 |goto 11.6,41.5
step
click Northern Firestone##202765
Examine the Northern Firestone |q 25412/1 |goto 9.6,36.5
step
label "ragingtwi"
kill 10 Raging Firestorm##39939+ |q 25381/1 |goto 11.3,38.2
kill 6 Twilight Inferno Lord##39974+ |q 25382/1 |goto 11.3,38.2
clicknpc Panicked Bunny##39997+, Terrified Squirrel##39998+
collect 10 Frightened Animal##53060 |q 25385/1 |goto 11.3,38.2
step
talk Laina Nightsky##39927
turnin Fighting Fire With ... Anything##25381 |goto 19.0,40.9
turnin Disrupting the Rituals##25382 |goto 19.0,40.9
step
talk Mylune##39930
turnin Save the Wee Animals##25385 |goto 19.2,37.9
accept Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin The Name Never Spoken##25412 |goto 22.3,44.9
accept Black Heart of Flame##25428 |goto 22.3,44.9
stickystart "injfawn"
step
Use your Charred Branch while in the burning forest area |use Charred Branch##53464
kill Thol'embaar##40107
collect Black Heart of Thol'embaar##53454 |q 25428/1 |goto 12.9,41.4
step
label "injfawn"
clicknpc Injured Fawn##39999+
|tip You need 3 of them.
Lead the Injured Fawns back to Mylune at |goto 19.2,37.9
Escort 3 Injured Fawns Home |q 25392/1 |goto 12.5,44.6
step
talk Mylune##39930
turnin Oh, Deer!##25392 |goto 19.2,37.9
step
talk Tyrus Blackhorn##39933
turnin Black Heart of Flame##25428 |goto 22.3,44.9
accept Good News... and Bad News##29066 |goto 22.3,44.9
step
talk Laina Nightsky##39927
accept Last Stand at Whistling Grove##25940 |goto 19.0,40.9
step
talk Matoclaw##39928
turnin Good News... and Bad News##29066 |goto 19.0,37.0
step
talk Keeper Taldros##39932
turnin Last Stand at Whistling Grove##25940 |goto 13.7,32.8
accept The Bears Up There##25462 |goto 13.7,32.8
step
clicknpc Hyjal Bear Cub##52688+
Use your Climb Up ability to climb to the top of the tree
Use your Chuck-a-bear ability to throw the cubs down
|tip Aim the yellow spot at the bearskin trampoline on the ground.
Rescue 6 Hyjal Bear Cubs |q 25462/1 |goto 13.9,34.1
step
talk Keeper Taldros##39932
turnin The Bears Up There##25462 |goto 13.7,32.8
accept Smashing Through Ashes##25490 |goto 13.7,32.8
step
kill 8 Charbringer##40336+ |q 25490/1 |goto 16.4,51.8
step
talk Arch Druid Hamuul Runetotem##5769
turnin Smashing Through Ashes##25490 |goto 27.1,62.6
accept Durable Seeds##25491 |goto 27.1,62.6
accept Fresh Bait##25493 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
accept Firebreak##25492 |goto 27.1,63.0
step
kill 10 Lava Surger##46911+ |q 25492/1 |goto 34.0,53.2
kill Core Hound##46910+
collect 4 Core Hound Entrails##54609 |q 25493/1 |goto 34.0,53.2
click Scorched Soil##202884
collect 10 Hyjal Seedling##54574 |q 25491/1 |goto 34.0,53.2
step
talk Thisalee Crow##41006
accept The Wormwing Problem##25655 |goto 42.2,45.4
accept Scrambling for Eggs##25656 |goto 42.2,45.4
step
talk Choluna##41005
turnin Aviana's Legacy##27874 |goto 44.4,46.2
accept An Offering for Aviana##25663 |goto 44.4,46.2
step
Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
Offer the Nectar |q 25663/1 |goto 40.4,44.3
talk Mysterious Winged Spirit##41068
turnin An Offering for Aviana##25663 |goto 40.4,44.3
accept A Plea From Beyond##25665 |goto 40.4,44.3
step
kill Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
Slay 10 Wormwing Harpies |q 25655/1 |goto 36.9,43.4
click Stolen Hyjal Egg##203143
collect 8 Hyjal Egg##55189 |q 25656/1 |goto 36.9,43.4
step
talk Thisalee Crow##41006
turnin The Wormwing Problem##25655 |goto 42.2,45.4
turnin Scrambling for Eggs##25656 |goto 42.2,45.4
accept A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Plea From Beyond##25665 |goto 44.4,46.2
accept A Prayer and a Wing##25664 |goto 44.4,46.2
step
click Harpy Signal Fire##7290
Fight Marion Wormwing until she gets captured |q 25731/1 |goto 38.4,44.2
talk Marion Wormwing##41112
Ask her why she is stealing eggs, then tell Thisalee to kill her
Interrogate Marion Wormwing |q 25731/2 |goto 38.4,44.2
step
Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211
|tip It's a huge bird nest sitting on top of this mountain peak.
kill Blaithe##41084
collect Ancient Feather##55210 |q 25664/1 |goto 39.2,37.1
step
talk Thisalee Crow##41006
turnin A Bird in Hand##25731 |goto 42.2,45.4
step
talk Choluna##41005
turnin A Prayer and a Wing##25664 |goto 44.4,46.2
step
Go upstairs in the Shrine of Aviana
talk Skylord Omnuron##40997
accept Fact-Finding Mission##25740 |goto 43.5,45.9
step
talk Arch Druid Hamuul Runetotem##5769
turnin Durable Seeds##25491 |goto 27.1,62.6
turnin Fresh Bait##25493 |goto 27.1,62.6
accept Hell's Shells##25507 |goto 27.1,62.6
step
talk Rayne Feathersong##40331
turnin Firebreak##25492 |goto 27.1,63.0
accept Prepping the Soil##25502 |goto 27.1,63.0
step
click Flameward##7340
Activate the Flameward |q 25502/1 |goto 33.0,64.6
Defend the Flameward |q 25502/2 |goto 33.0,64.6
step
talk Thisalee Crow##41006
turnin Fact-Finding Mission##25740 |goto 32.8,70.8
accept Sethria's Brood##25746 |goto 32.8,70.8
accept A Gap in Their Armor##25758 |goto 32.8,70.8
step
click Codex of Shadows##203207
accept The Codex of Shadows##25763 |goto 31.3,77.1
step
kill Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
Slay 12 Sethria's Minions |q 25746/1 |goto 30.9,76.7
click Twilight Armor Plate##203198
collect 8 Twilight Armor Plate##55809 |q 25758/1 |goto 30.9,76.7
step
talk Thisalee Crow##41006
turnin Sethria's Brood##25746 |goto 32.8,70.8
turnin A Gap in Their Armor##25758 |goto 32.8,70.8
accept Disassembly##25761 |goto 32.8,70.8
turnin The Codex of Shadows##25763 |goto 32.8,70.8
accept Egg Hunt##25764 |goto 32.8,70.8
step
Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883
|tip Use Thisalee's Shiv multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
kill 3 Twilight Juggernaut##41031+ |q 25761/1 |goto 31.1,76.7
click Shadow Cloak Generator##203208
Unveil and Defend Aviana's Egg |q 25764/1 |goto 31.1,76.7
step
talk Thisalee Crow##41006
turnin Disassembly##25761 |goto 32.8,70.8
turnin Egg Hunt##25764 |goto 32.8,70.8
accept Sethria's Demise##25776 |goto 32.8,70.8
step
kill Sethria##41255
Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
kill Sethria##41255 |q 25776/1 |goto 35.5,98.0
step
talk Thisalee Crow##41006
turnin Sethria's Demise##25776 |goto 32.8,70.8
accept Return to the Shrine##25795 |goto 32.8,70.8
step
Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744
|tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
clicknpc Nemesis##40340
|tip He will become friendly.
collect Nemesis Shell Fragment##54745 |q 25507/1 |goto 37.4,52.3
step
talk Choluna##41005
turnin Return to the Shrine##25795 |goto 44.4,46.2
accept An Ancient Reborn##25807 |goto 44.4,46.2
step
Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016
|tip Aviana's Egg is in the tree tower, in a side room.
Burn Herald's Incense |q 25807/1 |goto 44.3,47.9
step
talk Aviana##41308
turnin An Ancient Reborn##25807 |goto 44.3,48.0
step
talk Morthis Whisperwing##41003
accept The Hatchery Must Burn##25810 |goto 44.1,45.9
step
Go inside the blue portal |goto 38.8,58.0 < 10 |walk
talk Farden Talonshrike##40578
turnin The Hatchery Must Burn##25810 |goto 37.2,56.2
accept Flight in the Firelands##25523 |goto 37.2,56.2
step
click Twilight Weapon Rack##130
collect Twilight Firelance##52716 |q 25523 |goto 37.2,56.2
step
Equip the Twilight Firelance |use Twilight Firelance##52716
clicknpc Aviana's Guardian##40723 |invehicle |goto 37.4,56.0
step
Use your Flap ability on your hotbar repeatedly to fly to this green flag
Visit the Guardian Flag |q 25523/1 |goto 36.4,53.2
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Flight in the Firelands##25523 |goto 37.2,56.2
accept Wave One##25525 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Buzzards to joust them
kill 10 Twilight Knight Rider##39835+ |q 25525/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave One##25525 |goto 37.2,56.2
accept Wave Two##25544 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Fly into Twilight Firebirds to joust them
|tip Be careful, don't let the burning Falling Boulders hit you.
kill 10 Twilight Lancer##40660+ |q 25544/1 |goto 36.8,54.0
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Wave Two##25544 |goto 37.2,56.2
accept Egg Wave##25560 |goto 37.2,56.2
step
Use your Flap ability on your hotbar repeatedly to fly around this area
Run over Firelands Eggs
|tip They look like blue eggs on the ground around this area.
Destroy #40# Firelands Eggs |q 25560/1 |goto 33.3,56.9
You can find more Firelands Eggs around this area |goto 35.8,53.6
step
Use your Flap ability on your hotbar repeatedly to fly to this spot
talk Farden Talonshrike##40578
turnin Egg Wave##25560 |goto 37.2,56.2
achieve 4959
step
Congratulations, you have obtained the _Beware of the 'Unbeatable?' Pterodactyl_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Bounce",{
achieveid={5483},
description="Stay on the trampoline in the Whistling Grove in Mount Hyjal for 20 consecutive bounces.",
},[[
step
You will be able to _control your character_ mid air by turning them in the direction you want to go
|tip Steer your character back into the area of the trampoline.
Stay on the trampoline and jump 20 times consecutively |achieve 5483 |goto Mount Hyjal 13.6,33.2
step
Congratulations, you have _earned_ the _Bounce_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Coming Down the Mountain",{
achieveid={4870},
author="support@zygorguides.com",
startlevel=80,
description="This guide will walk you through completing the \"Coming Down the Mountain\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Hyjal
|tip Refer to our leveling guides to achieve this.
Click here to load the "Mount Hyjal (80-90)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Mount Hyjal (80-90)"
_Complete the following story chapters:_
The Return of the Ancients |achieve 4870/1
Shrine of Goldrinn |achieve 4870/2
Foray into the Firelands |achieve 4870/3
Grove of Aessina |achieve 4870/4
Awakening Tortolla |achieve 4870/5
Shrine of Aviana |achieve 4870/6
The Ancients |achieve 4870/7
Cavorting with Cultists |achieve 4870/8
Extinguish the Firelord |achieve 4870/9
step
Earn the _Coming Down the Mountain_ achievement |achieve 4870
step
_Congratulations!_
You have earned the _Coming Down the Mountain_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Consumed by Nightmare",{
achieveid={5451},
description="Endure the nightmares of Iso'rath in the Twilight Highlands.",
},[[
step
For this achievement, you'll want to complete our Twilight Highlands quests guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Death From Above",{
achieveid={5874},
description="Bomb the following elementals during a bombing run in the Molten Front.",
},[[
step
The easiest way to do this achievement is to accept the daily and NEVER turn it in until you have completed the achievement
|tip This will allow you to try every single day.
confirm
step
talk Arthorn Windsong##53259
accept Fire in the Skies##29290 |goto Molten Front 34.3,56.4
|tip You will not be able to accept this quest every single day - it's a random daily.
step
Click the Trained Fire Hawk to ride on it
|tip It looks like a big orange armored eagle.
Use your abilities on your action bar on these mobs below as you fly on the Fire Hawk
|tip They are all large fire elementals that spawn on a small hill to the right as you leave the Beth'tilac spider section as you fly. Hitting them with a single bomb will work, you don't have to kill them.
Bomb Ragepyre |achieve 5874/2
Bomb Blazefury |achieve 5874/6
Bomb Flashfire |achieve 5874/3
Bomb Hatespark |achieve 5874/4
Bomb Heatflayer |achieve 5874/5
Bomb Singeslayer |achieve 5874/1
Earn the Death From Above achievement! |achieve 5874 |goto 33.9,57.2
step
Congratulations! You've earned the Death From Above achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Deep into Deepholm",{
achieveid={4871},
author="support@zygorguides.com",
startlevel=83,
description="This guide will walk you through completing the \"Deep into Deepholm\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Deepholm
|tip Refer to our leveling guides to achieve this.
Click here to load the "Deepholm (81-90)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Deepholm (81-90)"
_Complete the following story chapters:_
The Middle World Pillar Fragment |achieve 4871/1
The Upper World Pillar Fragment |achieve 4871/2
The Stone Lords |achieve 4871/3
Mending the Wound |achieve 4871/4
step
Earn the _Deep into Deepholm_ achievement |achieve 4871
step
_Congratulations!_
You have earned the _Deep into Deepholm_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Dragonmaw Tour of Duty",{
achieveid={5482},
description="Explore all the nooks and crannies of the Thundermar Ruins in Twilight Highlands and impress your Dragonmaw allies.",
},[[
step
kill High Shaman MacKilligan##46885
Slay High Shaman MacKilligan |achieve 5482/3 |goto Twilight Highlands,46.0,32.4
step
kill Black Recluse##47115
Slay Black Recluse |achieve 5482/6 |goto 45.8,31.6
step
kill Dillan MacHurley##46378
Slay Dillan MacHurley |achieve 5482/4 |goto 46.2,37.2
step
kill Gunwald Greybeard##46376
Slay Gunwald Greybeard |achieve 5482/1 |goto 45.2,42.8
step
kill Cliff Thundermar##46377
Slay Cliff Thundermar |achieve 5482/2 |goto 51.8,28.4
step
kill Korthalon##47171
Slay Korthalon |achieve 5482/5 |goto 52.0,27.6
Earn the Dragonmaw Tour of Duty achievement! |achieve 5482
step
Congratulations! You've earned the Dragonmaw Tour of Duty achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fading into Twilight",{
achieveid={5501},
author="support@zygorguides.com",
startlevel=84,
description="This guide will walk you through completing the \"Fading into Twilight\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 95 quests in Twilight Highlands_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Twilight Highlands (84-85)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Twilight Highlands (84-90)"
Earn the _Fading into Twilight_ achievement |achieve 5501
step
_Congratulations!_
You have earned the _Fading into Twilight_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Fiery Lords of Sethria's Roost",{
achieveid={5861},
author="support@zygorguides.com",
startlevel=85,
description="This guide will walk you through completing the \"The Fiery Lords of Sethria's Roost\" achievement.",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.2,61.8
step
label "first"
kill Kelbnar##53265 |achieve 5861/3 |goto Mount Hyjal 30.8,82.2
_Click here_ if Kelbnar can't be found |confirm
step
kill Fah Jarakk##53271 |achieve 5861/1 |goto Mount Hyjal 31.0,86.6
_Click here_ if Fah Jarakk can't be found |confirm
step
kill Searris##53264 |achieve 5861/2 |goto Mount Hyjal 35.6,97.6
_Click here_ if Searris can't be found |confirm
step
kill Andrazor##53267 |achieve 5861/4 |goto Mount Hyjal 35.6,97.6
|tip He flies all around Setheria's Roost
_Click here_ if Searris can't be found |confirm |next "first"
step
Congratulations, you have earned The Fiery Lords of Setheria's Roost achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fireside Chat",{
achieveid={5870},
description="Speak with characters during the attack on the Molten Front.",
},[[
step
label "prequest"
#include "H_Firelands_PreQuests"
step
label "achieve"
Routing to proper section |next "day_2" |only if achieved(5870/1)
Routing to proper section |next |only if default
step
You will need to do the firelands daily quests in order to talk to the next npc's
If you haven't already done so, it will take you at least two days due to phasing
Do the dailies up until you get the quests 'The Forlorn Spire' or 'Into the Fire'
talk Matoclaw##52669
Ask about the ancient, Malorne |achieve 5870/2 |goto Mount Hyjal 27.2,62.6
step
talk Commander Jarod Shadowsong##52134
Ask him what the Marks of the World Tree are |achieve 5870/3 |goto Molten Front 45.4,83.2
step
talk Malfurion Stormrage##52135
Ask him how the battle is going |achieve 5870/1 |goto Molten Front 47.0,91.0
step
label "day_2"
talk Avrilla##52489
You will only be able to accept one of these quests per day:
accept Some Like It Hot##29299 |or |goto Molten Front 50.6,87.2
accept Embergris##29255 |or |goto Molten Front 50.6,87.2
accept Steal Magmolias##29257 |or |goto Molten Front 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to accept one of these quests per day:
accept Aggressive Growth##29139 |or |goto 48.7,86.9
accept Wisp Away##29143 |or |goto 48.7,86.9
step
talk Ricket##53196
|tip She will not offer a quest in this location, on some days. On those days, she will offer a quest later, in a different location.
You will only be able to accept one of these quests per day:
accept A Bitter Pill##29263 |or |goto 46.8,90.2
accept Living Obsidium##29278 |or |goto 46.8,90.2
step
talk Captain Irontree##53080
accept Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
Ask about the Sentinel Tree  |achieve 5870/8
You will only be able to accept two of these quests per day:
accept Hostile Elements##29179 |or 2 |goto 45.6,85.8
accept Traitors Return##29142 |or 2 |goto 45.6,85.8
accept The Harder They Fall##29141 |or 2 |goto 45.6,85.8
accept Breach in the Defenses##29137 |or 2 |goto 45.6,85.8
accept The Dogs of War##29304 |or 2 |goto 45.6,85.8
stickystart "obsidiummeteor"
stickystart "magmolia"
step
Stand next to the fire portal with your Wisp
|tip It looks like 2 steam vents and black smoke riding out of the ground.
kill Firekin##53092+
Close a Fire Portal |q 29143/1 |goto 51.6,65.0
only if havequest(29143)
step
kill Emberspit Scorpion##53240+
|tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1 |goto 50.7,50.8
only if havequest(29299)
step
Click Lava Bubbles
|tip They look like big light orange bubbles in the pools of lava around this area.
Use The Bitter Pill when the Subterranean Magma Worm is almost don casting its Burning Hunger spell |use The Bitter Pill##69759
kill Subterranean Magma Worm |q 29263/1 |goto 52.8,49.9
only if havequest(29263)
step
label "obsidiummeteor"
Click Magnetic Stones
|tip They look like stone spikes pointing upward on the ground around this area.
Click Obsidium Meteorites
|tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
collect 10 Obsidium Meteorite##69807 |q 29278/1 |goto 50.0,50.8
only if havequest(29278)
step
label "magmolia"
Click Magmolias
|tip They look like white flowers on the surface of the pools of lave around this area.
collect 8 Magmolia##69725 |q 29257/1 |goto 50.7,50.8
only if havequest(29257)
step
kill Charred Soldier##52504+, Charred Vanquisher##52503+
collect 5 Embergris##69722 |q 29255/1 |goto 48.2,75.8 |only if havequest(29255)
kill 8 Charred Combatant |q 29179/1 |goto 48.2,75.8 |only if havequest(29179)
kill 3 Druid of the Flame |q 29142/1 |goto 48.2,75.8 |only if havequest(29142)
kill 5 Lava Burster |q 29137/1 |goto 48.2,75.8 |only if havequest(29137)
kill 5 Ancient Charhound |q 29304/1 |goto 48.2,75.8 |only if havequest(29304)
Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240 |only if havequest(29138)
|tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
Save 8 Wounded Hyjal Defenders |q 29138/1 |goto 48.2,75.8 |only if havequest(29138)
Click Ash Piles |only if havequest(29139)
|tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
Plant 5 Smothervines |q 29139/1 |goto 48.2,75.8 |only if havequest(29139)
only if havequest(29255) or havequest(29179) or havequest(29142) or havequest(29137) or havequest(29304) or havequest(29138) or havequest(29139)
step
kill 3 Molten Behemoth |q 29141/1 |goto 47.2,83.7
only if havequest(29141)
step
talk Avrilla##52489
You will only be able to turn in one of these quests per day:
turnin Some Like It Hot##29299 |goto 50.6,87.2
turnin Embergris##29255 |goto 50.6,87.2
turnin Steal Magmolias##29257 |goto 50.6,87.2
step
talk Rayne Feathersong##52467
You will only be able to turn in one of these quests per day:
turnin Aggressive Growth##29139 |goto 48.7,86.9
turnin Wisp Away##29143 |goto 48.7,86.9
step
talk Damek Bloombeard##53214
You will only be able to turn in one of these quests per day:
turnin A Bitter Pill##29263 |goto 46.9,90.0
turnin Living Obsidium##29278 |goto 46.9,90.0
step
talk Captain Irontree##53080
turnin Burn Victims##29138 |goto 45.6,86.2
step
talk General Taldris Moonfall##52824
You will only be able to turn in two of these quests per day:
turnin Hostile Elements##29179 |goto 45.6,85.8
turnin Traitors Return##29142 |goto 45.6,85.8
turnin The Harder They Fall##29141 |goto 45.6,85.8
turnin Breach in the Defenses##29137 |goto 45.6,85.8
turnin The Dogs of War##29304 |goto 45.6,85.8
step
talk General Taldris Moonfall##52824
Decide which daily quest line you want to complete:
|tip You can only do one of these quest lines per day.
accept Into the Fire##29206 |or |goto 45.6,85.8 |next "DruidoftheTalon"
accept The Forlorn Spire##29205 |or |goto 45.6,85.8 |next "ShadowWardens"
step
label "DruidoftheTalon"
Stand in this spot and wait for a Windcaller to start walking into the fire
|tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
Follow the Windcaller through the fire |tip Walk behind them so the flames don't burn you.
kill Flamewaker Assassin##53328+
kill Pyrelord##52683
Protect the Druid of the Talon Windcaller |q 29206/1 |goto 43.0,80.2
only if havequest(29206)
step
talk Thisalee Crow##52444
Ask her How do I get out of here |achieve 5870/5
turnin Into the Fire##29206 |goto Molten Front,42.5,59.7
accept Flamewakers of the Molten Flow##29264 |goto Molten Front,42.5,59.7
accept Fire Flowers##29265 |goto Molten Front,42.5,59.7
step
talk Anren Shadowseeker##52478
accept Hounds of Shannox##29274 |goto 41.9,61.5
step
kill Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
kill 8 Flamewaker |q 29264/1 |goto 48.8,60.0
Click Luciferns
|tip They look like small red plants on the ground around this area.
collect 5 Lucifern##69765 |q 29265/1 |goto 48.8,60.0
only if havequest(29264) or havequest(29265)
step
kill Charhound##53152+
collect 6 Houndbone Ash##69816 |q 29274/1 |goto 43.2,51.2
only if havequest(29274)
step
talk Anren Shadowseeker##53233
accept Need... Water... Badly...##29272 |goto 51.9,31.0
step
talk Anren Shadowseeker##53233
Tell her let's get him out of this cave
Follow Anren Shadowseeker through the cave using the air vents
Escort Anren to the Front of the Cave |q 29272/1 |goto 51.9,31.0
step
talk Thisalee Crow##52444
turnin Flamewakers of the Molten Flow##29264 |goto 42.5,59.7
step
talk Arthorn Windsong##53259
Ask her what she can tell you about the fire hawks |achieve 5870/6 |goto Molten Front,34.2,56.4
step
Earn the 'Fireside Chat' Achievement. |achieve 5870 |next "gratz"
If you chose to do 'Into the Fire' first, click here to reset the guide for tomorrow. |confirm |next "day_2"
step
label "ShadowWardens"
Wait until the named mobs starts walking up the big ramp
|tip The named mobs' health bars will appear beneath your minimap.
Protect the named mobs and help them fight
|tip They must stay alive for the entire quest, so don't let them die.
Protect the Druid Assault Group |q 29205/1 |goto 54.7,70.9
only if havequest(29205)
step
talk Marin Bladewing##52494
turnin The Forlorn Spire##29205 |goto Molten Front,64.9,67.3
step
talk Deldren Ravenelm##52921
Ask what he can tell you about the spiders |achieve 5870/7 |goto 66.1,63.9
step
Earn the 'Fireside Chat' Achievement |achieve 5870 |next "gratz"
If you chose to do 'Into the Fire' first, click here to reset the guide for tomorrow |confirm |next "day_2"
step
label "gratz"
Speak with the characters during the attack on the Molten Front |achieve 5870
step
Congratulations! You've earned the Fireside Chat achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Flawless Victory",{
achieveid={5867},
description="Solo kill a Molten Behemoth in the Molten Front without taking any damage from Molten Stomp or Fiery Boulder.",
},[[
step
kill Molten Behemoth##52552
At level 100 the Molten Behemoths are at their hardest a _two shot kill_ making this achievement hard not to accomplish
_Solo kill_ a Molten Behemoth without taking any damage from Molten Stomp or Fiery Boulder |achieve 5867 |goto Molten Front 52.9,49.0
step
Congratulations, you have _earned_ the _Flawless Victory_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fungal Frenzy",{
achieveid={5450},
description="Suffer the effects of a Poolstool, Shuffletruffle, Shrinkshroom and Trapcap simultaneously.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(26709)
Routing to proper section |next "fury" |only if completedq(26709)
step
label "prequest"
#include "H_Therazane_PreQuest"
step
label "fury"
talk Gorsik the Tumultuous##43804
accept Fungal Fury##27050 |goto Deepholm,57.3,12.5
step
For this achievement you will be required to click mushrooms that put a buff on you
Each buff lasts 2 minutes and you will need to have all three types on you at once when you click the last one
Since the mushrooms spawn randomly, it's a good idea to survey the area first, finding as many of the different mushrooms as possible so you can plan your route
Walking through water will remove any of the buffs you already have on
confirm
step
click Sprouting Crimson Mushroom##205147
Click the mushrooms in this order:
Click a red mushroom and get the Poolstool buff.
Click a white mushroom with brown spots and get the Shrinkshroom buff.
Click a blue mushroom and get the Shuffletruffle buff.
Click a purple mushroom with pink spots.
Earn the Fungal Frenzy achievement! |achieve 5450 |goto 74.0,41.2
step
Congratulations!  You've earned the Fungal Frenzy achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Fungalophobia",{
achieveid={5445},
description="Defeat Fungalmancer Glop during the Glop, Son of Glop daily quest in Deepholm without taking any damage from his Boomshrooms.",
},[[
step
label "p_quest"
#include "H_Therazane_PreQuest"
step
label "d_quest"
#include "Therazane_Dailies"
step
label "next"
talk Ruberick##44973
accept Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
|tip This quest can be offered at random if you have at least Revered reputation with Therazane. However the quest may not be offered everyday.
step
_Enter_ the cave |goto Deepholm/0 68.7,28.7 < 10 |walk
talk Earthmender Norsala##43503
_Tell her_ "I'm ready when you are."
kill Fungalmancer Glop |q Glop, Son of Glop##28390/1 |goto Deepholm 69.8,31.9
_Follow_ him each time he runs away
_Avoid_ the mushrooms as you walk because they will give you a debuff
While fighting Fungalmancer Glop _kill_ the Boomshrooms he creates _or avoid them altogether_
You _must not be hit_ by anything he creates so _keep moving_ when he throws the Boomshrooms
step
talk Ruberick##44973
turnin Glop, Son of Glop##28390 |goto Deepholm 59.6,14.0
step
If you didn't get the achievement _you were hit_ during the encounter. You will _have to try again another day_. |only if not achieved(5445)
Congratulations, you have _earned_ the _Fungalophobia_ achievement! |only if achieved(5445)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Gang War",{
achieveid={5864},
description="This guide will walk you through wining a duel in Sethria's Roost while on the quest 'The Protectors of Hyjal.'",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
step
Duel another player around this area and win |achieve 5864 |goto Mount Hyjal 30.7,75.9
|tip You and a friend can get this achievement easily by dueling each other and letting each other win.
step
Congratulations, you have earned the Gang War achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Glop Family Line",{
achieveid={5446},
description="Complete the Glop, Son of Glop daily quest in Deepholm 10 times.",
},[[
step
In order to possibly earn this achievement, you will need to be at least Revered with Therazane.
This quest may not be offered every day. This will not effect the achievement, since it requires that you complete Glop, Son of Glop 10 times (rather than 10 times consecutively).
confirm
step
Routing to proper section |next "prequest" |only if not completedq(26709)
Routing to proper section |next "glop" |only if completedq(26709)
step
label "prequest"
#include "H_Therazane_PreQuest"
step
label "glop"
talk Ruberick##44973
accept Glop, Son of Glop##28390 |goto Deepholm,59.6,14.0 |only if rep ('Therazane') >= Revered
step
talk Earthmender Norsala##43503
Tell her you're ready when she is
kill Fungalmancer Glop |q 28390/1 |goto 69.8,31.9
Follow him each time he runs away
Avoid the mushrooms as you walk, they will give you a debuff
While fighting Fungalmancer Glop, kill the Boomshrooms he creates
You can either kill them or avoid them altogether
They have around 3,000 health.  You must not be hit by anything he creates
Keep moving when he throws the Boomshrooms
step
talk Ruberick##44973
turnin Glop, Son of Glop##28390 |goto Deepholm,59.6,14.0 |only if rep ('Therazane') >= Revered
|tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
Remember, you will need to complete this quest 10 times in order to earn this achievement
Check your achievements log to see your progress
step
Earn The Glop Family Line Achievement |achieve 5446
step
Congratulations! You've earned The Glop Family Line achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Have... Have We Met?",{
achieveid={5865},
description="Acknowledge your recognition by /waving at the following NPCs in Sethria's Roost.",
},[[
step
talk Captain Soren Moonfall##53073
accept The Protectors of Hyjal##29128 |goto Mount Hyjal 27.3,61.6
step
_Perform_ the Wave emote on the following NPCs |script DoEmote("WAVE")
|tip They are NPCs that follow players around this area. The NPCs that follow each player are not always the same, so you may have to look around in different groups for all of these.
_Wave at_ Linken |achieve 5865/1 |goto 30.7,75.9
_Wave at_ Hemet Nesingwary |achieve 5865/2 |goto 30.7,75.9
_Wave at_ Nat Pagle |achieve 5865/3 |goto 30.7,75.9
_Wave at_ Chromie |achieve 5865/4 |goto 30.7,75.9
_Wave at_ Mankrik |achieve 5865/5 |goto 30.7,75.9
_Wave at_ Thassarian |achieve 5865/6 |goto 30.7,75.9
step
Congratulations, you have _earned_ the _Have... Have We Met?_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Help the Bombardier! I'm the Bombardier!",{
achieveid={5317},
description="Kill 10 Schnotzz infantry with one artillery shell during the Fire From the Sky daily quest in Uldum.",
},[[
step
talk Weathered Nomad##49523
accept Fire From the Sky##28736 |goto Uldum 41.4,5.5
step
clicknpc Confiscated Artillery##49499 |goto 42.0,5.0
_Use_ the Designate Target ability on one of the groups of mobs
|tip The achievement is done by hitting 10 targets at once. To do this you use two artillery shells in succession: target one group at the top of the stairs with the first shot, then target a group at the bottom for the second shot.
Kill 10 Schnotzz Infantry with one artillery shell during the Fire From the Sky daily quest |achieve 5317
step
Congratulations, you have _earned_ the _Help the Bombardier! I'm the Bombardier!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Infernal Ambassadors",{
achieveid={5869},
description="Slay the elite invaders of Hyjal.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(25372)
Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "H_Firelands_PreQuests"
step
label "achieve"
kill Pyrachnis##52749
Slay Pyrachnis without using the Emerald of Aessina |achieve 5869/3 |goto Mount Hyjal,13.4,44.7
|tip This is easiest with a group, or with a pet, if you have one.
step
kill Millagazor##52649
Slay Millagazor without taking damage from Gout of Flame |achieve 5869/2 |goto 13.4,44.6
|tip When Millagazor starts casting Gout of Flame, move around so that you don't get hurt
step
kill Lylagar##52766
Slay Lylagar without taking damage from Lylagar Breath |achieve 5869/1 |goto 41.8,56.0
|tip When Lylagar starts casting Lylagar Breath, move around so that you don't get hurt.
step
kill Galenges##52399
Slay Galenges before he is weakened a second time |achieve 5869/4  |goto 41.7,56.1
|tip Get a group of people to help you kill Galenges really fast.
step
kill Nemesis##52383
Slay Nemesis at Ashen Lake without taking damage from Molten Fury |achieve 5869/5 |goto 24.1,55.7
|tip Run into Tooga's yellow bubble shield before Nemesis finishes casting Molten Fury, so you don't take any damage from it.  You will see a message in your chat when Nemesis is about to errupt.
Earn the Infernal Ambassadors achievement! |achieve 5869
step
Congratulations! You've earned the Infernal Ambassadors achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\King of the Mountain",{
achieveid={5321},
description="Complete the Twilight's Hammer quest chain in Twilight Highlands up to and including Skullcrusher the Mountain.",
},[[
step
For this achievement, you'll want to complete our Twilight Highlands quests guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\King of the Spider-Hill",{
achieveid={5872},
description="Reach the highest point in the Widow's Clutch within the Molten Front.",
},[[
step
_NOTE_: These are almost impossible to hit without killing at level 100. In order to avoid this use abilities that taunt but do not cuase damage. Hunter's Trap Launcher with an Ice Trap works well as an example.
kill Cinderweb Spinner##52981+
|tip They're high up on the tall rock pillars. Attack them and they will shoot a web to bring you up.
_Keep doing this_ to reach the highest point in the Widow's Clutch |achieve 5872 |goto Molten Front 66.0,56.8
step
Congratulations, you have _earned_ the _King of the Spider-Hill_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Legacy of Leyara",{
achieveid={5859},
description="Complete the Leyara quests in Mount Hyjal and the Molten Front.",
},[[
#include "H_Firelands_PreQuests"
step
Complete venturing Into the Depths |achieve 5859/3
Earn the Legacy of Leyara achievement! |achieve 5859
step
Congratulations! You've earned the Legacy of Leyara achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Loremaster of Cataclysm",{
achieveid={4875},
description="Complete all the storyline achievements in all the zones of the game.",
},[[
step
Use the Cataclysm Leveling Guides to complete Loremaster:
|tip The Leveling guides cover all required questlines for Loremaster.
|tip Click one of the lines below to load the Leveling guide for that zone.
Mount Hyjal Quests |achieve 4870 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-90)\\Mount Hyjal (80-90)"
Vashj'ir Quests |achieve 4982 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-90)\\Vashj'ir (80-90)"
Deepholm Quests |achieve 4871 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-90)\\Deepholm (81-90)"
Uldum Quests |achieve 4872 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-90)\\Uldum (83-90)"
Twilight Highlands Quests |achieve 5501 |loadguide "Zygor's Leveling Guides\\Cataclysm (80-90)\\Twilight Highlands (84-90)"
step
Congratulations, you have _earned_ the _Loremaster of Cataclysm_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Ludicrous Speed",{
achieveid={5862},
description="While on the quest Call the Flock in Mount Hyjal, obtain 65 stacks of Soar.",
},[[
step
talk Matoclaw##52669
accept Call the Flock##29147 |goto Mount Hyjal 27.2,62.5
step
_Use_ your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
_Abandon_ the quest Call of the Flock
_Click here_ once you've abandoned the quest |confirm
step
_Use_ your Call the Flock ability near trees, Forest Owls, and the Goldwing Hawks that fly around this area |tip Do this as fast as possible. Each bird you recruit gives and refreshes your a stacks of soar, but it wears off rather quickly. If you can, go for Goldwing Hawks
_Obtain_ 65 stacks of Soar |achieve 5862 |goto Mount Hyjal 19.8,41.4
step
Congratulations, you have _earned_ the _Ludicrous Speeds_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Master of the Molten Flow",{
achieveid={5871},
description="This guide will walk you through completing various challenges within the Molten Flow.",
},[[
step
kill Flamewaker Shaman##53093
|tip When the Flamewaker Shaman casts Flamewave on you, back up so that the shaman moves to stand in the patch of fire on the ground, then kill it.
Kill a Flamewaker Shaman with his own Flamewave |achieve 5871/1 |goto Molten Front 48.8,60.0
step
kill Flamewaker Sentinel##53085
|tip When the Flamewaker Sentinel picks up one of your party members, quickly kill it while it's still carrying them.
Kill a Flamewaker Sentinel while it is carrying a party member |achieve 5871/2 |goto Molten Front 48.8,60.0
step
kill Flamewaker Hunter##53143
|tip Stand on one of the thermal air vents, and attack a Flamewaker Hunter. As it begins to channel its Wild Barrage ability, jump. Immediately run to the next air vent and keep doing that until the Wild Barrage is over. You might want to plan the air vent path you'll take before starting the fight, so you'll know exactly where you'll be running ahead of time.
Survive a Flamewaker Hunter's Wild Barrage without getting hit |achieve 5871/3 |goto Molten Front 48.8,60.0
step
Congratulations, you have earned the Master of the Molten Flow achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive",{
achieveid={5866},
description="Unlock achievements during the attack on the Molten Front.",
},[[
#include "H_Firelands_PreQuests"
step
Routing to proper section |next "achieve" |only if not ZGV.guidesets['DailiesHCATA']
Routing to proper section |next "Zygor's Dailies Guides\\Cataclysm Dailies\\Mount Hyjal\\Firelands Dailies with Pre-Quests" |only if ZGV.guidesets['DailiesHCATA']
step
label "achieve"
This achievement requires that you do the Firelands Dailies and Quests in order to complete it
Please refer to Zygor's Dailies guide for more assistance with this achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\My Very Own Broodmother",{
achieveid={5447},
description="Complete the Restless Brood daily quest in Deepholm within 90 seconds of striking the Resonating Crystal.",
},[[
step
This quest can be offered at random if you have at least Revered reputation with Therazane
However, the quest may not be offered every day
|tip Also, it's a lot easier to have a friend help you with this, as you have to complete the quest within 90 seconds.
Click here if you need to complete the Therazane PreQuests |confirm
Click here if you need if you have done the prequests, but not yet reached _Revered_ |next "d_quest_" |confirm
You have reached Revered. You are being directed to the achievement |next "next" |only if rep("Therazane")>=Revered
step
#include "H_Therazane_PreQuest"
step
label "d_quest"
#include "Therazane_Dailies"
step
label "next"
talk Terrath the Steady##43806
accept The Restless Brood##28391 |goto Deepholm,56.6,14.1
|only if rep("Therazane")>=Revered
step
Have your friend use their Stonework Mallet next to the Pale Resonating Crystal
|tip It's a huge green crystal sitting on the ground.
kill Aeosera##43641
|tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera. When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock. Repeat this until she surrenders.
Defeat Aeosera |q 28391/2 |goto 32.7,24.3
|only if rep("Therazane")>=Revered
step
Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266
|tip It's a huge green crystal sitting on the ground.
Strike the Pale Resonating Crystal |q 28391/1 |goto 32.7,24.3
|only if rep("Therazane")>=Revered
step
talk Terrath the Steady##43806
turnin The Restless Brood##28391 |goto 56.6,14.1
Earn the My Very Own Broodmother achievement! |achieve 5447 |goto 56.6,14.1
|only if rep("Therazane")>=Revered
step
Congratulations!  You've earned the My Very Own Broodmother achievement!
|only if rep("Therazane")>=Revered
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Ready for Raiding II",{
achieveid={5873},
description="Slay the following Lieutenants of Flame in Ragnaros' Reach without getting hit by their special attacks.",
},[[
step
Routing to proper section |next "prequest" |only if not completedq(25372)
Routing to proper section |next "achieve" |only if completedq(25372)
step
label "prequest"
#include "H_Firelands_PreQuests"
step
label "achieve"
Use the Firelands Dailies guide to complete the Strike at the Heart daily
|tip You have to kill these mobs without getting hurt at all by their special abilities.
This is MUCH easier to do as part of group helping each other get this achievement.
During the Strike at the Heart Daily, kill the following mobs without getting hurt by their special abilities:
Ancient Charscale |achieve 5873/1
|tip Move far away from the spot you're at when he casts Javelin Breach, and dodge the Line of Fire spells he sends toward you.
Cinderweb Queen |achieve 5873/2
|tip Run away when she cast Cinder Web - you will get rooted if you get hit by the web. Her Writhing Injection spell spawns a few spiders after a few seconds that you can't avoid, so you just kill them quickly with some kind of AoE attack.
Ancient Smoldering Behemoth |achieve 5873/5
|tip Run away from him when he casts Groundfir. Interrupt his Rain of Flame, or run away as fast as you can - the radius of that spell is pretty big.
Devout Harbinger |achieve 5873/3
|tip He will cast Creeping Inferno, which spawns a fire on the ground that chases you. Run away as fast as you can and don't let it touch you.
Ancient Firelord |achieve 5873/4
|tip Run away to dodge the pillar of fire when he casts Flame Spout under you. When he starts spinning and shooting fire, just move around to stay out of the way.
Earn the Ready for Raiding II achievement! |achieve 5873
step
Congratulations!  You've earned the Ready for Raiding II achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Rock Lover",{
achieveid={5449},
description="Complete the Lost in the Deeps daily quest in Deepholm 10 times.",
},[[
step
In order to possibly earn this achievement, you will need to have unlocked the Therazane daily quest hub
This quest may not be offered every day
This will not effect the achievement, since it requires that you complete the quest 'Lost In The Deeps' 10 times (rather than 10 times consecutively)
confirm
step
Routing to proper section |next "prequest" |only if not completedq(26709)
Routing to proper section |next "dailies" |only if completedq (26709) and rep("Therazane")<=Honored
Routing to proper section |next "rock" |only if completedq(26709) and rep("Therazane")>=Revered
step
label "prequest"
#include "H_Therazane_PreQuest"
step
label "dailies"
#include "Therazane_Dailies"
step
label "rock"
talk Pyrite Stonetender##44945
accept Lost In The Deeps##26710 |goto Deepholm,55.4,14.2
|tip This quest can be offered at random and may not be offered everyday.
step
Enter the cave |goto 58.3,25.6 < 10 |walk
Follow this path |goto 65.3,18.4 < 10 |only if walking
talk Pebble##49956
Tell him to follow you |goto 63.1,20.8
Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
Bring Pebble to safety |q 26710/1 |goto 58.3,25.6
step
talk Pyrite Stonetender##44945
turnin Lost In The Deeps##26710 |goto 55.4,14.2
Remember, you will need to complete this quest 10 times in order to earn this achievement
Check your achievements log to see your progress
step
Earn Rock Lover |achieve 5449
step
Congratulations! You've earned the Rock Lover achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Round Three, Fight!",{
achieveid={4960},
description="Complete the Crucible of Carnage quests in Twilight Highlands up to and including the Twilight Terror!.",
},[[
step
You will need a group for these quests
confirm
step
talk Gurgthock##46935
You will only be able to accept one of these quests
accept The Crucible of Carnage: The Bloodeye Bruiser!##27863 |goto Twilight Highlands 50.7,58.3 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27861 |goto Twilight Highlands 50.7,58.3 |or
accept The Crucible of Carnage: The Bloodeye Bruiser!##27862 |goto Twilight Highlands 50.7,58.3 |or
step
kill Hurp'derp##46944
Defeat Hurp'derp |q 27863/1 |goto 51.4,57.8 |only if havequest(27863) or completedq(27863)
Defeat Hurp'derp |q 27861/1 |goto 51.4,57.8 |only if havequest(27861) or completedq(27861)
Defeat Hurp'derp |q 27862/1 |goto 51.4,57.8 |only if havequest(27862) or completedq(27862)
step
Click the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27863 |only if havequest(27863) or completedq(27863)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27861 |only if havequest(27861) or completedq(27861)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27862 |only if havequest(27862) or completedq(27862)
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Wayward Wildhammer!##27865 |goto 50.7,58.3
step
kill Sully Kneecapper##46946
Defeat Sully Kneecapper |q 27865/1 |goto 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Wayward Wildhammer!##27865
step
talk Gurgthock##46935
accept The Crucible of Carnage: Calder's Creation!##27866 |goto 50.7,58.3
step
kill Cadaver Collage##46947
Defeat Cadaver Collage |q 27866/1 |goto 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: Calder's Creation!##27866
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Earl of Evisceration!##27867 |goto 50.7,58.3
step
kill Lord Geoffery Tulvan##46948
Defeat Lord Geoffery Tulvan |q 27867/1 |goto 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Earl of Evisceration!##27867
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Twilight Terror!##27868 |goto 50.7,58.3
step
kill Emberscar the Devourer##46949
Defeat Emberscar the Devourer |q 27868/1 |goto 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Twilight Terror!##27868
Earn the Round Three. Fight! achievement! |achieve 4960
step
Congratulations, you have obtained the _Round Three, Fight!_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Sinking into Vashj'ir",{
achieveid={4982},
author="support@zygorguides.com",
startlevel=80,
keywords={"Vashjir"},
description="This guide will walk you through completing the \"Sinking into Vashj'ir\" achievement.",
},[[
step
To earn this achievement, you will need to complete some of the storylines in Vashj'ir
|tip Refer to our leveling guides to achieve this.
Click here to load the "Vashj'ir (80-90)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Vashj'ir (80-90)"
_Complete the following story chapters:_
Defense of The Immortal Coil |achieve 4982/1
Smuggler's Scar |achieve 4982/2
A Budding Treasure Hunter |achieve 4982/3
The Clutch |achieve 4982/4
Silver Tide Hollow |achieve 4982/5
Nespirah |achieve 4982/6
Visions of the Past |achieve 4982/7
The Merciless One |achieve 4982/8
L'ghorek |achieve 4982/9
The Tidehunter |achieve 4982/10
step
Earn the _Sinking into Vashj'ir_ achievement |achieve 4982
step
_Congratulations!_
You have earned the _Sinking into Vashj'ir_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Unearthing Uldum",{
achieveid={4872},
author="support@zygorguides.com",
startlevel=83,
description="This guide will walk you through completing the \"Unearthing Uldum\" achievement.",
},[[
step
To earn this achievement, you will need to _complete 105 quests in Uldum_
|tip Refer to our leveling guides to achieve this.
Click here to load the "Uldum (83-84)" guide |confirm |next "Zygor's Leveling Guides\\Cataclysm (80-90)\\Uldum (83-90)"
Earn the _Unearthing Uldum_ achievement |achieve 4872
step
_Congratulations!_
You have earned the _Unearthing Uldum_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Cataclysm\\Veteran of the Molten Core",{
achieveid={5879},
description="Complete the Regrowth and Molten Front achievements listed below.",
},[[
step
To earn this achievement, you will need to complete the Regrowth and Molten Front achievements listed below
|tip Click an objective to load the guide for that achievement.
Legacy of Leyara |achieve 5879/1 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Legacy of Leyara"
The Molten Front Offensive |achieve 5879/2 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\The Molten Front Offensive"
The Fiery Lords of Sethria's Roost |achieve 5879/3 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\The Fiery Lords of Sethria's Roost"
Fireside Chat |achieve 5879/4 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Fireside Chat"
Ludicrous Speed |achieve 5879/5 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Ludicrous Speed"
And the Meek Shall Inherit Kalimdor |achieve 5879/6 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\And the Meek Shall Inherit Kalimdor"
Gang War |achieve 5879/7 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Gang War"
Have... Have We Met? |achieve 5879/8 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Have... Have We Met?"
Infernal Ambassadors |achieve 5879/9 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Infernal Ambassadors"
Flawless Victory |achieve 5879/10 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Flawless Victory"
Master of the Molten Flow |achieve 5879/11 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Master of the Molten Flow"
King of the Spider-Hill |achieve 5879/12 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\King of the Spider-Hill"
Death From Above |achieve 5879/13 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Death From Above"
Ready for Raiding II |achieve 5879/14 |confirm |next "Zygor's Achievement Guides\\Quests\\Cataclysm\\Ready for Raiding II"
Earn the _Veteran of the Molten Core_ achievement |achieve 5879
step
Congratulations! You've earned the Veteran of the Molten Core achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\5 Dungeon Quests Complete",{
achieveid={4956},
description="Complete 5 dungeon quests.",
},[[
step
Enter the swirling portal |goto The Deadmines 38.3,77.5
Click here to proceed |confirm
step
talk Lieutenant Horatio Laine##46612
accept The Foreman##27756 |goto The Deadmines 30.2,28.6
step
Follow the path to this spot |goto The Deadmines,30.0,46.7 < 10
kill Glubtok |q 27756/1 |goto The Deadmines 34.7,61.9
turnin The Foreman##27756
step
Open the heavy door here |goto The Deadmines,43.8,78.8 < 10
Click the _Quest Accept_ Box:
accept The Carpenter##27758 |goto 43.7,82.7
step
kill Helix Gearbreaker |q 27758/1 |goto 49.7,90.2
turnin The Carpenter##27758
step
Follow the path through the Deadmines |goto The Deadmines,65.3,87.5 < 10
Click the _Quest Accept_ Box:
accept The Machination##27781 |goto The Deadmines 61.0,71.8
|tip It will come up in a Quest Discovered! box.
step
Follow ramp down and kill the Defias Reapers at the bottom
kill Foe Reaper 5000 |q 27781/1 |goto The Deadmines 8.7,88.3
turnin The Machination##27781
step
Click the cannon to open the door |goto The Deadmines,12.6,68.9 < 5
accept The Admiral##27785 |goto The Deadmines 35.6,48.5
step
Follow the path across to the ship bridge
Click to proceed |confirm
step
Follow the path up to the boat and follow it to the right
Go up to the top of the ship
Click to proceed |confirm
step
kill Admiral Ripsnarl |q 27785/1
turnin The Admiral##27785
accept The Defias Kingpin##27790
step
kill "Captain" Cookie |q 27790/1 |goto The Deadmines 60.5,45.2
step
Wait for Lieutenant Horatio Laine to come up to the deck.
talk Lieutenant Horatio Laine##46612
turnin The Defias Kingpin##27790
step
Earn the 5 Dungeon Quests Completed! Achievement |achieve 4956
step
Congratulations, you have earn the 5 Dungeon Quests Completed! Achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\20 Dungeon Quests Completed",{
achieveid={4957},
author="support@zygorguides.com",
startlevel=1,
keywords={"Dungeon","Quests","Completed"},
description="This guide will walk you through completing the \"20 Dungeon Quests Completed\" Achievement.",
},[[
step
To earn this achievement, complete quests that correspond with a dungeon
Generally, there will be quests at the start of a dungeon
Use our dungeon guides to accomplish this
|tip Note that characters who have completed dungeon quests previous to this achievement being implemented may be bugged.
|tip It is advised to use a new character if you end up experiencing the bug.
Earn the _20 Dungeon Quests Completed_ achievement |achieve 4957
step
_Congratulations!_
You have earned the _20 Dungeon Quests Completed_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\3000 Quests Completed",{
condition_end=function() return achieved(978) end,
achieveid={503,504,505,506,507,508,32,978},
description="This section will cover the achievements 50, 100, 250, 500, 1000, 1500, 2000, and 3000 quests completed.",
},[[
step
To complete these achievements you simply have to complete regular quests.
|tip You can work through Zygor's Leveling and Loremaster guides to obtain all of these achievements.
Daily and Repeatable quests _do not count_ towards the achievements
_50_ quests completed |achieve 503
_100_ quests completed |achieve 504
_250_ quests completed |achieve 505
_500_ quests completed |achieve 506
_1000_ quests completed |achieve 507
_1500_ quests completed |achieve 508
_2000_ quests completed |achieve 32
_3000_ quests completed |achieve 978
|tip Once you earn this achievement you earn the title "The Seeker"
step
Congratulations, you have _earned_ the _50 Quests Completed_ achievement! |only if achieved(503)
Congratulations, you have _earned_ the _150 Quests Completed_ achievement! |only if achieved(504)
Congratulations, you have _earned_ the _250 Quests Completed_ achievement! |only if achieved(505)
Congratulations, you have _earned_ the _500 Quests Completed_ achievement! |only if achieved(506)
Congratulations, you have _earned_ the _1000 Quests Completed_ achievement! |only if achieved(507)
Congratulations, you have _earned_ the _1500 Quests Completed_ achievement! |only if achieved(508)
Congratulations, you have _earned_ the _2000 Quests Completed_ achievement! |only if achieved(32)
Congratulations, you have _earned_ the _3000 Quests Completed_ achievement! |only if achieved(978)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\A Simple Re-Quest",{
achieveid={31},
description="Complete a daily quest every day for five consecutive days.",
},[[
step
Ask around _Orgrimmar and Vol'mar_ for someone to drop a Blingtron for you
talk Blingtron 5000##77789
accept Blingtron 5000##34774 |goto Orgrimmar 50.05,76.25
Repeat this for _5 days in a row_ in order to unlock the Achievement
Complete a daily quest every day for 5 consecutive days. |achieve 31/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Of Blood And Anguish",{
achieveid={1576},
description="Complete the Ring of Blood and Amphitheater of Anguish.",
endlevel=75
},[[
step
ding 65
step
talk Gurgthock##18471
accept The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.6,20.4
step
label "ringblood1"
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
label "anguish"
ding 75
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.4,56.4
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.4,56.4
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.4,56.4
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.4,56.4
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.4,56.4
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.4,56.4
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.5,56.4
|achieve 1576
step
Congratulations, you have _earned_ the _Of Blood And Anguish_ achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Daily Quests Completed",{
condition_end=function() return achieved(5751) end,
achieveid={973,974,975,976,977,5751,7410,7411,5751},
description="This guide will walk you through completing 5, 50, 200, 500, 1000, 2500, 5000, 10000 Daily Quests.",
},[[
step
In order to complete these achievements, you simply have to complete daily quests. You can work through Zygor's Dailies guides to obtain all of these achievements
Regular and Repeatable quests will not count towards these achievements
5 Daily Quests completed |achieve 973
Congratulations, you have earned the 5 Daily Quests Complete achievement! |only if achieved(973)
step
50 Daily Quests completed |achieve 974
Congratulations, you have earned the 50 Daily Quests Complete achievement! |only if achieved(974)
step
200 Daily Quests completed |achieve 975
Congratulations, you have earned the 200 Daily Quests Complete achievement! |only if achieved(975)
step
500 Daily Quests completed |achieve 976
Congratulations, you have earned the 500 Daily Quests Complete achievement! |only if achieved(976)
step
1000 Daily Quests completed |achieve 977
Congratulations, you have earned the 1000 Daily Quests Complete achievement! |only if achieved(977)
step
2500 Daily Quests completed |achieve 5751
Congratulations, you have earned the 2500 Daily Quests Complete achievement! |only if achieved(5751)
step
5000 Daily Quests completed |achieve 7410
Congratulations, you have earned the 5000 Daily Quests Complete achievement! |only if achieved(7410)
step
10000 Daily Quests completed |achieve 7411
Congratulations, you have earned the 10000 Daily Quests Complete achievement! |only if achieved(7411)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\The First Rule of Ring of Blood is You Don't Talk About Ring of Blood",{
achieveid={4958},
description="Complete the Ring of Blood, Amphitheater of Anguish and Crucible of Carnage.",
endlevel=84
},[[
step
ding 65
step
talk Gurgthock##18471
accept The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
kill Brokentoe##18398 |q 9962/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Brokentoe##9962 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
kill Murkblood Twin##18399+ |q 9967/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Blue Brothers##9967 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
kill Rokdar the Sundered Lord##18400 |q 9970/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Rokdar the Sundered Lord##9970 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
kill Skra'gath##18401 |q 9972/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: Skra'gath##9972 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
kill Warmaul Champion##18402 |q 9973/1 |goto Nagrand 43.6,20.4
step
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Warmaul Champion##9973 |goto Nagrand 42.8,20.7
step
talk Gurgthock##18471
accept The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
kill Mogor##18069 |q 9977/1 |goto Nagrand 43.6,20.4
step
label "ringblood1"
talk Wodin the Troll-Servant##22893
turnin The Ring of Blood: The Final Challenge##9977 |goto Nagrand 42.8,20.7
step
ding 75
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.4,56.4
step
kill Yggdras##30014 |q 12954/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Yggdras!##12954 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.4,56.4
step
kill Stinkbeard##30017 |q 12933/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Magnataur!##12933 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.4,56.4
step
kill Az'Barin Prince of the Gust##30026, Duke Singen##30019, Erathius King of Dirt##30025, Gargoral the Water Lord##30024
_Defeat_ an Elemental Lord |q 12934/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: From Beyond!##12934 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.4,56.4
step
kill Orinoko Tuskbreaker##30020 |q 12935/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Tuskarrmageddon!##12935 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.4,56.4
step
kill Korrak the Bloodrager##30023 |q 12936/1 |goto Zul'Drak 47.9,56.9
step
talk Wodin the Troll-Servant##30009
turnin The Amphitheater of Anguish: Korrak the Bloodrager!##12936 |goto Zul'Drak 48.5,56.4
step
talk Gurgthock##30007
accept The Champion of Anguish##12948 |goto Zul'Drak 48.4,56.4
step
kill Vladof the Butcher##30022 |q 12948/1 |goto Zul'Drak 47.9,56.9
step
label "anguish1"
talk Wodin the Troll-Servant##30009
turnin The Champion of Anguish##12948 |goto Zul'Drak 48.5,56.4
step
ding 84
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Bloodeye Bruiser!##27863 |or |goto Twilight Highlands 50.7,58.3
accept The Crucible of Carnage: The Bloodeye Bruiser!##27861 |or |goto Twilight Highlands 50.7,58.3
accept The Crucible of Carnage: The Bloodeye Bruiser!##27862 |or |goto Twilight Highlands 50.7,58.3
step
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27863) or completedq(27863) |goto Twilight Highlands 51.4,57.8
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27861) or completedq(27861) |goto Twilight Highlands 51.4,57.8
kill Hurp'derp##46944 |q 27863/1 |only if havequest(27862) or completedq(27862) |goto Twilight Highlands 51.4,57.8
step
_Click_ the Complete Quest box that appears under your minimap
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27863 |only if havequest(27863) or completedq(27863)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27861 |only if havequest(27861) or completedq(27861)
turnin The Crucible of Carnage: The Bloodeye Bruiser!##27862 |only if havequest(27862) or completedq(27862)
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Wayward Wildhammer!##27865 |goto Twilight Highlands 50.7,58.3
step
kill Sully Kneecapper##46946 |q 27865/1 |goto Twilight Highlands 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Wayward Wildhammer!##27865
step
talk Gurgthock##46935
accept The Crucible of Carnage: Calder's Creation!##27866 |goto Twilight Highlands 50.7,58.3
step
kill Cadaver Collage##46947 |q 27866/1 |goto Twilight Highlands 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: Calder's Creation!##27866
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Earl of Evisceration!##27867 |goto Twilight Highlands 50.7,58.3
step
kill Lord Geoffery Tulvan##46948 |q 27867/1 |goto Twilight Highlands 51.4,57.8
step
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Earl of Evisceration!##27867
step
talk Gurgthock##46935
accept The Crucible of Carnage: The Twilight Terror!##27868 |goto Twilight Highlands 50.7,58.3
step
kill Emberscar the Devourer##46949 |q 27868/1 |goto Twilight Highlands 51.4,57.8
step
label "anguish1"
Click the _Quest Complete_ Box:
turnin The Crucible of Carnage: The Twilight Terror!##27868
step
label "end"
Congratulations, you have _earned_ the _Round Three. Fight!_ achievement! |only if achieved(4960)
Congratulations, you have _earned_ the _The First Rule of Ring of Blood is You Don't Talk About Ring of Blood_ achievement! |only if achieved(4958)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Hemet Nesingwary: The Collected Quests",{
condition_end=function() return achieved(941) end,
achieveid={940,939,938,941},
description="Complete the Green Hills of Stranglethorn, Hills Like White Elekk and Snows of Northrend achievements.",
},[[
step
label "TheGreenHills"
talk Barnil Stonepot##716
accept Welcome to the Jungle##583 |goto Northern Stranglethorn 44.3,22.1
step
talk Hemet Nesingwary Jr.##715
turnin Welcome to the Jungle##583 |goto Northern Stranglethorn 44.0,23.3
accept Raptor Hunting##194 |goto Northern Stranglethorn 44.0,23.3
step
talk Sir S. J. Erlgadin##718
accept Panther Hunting##190 |goto Northern Stranglethorn 43.7,22.3
step
talk Barnil Stonepot##716
accept The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.2,22.1
step
talk Ajeck Rouack##717
accept Tiger Hunting##185 |goto Northern Stranglethorn 44.5,22.7
step
kill River Crocolisk##1150+
collect Green Hills of Stranglethorn - Page 14##57990 |q The Green Hills of Stranglethorn##26269/1 |goto Northern Stranglethorn 45.2,20.8
step
talk Barnil Stonepot##716
turnin The Green Hills of Stranglethorn##26269 |goto Northern Stranglethorn 44.2,22.1
step
kill 10 Young Stranglethorn Tiger##681 |q Tiger Hunting##185/1 |goto Northern Stranglethorn 42.3,24.2
You can find more Young Stranglethorn Tigers at this location |goto Northern Stranglethorn 38.7,20.3
step
Click the _Quest Complete_ Box:
turnin Tiger Hunting##185
accept Tiger Stalking##186
step
kill 10 Young Panther##683 |q Panther Hunting##190/1 |goto Northern Stranglethorn 52.0,23.8
step
Click the _Quest Complete_ Box:
turnin Panther Hunting##190
accept Panther Stalking##191
step
kill 10 Stranglethorn Tiger##682 |q Tiger Stalking##186/1 |goto Northern Stranglethorn 61.3,27.0
You can find more Stranglethorn Tigers at this location |goto Northern Stranglethorn 56.5,28.7
step
Click the _Quest Complete_ Box:
turnin Tiger Stalking##186
accept Tiger Prowess##187
step
kill 5 Elder Stranglethorn Tiger##1085 |q Tiger Prowess##187/1 |goto Northern Stranglethorn 38.1,30.1
step
Click the _Quest Complete_ Box:
turnin Tiger Prowess##187
accept Tiger Mastery##188
step
kill Sin'Dall##729
collect Paw of Sin'Dall##3879 |q Tiger Mastery##188/1 |goto Northern Stranglethorn 38.5,32.5
stickystart "stranglerap"
step
kill 10 Panther##736 |q Panther Stalking##191/1 |goto Northern Stranglethorn 33.8,28.2
step
Click the _Quest Complete_ Box:
turnin Panther Stalking##191
accept Panther Prowess##192
step
label "stranglerap"
kill 10 Stranglethorn Raptor##685 |q Raptor Hunting##194/1 |goto Northern Stranglethorn 31.7,28.0
step
Click the _Quest Complete_ Box:
turnin Raptor Hunting##194
accept Raptor Stalking##195
step
talk Ajeck Rouack##717
turnin Tiger Mastery##188 |goto Northern Stranglethorn 44.5,22.7
step
kill 10 Lashtail Raptor##686 |q Raptor Stalking##195/1 |goto Northern Stranglethorn 45.8,43.1
You can find more Lashtail Raptors at this location |goto Northern Stranglethorn 39.3,43.9
step
Click the _Quest Complete_ Box:
turnin Raptor Stalking##195
accept Raptor Prowess##196
step
kill 10 Jungle Stalker##687 |q Raptor Prowess##196/1 |goto Northern Stranglethorn 54.3,47.2
step
Click the _Quest Complete_ Box:
turnin Raptor Prowess##196
accept Raptor Mastery##197
step
kill 5 Shadowmaw Panther##684 |q Panther Prowess##192/1 |goto Northern Stranglethorn 61.9,49.0
|tip They are stealthed, so keep an eye out for them.
step
Click the _Quest Complete_ Box:
turnin Panther Prowess##192
accept Panther Mastery##193
step
kill Bhag'thera##728
collect Fang of Bhag'thera##3876 |q Panther Mastery##193/1 |goto Northern Stranglethorn 66.0,43.4
step
kill Tethis##730
collect Talon of Tethis##3877 |q Raptor Mastery##197/1 |goto Northern Stranglethorn 62.5,61.3
step
Follow this road |goto Northern Stranglethorn 48.4,41.9 < 15 |only if walking
talk Hemet Nesingwary Jr.##715
turnin Raptor Mastery##197 |goto Northern Stranglethorn 44.0,23.3
step
talk Sir S. J. Erlgadin##718
turnin Panther Mastery##193 |goto Northern Stranglethorn 43.7,22.3
step
talk Hemet Nesingwary Jr.##715
accept Big Game Hunter##208 |goto Northern Stranglethorn 44.2,23.0
step
kill King Bangalash##731
|tip He's a white tiger that walks around on this big hill.
collect Head of Bangalash##3880 |q Big Game Hunter##208/1 |goto Northern Stranglethorn 47.8,59.0
step
talk Hemet Nesingwary Jr.##715
turnin Big Game Hunter##208 |goto Northern Stranglethorn 44.0,23.3
step
Congratulations, you have earned the The Green Hills of Stranglethorn achievement! |achieve 940
step
label "WhiteElekks"
talk Shado 'Fitz' Farstrider##18200
accept Windroc Mastery##9854 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
accept Clefthoof Mastery##9789 |goto Nagrand 71.6,40.5
step
talk Harold Lane##18218
accept Talbuk Mastery##9857 |goto Nagrand 71.6,40.5
stickystart "clefthoof"
stickystart "windroc"
step
kill 12 Talbuk Stag##17130 |q Talbuk Mastery##9857/1 |goto Nagrand 72.2,38.4
You can find more Talbuk Stags at this location |goto Nagrand 70.8,46.4
step
label "windroc"
kill 12 Windroc##17128 |q Windroc Mastery##9854/1 |goto Nagrand 66.5,39.5
step
label "clefthoof"
kill 12 Clefthoof##18205 |q Clefthoof Mastery##9789/1 |goto Nagrand 64,45.1
You can find more Clefthoofs at this location |goto Nagrand 70.8,46.4
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9854 |goto Nagrand 71.6,40.5
accept Windroc Mastery##9855 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9789 |goto Nagrand 71.6,40.5
accept Clefthoof Mastery##9850 |goto Nagrand 71.6,40.5
step
talk Harold Lane##18218
turnin Talbuk Mastery##9857 |goto Nagrand 71.6,40.5
accept Talbuk Mastery##9858 |goto Nagrand 71.6,40.5
step
kill 12 Ravenous Windroc##18220 |q Windroc Mastery##9855/1 |goto Nagrand 48.4,61.5
stickystart "cleftbull"
step
kill 12 Talbuk Thorngrazer##17131 |q Talbuk Mastery##9858/1 |goto Nagrand 52.1,25.6
step
label "cleftbull"
kill 12 Clefthoof Bull##17132 |q Clefthoof Mastery##9850/1 |goto Nagrand 51.6,30.8
You can find more Clefthoof Bulls at this location |goto Nagrand 49.7,35.6
step
talk Harold Lane##18218
turnin Talbuk Mastery##9858 |goto Nagrand 71.6,40.5
accept Talbuk Mastery##9859 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery##9850 |goto Nagrand 71.6,40.5
accept Clefthoof Mastery##9851 |goto Nagrand 71.6,40.5
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery##9855 |goto Nagrand 71.6,40.5
accept Windroc Mastery##9856 |goto Nagrand 71.6,40.5
step
kill Gutripper##18257
collect Eye of Gutripper##24513 |q Windroc Mastery##9856/1 |goto Nagrand 32.6,25.6
step
kill Bach'lor##18258
|tip He sometimes roams up north.
collect Hoof of Bach'lor##24523 |q Talbuk Mastery##9859/1 |goto Nagrand 26.0,53.0
step
kill Banthar##18259
|tip He roams around this area and is sometimes past Oshu'gun.
collect Horn of Banthar##24496 |q Clefthoof Mastery##9851/1 |goto Nagrand 43.0,63.0
step
talk Harold Lane##18218
turnin Talbuk Mastery (3)##9859 |goto Nagrand 71.6,40.5
step
talk Shado 'Fitz' Farstrider##18200
turnin Windroc Mastery (3)##9856 |goto Nagrand 71.6,40.5
step
talk Hemet Nesingwary##18180
turnin Clefthoof Mastery (3)##9851 |goto Nagrand 71.6,40.5
accept The Ultimate Bloodsport##9852 |goto Nagrand 71.6,40.5
step
kill Tusker##18290
collect Heart of Tusker##24505 |q The Ultimate Bloodsport##9852/1 |goto Nagrand 44.2,65.2
step
talk Hemet Nesingwary##18180
turnin The Ultimate Bloodsport##9852 |goto Nagrand 71.6,40.5
step
Congratulations, you have earned the Hills Like White Elekk achievement! |achieve 939
step
label "Snows"
talk Archmage Pentarus##28160
accept Where in the World is Hemet Nesingwary?##12521 |goto Dalaran 68.3,42.2
step
talk Monte Muzzleshot##27987
turnin Where in the World is Hemet Nesingwary?##12521 |goto Sholazar Basin 39.7,58.6
accept Welcome to Sholazar Basin##12489 |goto Sholazar Basin 39.7,58.6
step
talk Hemet Nesingwary##27986
turnin Welcome to Sholazar Basin##12489 |goto Sholazar Basin 27.1,58.7
step
talk Debaar##28032
accept Venture Co. Misadventure##12524 |goto Sholazar Basin 27.2,59.8
step
talk Weslex Quickwrench##28033
accept Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.4,58.4
step
click Flying Machine Engine##190447
collect Flying Machine Engine##38334 |q Need an Engine, Take an Engine##12522/1 |goto Sholazar Basin 38.7,56.7
step
talk Weslex Quickwrench##28033
turnin Need an Engine, Take an Engine##12522 |goto Sholazar Basin 25.4,58.5
accept Have a Part, Give a Part##12523 |goto Sholazar Basin 25.4,58.5
step
talk Engineer Helice##28787
accept Engineering a Disaster##12688 |goto Sholazar Basin 35.5,47.4
step
Escort Engineer Helice out of Swindlegrin's Dig |q Engineering a Disaster##12688/1
stickystart "venturco"
step
click Venture Co. Spare Parts##190455
collect 7 Venture Co. Spare Parts##38349 |q Have a Part, Give a Part##12523/1 |goto Sholazar Basin 32.7,46.9
step
label "venturco"
kill Venture Co. Excavator##28123+, Venture Co. Ruffian##28124+
Kill #15# Venture Company members |q Venture Co. Misadventure##12524/1 |goto Sholazar Basin 37.4,46.1
step
talk Weslex Quickwrench##28033
turnin Have a Part, Give a Part##12523 |goto Sholazar Basin 25.4,58.4
step
talk Debaar##28032
turnin Venture Co. Misadventure##12524 |goto Sholazar Basin 27.2,59.8
accept Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.2,59.8
step
talk Hemet Nesingwary##27986
turnin Engineering a Disaster##12688 |goto Sholazar Basin 27.1,58.7
step
kill Foreman Swindlegrin |q Wipe That Grin Off His Face##12525/1 |goto Sholazar Basin 36.1,50.5
kill Meatpie |q Wipe That Grin Off His Face##12525/2 |goto Sholazar Basin 36.1,50.5
step
talk Debaar##28032
turnin Wipe That Grin Off His Face##12525 |goto Sholazar Basin 27.2,59.8
step
talk Buck Cantwell##28031
accept Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.7,59
step
talk Hemet Nesingwary##27986
accept Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.1,58.6
step
talk Drostan##28328
accept Kick, What Kick?##12589 |goto Sholazar Basin 27.1,59.9
step
Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
Keep using the rifle until you hit the apple
Shoot the apple on Lucky Wilhelm's Head |q Kick, What Kick?##12589/1
step
talk Drostan##28328
turnin Kick, What Kick?##12589 |goto Sholazar Basin 27.1,59.9
accept The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.1,59.9
step
kill 15 Dreadsaber##28001 |q Dreadsaber Mastery: Becoming a Predator##12549/1 |goto Sholazar Basin 28,56
kill 15 Shardhorn Rhino##28009 |q Rhino Mastery: The Test##12520/1 |goto Sholazar Basin 28,56
kill Dreadsaber##28001+, Shardhorn Rhino##28009+
Kill #60# Game Animals |q The Great Hunter's Challenge##12592/1 |goto Sholazar Basin 28,56
You can find more Rhino's and Dreadsabers at this location |goto Sholazar Basin 38.2,45.3
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Becoming a Predator##12549 |goto Sholazar Basin 26.7,59
accept Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.7,59
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Test##12520 |goto Sholazar Basin 27.1,58.6
accept Rhino Mastery: The Chase##12526 |goto Sholazar Basin 27.1,58.6
step
talk Drostan##28328
turnin The Great Hunter's Challenge##12592 |goto Sholazar Basin 27.1,59.8
step
talk Debaar##28032
accept Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.2,59.8
step
Click Dreadsaber Tracks##8298
|tip They look like brown paw prints on the ground around this area.
Identify #3# Shango Tracks |q Dreadsaber Mastery: Stalking the Prey##12550/1 |goto Sholazar Basin 39.9,43.7
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Stalking the Prey##12550 |goto Sholazar Basin 26.7,59
accept Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.7,59
step
talk Oracle Soo-rahm##28191
turnin Rhino Mastery: The Chase##12526 |goto Sholazar Basin 25.6,66.5
accept An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.6,66.5
stickystart "empfang"
step
kill 15 Mangal Crocolisk##28002 |q Crocolisk Mastery: The Trial##12551/1 |goto Sholazar Basin 29,62.5
step
label "empfang"
kill Emperor Cobra##28011+
collect 5 Intact Cobra Fang##38505 |q An Offering for Soo-rahm##12543/1 |goto Sholazar Basin 36.3,65.8
step
talk Debaar##28032
turnin Crocolisk Mastery: The Trial##12551 |goto Sholazar Basin 27.2,59.9
accept Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.2,59.9
step
talk Oracle Soo-rahm##28191
turnin An Offering for Soo-rahm##12543 |goto Sholazar Basin 25.6,66.5
accept The Bones of Nozronn##12544 |goto Sholazar Basin 25.6,66.5
step
Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519
|tip It's a small bowl in front of the skull of these bones.
Reveal the Location of Farunn |q The Bones of Nozronn##12544/1 |goto Sholazar Basin 26.1,71.6
step
talk Hemet Nesingwary##27986
turnin The Bones of Nozronn##12544 |goto Sholazar Basin 27.1,58.6
accept Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.1,58.6
stickystart "sandferns"
step
kill Shango##28297
collect Shango's Pelt##38523 |q Dreadsaber Mastery: Ready to Pounce##12558/1 |goto Sholazar Basin 33.4,34.7
step
label "sandferns"
click Sandfern##190533
collect 5 Sandfern##38553 |q Crocolisk Mastery: The Plan##12560/1 |goto Sholazar Basin 34.7,41.5
step
kill Farunn##28288
collect Farunn's Horn##38522 |q Rhino Mastery: The Kill##12556/1 |goto Sholazar Basin 47.4,43.9
step
talk Hemet Nesingwary##27986
turnin Rhino Mastery: The Kill##12556 |goto Sholazar Basin 27.1,58.6
step
talk Buck Cantwell##28031
turnin Dreadsaber Mastery: Ready to Pounce##12558 |goto Sholazar Basin 26.7,59
step
talk Debaar##28032
turnin Crocolisk Mastery: The Plan##12560 |goto Sholazar Basin 27.2,59.9
accept Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.2,59.9
step
Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
kill Bushwhacker##28317
collect Bushwhacker's Jaw##38559 |q Crocolisk Mastery: The Ambush##12569/1 |goto Sholazar Basin 46.3,63.4
step
talk Debaar##28032
turnin Crocolisk Mastery: The Ambush##12569 |goto Sholazar Basin 27.2,59.9
step
talk Hemet Nesingwary##27986
accept In Search of Bigger Game##12595 |goto Sholazar Basin 27.1,58.6
step
talk Dorian Drakestalker##28376
turnin In Search of Bigger Game##12595 |goto Sholazar Basin 42.3,28.7
accept Sharpening Your Talons##12603 |goto Sholazar Basin 42.3,28.7
accept Securing the Bait##12605 |goto Sholazar Basin 42.3,28.7
step
kill 6 Primordial Drake##28378 |q Sharpening Your Talons##12603/1 |goto Sholazar Basin 44.7,27.4
|tip The Primordial Drakes fly around in the air around this area.
clicknpc Primordial Drake Egg##28408
|tip The Primordial Drake Eggs look like white eggs next to trees around this area.
clicknpc Primordial Hatchling##28389
collect 6 Primordial Hatchling##38600 |q Securing the Bait##12605/1 |goto Sholazar Basin 44.7,27.4
step
talk Dorian Drakestalker##28376
turnin Sharpening Your Talons##12603 |goto Sholazar Basin 42.3,28.7
turnin Securing the Bait##12605 |goto Sholazar Basin 42.3,28.7
step
talk Zootfizzle##28374
accept A Mammoth Undertaking##12607 |goto Sholazar Basin 42.1,28.9
step
Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
Ride the mammoth back to Zootfizzle at |goto Sholazar Basin 42.1,28.9
Use the Hand Over Mammoth ability on your hotbar
Deliver the Shattertusk Mammoth |q A Mammoth Undertaking##12607/1 |goto Sholazar Basin 39.3,27.3
step
talk Zootfizzle##28374
turnin A Mammoth Undertaking##12607 |goto Sholazar Basin 42.1,28.9
step
talk Dorian Drakestalker##28376
accept Post-partum Aggression##12614 |goto Sholazar Basin 42.3,28.8
step
kill Broodmother Slivina |q 12614/1 |goto Sholazar Basin 47.0,21.1
|tip The best way to kill her is to kite her around the small space while pushing 1 and 4 on your hotbar and making her step on traps Hemet Nesingwary puts down.
step
talk Dorian Drakestalker##28376
turnin Post-partum Aggression##12614 |goto Sholazar Basin 42.3,28.8
step
Congratulations, you have earned the Hemet Nesingwary: The Collected Quests achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Quests\\Justly Rewarded",{
achieveid={5752},
author="support@zygorguides.com",
startlevel=1,
description="This guide will walk you through completing the \"Justly Rewarded\" Achievement.",
},[[
step
For this achievement, complete any quests save for repeatable ones to earn gold
|tip You must earn 30,000 gold total.
|tip Refer to our Leveling, Dailies, and World Quest guides to accomplish this.
Earn the _Justly Rewarded_ achievement |achieve 5752
step
_Congratulations!_
You have earned the _Justly Rewarded_ achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of the Horde",{
achieveid={2816},
keywords={"Champion","of","the","Horde","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of the Horde achievement",
},[[
step
Load the "of Orgrimmar" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Orgrimmar"
|tip Click the line above to load the guide.
|tip If you aren't an Orc, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Orgrimmar |achieve 2788/1
step
Load the "of Thunderbluff" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Thunder Bluff"
|tip Click the line above to load the guide.
|tip If you aren't a Tauren, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Thunder Bluff |achieve 2788/5
step
Load the "of Sen'jin" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Sen'jin"
|tip Click the line above to load the guide.
|tip If you aren't a Troll, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Sen'jin |achieve 2788/2
step
Load the "of Silvermoon City" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Silvermoon"
|tip Click the line above to load the guide.
|tip If you aren't a Blood Elf, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Silvermoon City |achieve 2788/3
step
Load the "of Undercity" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Undercity"
|tip Click the line above to load the guide.
|tip If you aren't an Undead, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Undercity |achieve 2788/4
step
_Congratulations!_
You have earned the "Champion of the Horde" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of Orgrimmar",{
achieveid={2787},
keywords={"Champion","of","Orgrimmar","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of Orgrimmar achievement",
},[[
step
Earn the right to represent Orgrimmar in the Argent Tournament
|tip If you aren't an Orc, you will need to complete your race quests before gaining access to this.
|tip Complete the guides below to accomplish this.
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Load the "Orc Champion Rank" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide\\Orc Champion Rank"
|tip Click the line above to load the guide.
Become the Champion of Orgrimmar |achieve 2765
step
_Congratulations!_
You have earned the "Champion of Orgrimmar" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of Sen'jin",{
achieveid={2766},
keywords={"Champion","of","Sen'jin","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of Sen'jin achievement",
},[[
step
Earn the right to represent Thunderbluff in the Argent Tournament
|tip If you aren't a Troll, you will need to complete your race quests before gaining access to this.
|tip Complete the guides below to accomplish this.
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Load the "Troll Champion Rank" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide\\Troll Champion Rank"
|tip Click the line above to load the guide.
Become the Champion of Sen'jin |achieve 2766
step
_Congratulations!_
You have earned the "Champion of Sen'jin" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of Silvermoon City",{
achieveid={2785},
keywords={"Champion","of","Silvermoon","City","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of Silvermoon City achievement",
},[[
step
Earn the right to represent Silvermoon City in the Argent Tournament
|tip If you aren't a Blood Elf, you will need to complete your race quests before gaining access to this.
|tip Complete the guides below to accomplish this.
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Load the "Blood Elf Champion Rank" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide\\Blood Elf Champion Rank"
|tip Click the line above to load the guide.
Become the Champion of Silvermoon City |achieve 2785
step
_Congratulations!_
You have earned the "Champion of Silvermoon City" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of Thunderbluff",{
achieveid={2786},
keywords={"Champion","of","Thunderbluff","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of Thunderbluff achievement",
},[[
step
Earn the right to represent Thunderbluff in the Argent Tournament
|tip If you aren't a Tauren, you will need to complete your race quests before gaining access to this.
|tip Complete the guides below to accomplish this.
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Load the "Tauren Champion Rank" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide\\Tauren Champion Rank"
|tip Click the line above to load the guide.
Become the Champion of Thunder Bluff |achieve 2768
step
_Congratulations!_
You have earned the "Champion of Thunderbluff" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Champion of the Undercity",{
achieveid={2787},
keywords={"Champion","of","the","Undercity","Argent","Tournament"},
description="This guilde will walk you through obtaining the Champion of the Undercity achievement",
},[[
step
Earn the right to represent the Undercity in the Argent Tournament
|tip If you aren't an Undead, you will need to complete your race quests before gaining access to this.
|tip Complete the guides below to accomplish this.
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Load the "Undead Champion Rank" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Crusader Title Guide\\Undead Champion Rank"
|tip Click the line above to load the guide.
Become the Champion of Undercity |achieve 2769
step
_Congratulations!_
You have earned the "Champion of the Undercity" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Argent Champion of the Horde",{
achieveid={2816},
keywords={"Exalted","Argent","Champion","of","the","Horde","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Argent Champion of the Horde achievement",
},[[
step
Load the "of Orgrimmar" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Orgrimmar"
|tip Click the line above to load the guide.
|tip If you aren't an Orc, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Orgrimmar |achieve 2816/2
step
Load the "of Thunderbluff" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Thunder Bluff"
|tip Click the line above to load the guide.
|tip If you aren't a Tauren, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Thunder Bluff |achieve 2816/6
step
Load the "of Sen'jin" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Sen'jin"
|tip Click the line above to load the guide.
|tip If you aren't a Troll, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Sen'jin |achieve 2816/3
step
Load the "of Silvermoon City" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Silvermoon"
|tip Click the line above to load the guide.
|tip If you aren't a Blood Elf, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Silvermoon City |achieve 2816/4
step
Load the "of Undercity" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Undercity"
|tip Click the line above to load the guide.
|tip If you aren't an Undead, you will need to complete your race quests before gaining access to this.
Become the Exalted Champion of Undercity |achieve 2816/5
step
Complete Argent Tournament dailies to earn reputation with the Argent Tournament grounds
Load the "Argent Tournament Grounds Aspirant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies. Includes Pre-Quests"
|tip Click the line above to load the guide.
Load the "Argent Tournament Grounds Valiant Rank Dailies" guide |confirm |next "Zygor's Dailies Guides\\Wrath of the Lich King Dailies\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies"
|tip Click the line above to load the guide.
Earn the Argent Crussader achievement |achieve 2816/1
step
_Congratulations!_
You have earned the "Exalted Argent Champion of the Horde" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Orgrimmar",{
achieveid={2765},
keywords={"Exalted","Champion","of","Orgrimmar","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Champion of Orgrimmar achievement",
},[[
step
Load the "of Orgrimmar" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Orgrimmar"
|tip Click the line above to load the guide.
Become Exalted with Orgrimmar |achieve 2765/1
Become the Champion of Orgrimmar |achieve 2765/2
step
_Congratulations!_
You have earned the "Exalted Champion of Orgrimmar" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Sen'jin",{
achieveid={2766},
keywords={"Exalted","Champion","of","Sen'jin","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Champion of Sen'jin achievement",
},[[
step
Load the "of Sen'jin" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Sen'jin"
|tip Click the line above to load the guide.
Become Exalted with Sen'jin |achieve 2766/1
Become the Champion of Sen'jin |achieve 2766/2
step
_Congratulations!_
You have earned the "Exalted Champion of Thunderbluff" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Silvermoon City",{
achieveid={2767},
keywords={"Exalted","Champion","of","Silvermoon","City","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Champion of Silvermoon City achievement",
},[[
step
Load the "of Silvermoon City" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Silvermoon"
|tip Click the line above to load the guide.
Become Exalted with Silvermoon City |achieve 2767/1
Become the Champion of Silvermoon City |achieve 2767/2
step
_Congratulations!_
You have earned the "Exalted Champion of Silvermoon City" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of Thunderbluff",{
achieveid={2768},
keywords={"Exalted","Champion","of","Thunderbluff","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Champion of Thunderbluff achievement",
},[[
step
Load the "of Thunderbluff" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Thunder Bluff"
|tip Click the line above to load the guide.
Become Exalted with Thunderbluff |achieve 2768/1
Become the Champion of Thunderbluff |achieve 2768/2
step
_Congratulations!_
You have earned the "Exalted Champion of Thunderbluff" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Argent Tournament\\Exalted Champion of the Undercity",{
achieveid={2769},
keywords={"Exalted","Champion","of","the","Undercity","Argent","Tournament"},
description="This guilde will walk you through obtaining the Exalted Champion of the Undercity achievement",
},[[
step
Load the "of Undercity" title guide |confirm |next "Zygor's Titles\\Wrath of the Lich King Titles\\Reputation\\of Undercity"
|tip Click the line above to load the guide.
Become Exalted with Undercity |achieve 2769/1
Become the Champion of Undercity |achieve 2769/2
step
_Congratulations!_
You have earned the "Exalted Champion of the Undercity" achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Darkmoon Faire\\That's Whack!",{
achieveid={9983},
keywords={"That's","Whack","Darkmoon","Faire"},
description="This guilde will walk you through obtaining the That's Whack! achievement",
},[[
step
To earn this achievement, you will need to score 45 points while playing the Whack-a-Gnoll game
|tip This mini game is available during the Darkmoon Faire only.
To accomplish this, give priority to hitting Hogger when he appears
Also, avoid hitting dolls or you will lose points
Earn the That's Whack achievement |achieve 9983
step
Congratulations!
You have earned the That's Whack! achievement!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\World Events\\Darkmoon Faire\\Triumphant Turtle Tossing",{
achieveid={9894},
keywords={"Triumphant","Turtle","Tossing","Darkmoon","Faire"},
description="This guilde will walk you through obtaining the Triumphant Turtle Tossing achievement",
},[[
step
To earn this achievement, you will need to toss 10 rings onto Dubenko the Darkmoon Turtle in a single session
|tip You can miss and still earn the achievement, just try and avoid doing so.
Watch Dubenko's walk pattern
It starts at the center of the ring tossing area, then moves in a random direction
When it stops moving in the random direction, throw the ring at Dubenko's start position
Earn the Triumphant Turtle Tossing achievement |achieve 9894
step
Congratulations!
You have earned the Triumphant Turtle Tossing achievement!
]])
ZGV.BETASTART()
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Madness of Deathwing",{
achieveid={6116},
description="Defeat Deathwing in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Deathwing in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Deathwing##53879
Heroic: Madness of Deathwing |achieve 6116 |goto Dragon Soul/7 47.8,53.8
step
_Congratulations!_
You Earned the "Heroic: Madness of Deathwing" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Morchok",{
achieveid={6109},
description="Defeat Morchok in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Morchok in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Morchok##55265
Heroic: Morchok |achieve 6109 |goto Dragon Soul 50.3,69.2
step
_Congratulations!_
You Earned the "Heroic: Morchok" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Spine of Deathwing",{
achieveid={6115},
description="Complete the Spine of Deathwing encounter in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by completing the _Spine of Deathwing encounter in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Deathwing##53879
Heroic: Spine of Deathwing |achieve 6115 |goto Dragon Soul/6 33.2,85.2
step
_Congratulations!_
You Earned the "Heroic: Spine of Deathwing" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Ultraxion",{
achieveid={6113},
description="Defeat Ultraxion in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Ultraxion in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Ultraxion##55294
Heroic: Ultraxion |achieve 6113 |goto Dragon Soul 50.0,45.8
step
_Congratulations!_
You Earned the "Heroic: Ultraxion" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Warlord Zon'ozz",{
achieveid={6110},
description="Defeat Warlord Zon'ozz in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Warlord Zon'ozz in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Warlord Zon'ozz##55308
Heroic: Warlord Zon'ozz |achieve 6110 |goto Dragon Soul/2 50.9,53.0
step
_Congratulations!_
You Earned the "Heroic: Warlord Zon'ozz" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Warmaster Blackhorn",{
achieveid={6114},
description="Defeat Warmaster Blackhorn in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Warmaster Blackhorn in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Warmaster Blackhorn##56427
Heroic: Warmaster Blackhorn |achieve 6114 |goto Dragon Soul/5 48.3,16.8
step
_Congratulations!_
You Earned the "Heroic: Warmaster Blackhorn" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Heroic: Yor'sahj the Unsleeping",{
achieveid={6111},
description="Defeat Yor'sahj the Unsleeping in the Dragon Soul raid on Heroic Difficulty.",
},[[
step
This achievement is gained by defeating _Yor'sahj the Unsleeping in Dragon Soul on Heroic Difficulty_
|tip Use our raid guides to accomplish this.
kill Yor'sahj the Unsleeping##55312
Heroic: Yor'sahj the Unsleeping |achieve 6111 |goto Dragon Soul/3 46.8,49.9
step
_Congratulations!_
You Earned the "Heroic: Yor'sahj the Unsleeping" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Cataclysm Raid\\Holding Hands",{
achieveid={6175},
description="Destroy the final Crystal Conductor during Hagara's lightning phase on Normal or Heroic Difficulty, while all players are part of the final Lightning Conduit.",
},[[
step
This achievement is gained by _destroying the final Crystal Conductor during Hagara's lightning phase_ on Normal or Heroic Difficulty
|tip This achievement cannot be done solo unless you have a pet. It is also easier on Heroic because of the extra cystal conductors.
|tip Weaken Hagara to 85% and wait for the Lightning Phase to start. A Bound Lightning Elemental will spawn, kill it near one of the Crystal Conductors to charge it.
|tip You and your friend/pet must stand between two conductors so the lightning channels through you and moves to the next conductor. Repeat this process until all conductors are changed and you'll get the achievement.
kill Hagara the Stormbinder##55689
Holding Hands |achieve 6175 |goto Dragon Soul/4 52.7,52.0
step
_Congratulations!_
You Earned the "Holding Hands" Achievement
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Glory to the Hero",{
achieveid={2136},
description="This guide will walk you through getting the Glory to the Hero achievement.",
},[[
step
Load the "On The Rocks" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\On The Rocks"
|tip Click the line above to load the guide.
Earn the "On The Rocks" Achievement |achieve 2136/1
step
Load the "Split Personality" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Split Personality"
|tip Click the line above to load the guide.
Earn the "Split Personality" Achievement |achieve 2136/2
step
Load the "Intense Cold" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Intense Cold"
|tip Click the line above to load the guide.
Earn the "Intense Cold" Achievement |achieve 2136/3
step
Load the "Chaos Theory" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Chaos Theory"
|tip Click the line above to load the guide.
Earn the "Chaos Theory" Achievement |achieve 2136/4
step
Load the "Watch Him Die" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Watch Him Die"
|tip Click the line above to load the guide.
Earn the "Watch Him Die" Achievement |achieve 2136/5
step
Load the "Hadronox Denied" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Hadronox Denied"
|tip Click the line above to load the guide.
Earn the "Hadronox Denied" Achievement |achieve 2136/6
step
Load the "Gotta Go!" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Gotta Go!"
|tip Click the line above to load the guide.
Earn the "Gotta Go!" Achievement |achieve 2136/7
step
Load the "Volazj's Quick Demise" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Volazj's Quick Demise"
|tip Click the line above to load the guide.
Earn the "Volazj's Quick Demise" Achievement |achieve 2136/8
step
Load the "Respect Your Elders" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Respect Your Elders"
|tip Click the line above to load the guide.
Earn the "Respect Your Elders" Achievement |achieve 2136/9
step
Load the "Volunteer Work" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Volunteer Work"
|tip Click the line above to load the guide.
Earn the "Volunteer Work" Achievement |achieve 2136/10
step
Load the "Consumption Junction" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Consumption Junction"
|tip Click the line above to load the guide.
Earn the "Consumption Junction" Achievement |achieve 2136/11
step
Load the "Better Off Dred" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Better Off Dred"
|tip Click the line above to load the guide.
Earn the "Better Off Dred" Achievement |achieve 2136/12
step
Load the "Oh Novos!" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Oh Novos!"
|tip Click the line above to load the guide.
Earn the "Oh Novos!" Achievement |achieve 2136/13
step
Load the "Defenseless" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Defenseless"
|tip Click the line above to load the guide.
Earn the "Defenseless" Achievement |achieve 2136/14
step
Load the "Lockdown!" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lockdown!"
|tip Click the line above to load the guide.
Earn the "Lockdown!" Achievement |achieve 2136/15
step
Load the "Dehydration" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Dehydration"
|tip Click the line above to load the guide.
Earn the "Dehydration" Achievement |achieve 2136/16
step
Load the "A Void Dance" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\A Void Dance"
|tip Click the line above to load the guide.
Earn the "A Void Dance" Achievement |achieve 2136/17
step
Load the "What the Eck?" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\What the Eck?"
|tip Click the line above to load the guide.
Earn the "What the Eck?" Achievement |achieve 2136/18
step
Load the "Share The Love" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Share The Love"
|tip Click the line above to load the guide.
Earn the "Share The Love" Achievement |achieve 2136/19
step
Load the "Less-rabi" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Less-rabi"
|tip Click the line above to load the guide.
Earn the "Less-rabi" Achievement |achieve 2136/20
step
Load the "Snakes. Why'd It Have To Be Snakes?" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Snakes. Why'd It Have To Be Snakes?"
|tip Click the line above to load the guide.
Earn the "Snakes. Why'd It Have To Be Snakes?" Achievement |achieve 2136/21
step
Load the "Good Grief" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Good Grief"
|tip Click the line above to load the guide.
Earn the "Good Grief" Achievement |achieve 2136/22
step
Load the "Brann Spankin' New" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Brann Spankin' New"
|tip Click the line above to load the guide.
Earn the "Brann Spankin' New" Achievement |achieve 2136/23
step
Load the "Abuse the Ooze" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Abuse the Ooze"
|tip Click the line above to load the guide.
Earn the "Abuse the Ooze" Achievement |achieve 2136/24
step
Load the "Timely Death" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Timely Death"
|tip Click the line above to load the guide.
Earn the "Timely Death" Achievement |achieve 2136/25
step
Load the "Lightning Struck" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lightning Struck"
|tip Click the line above to load the guide.
Earn the "Lightning Struck" Achievement |achieve 2136/26
step
Load the "Shatter Resistant" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Shatter Resistant"
|tip Click the line above to load the guide.
Earn the "Shatter Resistant" Achievement |achieve 2136/27
step
Load "The Culling of Time" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\The Culling of Time"
|tip Click the line above to load the guide.
Earn "The Culling of Time" Achievement |achieve 2136/28
step
Load the "Zombiefest!" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Zombiefest!"
|tip Click the line above to load the guide.
Earn the "Zombiefest!" Achievement |achieve 2136/29
step
Load the "The Incredible Hulk" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\The Incredible Hulk"
|tip Click the line above to load the guide.
Earn the "The Incredible Hulk" Achievement |achieve 2136/30
step
Load the "Lodi Dodi We Loves the Skadi" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Lodi Dodi We Loves the Skadi"
|tip Click the line above to load the guide.
Earn the "Lodi Dodi We Loves the Skadi" Achievement |achieve 2136/31
step
Load the "My Girl Loves to Skadi All the Time" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\My Girl Loves to Skadi All the Time"
|tip Click the line above to load the guide.
Earn the "My Girl Loves to Skadi All the Time" Achievement |achieve 2136/32
step
Load the "King's Bane" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\King's Bane"
|tip Click the line above to load the guide.
Earn the "King's Bane" Achievement |achieve 2136/33
step
Load the "Experienced Drake Rider" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Experienced Drake Rider"
|tip Click the line above to load the guide.
Earn the "Experienced Drake Rider" Achievement |achieve 2136/34
step
Load the "Make It Count" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Make It Count"
|tip Click the line above to load the guide.
Earn the "Make It Count" Achievement |achieve 2136/35
step
Load the "Ruby Void" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Ruby Void"
|tip Click the line above to load the guide.
Earn the "Ruby Void" Achievement |achieve 2136/36
step
Load the "Emerald Void" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Emerald Void"
|tip Click the line above to load the guide.
Earn the "Emerald Void" Achievement |achieve 2136/37
step
Load the "Amber Void" guide |confirm |next "Zygor's Achievement Guides\\Dungeons & Raids\\Lich King Dungeon\\Amber Void"
|tip Click the line above to load the guide.
Earn the "Amber Void" Achievement |achieve 2136/38
step
_Congratulations!_
You Earned the "Glory to the Hero" Achievement.
]])
ZGV.BETAEND()
