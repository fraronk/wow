local ZGV = ZygorGuidesViewer
if not ZGV then return end

-- #GLOBALS ZygorGuidesViewer

local GuideMenu = ZGV.GuideMenu

GuideMenu.HomeVersion = 1
GuideMenu.Home={
	{"banner", image=ZGV.DIR.."\\Skins\\banner"},

	{"section", text=[[EVENTS]]},
	{"item", text=[[Updated |cfffe6100Children's Week Zandalar Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Zandalar Quests"},
	{"item", text=[[Updated |cfffe6100Children's Week Stormwind Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Stormwind Quests",faction="A"},
	{"item", text=[[Updated |cfffe6100Children's Week Orgrimmar Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Orgrimmar Quests",faction="H"},
	{"item", text=[[Updated |cfffe6100Children's Week Shattrath Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Shattrath Quests"},
	{"item", text=[[Updated |cfffe6100Children's Week Dalaran Oracles Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Dalaran Oracles Quests"},
	{"item", text=[[Updated |cfffe6100Children's Week Dalaran Wolvar Quests|r.]], guide="EVENTS\\Children's Week\\Children's Week Dalaran Wolvar Quests"},
	{"item", text=[[Updated |cfffe6100Children's Week Achievements|r.]], folder="EVENTS\\Children's Week\\Achievements"},

	{"title", text=[[Patch 8.3 Content]]},

	{"section", text=[[LEVELING]]},
	{"item", text=[[Added |cfffe6100Magni's Plan|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Heart of Azeroth\\Magni\'s Plan"},
	{"item", text=[[Added |cfffe6100Horrific Vision of Orgrimmar|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Horrific Vision of Orgrimmar",faction="H"},
	{"item", text=[[Added |cfffe6100Horrific Vision of Stormwind|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Horrific Vision of Stormwind",faction="H"},
	{"item", text=[[Added |cfffe6100Mechagnome Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Mechagnome Race Unlock",faction="A"},
	{"item", text=[[Added |cfffe6100Vulpera Race Unlock|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Allied Races\\Vulpera Race Unlock",faction="H"},
	{"item", text=[[Added |cfffe6100Worgen Heritage Armor|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Heritage Armor\\Worgen Heritage Armor",faction="A"},
	{"item", text=[[Added |cfffe6100Goblin Heritage Armor|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Heritage Armor\\Goblin Heritage Armor",faction="H"},
	{"item", text=[[Added |cfffe6100Horrific Vision of Stormwind|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Horrific Vision of Stormwind"},
	{"item", text=[[Added |cfffe6100Horrific Vision of Orgrimmar|r.]], guide="LEVELING\\Battle for Azeroth (110-120)\\Horrific Vision of Orgrimmar"},

	{"section", text=[[DUNGEONS]]},
	{"item", text=[[Added |cfffe6100Ny'alotha, the Waking City - Gift of Flesh|r.]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny\'alotha, the Waking City - Gift of Flesh"},
	{"item", text=[[Added |cfffe6100Ny'alotha, the Waking City - Halls of Devotion|r.]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny\'alotha, the Waking City - Halls of Devotion"},
	{"item", text=[[Added |cfffe6100Ny'alotha, the Waking City - The Waking Dream|r.]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny\'alotha, the Waking City - The Waking Dream"},
	{"item", text=[[Added |cfffe6100Ny'alotha, the Waking City - Vision of Destiny|r.]], guide="DUNGEONS\\Battle for Azeroth Raids\\Ny\'alotha, the Waking City - Vision of Destiny"},

	{"section", text=[[DAILIES]]},
	{"item", text=[[Added |cfffe6100Uldum World Quests|r.]], guide="DAILIES\\Battle for Azeroth\\Uldum\\Uldum World Quests"},
	{"item", text=[[Added |cfffe6100Vale of Eternal Blossoms World Quests|r.]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms World Quests"},
	{"item", text=[[Added |cfffe6100Lesser Visions of N'Zoth|r.]], guide="DAILIES\\Battle for Azeroth\\Lesser Visions of N\'Zoth"},
	{"item", text=[[Added |cfffe6100Uldum Assaults|r.]], guide="DAILIES\\Battle for Azeroth\\Uldum\\Uldum Assaults"},
	{"item", text=[[Added |cfffe6100Vale of Eternal Blossoms Assaults|r.]], guide="DAILIES\\Battle for Azeroth\\Vale of Eternal Blossoms\\Vale of Eternal Blossoms Assaults"},

	{"section", text=[[REPUTATIONS]]},
	{"item", text=[[Added |cfffe6100Rajani|r.]], guide="REPUTATIONS\\Battle for Azeroth\\Rajani"},
	{"item", text=[[Added |cfffe6100Uldum Accord|r.]], guide="REPUTATIONS\\Battle for Azeroth\\Uldum Accord"},

	{"section", text=[[PROFESSIONS]]},
	{"item", text=[[Added |cfffe6100Void Focus|r.]], guide="PROFESSION\\Leveling Guides\\Battle for Azeroth\\Void Focus"},

	{"section", text=[[PETSMOUNTS]]},
	{"item", text=[[Added |cfffe6100Void-Scarred Toad|r.]], guide="PETSMOUNTS\\Battle Pets\\Aquatic Pets\\Void-Scarred Toad"},
	{"item", text=[[Added |cfffe6100Voidskimmer|r.]], guide="PETSMOUNTS\\Battle Pets\\Aquatic Pets\\Voidskimmer"},
	{"item", text=[[Added |cfffe6100C'Thuffer|r.]], guide="PETSMOUNTS\\Battle Pets\\Beast Pets\\C\'Thuffer"},
	{"item", text=[[Added |cfffe6100Jade Defender|r.]], guide="PETSMOUNTS\\Battle Pets\\Beast Pets\\Jade Defender"},
	{"item", text=[[Added |cfffe6100Pygmy Camel|r.]], guide="PETSMOUNTS\\Battle Pets\\Beast Pets\\Pygmy Camel"},
	{"item", text=[[Added |cfffe6100Rotbreath|r.]], guide="PETSMOUNTS\\Battle Pets\\Beast Pets\\Rotbreath"},
	{"item", text=[[Updated |cfffe6100Shadowbarb Drone|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Shadowbarb Drone",faction="A"},
	{"item", text=[[Updated |cfffe6100Elusive Quickhoof|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Dropped Mounts\\Elusive Quickhoof"},
	{"item", text=[[Updated |cfffe6100Springfur Alpaca|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Quest Mounts\\Springfur Alpaca",faction="A"},
	{"item", text=[[Added |cfffe6100Reek|r.]], guide="PETSMOUNTS\\Battle Pets\\Magic Pets\\Reek"},
	{"item", text=[[Added |cfffe6100Malevolent Drone|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Malevolent Drone"},
	{"item", text=[[Added |cfffe6100Awakened Mindborer|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Achievement Mounts\\Awakened Mindborer"},
	{"item", text=[[Added |cfffe6100Black Serpent of N'Zoth|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Achievement Mounts\\Black Serpent of N\'Zoth"},
	{"item", text=[[Added |cfffe6100Wriggling Parasite|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Achievement Mounts\\Wriggling Parasite"},
	{"item", text=[[Added |cfffe6100Ensorcelled Everwyrm|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Blizzard Store Mounts\\Ensorcelled Everwyrm"},
	{"item", text=[[Added |cfffe6100Clutch of Ha-Li|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Clutch of Ha-Li"},
	{"item", text=[[Added |cfffe6100Drake of the Four Winds|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Drake of the Four Winds"},
	{"item", text=[[Added |cfffe6100Ivory Cloud Serpent|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Ivory Cloud Serpent"},
	{"item", text=[[Added |cfffe6100Mail Muncher|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Mail Muncher"},
	{"item", text=[[Added |cfffe6100Ny'alotha Allseer|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Ny\'alotha Allseer"},
	{"item", text=[[Added |cfffe6100Shadowbarb Drone|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Shadowbarb Drone"},
	{"item", text=[[Added |cfffe6100Uncorrupted Voidwing|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Uncorrupted Voidwing"},
	{"item", text=[[Added |cfffe6100Waste Marauder|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Dropped Mounts\\Waste Marauder"},
	{"item", text=[[Added |cfffe6100Rajani Warserpent|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Vendor Mounts\\Rajani Warserpent"},
	{"item", text=[[Added |cfffe6100Wastewander Skyterror|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Vendor Mounts\\Wastewander Skyterror"},
	{"item", text=[[Added |cfffe6100Wicked Swarmer|r.]], guide="PETSMOUNTS\\Mounts\\Flying Mounts\\Vendor Mounts\\Wicked Swarmer"},
	{"item", text=[[Added |cfffe6100Caravan Hyena|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Caravan Hyena",faction="H"},
	{"item", text=[[Added |cfffe6100Mechagon Mechanostrider|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Achievement Mounts\\Mechagon Mechanostrider",faction="A"},
	{"item", text=[[Added |cfffe6100Elusive Quickhoof|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Dropped Mounts\\Elusive Quickhoof"},
	{"item", text=[[Added |cfffe6100Mollie|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Dropped Mounts\\Mollie"},
	{"item", text=[[Added |cfffe6100Ren's Stalwart Hound|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Dropped Mounts\\Ren\'s Stalwart Hound"},
	{"item", text=[[Added |cfffe6100Xinlao|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Dropped Mounts\\Xinlao"},
	{"item", text=[[Added |cfffe6100Springfur Alpaca|r.]], guide="PETSMOUNTS\\Mounts\\Ground Mounts\\Quest Mounts\\Springfur Alpaca"},
	{"item", text=[[Updated |cfffe6100Battle Pet Dungeon Deadmines|r.]], guide="PETSMOUNTS\\Battle Pets\\Battle Pet Dungeons\\Deadmines"},
	{"item", text=[[Updated |cfffe6100Battle Pet Dungeon Gnomeregan|r.]], guide="PETSMOUNTS\\Battle Pets\\Battle Pet Dungeons\\Gnomeregan"},
	{"item", text=[[Updated |cfffe6100Battle Pet Dungeon Wailing Caverns|r.]], guide="PETSMOUNTS\\Battle Pets\\Battle Pet Dungeons\\Wailing Caverns"},
	{"item", text=[[Added |cfffe6100Blackrock Depths Pet Dungeon|r.]], guide="PETSMOUNTS\\Battle Pets\\Battle Pet Dungeons\\Blackrock Depths"},

	{"section", text=[[TITLES]]},
	{"item", text=[[Added |cfffe6100The Awakened|r.]], guide="TITLES\\Battle for Azeroth Titles\\General\\The Awakened"},
	{"item", text=[[Added |cfffe6100Veteran of the Fourth War|r.]], guide="TITLES\\Battle for Azeroth Titles\\General\\Veteran of the Fourth War"},

	{"section", text=[[ACHIEVEMENTS]]},
	{"item", text=[[Added |cfffe6100Mythic: N'Zoth, the Corruptor|r.]], guide="ACHIEVEMENTS\\Dungeons & Raids\\Battle for Azeroth Raids\\Mythic: N\'Zoth, the Corruptor"},
	{"item", text=[[Added |cfffe6100The Most Horrific Vision of Orgrimmar|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\The Most Horrific Vision of Orgrimmar"},
	{"item", text=[[Added |cfffe6100The Most Horrific Vision of Stormwind|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\The Most Horrific Vision of Stormwind"},
	{"item", text=[[Added |cfffe6100Unwavering Resolve|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\Unwavering Resolve"},
	{"item", text=[[Added |cfffe6100Allied Races: Mechagnome|r.]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Mechagnome",faction="A"},
	{"item", text=[[Added |cfffe6100Allied Races: Vulpera|r.]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Allied Races: Vulpera",faction="H"},
	{"item", text=[[Added |cfffe6100Heritage of the Mechagnome|r.]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Mechagnome",faction="A"},
	{"item", text=[[Added |cfffe6100Heritage of the Vulpera|r.]], guide="ACHIEVEMENTS\\Reputations\\Battle for Azeroth\\Heritage of the Vulpera",faction="H"},
	{"item", text=[[Added |cfffe6100Reeking of Visions|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\Reeking of Visions"},
	{"item", text=[[Added |cfffe6100The Even More Horrific Vision of Orgrimmar|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\The Even More Horrific Vision of Orgrimmar"},
	{"item", text=[[Added |cfffe6100The Even More Horrific Vision of Stormwind|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\The Even More Horrific Vision of Stormwind"},
	{"item", text=[[Added |cfffe6100The Shadows Revealed|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\The Shadows Revealed"},
	{"item", text=[[Added |cfffe6100Through the Depths of Visions|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\Through the Depths of Visions"},
	{"item", text=[[Added |cfffe6100We Have the Technology|r.]], guide="ACHIEVEMENTS\\Expansion Features\\Visions of N\'Zoth\\We Have the Technology"},
	{"item", text=[[Added |cfffe6100Battle for Azeroth Keystone Conqueror: Season Four|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Conqueror: Season Four"},
	{"item", text=[[Added |cfffe6100Battle for Azeroth Keystone Master: Season Four|r.]], guide="ACHIEVEMENTS\\Feats of Strength\\Dungeons\\Battle for Azeroth Keystone Master: Season Four"},
	{"item", text=[[Added |cfffe6100Pet Battle Challenge: Blackrock Depths|r.]], guide="ACHIEVEMENTS\\Pet Battles\\Battle for Azeroth\\Pet Battle Challenge: Blackrock Depths",faction="A"},
	{"item", text=[[Added |cfffe6100Battle for AzerothPet Battle Challenge: Blackrock Depths|r.]], guide="ACHIEVEMENTS\\Pet Battles\\\\Battle for AzerothPet Battle Challenge: Blackrock Depths",faction="H"},
	{"item", text=[[Added |cfffe6100The Fourth War|r.]], guide="ACHIEVEMENTS\\Quests\\Battle for Azeroth\\The Fourth War"},




}


-- faction="Alliance" {"separator"},