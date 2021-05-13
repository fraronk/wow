local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingALEGION") then return end
ZygorGuidesViewer.GuideMenuTier = "TRI"
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Broken Shore\\Excavator Karla Quests",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the treasure hunting quests offered by Excavator Karla on Broken Shore.",
condition_suggested=function() return level >= 110 and completedq(46734) and not completedq(46666) end,
condition_end=function() return completedq(46666) end,
startlevel=110.0,
},[[
stickystart "Karla"
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Spiders, Huh?##46499 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 48.38,21.48 < 20 |only if walking
Cross the water |goto 45.30,23.59 < 25 |only if walking
Follow the path |goto 44.57,27.57 < 25 |only if walking
Follow the path |goto 41.83,28.51 < 25 |only if walking
click Spider-Covered Treasure Chest##268472
collect Potentially Precious Gem##146955 |n
Find the Creeping Grotto treasure |q 46499/1 |goto 43.44,31.38
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Spiders, Huh?##46499 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Grave Robbin'##46501 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto Broken Shore/0 43.89,58.31 < 20 |only if walking
Follow the path |goto 47.00,58.50 < 20 |only if walking
Follow the path |goto 51.56,51.23 < 20 |only if walking
click Dusty Treasure Chest##268510
Retrieve the Soul Ruin treasure |q 46501/1 |goto 49.68,46.76
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Grave Robbin'##46501 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Tomb Raidering##46509 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Cross the water |goto Broken Shore/0 52.04,25.18 < 20 |only if walking
Follow the path up |goto 55.39,27.70 < 25 |only if walking
Follow the path |goto 57.60,28.37 < 25 |only if walking
Follow the path |goto 62.08,23.45 < 20 |only if walking
Follow the path |goto 64.20,23.19 < 15 |only if walking
Follow the path |goto 66.48,22.54 < 15 |only if walking
Follow the path |goto 68.65,19.31 < 15 |only if walking
click Grandiose Treasure Chest##268511
Locate the Tomb of Sargeras treasure |q 46509/1 |goto 67.60,16.17
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Tomb Raidering##46509 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept Ship Graveyard##46510 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 42.30,72.48 < 20 |only if walking
Follow the path |goto 45.22,73.54 < 25 |only if walking
Swim across the water |goto 47.28,75.09 < 25 |only if walking
Swim under the stones |goto 53.99,77.27 < 20 |only if walking
click Sunken Treasure Chest##268512
|tip Clicking a Damaged Diving Helmet will give you temporary increased swim speed and underwater breathing.
collect 1 Wonderfully-Adorned Cloth##146958 |q 46510/1 |goto 54.70,77.89
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin Ship Graveyard##46510 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept We're Treasure Hunters##46511 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 68.61,46.68 < 20 |only if walking
Follow the path |goto 66.38,41.54 < 25 |only if walking
Follow the path |goto 69.88,35.70 < 25 |only if walking
Follow the path |goto 73.74,29.02 < 20 |only if walking
Follow the path |goto 75.19,23.89 < 20 |only if walking
click Sandy Treasure Chest##268513
Locate the Felrage Strand treasure |q 46511/1 |goto 75.76,21.73
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
turnin We're Treasure Hunters##46511 |goto 39.54,71.68
step
Follow the path |goto Broken Shore/0 44.20,62.29 < 20 |only if walking
Follow the path |goto 40.64,61.76 < 20 |only if walking
Follow the path |goto 40.33,67.42 < 20 |only if walking
talk Excavator Karla##119886
accept The Motherlode##46666 |goto 39.54,71.68
|tip Quests from this NPC appear 24 hours after completing the last one offered.
step
Follow the path |goto 42.15,72.39 < 20 |only if walking
Follow the path |goto 45.34,70.51 < 25 |only if walking
click Peculiar Rope
Investigate Excavator Karla's Cave |q 46666/1 |goto 47.84,67.35
|tip Wait for the dialogue to complete.
step
talk Excavator Karla##119886
turnin The Motherlode##46666 |goto 45.04,52.30
|tip Don't forget to open one of the caches for a reward.
step
label "Karla"
Excavator Karla only offers a quest every 24 hours
step
Congratulations!
You have completed the Excavator Karla questline
]])
ZygorGuidesViewer:RegisterGuide("Leveling Guides\\Legion (100-110)\\Dalaran Postmaster Quest Line",{
author="support@zygorguides.com",
description="\nThis guide will walk you through completing the Dalaran Postmaster quests to unlock The Postmaster's Office.",
condition_suggested=function() return level >= 98 and level <= 110 and not completedq(50247) and ZGV.IsLegionOn() end,
},[[
step
click Lost Mail##247797
|tip Lost Mail is found near mailboxes in Dalaran.
|tip It spawns randomly and periodically.
|tip In your minimap tracking menu, enable Mailbox under the Townsfolk category.
|tip Go from mailbox to mailbox searching for a tiny letter at the base.
|tip You can also purchase it from the Auction House.
collect Lost Mail##134859 |n
Read the Lost Mail |use Lost Mail##135479 |only if itemcount(135479) >= 1
accept Lost Mail##41368 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) == 0
accept Lost Mail##41411 |goto Dalaran L/10 58.98,48.70 |only if itemcount(135479) >= 1
|tip Only one of these will be available.
step
Enter the tunnel |goto 60.41,48.57 < 7 |walk
Go down the stairs |goto Dalaran L/11 76.95,67.93 < 7 |walk
Go down the stairs |goto 73.02,64.98 < 7 |walk
Go down the stairs |goto 70.11,62.34 < 7 |walk
Follow the path |goto 64.82,55.80 < 7 |walk
Follow the path |goto 60.23,49.36 < 10 |walk
Enter the tunnel |goto 59.70,39.41 < 7 |walk
Leave the tunnel |goto 67.27,25.33 < 7 |walk
talk Madam Goya##100986
|tip During periods without guards, The Underbelly is a PvP zone.
|tip Along the path as you reach the bottom of the stairs, talk to Raethan to hire a guard if you desire protection.
|tip Guards last for five minutes.
turnin Lost Mail##41368 |goto 71.41,17.92 |only if havequest(41368)
turnin Lost Mail##41411 |goto 71.41,17.92 |only if havequest(41411)
step
Enter the tunnel |goto 67.39,25.13 < 7 |walk
Leave the tunnel |goto 59.70,39.38 < 7 |walk
Enter the tunnel |goto 55.70,46.98 < 7 |walk
Leave the tunnel |goto 52.95,51.95 < 7 |walk
Follow the path |goto 40.99,42.02 < 7 |walk
Enter the tunnel |goto 34.74,43.60 < 7 |walk
Leave the tunnel |goto 31.30,43.23 < 7 |walk |c |q 41397
step
Enter the tunnel |goto 29.42,49.60 < 7 |walk
Go up the ramp |goto 27.36,53.52 < 7 |walk
Go up the ramp |goto 23.52,55.13 < 7 |walk
Go up the stairs |goto 20.26,57.31 < 7 |walk
Go up the stairs |goto 24.84,57.31 < 7 |walk
Leave the tunnel |goto Dalaran L/10 34.61,45.56 < 7 |walk |c |q 41397
step
Follow the path |goto 33.91,39.18 < 7 |walk
Follow the path |goto 32.05,34.54 < 10 |walk
click Mail Tube##280797 |goto 33.46,31.60 < 7 |walk
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
accept Return to Sender##46278 |goto 37.62,40.15
step
Return #9# letters |q 46278/1 |goto 38.98,40.71
|tip Click letters floating in the air around the room.
|tip Each one you click will return one letter.
step
talk The Postmaster##103976
turnin Return to Sender##46278 |goto 37.62,40.15
accept A Huge Package##41397 |goto 37.62,40.15
step
click Sack of Solid Stone
Heft the Solid Stone |q 41397/1 |goto 39.75,39.07
step
click Mail Tube##280797 |goto 37.87,42.14
Leave The Postmaster's Office |goto 32.99,31.62 |noway |c |q 41397
step
Follow the path |goto 32.12,35.47 < 10 |walk
Follow the path |goto 38.93,44.80 < 10 |walk
Follow the path |goto 48.51,26.70 < 10 |walk
Deliver 1,362 pieces of solid stone |q 41397/2 |goto 44.34,17.78
|tip Use the extra action button that appears on-screen.
step
Follow the path |goto 48.53,26.98 < 10 |only if walking
Follow the path |goto 39.21,45.21 < 10 |only if walking
Follow the path |goto 31.91,35.16 < 10 |only if walking
click Mail Tube##280797 |goto 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 41397
step
talk The Postmaster##103976
turnin A Huge Package##41397 |goto 37.61,40.15
accept Priority Delivery##41367 |goto 37.61,40.15
step
click Portal to the Frozen Throne
Take the portal to the Frozen Throne |q 41367/1 |goto 38.67,40.17
step
clicknpc The Lich King##103996
Retrieve the Forgotten Loot |q 41367/2 |goto Icecrown Citadel L/4 49.35,70.79
step
kill Nexus-Lord Ashaal##132999
Slay Nexus-Lord Ashaal |q 41367/3 |goto 49.35,70.79
step
click Portal to Dalaran##251123 |goto 49.86,38.98
Return to Dalaran |goto Dalaran L/10 60.92,44.72 < 10 |noway |c |q 41367
step
Locate the Stalwart Adventurer |q 41367/4 |goto Feralas/0 68.69,73.06
step
talk Johnny Awesome##52562
turnin Priority Delivery##41367 |goto 68.69,73.06
accept Service with a Smile##41394 |goto 68.69,73.06
step
Follow the path |goto 70.24,72.59 < 10 |only if walking
Follow the path |goto 70.64,72.70 < 7 |only if walking
talk Gott Weedlespan##51735
Tell him _"I.... have to sell this horse to you."_
Invincible's Reins sold |q 41394/1 |goto 70.76,73.08
step
Follow the path |goto 70.58,72.64 < 10 |only if walking
Follow the path |goto 70.11,72.67 < 10 |only if walking
talk Johnny Awesome##52562
turnin Service with a Smile##41394 |goto 68.69,73.07
accept Due Reward##41395 |goto 68.69,73.07
step
clicknpc Wilson##104110
Honor Twinkles' memory |q 41395/1 |goto Hillsbrad Foothills/0 38.72,59.99
step
Click the Complete Quest Box:
turnin Due Reward##41395
step
click Mail Tube##280797 |goto Dalaran L/10 33.47,31.62 < 7
Enter The Postmaster's Office |goto 39.46,41.83 < 7 |noway |c |q 50247
step
talk The Postmaster##103976
accept The Mail Must Flow##50247 |goto 37.61,40.13
step
talk The Postmaster##103976 |goto 37.61,40.13
Tell him _"I want to sort letters!"_
|tip Each letter will have an address.
|tip Click the portal for the zone that corresponds to the address.
Sort at Least 15 Letters |q 50247/1 |goto 37.59,40.53
step
talk The Postmaster##103976
turnin The Mail Must Flow##50247 |goto 37.61,40.13
]])
