local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHMOP") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Pandaria (80-90)\\The Jade Forest (80-90)",{
author="support@zygorguides.com",
image=ZGV.DIR.."\\Guides\\Images\\JadeForest",
next="Leveling Guides\\Pandaria (80-90)\\Valley of the Four Winds (81-90)",
condition_suggested=function() return level >= 80 and level <= 90 and not completedq(29670) end,
startlevel=80,
endlevel=90,
},[[
step
Enter the building |goto Orgrimmar/1 49.93,75.68 < 7 |walk
talk General Nazgrim##54870
|tip Inside the building.
accept The Art of War##29612 |goto 48.67,70.36 |only if completedq(25951) and completedq(25988) and completedq(26143) and completedq(26194) and completedq(25949) and completedq(25638) and completedq(25743) and completedq(26008) and completedq(25456) and completedq(25996)
accept The Art of War##29611 |goto 48.67,70.36 |only if default
step
Watch the cinematic
|tip Inside the building.
Report to Grommash Hold |q 29612/1 |goto 48.67,70.36 |only if havequest(29612) or completedq(29612)
Report to Grommash Hold |q 29611/1 |goto 48.67,70.36 |only if havequest(29611) or completedq(29611)
step
talk General Nazgrim##54870
|tip Inside the building.
turnin The Art of War##29612 |goto 48.67,70.36 |only if havequest(29612) or completedq(29612)
turnin The Art of War##29611 |goto 48.67,70.36 |only if havequest(29611) or completedq(29611)
accept All Aboard!##31853 |goto 48.67,70.36
step
Find Hellscream's Fist flying around in the sky
|tip You have to use a flying mount to get to it.
talk General Nazgrim##55054
turnin All Aboard!##31853 |goto Kalimdor/0 61.22,42.59
accept Into the Mists##29690 |goto Kalimdor/0 61.22,42.59
step
On the Hellscream's Fist airship
talk General Nazgrim##55054
Tell him _"I'm ready to go, General."_
Watch the cinematic
Discover Pandaria |q 29690/1 |goto 61.22,42.59
step
talk General Nazgrim##55135
turnin Into the Mists##29690 |goto The Jade Forest/0 30.78,10.22
accept Paint it Red!##31765 |goto The Jade Forest/0 30.78,10.22
step
Run down the ramp |goto 31.37,11.07 < 7 |walk
clicknpc Gunshit Turret##66677
|tip On the lower level of the ship.
Enter the Turret |invehicle |goto 31.53,11.01 |q 31765
stickystart "Destroy_Thunder_Hold_Cannons"
step
Kill Thunder Hold enemies around this area
Slay 80 Thunder Hold Troops |q 31765/1 |goto 33.03,10.61
|tip Use the abilities on your action bar.
step
label "Destroy_Thunder_Hold_Cannons"
kill 9 Thunder Hold Cannons##66203 |q 31765/2 |goto 33.03,10.61
|tip Use the abilities on your action bar.
step
talk Rivett Clutchpop##67250
|tip On the lower level of the ship.
turnin Paint it Red!##31765 |goto 31.01,11.02
accept Touching Ground##31766 |goto 31.01,11.02
step
click Rappelling Rope##215689
|tip On the lower level of the ship.
Rappel into Honeydew Glade |q 31766/1 |goto 31.51,11.11
step
talk General Nazgrim##55135
|tip He walks around this area.
turnin Touching Ground##31766 |goto 31.64,11.33
accept Finish Them!##31767 |goto 31.64,11.33
accept Fire Is Always the Answer##31768 |goto 31.64,11.33
stickystart "Destroy_Thunder_Hold_Munitions"
step
Kill Thunder Hold enemies around this area
Slay 15 Thunder Hold Troops |q 31767/1 |goto 32.71,6.91
You can find more around [33.77,12.87]
step
label "Destroy_Thunder_Hold_Munitions"
use Nazgrim's Flare Gun##89605
|tip Use it near Thunder Hold Munitions.
|tip They look like big piles of crates and barrels around this area.
Destroy #10# Thunder Hold Munitions |q 31768/1 |goto 32.71,6.91
You can find more around [33.77,12.87]
step
Enter the building |goto 33.68,10.61 < 10 |walk
talk General Nazgrim##66646
|tip Inside the building.
turnin Finish Them!##31767 |goto 34.78,10.63
turnin Fire Is Always the Answer##31768 |goto 34.78,10.63
accept The Final Blow!##31769 |goto 34.78,10.63
step
use Nazgrim's Flare Gun##89769
Destroy the First Barricade |q 31769/1 |goto 34.01,9.94
|tip Inside the building.
step
use Nazgrim's Flare Gun##89769
Destroy the Second Barricade |q 31769/2 |goto 34.73,9.93
|tip Inside the building.
step
use Nazgrim's Flare Gun##89769
Destroy the Third Barricade |q 31769/3 |goto 34.94,10.63
|tip Inside the building.
step
Watch the dialogue
Find Captain Doren |q 31769/4 |goto 33.73,10.61
step
talk General Nazgrim##66656
turnin The Final Blow!##31769 |goto 33.65,10.61
step
Watch the dialogue
talk General Nazgrim##66656
accept You're Either With Us Or...##31770 |goto 33.65,10.61
accept Higher Ground##29694 |goto 33.65,10.61
step
talk Taran Zhu##66657
accept Face to Face With Consequence##31771 |goto 33.71,10.61
step
talk Ellie Honeypaw##66660
accept Priorities!##31772 |goto 30.55,7.14
step
talk Sue-Ji the Tender##66659
accept Prowler Problems##31773 |goto 30.53,7.49
stickystart "Slay_Sha_Harbingers"
step
kill 20 Sha Haunt##66425 |q 31771/1 |goto 33.56,7.31
You can find more around [33.01,10.61]
step
label "Slay_Sha_Harbingers"
kill 7 Sha Harbinger##66424 |q 31771/2 |goto 33.56,7.31
You can find more around [33.01,10.61]
stickystart "Slay_Sha-Infested_Prowlers"
stickystart "Find_6_Barrels_of_Honeybrew"
step
talk Rivett Clutchpop##55146
Tell him _"Quit messing around and use your knife! Nazgrim wants you to report to the village immediately."_
Rescue Rivett Clutchpop |q 29694/2 |goto 30.53,7.21
step
talk Shokia##55170
Tell her _"On your feet! Nazgrim is organizing a counter-attack. We're regrouping in the village."_
Rescue Shokia |q 29694/4 |goto 29.43,8.48
step
label "Slay_Sha-Infested_Prowlers"
kill 10 Sha-Infested Prowler##66668 |q 31773/1 |goto 30.27,10.94
You can find more around [29.06,9.38]
step
label "Find_6_Barrels_of_Honeybrew"
click Barrel of Honeybrew##215695+
|tip They look like small grey barrels on the ground around this area.
Find #6# Barrels of Honeybrew |q 31772/1 |goto 30.27,10.94
You can find more around [29.06,9.38]
step
talk Sergeant Gorrok##55162
Tell him _"We need to regroup. Sergeant! Go to the nearby village."_
Rescue Sergeant Gorrok |q 29694/3 |goto 30.58,11.65
step
talk Shademaster Kiryn##55141
Tell her _"Snap out of it! You're alive! Nazgrim has ordered us to report to the nearby village."_
Rescue Shademaster Kiryn |q 29694/1 |goto 32.06,13.35
step
talk Ellie Honeypaw##66848
turnin Priorities!##31772 |goto 29.38,13.58
step
talk Sergeant Gorrok##66845
turnin Regroup!##29694 |goto 29.13,13.72
step
talk Mayor Honeydew##66220
turnin You're Either With Us Or...##31770 |goto 29.18,13.79
step
talk Taran Zhu##66657
turnin Face to Face With Consequence##31771 |goto 29.13,13.84
turnin Prowler Problems##31773 |goto 29.13,13.84
step
talk Sergeant Gorrok##66845
accept Seeking Zin'jun##31774 |goto 29.13,13.72
step
Enter the building |goto 28.58,13.35 < 5 |walk
talk Brewmother Kiki##66236
|tip Inside the building.
home Honeydew Village |goto 28.51,13.34 |q 31241 |future
step
talk Wing Hya##66227
fpath Honeydew Village |goto 28.10,15.62
step
talk Zin'Jun##55403
turnin Seeking Zin'jun##31774 |goto 31.14,17.53
accept Cryin' My Eyes Out##29765 |goto 31.14,17.53
step
click Ancient Statue##212181
accept Monstrosity##29743 |goto 30.89,17.49
stickystart "Collect_Zin'Juns_Rifle"
stickystart "Collect_Zin'Juns_Left_Eye"
stickystart "Collect_Zin'Juns_Right_Eye"
stickystart "Collect_Snuffs_Corpse"
step
click Ancient Statue Torso##212182
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Torso |q 29743/1 |goto 29.36,18.90
step
click Ancient Statue Arm##212183
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Arm |q 29743/2 |goto 30.12,21.35
step
click Ancient Statue Head##212186
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Head |q 29743/4 |goto 29.95,22.37
step
click Ancient Statue Shoulder##212184
Choose _<Create a sketch of the statue piece.>_
Sketch the Statue Shoulder |q 29743/3 |goto 28.58,22.16
step
Click the Complete Quest Box:
turnin Monstrosity##29743
step
label "Collect_Zin'Juns_Rifle"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Rifle##74160 |q 29765/1 |goto 29.79,20.83
step
label "Collect_Zin'Juns_Left_Eye"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Left Eye##74161 |q 29765/2 |goto 29.79,20.83
step
label "Collect_Zin'Juns_Right_Eye"
kill Hozen Groundpounder##55470+
collect Zin'Jun's Right Eye##74162 |q 29765/3 |goto 29.79,20.83
step
label "Collect_Snuffs_Corpse"
kill Hozen Groundpounder##55470+
collect Snuff's Corpse##74163 |q 29765/4 |goto 29.79,20.83
step
_Next to you:_
talk Zin'Jun##55403
turnin Cryin' My Eyes Out##29765
accept Seein' Red##29804
step
Enter the cave |goto 31.56,21.81 < 7 |walk
kill Konk##55509 |q 29804/1 |goto 31.94,22.20
|tip Inside the cave.
step
talk General Nazgrim##66656
turnin Seein' Red##29804 |goto 31.66,21.91
accept Assault on the Airstrip##31775 |goto 31.66,21.91
accept Strongarm Tactics##31776 |goto 31.66,21.91
step
talk Merchant Zin##65998
accept Unreliable Allies##31778 |goto 31.41,21.76
step
talk Rivett Clutchpop##55521
accept Choppertunity##31777 |goto 31.14,21.58
stickystart "Free_Pandaren"
stickystart "Slay_Strongarm_Troops"
step
kill Gyro-Mechanic Lavenderp##65883, Master Engineer Cogswing##65882
Slay Master Engineer Cogswing and Gyro-Mechanic Lavenderp |q 31776/1 |goto 30.33,24.26
step
kill Morgus Grimhatchet##65880 |q 31776/2 |goto 29.66,23.11
|tip He walks around the area.
|tip He may appear on your mini map as a yellow dot.
step
kill Corporal Jackson Silver##65881 |q 31776/3 |goto 27.78,22.92
|tip At the bottom of the tower.
step
click Requisitioned Firework Launcher##214962
|tip They look like small bronze dragon-shaped rocket launchers on the ground around this area.
collect Requisitioned Firework Launcher##89163 |goto 28.33,25.00 |q 31777
step
clicknpc Strongarm Gyrocopter##65843+
|tip They look like Alliance ships flying around this area.
use Requisitioned Firework Launcher##89163
Shoot Down #12# Strongarm Gyrocopters |q 31777/1 |goto 27.77,24.24
|tip You will need multiple Firework Launchers to complete this quest objective.
step
label "Free_Pandaren"
talk Pandaren Volunteer##67090+
Tell them _"You can go home now. I'll cover your back."_
Free 12 Pandaren |q 31778/1 |goto 28.83,23.97
step
label "Slay_Strongarm_Troops"
Kill Strongarm enemies around this area
Slay #15# Strongarm Troops |q 31775/1 |goto 28.83,23.97
step
talk Rivett Clutchpop##55521
turnin Choppertunity##31777 |goto 31.14,21.58
step
talk Merchant Zin##65998
turnin Unreliable Allies##31778 |goto 31.41,21.76
step
talk General Nazgrim##66656
turnin Assault on the Airstrip##31775 |goto 31.66,21.91
turnin Strongarm Tactics##31776 |goto 31.66,21.91
accept The Darkness Within##31779 |goto 31.66,21.91
step
Enter the cave |goto 25.98,24.37 < 7 |walk
kill Captain Doren##66052 |q 31779/1 |goto 25.75,23.64
|tip Inside the cave.
step
click Flagpole##215844
turnin The Darkness Within##31779 |goto 27.57,24.28
accept Nazgrim's Command##31999 |goto 27.57,24.28
step
talk General Nazgrim##55172
turnin Nazgrim's Command##31999 |goto 28.42,24.94
step
talk Shademaster Kiryn##55180
accept Forensic Science##29815 |goto 28.19,24.82
step
talk Rivett Clutchpop##55521
accept Missed Me By... That Much!##29821 |goto 28.10,24.70
step
clicknpc Empty Package##62923
turnin Missed Me By... That Much!##29821 |goto 22.87,30.59
accept They're So Thorny!##31112 |goto 22.87,30.59
stickystart "Collect_Emergency_Supplies"
step
clicknpc Lurching Blossom##55610+
|tip They look like small, moving, blue-green plants around this area.
|tip You can do this while mounted.
collect 8 Viscous Chlorophyll##74621 |q 29815/1 |goto 25.63,26.77
step
label "Collect_Emergency_Supplies"
kill Water Sprite##62930+
collect 5 Emergency Supplies##74623 |q 31112/1 |goto 25.99,26.20
step
talk Rivett Clutchpop##55521
turnin They're So Thorny!##31112 |goto 28.10,24.70
step
talk Shademaster Kiryn##55180
turnin Forensic Science##29815 |goto 28.19,24.82
accept Acid Rain##29827 |goto 28.19,24.82
step
clicknpc Recovered Gyrocopter##55674
Fly With the Gyrocopter |invehicle |goto 28.07,24.78 |q 29827
stickystart "Slay_Hozen_Nibstabbers"
step
kill 25 Hozen Gutripper##55707 |q 29827/1 |goto 28.67,27.39
|tip Use the abilities on your action bar.
step
label "Slay_Hozen_Nibstabbers"
kill 25 Hozen Nibstabber##55701 |q 29827/2 |goto 28.67,27.39
|tip Use the abilities on your action bar.
step
talk Shademaster Kiryn##55180
turnin Acid Rain##29827 |goto 28.19,24.82
step
talk General Nazgrim##55172
accept Lay of the Land##29822 |goto 28.42,24.94
step
Visit the Shrine of the Sun |q 29822/1 |goto 31.91,27.95
step
kill Dook Ookem##55622 |q 29822/3 |goto 27.81,30.31
step
Visit the Shrine of the Moon |q 29822/2 |goto 26.23,32.30
step
Enter the cave |goto 27.38,32.14 < 10 |walk
talk Lorewalker Cho##55768
|tip Inside the cave.
turnin Lay of the Land##29822 |goto 27.59,32.69
accept Stay a While, and Listen##31121 |goto 27.59,32.69
step
click Cho's Teapot
|tip Inside the cave.
Watch the dialogue
Listen to Lorewalker Cho |q 31121/1 |goto 27.67,32.56
step
talk Lorewalker Cho##55768
|tip Inside the cave.
turnin Stay a While, and Listen##31121 |goto 27.59,32.69
accept A Mile in My Shoes##31132 |goto 27.59,32.69
step
talk Lorewalker Cho##63217
|tip You may have to wait for him to walk here from the previous step.
turnin A Mile in My Shoes##31132 |goto 30.84,34.06
accept If These Stones Could Speak##31134 |goto 30.84,34.06
step
click Stone Monolith
Translate the First Stone Monolith |q 31134/1 |goto 30.88,33.70
step
click Stone Monolith
kill Bloodthirsty Saurok##63279
Translate the Second Stone Monolith |q 31134/2 |goto 30.64,33.78
step
click Stone Monolith
Translate the Third Stone Monolith |q 31134/3 |goto 30.59,34.14
step
talk Lorewalker Cho##63217
turnin If These Stones Could Speak##31134 |goto 30.84,34.06
accept Peering Into the Past##31152 |goto 30.84,34.06
step
Follow Lorewalker Cho
Watch the dialogue
Escort Lorewalker Cho to the Circle of Stone |q 31152/1 |goto 28.83,32.55
step
talk Lorewalker Cho##63307
turnin Peering Into the Past##31152 |goto 28.82,32.62
accept Family Tree##31167 |goto 28.82,32.62
step
click Incense Bundle##245682
Light the Incense |q 31167/1 |goto 28.79,32.48
step
talk Lorewalker Cho##63307
turnin Family Tree##31167 |goto 28.82,32.62
accept Swallowed Whole##29879 |goto 28.82,32.62
stickystart "Collect_Speckled_Trout"
step
kill 5 Engorged Crocolisk##56183 |q 29879/1 |goto 22.94,35.02
|tip Underwater.
step
label "Collect_Speckled_Trout"
clicknpc Speckled Trout##56180+
|tip They look like small blue and white fish underwater around this area.
collect 5 Speckled Trout##75202 |q 29879/2 |goto 22.94,35.02
step
talk Tooki Tooki##56313
turnin Swallowed Whole##29879 |goto 26.28,37.33
accept Orders are Orders##29935 |goto 26.28,37.33
step
talk Bo Bo##56351
accept The Bees' Knees##29933 |goto 25.88,37.99
step
talk Nibi Nibi##56327
accept Kill Kher Shan##29924 |goto 25.96,38.73
step
talk Jeek Jeek##63748
accept Wicked Wikkets##31241 |goto 28.18,38.97
step
Enter the cave |goto 33.34,42.36 < 10 |walk
kill Kher Shan##56329 |q 29924/1 |goto 33.35,41.65
|tip Inside the cave.
step
Click the Complete Quest Box:
turnin Kill Kher Shan##29924
stickystart "Collect_Alliance_Service_Medallions"
step
kill Jack Arrow##63809
|tip Attack him from the back and he won't hurt you.
|tip Avoid the pink circles on the ground.
collect Captain Jack's Head##85783 |goto 30.82,41.27 |q 31261 |future
step
use Captain Jack's Head##85783
accept Captain Jack's Dead##31261 |goto 30.82,41.27
step
label "Collect_Alliance_Service_Medallions"
kill Battleworn Paratrooper##63782+
collect 6 Alliance Service Medallion##85784+ |q 31241/1 |goto 30.82,40.78
step
kill Tigerfly##56283+
collect 30 Bug Leg##76173+ |q 29933/1 |goto 29.43,44.67
You can find more around [31.51,45.57]
step
talk Chief Kah Kah##56336
turnin Orders are Orders##29935 |goto 27.99,47.20
accept Instant Messaging##29936 |goto 27.99,47.20
turnin The Bees' Knees##29933 |goto 27.99,47.20
turnin Captain Jack's Dead##31261 |goto 27.99,47.20
turnin Wicked Wikkets##31241 |goto 27.99,47.20
step
talk Grookin Bed-Haver##62975
|tip Inside the building.
home Grookin Hill |goto 27.99,47.43 |q 30015 |future
step
clicknpc Signal Flare##56413
Watch the cinematic
Signal the Survivors |q 29936/1 |goto 27.98,46.79
step
talk General Nazgrim##56339
turnin Instant Messaging##29936 |goto 28.26,47.78
accept Beyond the Horizon##29941 |goto 28.26,47.78
step
talk Grookin Flapmaster##60952
fpath Grookin Hill |goto 27.82,47.90
step
talk Shokia##56340
Tell her _"Nazgrim has assigned you to scout the region, Shokia. You are to depart shortly."_
Dispatch Shokia |q 29941/1 |goto 28.35,46.97
step
talk Chief Kah Kah##56336
Tell him _"Big Chief Kah Kah, we will be exploring your lands and could use a good guide. Will you help us?"_
Parlay with Kah Kah |q 29941/4 |goto 27.99,47.20
step
talk Shademaster Kiryn##56478
Tell her _"Nazgrim has assigned you to the scouting party, Kiryn. You are to depart shortly."_
Dispatch Shademaster Kiryn |q 29941/3 |goto 27.10,48.98
step
talk Sergeant Gorrok##56477
|tip He walks around this area.
Tell him _"Nazgrim has assigned you to help scout the region, Gorrok. You are to depart shortly."_
Dispatch Sergeant Gorrok |q 29941/2 |goto 27.63,50.48
step
talk General Nazgrim##56339
turnin Beyond the Horizon##29941 |goto 28.26,47.78
step
talk Rivett Clutchpop##56406
accept Furious Fowl##29937 |goto 28.30,47.79
step
talk Chief Kah Kah##56336
accept What's in a Name Name?##31239 |goto 27.99,47.20
step
kill 7 Riverstride Jinyu##56289+ |q 31239/1 |goto 28.79,46.01
You can find more around [31.08,47.16]
step
talk Chief Kah Kah##56336
turnin What's in a Name Name##31239 |goto 27.99,47.20
step
kill Hungry Bloodtalon##56396+
collect 6 Fistful of Bird Guts##76225 |q 29937/1 |goto 30.51,50.99
You can find more around [27.91,52.38]
step
talk Rivett Clutchpop##56406
turnin Furious Fowl##29937 |goto 27.23,50.78
accept Easy Pickings##29939 |goto 27.23,50.78
step
talk Eekle Eekle##56358
accept Silly Wikket, Slickies are for Hozen##29942 |goto 27.03,50.84
stickystart "Collect_Snapper_Steaks"
step
use the Gut Bomb##76262
|tip Use it to throw a bomb into the water.
click Dead Deepriver Slicky##209877+
|tip They look like small dead fish floating in the water after using the Gut Bomb.
collect 5 Exploded Slicky##76260 |q 29939/1 |goto 26.71,55.39
step
label "Collect_Snapper_Steaks"
kill Muck Snapper##56447+
|tip Underwater.
collect 4 Snapper Steak##76420+ |q 29942/1 |goto 26.88,55.92
step
talk Eekle Eekle##56358
turnin Silly Wikket, Slickies are for Hozen##29942 |goto 27.03,50.84
step
talk Rivett Clutchpop##56406
turnin Easy Pickings##29939 |goto 27.23,50.78
accept The Scouts Return##29971 |goto 27.23,50.78
step
talk Shokia##55647
turnin The Scouts Return##29971 |goto 28.64,47.37
step
talk Riko##55648
accept Scouting Report: Hostile Natives##29730 |goto 28.60,47.43
step
click STAY OUT - NO VISITORS##209615
Inspect the Warning Sign |q 29730/1 |goto 38.30,45.39
step
clicknpc Lifelike Jade Statue##55378
|tip They look like small green Pandaren statues on the ground around this area.
Inspect a Lifelike Jade Statue |q 29730/2 |goto 38.93,46.00
step
talk Widow Greenpaw##55381
Tell her _"I am an orc, ma'am. Would you mind if I asked you a few questions?"_
Speak with Widow Greenpaw |q 29730/3 |goto 39.24,46.21
step
talk Riko##55648
turnin Scouting Report: Hostile Natives##29730 |goto 28.60,47.43
step
talk Shademaster Kiryn##55646
accept Scouting Report: On the Right Track##29731 |goto 28.65,47.46
step
Watch the dialogue
Search the Serpent's Spine for Signs of Life |q 29731/1 |goto 48.59,60.11
|tip Use the "Smoke Bomb" ability on your action bar to mark enemies for Shokia to kill.
step
talk Shademaster Kiryn##55646
turnin Scouting Report: On the Right Track##29731 |goto 28.65,47.46
step
talk Riko##55648
accept Scouting Report: The Friend of My Enemy##29823 |goto 28.60,47.43
step
talk Shademaster Kiryn##55688
Tell her _"Never! Riko protect you to death!"_
Kill the enemies that attack in waves
kill Alliance Scout##55693
Listen to Riko's Report |q 29823/1 |goto The Jade Forest 49.82,70.51
|tip Use the abilities on your action bar.
step
talk Riko##55648
turnin Scouting Report: The Friend of My Enemy##29823 |goto 28.60,47.43
step
talk Shokia##55647
accept Scouting Report: Like Jinyu in a Barrel##29824 |goto 28.64,47.37
step
click Sniper Rifle##209691
Kill Pearlfin enemies
|tip Right click them to kill them as you look through the sniper scope.
|tip After clearing out the enemies Shademaster Kiryn will plant 3 poison barrels for you to shoot.
|tip There's one next to each building and one next to the central fountain.
|tip Then you'll have to kill more waves of Pearlfin enemies again.
Escort Shademaster Kiryn Through the Camp |q 29824/1 |goto 62.55,82.15
step
talk Shokia##55647
turnin Scouting Report: Like Jinyu in a Barrel##29824 |goto 28.64,47.37
step
Watch the dialogue
talk General Nazgrim##56339
accept Guerrillas in our Midst##29943 |goto 28.67,47.53
step
talk Rivett Clutchpop##56406
accept Green-ish Energy##29968 |goto 30.79,52.26
stickystart "Collect_Green_Branches"
step
kill 8 Alliance Infiltrator##56303 |q 29943/1 |goto 30.47,51.64
step
_Next to you:_
talk General Nazgrim##56490
turnin Guerrillas in our Midst##29943
accept Burning Down the House##29966
step
label "Collect_Green_Branches"
click Green Branch##209903+
|tip They look like brown logs on the ground around this area.
collect 7 Green Branch##76333 |q 29968/1 |goto 30.47,51.64
step
use Nazgrim's Grog##76336
Destroy the Alliance Camp |q 29966/1 |goto 29.44,54.20
step
talk Rivett Clutchpop##56406
turnin Green-ish Energy##29968 |goto 27.23,50.78
accept Boom Goes the Doonamite!##29967 |goto 27.23,50.78
step
talk Rivett Clutchpop##56525
Tell him _"Okay, Rivett. I'm ready!"_
Speak with Rivett |invehicle |goto 28.98,49.08 |q 29967
step
Kill Jinyu enemies around this area
Slay #10# Jinyu Attackers |q 29967/1 |goto 29.79,49.20
|tip Use the "Throw Methane Bomb" on your action bar.
|tip If they get too close and knock you out talk to Rivett again.
step
talk Rivett Clutchpop##56525
turnin Boom Goes the Doonamite!##29967 |goto 28.98,49.08
step
talk General Nazgrim##56339
turnin Burning Down the House##29966 |goto 28.67,47.53
accept Dawn's Blossom##30015 |goto 28.67,47.53
step
talk Grookin Flapmaster##60952 |goto 27.82,47.90 |walk
Tell him _"Send me to Dawn's Blossom."_
Fly to Dawn's Blossom |goto 47.03,46.16 < 5 |noway |q 30015
step
talk Keg Runner Lee##59186
fpath Dawn's Blossom |goto 47.05,46.24
step
talk Lorewalker Cho##63577
turnin Dawn's Blossom##30015 |goto 46.82,46.14
step
talk Toya##56348
accept Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
Speak with Kai Wanderbrew |q 31230/3 |goto 47.09,46.01
step
talk Master Windfur##59160
|tip Inside the building.
Speak with Master Windfur |q 31230/1 |goto 48.49,44.49
step
talk Peiji Goldendraft##55809
|tip Inside the building.
Speak with Peiji Goldendraft |q 31230/2 |goto 45.72,43.70
step
talk Peiji Goldendraft##55809
|tip Inside the building.
home The Dunken Hozen |goto 45.72,43.70 |q 29670 |future
step
talk Toya##56348
turnin Welcome to Dawn's Blossom##31230 |goto 47.16,46.17
step
talk An Windfur##55413
|tip She walks around this area.
accept The Double Hozu Dare##29716 |goto 46.65,46.15
step
talk Tzu the Ironbelly##56062
accept The Silkwood Road##29865 |goto 46.46,45.80
step
talk Lo Wanderbrew##59178
accept The Threads that Stick##29866 |goto 46.63,45.31
stickystart "Slay_Silkwood_Stalkers"
step
click Silk Patch##209951+
|tip They look like white cocoons on the ground around this area.
collect 7 Pristine Silk Strand##75023 |q 29866/1 |goto 43.44,49.36
step
label "Slay_Silkwood_Stalkers"
kill 8 Silkwood Stalker##56070 |q 29865/1 |goto 43.44,49.36
step
_Next to you:_
talk An Windfur##55274
accept Down Kitty!##29717 |goto 40.12,48.40
stickystart "Slay_Jade_Guardians"
step
talk Scared Pandaren Cub##55267
Tell them _"It's safe now. You can come down."_
Rescue #6# Cubs |q 29716/1 |goto 39.05,47.82
You can find more around [38.28,44.73]
step
label "Slay_Jade_Guardians"
kill 8 Jade Guardian##55236 |q 29717/1 |goto 39.27,47.72
You can find more around [38.28,44.73]
step
_Next to you:_
talk An Windfur##55274
turnin The Double Hozu Dare##29716
accept The Jade Witch##29723
turnin Down Kitty!##29717
step
talk Widow Greenpaw##55368
|tip Inside the building.
Ask her _"Where is Shin?"_
|tip Follow her behind the house.
kill Widow Greenpaw##55368
Confront the Jade Witch |q 29723/1 |goto 39.34,46.22
step
talk Lo Wanderbrew##59178
turnin The Threads that Stick##29866 |goto 46.63,45.31
step
talk Tzu the Ironbelly##56062
turnin The Silkwood Road##29865 |goto 46.46,45.80
step
talk An Windfur##55413
|tip She walks around this area.
turnin The Jade Witch##29723 |goto 46.65,46.15
step
talk Kai Wanderbrew##59173
|tip He walks around this area.
accept Find the Boy##29993 |goto 47.09,46.01
step
talk Toya##56348
accept All We Can Spare##29925 |goto 47.16,46.17
step
talk Inkmaster Wei##56065
|tip He walks around this area.
turnin Find the Boy##29993 |goto 54.91,45.12
accept Shrine of the Dawn##29995 |goto 54.91,45.12
step
talk Inkmaster Glenzu##56064
accept The Perfect Color##29881 |goto 54.89,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
accept Quill of Stingers##29882 |goto 55.31,45.31
step
talk Injar'i Lakebloom##59732
fpath The Arboretum |goto 57.01,44.03
stickystart "Collect_Freshly_Fallen_Petals"
step
kill Orchard Wasp##56201+
collect 6 Wasp Stinger##75221+ |q 29882/1 |goto 53.88,45.85
step
label "Collect_Freshly_Fallen_Petals"
click Freshly Fallen Petals##209836+
|tip They look like small red flowers on the ground around this area.
collect 8 Freshly Fallen Petal##75219+ |q 29881/1 |goto 53.88,45.85
step
talk Inkmaster Glenzu##56064
turnin The Perfect Color##29881 |goto 54.89,45.31
step
talk Inkmaster Jo Po##56063
|tip He walks around this area.
turnin Quill of Stingers##29882 |goto 55.31,45.31
step
talk Syra Goldendraft##56708
turnin Shrine of the Dawn##29995 |goto 52.57,38.12
accept Getting Permission##29920 |goto 52.57,38.12
step
talk Pandriarch Bramblestaff##56209
Choose _Challenge the Pandriarch._
kill Pandriarch Bramblestaff##56209
Defeat Pandriarch Bramblestaff |q 29920/2 |goto 54.09,38.45
step
talk Pandriarch Goldendraft##56210
Choose _Challenge the Pandriarch._
kill Pandriarch Goldendraft##56210
Defeat Pandriarch Goldendraft |q 29920/3 |goto 53.59,36.73
step
talk Pandriarch Windfur##56206
Choose _Challenge the Pandriarch._
kill Pandriarch Windfur##56206
Defeat Pandriarch Windfur |q 29920/1 |goto 52.54,35.57
step
talk Lo Wanderbrew##55788
turnin Getting Permission##29920 |goto 52.59,38.12
step
talk Lorewalker Cho##56345
turnin All We Can Spare##29925 |goto 50.91,27.07
step
talk Foreman Mann##56346
accept I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
step
talk Supplier Towsa##59735
fpath Emperor's Omen |goto 50.82,26.80
step
kill Puckish Sprite##56349+
click Chunk of Jade##209863+
|tip They look like small teal chunks of ore that spawn after killing a Puckish Sprite.
collect 15 Chunk of Jade##76209 |q 29928/1 |goto 48.19,31.41
step
talk Foreman Mann##56346
turnin I Have No Jade And I Must Scream##29928 |goto 50.94,27.03
accept Calamity Jade##29926 |goto 50.94,27.03
accept Mann's Man##29927 |goto 50.94,27.03
step
clicknpc Outcast Sprite##55438
accept The Sprites' Plight##29745 |goto 48.67,24.94
step
Find the Source of the Destroyers |q 29745/2 |goto 48.45,20.27
step
kill 10 Stonebound Destroyer##55288+ |q 29745/1 |goto 49.59,20.14
You can find more around [47.43,20.83]
step
Click the Complete Quest Box:
turnin The Sprites' Plight##29745
accept Break the Cycle##29747
step
clicknpc Shattered Simulacrum##55472
accept Simulacrumble##29748 |goto 48.57,20.62
stickystart "Slay_Shan'ze_Spiritbinders"
step
clicknpc Vacant Destroyer##55289+
|tip They look like Stone Statues holding big maces around this area.
Destroy 6 Vacant Destroyer |q 29748/1 |goto 48.33,18.25
You can find more around [47.16,16.40]
step
label "Slay_Shan'ze_Spiritbinders"
kill 8 Shan'ze Spiritbinder##55279 |q 29747/1 |goto 48.33,18.25
You can find more around [47.16,16.40]
step
Click the Complete Quest Box:
turnin Simulacrumble##29748
turnin Break the Cycle##29747
accept An Urgent Plea##29749
step
click Staff of Pei-Zhi##209662
collect Staff of Pei-Zhi##74258 |q 29749/1 |goto 44.23,14.91
step
kill Ancient Spirit##55489+
Interrupt the Ritual of Spiritbinding |q 29749/2 |goto 44.36,15.35
step
talk Pei-Zhi##55614
|tip If he does not appear, you may have to log out and log back in to get him to show up.
turnin An Urgent Plea##29749 |goto 44.23,15.02
accept Ritual Artifacts##29751 |goto 44.23,15.02
accept Vessels of the Spirit##29750 |goto 44.23,15.02
accept The Wayward Dead##29752 |goto 44.23,15.02
stickystart "Collect_Spirit_Bottles"
stickystart "Recover_Wayward_Ancestors"
step
click Pungent Ritual Candle##209701
collect Pungent Ritual Candle##74761 |q 29751/3 |goto 42.27,17.09
step
click Jade Cong##209699+
collect Jade Cong##74762 |q 29751/1 |goto 42.68,15.74
step
click Chipped Ritual Bowl##209700
collect Chipped Ritual Bowl##74760 |q 29751/2 |goto 41.63,14.30
step
label "Collect_Spirit_Bottles"
kill Shan'ze Spiritclaw##55291+
collect 8 Spirit Bottle##74763+ |q 29750/1 |goto 41.98,15.85
step
label "Recover_Wayward_Ancestors"
clicknpc Wayward Ancestor##55290+
|tip They look like green spirits that float around this area.
use Staff of Pei-Zhi##74771
|tip Use it on Wayward Ancestors.
Recover 10 Wayward Ancestors |q 29752/1 |goto 40.64,14.69
step
talk Pei-Zhi##55614
turnin Ritual Artifacts##29751 |goto 44.23,15.02
turnin Vessels of the Spirit##29750 |goto 44.23,15.02
accept Back to Nature##29753 |goto 44.23,15.02
turnin The Wayward Dead##29752 |goto 44.23,15.02
accept A Humble Offering##29756 |goto 44.23,15.02
stickystart "Collect_Tidemist_Caps"
step
use Spirit Bottles##74808
kill Raging Beast Spirit##55790+
Return 8 Beast Spirits to Nature |q 29753/1 |goto 38.55,10.82
step
label "Collect_Tidemist_Caps"
click Tidemist Cap##209825+
|tip They look like small clusters of white mushrooms on the ground and at the base of tree trunks around this area.
collect 10 Tidemist Cap##75214+ |q 29756/1 |goto 39.83,11.45
step
talk Pei-Zhi##55614
turnin Back to Nature##29753 |goto 44.23,15.02
turnin A Humble Offering##29756 |goto 44.23,15.02
accept To Bridge Earth and Sky##29754 |goto 44.23,15.02
step
kill Shan'ze Spiritclaw##55902+
Protect Pei-Zhi During His Ritual |q 29754/1 |goto 43.76,12.61
step
Click the Complete Quest Box:
turnin To Bridge Earth and Sky##29754
accept Pei-Back##29755
step
kill Stonebound Colossus##56595
clicknpc Your Body##56600
|tip Click your body to return to it when your spirit gets separated from you.
kill Shan Jitong##56596 |q 29755/1 |goto 42.51,10.61
step
talk Pei-Zhi##59492
turnin Pei-Back##29755 |goto 43.84,12.52
step
talk Studious Chu##59736
fpath Tian Monastery |goto 43.57,24.53
step
talk Lin Tenderpaw##54913
accept The High Elder##29618 |goto 44.99,24.96
step
talk High Elder Cloudfall##54914
|tip Upstairs inside the building.
|tip He's on a balcony on the second level.
turnin The High Elder##29618 |goto 45.22,25.07
step
talk Lin Tenderpaw##54913
accept A Courteous Guest##29619 |goto 44.99,24.96
step
click Ripe Orange##209436+
|tip They look like small oranges on the ground around a tree.
|tip If the Greenwood Thieves are holding an orange, you can kill them and loot it off them.
collect 8 Ripe Orange##72589 |q 29619/1 |goto 45.71,27.19
step
talk Lin Tenderpaw##54913
turnin A Courteous Guest##29619 |goto 44.99,24.96
accept The Great Banquet##29620 |goto 44.99,24.96
step
talk High Elder Cloudfall##54914
Tell him _"I don't need any introductions, old man. Let's skip ahead to the good part."_
Speak with High Elder Cloudfall |q 29620/1 |goto 42.74,23.17
step
talk High Elder Cloudfall##54914
turnin The Great Banquet##29620 |goto 42.74,23.17
step
talk Xiao##54926
accept Your Training Starts Now##29622 |goto 43.13,23.63
accept Groundskeeper Wu##29626 |goto 43.13,23.63
step
talk Master Stone Fist##54922
accept Becoming Battle-Ready##29632 |goto 43.24,24.76
step
talk Tian Pupil##54944+
Tell them _"Let's fight!"_
kill Tian Pupil##54944+
Defeat #8# Tian Pupils |q 29632/1 |goto 43.69,24.97
step
talk Master Stone Fist##54922
turnin Becoming Battle-Ready##29632 |goto 43.24,24.76
accept Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
accept Husshun, the Wizened##29634 |goto 43.24,24.76
step
talk Husshun##54925
Tell him _"I challenge you to a fight, Husshun!"_
kill Husshun##54925
Defeat Husshan |q 29634/1 |goto 44.56,24.05
step
talk Zhi-Zhi##54924
Ask him _"Wanna fight?"_
kill Zhi-Zhi##54924
Defeat Zhi-Zhi |q 29633/1 |goto 43.05,25.99
step
talk Master Stone Fist##54922
turnin Zhi-Zhi, the Dextrous##29633 |goto 43.24,24.76
turnin Husshun, the Wizened##29634 |goto 43.24,24.76
accept Xiao, the Eater##29635 |goto 43.24,24.76
step
talk Xiao##54926
Tell him _"Put down your fork, and pick up you fists! I challenge you!"_
kill Xiao##54926
Defeat Xiao |q 29635/1 |goto 43.13,23.63
step
talk Master Stone Fist##54922
turnin Xiao, the Eater##29635 |goto 43.24,24.76
accept A Test of Endurance##29636 |goto 43.24,24.76
step
talk Groundskeeper Wu##54915
turnin Groundskeeper Wu##29626 |goto 41.62,23.70
accept A Proper Weapon##29627 |goto 41.62,23.70
step
talk June Whiteblossom##54981
buy Black Walnut Extract##72954 |q 29627/2 |goto 41.39,24.15
step
talk Brewmaster Lei Kanglei##54982
buy 3 Triple-Bittered Ale##72979 |q 29627/3 |goto 41.77,24.60
step
click Rattan Switch##209464+
|tip They look like tall thin plants with leaves at the top next to trees around this area.
collect 6 Rattan Switch##72926 |q 29627/1 |goto 41.47,25.33
You can find more around [41.86,24.87]
step
talk Groundskeeper Wu##54915
turnin A Proper Weapon##29627 |goto 41.62,23.70
accept A Strong Back##29628 |goto 41.62,23.70
accept A Steady Hand##29629 |goto 41.62,23.70
accept And a Heavy Fist##29630 |goto 41.62,23.70
step
talk Instructor Xann##54917
turnin Your Training Starts Now##29622 |goto 41.60,28.33
accept Perfection##29623 |goto 41.60,28.33
step
Mimic the Tian Instructor:
|tip Use the abilities on your action bar.
Practice #12# Strikes |q 29623/1 |goto 41.36,27.84
step
talk Instructor Xann##54917
turnin Perfection##29623 |goto 41.60,28.33
accept Attention##29624 |goto 41.60,28.33
step
kill 2 Training Bag##55183+ |q 29624/1 |goto 41.14,27.97
|tip Each bag has a lot of health and only one is vulnerable at a time.
|tip Listen for the Instructor's directions and hit the bag he calls for.
|tip If you're attacking the wrong bag you'll only do 1% damage.
step
talk Instructor Xann##54917
turnin Attention##29624 |goto 41.60,28.33
step
talk Instructor Myang##54918
turnin A Test of Endurance##29636 |goto 38.96,24.05
accept The Rumpus##29637 |goto 38.96,24.05
step
use Monastery Fireworks##73369
Kill the enemies that attack in waves
Survive for 2 Minutes |q 29637/1 |goto 39.02,23.36
step
talk Guard Shan Long##55094
accept Burning Bright##29631 |goto 38.01,23.80
step
talk Instructor Myang##54918
turnin The Rumpus##29637 |goto 38.96,24.05
step
click Boiling Cauldron##209551
Obtain the Boiling Cauldron |q 29628/1 |goto 37.76,17.57
step
_Do Not Mount:_
|tip The cauldron cannot keep up if you mount; you will lose it and have to restart.
|tip Nearby Greenwood enemies will attack you when you get close while draging the cauldron.
Return with the Boiling Cauldron |q 29628/2 |goto 41.62,23.70
step
talk Groundskeeper Wu##54915
turnin A Strong Back##29628 |goto 41.62,23.70
step
kill 10 Greenwood Trickster##54987 |q 29630/1 |goto 37.78,19.83
stickystart "Collect_Blushleaf_Extracts"
step
Kill Waxwood enemies around this area
Slay #6# Waxwood Hunters |q 29631/1 |goto 34.58,21.65
step
label "Collect_Blushleaf_Extracts"
click Blushleaf Clusters
|tip They look like small bushes with red leaves around this area.
|tip This is a channeled spell that determines how many extracts you obtain per plant so try to not get interrupted or move.
collect 80 Blushleaf Extract##73193 |q 29629/1 |goto 34.58,21.65
step
talk Guard Shan Long##55094
turnin Burning Bright##29631 |goto 38.01,23.80
step
talk Groundskeeper Wu##54915
turnin A Steady Hand##29629 |goto 41.62,23.70
turnin And a Heavy Fist##29630 |goto 41.62,23.70
accept Flying Colors##29646 |goto 41.62,23.70
step
talk High Elder Cloudfall##54914
turnin Flying Colors##29646 |goto 42.74,23.17
step
Enter the cave |goto 45.97,28.98 < 7 |walk
Locate Hao Mann |q 29927/1 |goto The Jade Forest/6 60.88,36.85
step
talk Hao Mann##56347
|tip Inside the cave.
turnin Mann's Man##29927 |goto 60.88,36.85
accept Trapped!##29929 |goto 60.88,36.85
stickystart "Slay_Greenstone_Gorgers"
stickystart "Slay_Greenstone_Nibblers"
step
clicknpc Greenstone Miner##56464+
|tip They look like friendly Pandaren trapped by piles of rocks around this area inside the cave.
Free #8# Gemstone Miners |q 29929/1 |goto The Jade Forest/7 54.14,44.11
step
label "Slay_Greenstone_Gorgers"
kill 6 Greenstone Gorger##56404 |q 29926/2 |goto The Jade Forest/7 54.14,44.11
|tip Inside the cave.
step
label "Slay_Greenstone_Nibblers"
kill 12 Greenstone Nibbler##56401 |q 29926/1 |goto The Jade Forest/7 54.14,44.11
|tip Inside the cave.
step
Run up the stairs |goto 50.68,54.23 < 5 |walk
talk Hao Mann##56467
turnin Trapped!##29929 |goto The Jade Forest/0 46.30,29.40 |notravel
accept What's Mined Is Yours##29930 |goto 46.30,29.40 |notravel
step
clicknpc Jade Cart##56527
Jump in the Cart |invehicle |goto 46.28,29.46 |q 29930
step
Kill the enemies that attack
Deliver the Jade |q 29930/1 |goto 51.21,26.72
step
talk Foreman Mann##56346
turnin Calamity Jade##29926 |goto 50.94,27.03
turnin What's Mined Is Yours##29930 |goto 50.94,27.03
accept The Serpent's Heart##29931 |goto 50.94,27.03
step
talk Foreman Raike##59391
turnin The Serpent's Heart##29931 |goto 48.31,61.35
accept Love's Labor##30495 |goto 48.31,61.35
step
talk Historian Dinh##59395
Tell him _"I've got a new jade shipment for you."_
Complete Historian Dinh's Delivery |q 30495/1 |goto 46.36,61.80
step
talk Surveyor Sawa##59401
Tell him _"I've got your jade right here."_
Complete Surveyor Sawa's Delivery |q 30495/2 |goto 46.94,60.36
step
talk Kitemaster Shoku##59392
Tell him _"I've got a jade delivery for you."_
Complete Kitemaster Shoku's Delivery |q 30495/3 |goto 48.18,60.02
step
talk Taskmaster Emi##59397
|tip At the top of the big jade statue.
Ask her _"Did someone say they needed jade?"_
Complete Taskmaster Emi's Delivery |q 30495/4 |goto 47.58,60.67
step
talk Foreman Raike##59391
turnin Love's Labor##30495 |goto 48.31,61.35
accept The Temple of the Jade Serpent##29932 |goto 48.31,61.35
step
talk Elder Sage Wind-Yi##57242
Tell her _"I have a message for the Jade Serpent."_
Speak to Elder Sage Wind-Yi |q 29932/1 |goto 55.84,57.08
step
talk Elder Sage Rain-Zhu##56782
turnin The Temple of the Jade Serpent##29932 |goto 58.13,58.66
accept The Scryer's Dilemma##29997 |goto 58.13,58.66
accept The Librarian's Quandary##29998 |goto 58.13,58.66
step
talk Fei##56784
accept The Rider's Bind##29999 |goto 58.03,59.01
accept Lighting Up the Sky##30005 |goto 58.03,59.01
stickystart "Launch_Fireworks"
step
clicknpc Playful Emerald Serpent##56859
|tip It floats around this area.
Find the Playful Emerald Serpent |q 29999/3 |goto 56.53,58.36
stickystop "Launch_Fireworks"
step
Enter the building |goto 56.42,58.92 < 7 |walk
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin The Librarian's Quandary##29998 |goto 56.27,60.44
accept Moth-Ridden##30001 |goto 56.27,60.44
accept Pages of History##30002 |goto 56.27,60.44
step
clicknpc Playful Gold Serpent##56850
|tip It floats around this area inside the building.
Find the Playful Gold Serpent |q 29999/4 |goto 56.04,60.34
stickystart "Slay_Dappled_Moths"
step
click Infested Book##209594+
|tip They look like large green books laying on the ground inside the building.
kill 12 Bookworm##57237 |q 30002/1 |goto 55.62,60.07
step
label "Slay_Dappled_Moths"
kill 8 Dappled Moth##57232 |q 30001/1 |goto 55.89,60.26
|tip They look like small grey moths flying around inside the building.
step
talk Lorewalker Stonestep##56786
|tip Inside the building.
turnin Moth-Ridden##30001 |goto 56.27,60.44
turnin Pages of History##30002 |goto 56.27,60.44
accept Everything In Its Place##30004 |goto 56.27,60.44
stickystart "Launch_Fireworks"
step
clicknpc Playful Crimson Serpent##56852
|tip It floats around this area.
Find the Playful Crimson Serpent |q 29999/2 |goto 58.17,61.38
step
talk Elder Sage Rain-Zhu##56782
turnin Everything In Its Place##30004 |goto 58.13,58.66
step
clicknpc Playful Azure Serpent##56853
|tip It floats around this area.
Find the Playful Azure Serpent |q 29999/1 |goto 59.19,56.75
step
kill Water Fiend##56820+
|tip Inside the building.
collect Scryer's Staff##76725 |q 29997/1 |goto 57.15,55.83
step
talk Wise Mari##56787
|tip Inside the building.
turnin The Scryer's Dilemma##29997 |goto 57.57,56.03
accept A New Vision##30011 |goto 57.57,56.03
step
label "Launch_Fireworks"
click Firework Launcher##210004+
|tip They look like stone urns sitting on wooden stands on the ground around this area.
Launch #8# Fireworks |q 30005/1 |goto 57.70,57.81
step
talk Elder Sage Rain-Zhu##56782
turnin A New Vision##30011 |goto 58.13,58.66
step
talk Fei##56784
turnin The Rider's Bind##29999 |goto 58.03,59.01
turnin Lighting Up the Sky##30005 |goto 58.03,59.01
accept The Jade Serpent##30000 |goto 58.03,59.01
step
Watch the dialogue
Listen to the Jade Dragon's Tale |q 30000/1
step
talk Elder Sage Wind-Yi##57242
turnin The Jade Serpent##30000 |goto 55.84,57.08
accept Get Back Here!##30499 |goto 55.84,57.08
step
talk Ginsa Arroweye##59727
fpath Jade Temple Grounds |goto 54.57,61.75
step
talk General Nazgrim##57108
turnin The Time For War##30499 |goto 28.03,47.19
accept Gauging Our Progress##30484 |goto 28.03,47.19
accept Sufficient Motivation##30466 |goto 28.03,47.19
stickystart "Motivate_Hozen"
step
click Barrel of Slickies##209974
collect Bucket of Slicky Water##79884 |q 30466/2 |goto 28.11,47.39
step
talk Rivett Clutchpop##59305
Tell him _"General Nazgrim needs an update on your progress."_
collect Rivett Clutchpop's Report##80014 |q 30484/2 |goto 28.41,47.79
step
talk Shademaster Kiryn##56841
Tell her _"General Nazgrim wants an update on your progress."_
collect Shademaster Kiryn's Report##80013 |q 30484/1 |goto 29.16,50.89
stickystop "Motivate_Hozen"
step
talk Shokia##56838
|tip She walks around this area.
Tell her _"General Nazgrim needs your training report."_
collect Shokia's Report##80015 |q 30484/3 |goto 28.39,51.93
step
talk Riko##56840
Tell him _"General Nazgrim wants to know the status of the supplies."_
collect Riko's Report##80061 |q 30484/4 |goto 27.00,54.94
step
label "Motivate_Hozen"
use Bucket of Slicky Water##79884
|tip Use it on Lazy Hozen around this area.
|tip They look like sleeping monkies on the ground around this area.
Motivate #10# Hozen |q 30466/1 |goto 28.53,49.47
step
talk General Nazgrim##57108
turnin Gauging Our Progress##30484 |goto 28.03,47.19
turnin Sufficient Motivation##30466 |goto 28.03,47.19
step
talk Lorewalker Cho##59377
accept Last Piece of the Puzzle##30485 |goto 28.22,46.72
step
talk Mishi##64207 |goto 28.19,46.72
Tell him _"I am ready to leave."_
Fly to Serpent's Overlook |goto 44.65,67.24 < 5 |noway |q 30485
step
talk Sky Dancer Ji##64310
fpath Serpent's Overlook |goto 43.10,68.49
step
use the Cho Family Heirloom##80071
Watch the cutscene
Reveal the Mystery of the Frescos |q 30485/1 |goto 44.51,66.94
step
talk Lorewalker Cho##59411
turnin Last Piece of the Puzzle##30485 |goto 44.77,67.09
accept The Seal is Broken##31303 |goto 44.77,67.09
step
talk Mishi##64244
Tell him _"Let's do this, Mishi!"_
Start Riding Mishi |invehicle |goto 44.77,67.04 |q 31303
step
Seal #12# Sha Fissures |q 31303/1
|tip They look like white circles with pillars of smoke coming out of them around this area.
|tip Use the "Shoot Cannon" ability on your action bar.
step
talk Lorewalker Cho##59418
turnin The Seal is Broken##31303 |goto 49.30,61.48
accept Residual Fallout##30500 |goto 49.30,61.48
accept Jaded Heart##30502 |goto 49.30,61.48
accept Emergency Response##30504 |goto 49.30,61.48
stickystart "Slay_Sha_Remnants"
stickystart "Slay_Sha_Echoes"
step
use Cho's Fireworks##86467
Rescue General Nazgrim |q 30504/1 |goto 48.13,61.77
step
|use Cho's Fireworks##86467
Rescue Shademaster Kiryn |q 30504/2 |goto 47.24,62.54
step
|use Cho's Fireworks##86467
Rescue Shokia |q 30504/3 |goto 46.87,60.71
step
|use Cho's Fireworks##86467
Rescue Rivett Clutchpop |q 30504/4 |goto 48.02,59.08
step
label "Slay_Sha_Remnants"
click Celestial Jade##210921+
|tip They look like small teal chunks of ore on the ground around this area.
use Celestial Jade##80074
|tip Use them on Sha Remnants to weaken them.
kill 6 Sha Remnant##59434 |q 30502/1 |goto 48.4,60.2
step
label "Slay_Sha_Echoes"
kill 10 Sha Echo##59417 |q 30500/1 |goto 48.4,60.2
step
talk Lorewalker Cho##59418
turnin Residual Fallout##30500 |goto 49.30,61.48
turnin Jaded Heart##30502 |goto 49.30,61.48
turnin Emergency Response##30504 |goto 49.30,61.48
step
talk Fei##59899
accept Moving Forward##30648 |goto 49.30,61.42
step
talk Fei##59899 |goto 49.30,61.42
Tell her _"I am ready to leave."_
Begin Flying With Yu'lon |goto 48.58,60.23 < 15 |noway |q 30648
step
Watch the dialogue
Travel to the Valley of the Four Winds |q 30648/1 |goto Valley of the Four Winds/0 86.02,21.72 |notravel
step
Click the Complete Quest Box:
turnin Moving On##30648
step
talk Shao the Defiant##54697
accept Defiance##29578 |goto The Jade Forest/0 43.48,75.92
accept Rally the Survivors##29579 |goto 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around inside the building.
accept Spitfire##29585 |goto 43.25,76.01
accept Orchard-Supplied Hardware##29580 |goto 43.25,76.01
stickystart "Collect_Orchard_Tools"
stickystart "Put_Out_Orchard_Fires"
stickystart "Slay_Gormali_Incinerators"
stickystart "Slay_Gormali_Raiders"
step
talk Nectarbreeze Farmer##54763+
|tip They look like friendly Pandaren fighting around this area.
Tell them _"Get to Hanae's house. It's safe there."_
Rescue #5# Survivors |q 29579/1 |goto 43.42,75.38
step
label "Collect_Orchard_Tools"
click Orchard Tool##209345+
|tip They look like small wooden shovels and rakes laying on the ground around this area.
collect 6 Orchard Tool##72133 |q 29580/1 |goto 44.02,73.03
step
label "Put_Out_Orchard_Fires"
use Nectarbreeze Cider##72578
|tip Use it to put out fires around this area.
|tip You must be facing the fire and standing close to it for this to work.
Put Out #12# Orchard Fires |q 29585/1 |goto 44.02,73.03
step
label "Slay_Gormali_Incinerators"
kill 8 Gormali Incinerator##54703 |q 29578/2 |goto 44.02,73.03
step
label "Slay_Gormali_Raiders"
kill 8 Gormali Raider##54702 |q 29578/1 |goto 44.02,73.03
step
talk Shao the Defiant##54697
turnin Defiance##29578 |goto 43.48,75.92
turnin Rally the Survivors##29579 |goto 43.48,75.92
step
talk Gentle Mother Hanae##54854
|tip She walks around inside the building.
turnin Orchard-Supplied Hardware##29580 |goto 43.25,76.01
turnin Spitfire##29585 |goto 43.25,76.01
step
talk Traumatized Nectarbreeze Farmer##55209
|tip Inside the building.
accept The Splintered Path##29586 |goto 43.21,75.94
step
Discover Camp Mogu |q 29586/1 |goto 41.00,73.97
step
talk Shao the Defiant##55009
turnin The Splintered Path##29586 |goto 41.00,73.97
accept Unbound##29587 |goto 41.00,73.97
accept Getting Down to Business##29670 |goto 41.00,73.97
stickystart "Free_Farmers"
step
kill Subjugator Gormal##55016 |q 29670/1 |goto 37.80,76.18
step
label "Free_Farmers"
kill Gormali Slaver##54989+
clicknpc Captured Nectarbreeze Farmer##54990+
|tip They look like friendly Pandaren trapped in nets or chained to Gormali Slavers around this area.
Free #10# Farmers |q 29587/1 |goto 39.85,74.79
You can find more around [37.84,76.88]
step
talk Shao the Defiant##55009
turnin Unbound##29587 |goto 41.00,73.97
turnin Getting Down to Business##29670 |goto 41.00,73.97
]])
