#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.6.1

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <Array.au3>
#include <WinAPI.au3>

Global $tier_dict = ObjCreate("Scripting.Dictionary")
Global $slot_dict = ObjCreate("Scripting.Dictionary")

$tier_dict.Add("Short Sword",0)
$slot_dict.Add("Short Sword",1)
$tier_dict.Add("Broad Sword",1)
$slot_dict.Add("Broad Sword",1)
$tier_dict.Add("Saber",2)
$slot_dict.Add("Saber",1)
$tier_dict.Add("Long Sword",3)
$slot_dict.Add("Long Sword",1)
$tier_dict.Add("Falchion",4)
$slot_dict.Add("Falchion",1)
$tier_dict.Add("Fire Sword",5)
$slot_dict.Add("Fire Sword",1)
$tier_dict.Add("Glass Sword",6)
$slot_dict.Add("Glass Sword",1)
$tier_dict.Add("Golden Sword",7)
$slot_dict.Add("Golden Sword",1)
$tier_dict.Add("Ravenheart Sword",8)
$slot_dict.Add("Ravenheart Sword",1)
$tier_dict.Add("Dragonsoul Sword",9)
$slot_dict.Add("Dragonsoul Sword",1)
$tier_dict.Add("Archon Sword",10)
$slot_dict.Add("Archon Sword",1)
$tier_dict.Add("Skysplitter Sword",11)
$slot_dict.Add("Skysplitter Sword",1)
$tier_dict.Add("Sword of Acclaim",12)
$slot_dict.Add("Sword of Acclaim",1)
$tier_dict.Add("Sword of Splendor",13)
$slot_dict.Add("Sword of Splendor",1)
$tier_dict.Add("Sword of Majesty",14)
$slot_dict.Add("Sword of Majesty",1)
$tier_dict.Add("Fire Wand",0)
$slot_dict.Add("Fire Wand",8)
$tier_dict.Add("Force Wand",1)
$slot_dict.Add("Force Wand",8)
$tier_dict.Add("Power Wand",2)
$slot_dict.Add("Power Wand",8)
$tier_dict.Add("Missile Wand",3)
$slot_dict.Add("Missile Wand",8)
$tier_dict.Add("Eldritch Wand",4)
$slot_dict.Add("Eldritch Wand",8)
$tier_dict.Add("Hell's Fire Wand",5)
$slot_dict.Add("Hell's Fire Wand",8)
$tier_dict.Add("Wand of Dark Magic",6)
$slot_dict.Add("Wand of Dark Magic",8)
$tier_dict.Add("Wand of Arcane Flame",7)
$slot_dict.Add("Wand of Arcane Flame",8)
$tier_dict.Add("Wand of Death",8)
$slot_dict.Add("Wand of Death",8)
$tier_dict.Add("Wand of Deep Sorcery",9)
$slot_dict.Add("Wand of Deep Sorcery",8)
$tier_dict.Add("Wand of Shadow",10)
$slot_dict.Add("Wand of Shadow",8)
$tier_dict.Add("Wand of Ancient Warning",11)
$slot_dict.Add("Wand of Ancient Warning",8)
$tier_dict.Add("Wand of Recompense",12)
$slot_dict.Add("Wand of Recompense",8)
$tier_dict.Add("Wand of Evocation",13)
$slot_dict.Add("Wand of Evocation",8)
$tier_dict.Add("Wand of Retribution",14)
$slot_dict.Add("Wand of Retribution",8)
$tier_dict.Add("Wooden Shield",0)
$slot_dict.Add("Wooden Shield",5)
$tier_dict.Add("Iron Shield",1)
$slot_dict.Add("Iron Shield",5)
$tier_dict.Add("Steel Shield",2)
$slot_dict.Add("Steel Shield",5)
$tier_dict.Add("Reinforced Shield",3)
$slot_dict.Add("Reinforced Shield",5)
$tier_dict.Add("Golden Shield",4)
$slot_dict.Add("Golden Shield",5)
$tier_dict.Add("Mithril Shield",5)
$slot_dict.Add("Mithril Shield",5)
$tier_dict.Add("Colossus Shield",6)
$slot_dict.Add("Colossus Shield",5)
$tier_dict.Add("Wolfskin Armor",1)
$slot_dict.Add("Wolfskin Armor",6)
$tier_dict.Add("Leather Armor",2)
$slot_dict.Add("Leather Armor",6)
$tier_dict.Add("Basilisk Hide Armor",3)
$slot_dict.Add("Basilisk Hide Armor",6)
$tier_dict.Add("Minotaur Hide Armor",4)
$slot_dict.Add("Minotaur Hide Armor",6)
$tier_dict.Add("Bearskin Armor",5)
$slot_dict.Add("Bearskin Armor",6)
$tier_dict.Add("Chimera Hide Armor",6)
$slot_dict.Add("Chimera Hide Armor",6)
$tier_dict.Add("Wyvern Skin Armor",7)
$slot_dict.Add("Wyvern Skin Armor",6)
$tier_dict.Add("Studded Leather Armor",8)
$slot_dict.Add("Studded Leather Armor",6)
$tier_dict.Add("Drake Hide Armor",9)
$slot_dict.Add("Drake Hide Armor",6)
$tier_dict.Add("Roc Leather Armor",10)
$slot_dict.Add("Roc Leather Armor",6)
$tier_dict.Add("Hippogriff Hide Armor",11)
$slot_dict.Add("Hippogriff Hide Armor",6)
$tier_dict.Add("Griffon Hide Armor",12)
$slot_dict.Add("Griffon Hide Armor",6)
$tier_dict.Add("Hydra Skin Armor",13)
$slot_dict.Add("Hydra Skin Armor",6)
$tier_dict.Add("Wyrmhide Armor",14)
$slot_dict.Add("Wyrmhide Armor",6)
$tier_dict.Add("Leviathan Armor",15)
$slot_dict.Add("Leviathan Armor",6)
$tier_dict.Add("Iron Mail",1)
$slot_dict.Add("Iron Mail",7)
$tier_dict.Add("Chainmail",2)
$slot_dict.Add("Chainmail",7)
$tier_dict.Add("Blue Steel Mail",3)
$slot_dict.Add("Blue Steel Mail",7)
$tier_dict.Add("Silver Chainmail",4)
$slot_dict.Add("Silver Chainmail",7)
$tier_dict.Add("Golden Chainmail",5)
$slot_dict.Add("Golden Chainmail",7)
$tier_dict.Add("Plate Mail",6)
$slot_dict.Add("Plate Mail",7)
$tier_dict.Add("Mithril Chainmail",7)
$slot_dict.Add("Mithril Chainmail",7)
$tier_dict.Add("Mithril Armor",8)
$slot_dict.Add("Mithril Armor",7)
$tier_dict.Add("Dragonscale Armor",9)
$slot_dict.Add("Dragonscale Armor",7)
$tier_dict.Add("Desolation Armor",10)
$slot_dict.Add("Desolation Armor",7)
$tier_dict.Add("Vengeance Armor",11)
$slot_dict.Add("Vengeance Armor",7)
$tier_dict.Add("Abyssal Armor",12)
$slot_dict.Add("Abyssal Armor",7)
$tier_dict.Add("Acropolis Armor",13)
$slot_dict.Add("Acropolis Armor",7)
$tier_dict.Add("Dominion Armor",14)
$slot_dict.Add("Dominion Armor",7)
$tier_dict.Add("Annihilation Armor",15)
$slot_dict.Add("Annihilation Armor",7)
$tier_dict.Add("Steel Dagger",0)
$slot_dict.Add("Steel Dagger",2)
$tier_dict.Add("Dirk",1)
$slot_dict.Add("Dirk",2)
$tier_dict.Add("Blue Steel Dagger",2)
$slot_dict.Add("Blue Steel Dagger",2)
$tier_dict.Add("Dusky Rose Dagger",3)
$slot_dict.Add("Dusky Rose Dagger",2)
$tier_dict.Add("Silver Dagger",4)
$slot_dict.Add("Silver Dagger",2)
$tier_dict.Add("Golden Dagger",5)
$slot_dict.Add("Golden Dagger",2)
$tier_dict.Add("Obsidian Dagger",6)
$slot_dict.Add("Obsidian Dagger",2)
$tier_dict.Add("Mithril Dagger",7)
$slot_dict.Add("Mithril Dagger",2)
$tier_dict.Add("Fire Dagger",8)
$slot_dict.Add("Fire Dagger",2)
$tier_dict.Add("Ragetalon Dagger",9)
$slot_dict.Add("Ragetalon Dagger",2)
$tier_dict.Add("Emeraldshard Dagger",10)
$slot_dict.Add("Emeraldshard Dagger",2)
$tier_dict.Add("Agateclaw Dagger",11)
$slot_dict.Add("Agateclaw Dagger",2)
$tier_dict.Add("Dagger of Foul Malevolence",12)
$slot_dict.Add("Dagger of Foul Malevolence",2)
$tier_dict.Add("Dagger of Sinister Deeds",13)
$slot_dict.Add("Dagger of Sinister Deeds",2)
$tier_dict.Add("Dagger of Dire Hatred",14)
$slot_dict.Add("Dagger of Dire Hatred",2)
$tier_dict.Add("Shortbow",0)
$slot_dict.Add("Shortbow",3)
$tier_dict.Add("Reinforced Bow",1)
$slot_dict.Add("Reinforced Bow",3)
$tier_dict.Add("Crossbow",2)
$slot_dict.Add("Crossbow",3)
$tier_dict.Add("Greywood Bow",3)
$slot_dict.Add("Greywood Bow",3)
$tier_dict.Add("Ironwood Bow",4)
$slot_dict.Add("Ironwood Bow",3)
$tier_dict.Add("Fire Bow",5)
$slot_dict.Add("Fire Bow",3)
$tier_dict.Add("Double Bow",6)
$slot_dict.Add("Double Bow",3)
$tier_dict.Add("Heavy Crossbow",7)
$slot_dict.Add("Heavy Crossbow",3)
$tier_dict.Add("Golden Bow",8)
$slot_dict.Add("Golden Bow",3)
$tier_dict.Add("Verdant Bow",9)
$slot_dict.Add("Verdant Bow",3)
$tier_dict.Add("Bow of Fey Magic",10)
$slot_dict.Add("Bow of Fey Magic",3)
$tier_dict.Add("Bow of Innocent Blood",11)
$slot_dict.Add("Bow of Innocent Blood",3)
$tier_dict.Add("Bow of Covert Havens",12)
$slot_dict.Add("Bow of Covert Havens",3)
$tier_dict.Add("Bow of Mystical Energy",13)
$slot_dict.Add("Bow of Mystical Energy",3)
$tier_dict.Add("Bow of Deep Enchantment",14)
$slot_dict.Add("Bow of Deep Enchantment",3)
$tier_dict.Add("Potion of Attack",20)
$slot_dict.Add("Potion of Attack",10)
$tier_dict.Add("Potion of Defense",20)
$slot_dict.Add("Potion of Defense",10)
$tier_dict.Add("Potion of Speed",20)
$slot_dict.Add("Potion of Speed",10)
$tier_dict.Add("Potion of Vitality",20)
$slot_dict.Add("Potion of Vitality",10)
$tier_dict.Add("Potion of Wisdom",20)
$slot_dict.Add("Potion of Wisdom",10)
$tier_dict.Add("Potion of Dexterity",20)
$slot_dict.Add("Potion of Dexterity",10)
$tier_dict.Add("Health Potion",10)
$slot_dict.Add("Health Potion",10)
$tier_dict.Add("Magic Potion",10)
$slot_dict.Add("Magic Potion",10)
$tier_dict.Add("Fire Spray Spell",0)
$slot_dict.Add("Fire Spray Spell",11)
$tier_dict.Add("Flame Burst Spell",1)
$slot_dict.Add("Flame Burst Spell",11)
$tier_dict.Add("Fire Nova Spell",2)
$slot_dict.Add("Fire Nova Spell",11)
$tier_dict.Add("Scorching Blast Spell",3)
$slot_dict.Add("Scorching Blast Spell",11)
$tier_dict.Add("Destruction Sphere Spell",4)
$slot_dict.Add("Destruction Sphere Spell",11)
$tier_dict.Add("Magic Nova Spell",5)
$slot_dict.Add("Magic Nova Spell",11)
$tier_dict.Add("Elemental Detonation Spell",6)
$slot_dict.Add("Elemental Detonation Spell",11)
$tier_dict.Add("Healing Tome",0)
$slot_dict.Add("Healing Tome",4)
$tier_dict.Add("Remedy Tome",1)
$slot_dict.Add("Remedy Tome",4)
$tier_dict.Add("Spirit Salve Tome",2)
$slot_dict.Add("Spirit Salve Tome",4)
$tier_dict.Add("Tome of Rejuvenation",3)
$slot_dict.Add("Tome of Rejuvenation",4)
$tier_dict.Add("Tome of Renewing",4)
$slot_dict.Add("Tome of Renewing",4)
$tier_dict.Add("Tome of Divine Favor",5)
$slot_dict.Add("Tome of Divine Favor",4)
$tier_dict.Add("Tome of Holy Guidance",6)
$slot_dict.Add("Tome of Holy Guidance",4)
$tier_dict.Add("Seal of the Initiate",0)
$slot_dict.Add("Seal of the Initiate",12)
$tier_dict.Add("Seal of the Pilgrim",1)
$slot_dict.Add("Seal of the Pilgrim",12)
$tier_dict.Add("Seal of the Seeker",2)
$slot_dict.Add("Seal of the Seeker",12)
$tier_dict.Add("Seal of the Aspirant",3)
$slot_dict.Add("Seal of the Aspirant",12)
$tier_dict.Add("Seal of the Divine",4)
$slot_dict.Add("Seal of the Divine",12)
$tier_dict.Add("Seal of the Holy Warrior",5)
$slot_dict.Add("Seal of the Holy Warrior",12)
$tier_dict.Add("Seal of the Blessed Champion",6)
$slot_dict.Add("Seal of the Blessed Champion",12)
$tier_dict.Add("Cloak of Shadows",0)
$slot_dict.Add("Cloak of Shadows",13)
$tier_dict.Add("Cloak of Darkness",1)
$slot_dict.Add("Cloak of Darkness",13)
$tier_dict.Add("Cloak of Speed",2)
$slot_dict.Add("Cloak of Speed",13)
$tier_dict.Add("Cloak of the Night Thief",3)
$slot_dict.Add("Cloak of the Night Thief",13)
$tier_dict.Add("Cloak of the Red Agent",4)
$slot_dict.Add("Cloak of the Red Agent",13)
$tier_dict.Add("Cloak of Endless Twilight",5)
$slot_dict.Add("Cloak of Endless Twilight",13)
$tier_dict.Add("Cloak of Ghostly Concealment",6)
$slot_dict.Add("Cloak of Ghostly Concealment",13)
$tier_dict.Add("Robe of the Neophyte",1)
$slot_dict.Add("Robe of the Neophyte",14)
$tier_dict.Add("Robe of the Apprentice",2)
$slot_dict.Add("Robe of the Apprentice",14)
$tier_dict.Add("Robe of the Acolyte",3)
$slot_dict.Add("Robe of the Acolyte",14)
$tier_dict.Add("Robe of the Student",4)
$slot_dict.Add("Robe of the Student",14)
$tier_dict.Add("Robe of the Conjurer",5)
$slot_dict.Add("Robe of the Conjurer",14)
$tier_dict.Add("Robe of the Adept",6)
$slot_dict.Add("Robe of the Adept",14)
$tier_dict.Add("Robe of the Invoker",7)
$slot_dict.Add("Robe of the Invoker",14)
$tier_dict.Add("Robe of the Illusionist",8)
$slot_dict.Add("Robe of the Illusionist",14)
$tier_dict.Add("Robe of the Master",9)
$slot_dict.Add("Robe of the Master",14)
$tier_dict.Add("Robe of the Shadow Magus",10)
$slot_dict.Add("Robe of the Shadow Magus",14)
$tier_dict.Add("Robe of the Moon Wizard",11)
$slot_dict.Add("Robe of the Moon Wizard",14)
$tier_dict.Add("Robe of the Elder Warlock",12)
$slot_dict.Add("Robe of the Elder Warlock",14)
$tier_dict.Add("Robe of the Grand Sorcerer",13)
$slot_dict.Add("Robe of the Grand Sorcerer",14)
$tier_dict.Add("Robe of the Star Mother",14)
$slot_dict.Add("Robe of the Star Mother",14)
$tier_dict.Add("Robe of the Ancient Intellect",15)
$slot_dict.Add("Robe of the Ancient Intellect",14)
$tier_dict.Add("Magic Quiver",0)
$slot_dict.Add("Magic Quiver",15)
$tier_dict.Add("Reinforced Quiver",1)
$slot_dict.Add("Reinforced Quiver",15)
$tier_dict.Add("Iron Quiver",2)
$slot_dict.Add("Iron Quiver",15)
$tier_dict.Add("Elvencraft Quiver",3)
$slot_dict.Add("Elvencraft Quiver",15)
$tier_dict.Add("Magesteel Quiver",4)
$slot_dict.Add("Magesteel Quiver",15)
$tier_dict.Add("Golden Quiver",5)
$slot_dict.Add("Golden Quiver",15)
$tier_dict.Add("Quiver of Elvish Mastery",6)
$slot_dict.Add("Quiver of Elvish Mastery",15)
$tier_dict.Add("Combat Helm",0)
$slot_dict.Add("Combat Helm",16)
$tier_dict.Add("Bronze Helm",1)
$slot_dict.Add("Bronze Helm",16)
$tier_dict.Add("Black Iron Helm",2)
$slot_dict.Add("Black Iron Helm",16)
$tier_dict.Add("Red Iron Helm",3)
$slot_dict.Add("Red Iron Helm",16)
$tier_dict.Add("Steel Helm",4)
$slot_dict.Add("Steel Helm",16)
$tier_dict.Add("Golden Helm",5)
$slot_dict.Add("Golden Helm",16)
$tier_dict.Add("Helm of the Great General",6)
$slot_dict.Add("Helm of the Great General",16)
$tier_dict.Add("Energy Staff",0)
$slot_dict.Add("Energy Staff",17)
$tier_dict.Add("Firebrand Staff",1)
$slot_dict.Add("Firebrand Staff",17)
$tier_dict.Add("Comet Staff",2)
$slot_dict.Add("Comet Staff",17)
$tier_dict.Add("Serpentine Staff",3)
$slot_dict.Add("Serpentine Staff",17)
$tier_dict.Add("Meteor Staff",4)
$slot_dict.Add("Meteor Staff",17)
$tier_dict.Add("Slayer Staff",5)
$slot_dict.Add("Slayer Staff",17)
$tier_dict.Add("Avenger Staff",6)
$slot_dict.Add("Avenger Staff",17)
$tier_dict.Add("Staff of Destruction",7)
$slot_dict.Add("Staff of Destruction",17)
$tier_dict.Add("Staff of Horror",8)
$slot_dict.Add("Staff of Horror",17)
$tier_dict.Add("Staff of Necrotic Arcana",9)
$slot_dict.Add("Staff of Necrotic Arcana",17)
$tier_dict.Add("Staff of Diabolic Secrets",10)
$slot_dict.Add("Staff of Diabolic Secrets",17)
$tier_dict.Add("Staff of Astral Knowledge",11)
$slot_dict.Add("Staff of Astral Knowledge",17)
$tier_dict.Add("Staff of the Cosmic Whole",12)
$slot_dict.Add("Staff of the Cosmic Whole",17)
$tier_dict.Add("Staff of the Vital Unity",13)
$slot_dict.Add("Staff of the Vital Unity",17)
$tier_dict.Add("Staff of the Fundamental Core",14)
$slot_dict.Add("Staff of the Fundamental Core",17)
$tier_dict.Add("Centipede Poison",0)
$slot_dict.Add("Centipede Poison",18)
$tier_dict.Add("Spider Venom",1)
$slot_dict.Add("Spider Venom",18)
$tier_dict.Add("Pit Viper Poison",2)
$slot_dict.Add("Pit Viper Poison",18)
$tier_dict.Add("Stingray Poison",3)
$slot_dict.Add("Stingray Poison",18)
$tier_dict.Add("Felwasp Toxin",4)
$slot_dict.Add("Felwasp Toxin",18)
$tier_dict.Add("Nightwing Venom",5)
$slot_dict.Add("Nightwing Venom",18)
$tier_dict.Add("Baneserpent Poison",6)
$slot_dict.Add("Baneserpent Poison",18)
$tier_dict.Add("Necrotic Skull",0)
$slot_dict.Add("Necrotic Skull",19)
$tier_dict.Add("Breathtaker Skull",1)
$slot_dict.Add("Breathtaker Skull",19)
$tier_dict.Add("Heartstealer Skull",2)
$slot_dict.Add("Heartstealer Skull",19)
$tier_dict.Add("Soul Siphon Skull",3)
$slot_dict.Add("Soul Siphon Skull",19)
$tier_dict.Add("Essence Tap Skull",4)
$slot_dict.Add("Essence Tap Skull",19)
$tier_dict.Add("Lifedrinker Skull",5)
$slot_dict.Add("Lifedrinker Skull",19)
$tier_dict.Add("Bloodsucker Skull",6)
$slot_dict.Add("Bloodsucker Skull",19)
$tier_dict.Add("Hunting Trap",0)
$slot_dict.Add("Hunting Trap",20)
$tier_dict.Add("Wilderlands Trap",1)
$slot_dict.Add("Wilderlands Trap",20)
$tier_dict.Add("Deepforest Trap",2)
$slot_dict.Add("Deepforest Trap",20)
$tier_dict.Add("Savage Trap",3)
$slot_dict.Add("Savage Trap",20)
$tier_dict.Add("Demonhunter Trap",4)
$slot_dict.Add("Demonhunter Trap",20)
$tier_dict.Add("Dragonstalker Trap",5)
$slot_dict.Add("Dragonstalker Trap",20)
$tier_dict.Add("Giantcatcher Trap",6)
$slot_dict.Add("Giantcatcher Trap",20)
$tier_dict.Add("Stasis Orb",0)
$slot_dict.Add("Stasis Orb",21)
$tier_dict.Add("Suspension Orb",1)
$slot_dict.Add("Suspension Orb",21)
$tier_dict.Add("Imprisonment Orb",2)
$slot_dict.Add("Imprisonment Orb",21)
$tier_dict.Add("Neutralization Orb",3)
$slot_dict.Add("Neutralization Orb",21)
$tier_dict.Add("Timelock Orb",4)
$slot_dict.Add("Timelock Orb",21)
$tier_dict.Add("Banishment Orb",5)
$slot_dict.Add("Banishment Orb",21)
$tier_dict.Add("Planefetter Orb",6)
$slot_dict.Add("Planefetter Orb",21)
$tier_dict.Add("Decoy Prism",0)
$slot_dict.Add("Decoy Prism",22)
$tier_dict.Add("Deception Prism",1)
$slot_dict.Add("Deception Prism",22)
$tier_dict.Add("Illusion Prism",2)
$slot_dict.Add("Illusion Prism",22)
$tier_dict.Add("Hallucination Prism",3)
$slot_dict.Add("Hallucination Prism",22)
$tier_dict.Add("Prism of Figments",4)
$slot_dict.Add("Prism of Figments",22)
$tier_dict.Add("Prism of Phantoms",5)
$slot_dict.Add("Prism of Phantoms",22)
$tier_dict.Add("Prism of Apparitions",6)
$slot_dict.Add("Prism of Apparitions",22)
$tier_dict.Add("Lightning Scepter",0)
$slot_dict.Add("Lightning Scepter",23)
$tier_dict.Add("Discharge Scepter",1)
$slot_dict.Add("Discharge Scepter",23)
$tier_dict.Add("Thunderclap Scepter",2)
$slot_dict.Add("Thunderclap Scepter",23)
$tier_dict.Add("Arcblast Scepter",3)
$slot_dict.Add("Arcblast Scepter",23)
$tier_dict.Add("Cloudflash Scepter",4)
$slot_dict.Add("Cloudflash Scepter",23)
$tier_dict.Add("Scepter of Skybolts",5)
$slot_dict.Add("Scepter of Skybolts",23)
$tier_dict.Add("Scepter of Storms",6)
$slot_dict.Add("Scepter of Storms",23)

Global $item_dict = ObjCreate("Scripting.Dictionary")

$item_dict.Add(894323123,'Sprite World Key')
$item_dict.Add(2224783890,'Snake Pit Key')
$item_dict.Add(937883839,'Abyss of Demons Key')
$item_dict.Add(3000519808,'Poison Fang Dagger')
$item_dict.Add(3340214275,"Spider's Eye Ring")
$item_dict.Add(81121539,'Healing Ichor')
$item_dict.Add(574626096,'Spider Den Key')
$item_dict.Add(1655674413,'Pirate Cave Key')
$item_dict.Add(1218113744,'Undead Lair Key')
$item_dict.Add(2669358333,'Robe of the Star Mother')
$item_dict.Add(672752133,'Energy Staff')
$item_dict.Add(3957998733,'Fire Nova Spell')
$item_dict.Add(570762020,'Serpentine Staff')
$item_dict.Add(2414420745,'Seal of the Initiate')
$item_dict.Add(360751370,'Bronze Helm')
$item_dict.Add(2749347626,'Iron Quiver')
$item_dict.Add(3434909976,'Cloak of the Night Thief')
$item_dict.Add(2812841444,'Staff of Horror')
$item_dict.Add(532978412,'Staff of Destruction')
$item_dict.Add(2939433515,'Hunting Trap')
$item_dict.Add(1304315114,'Meteor Staff')
$item_dict.Add(1288508805,'Cloak of Speed')
$item_dict.Add(2870698887,'Cloak of Shadows')
$item_dict.Add(1612456881,'Ring of Attack')
$item_dict.Add(2084179374,'Golden Helm')
$item_dict.Add(3851023023,'Red Iron Helm')
$item_dict.Add(3081116183,'Ring of Exalted Wisdom')
$item_dict.Add(3666917362,'Combat Helm')
$item_dict.Add(386327796,'Magesteel Quiver')
$item_dict.Add(3467125791,'Robe of the Grand Sorcerer')
$item_dict.Add(3686410129,'Staff of Diabolic Secrets')
$item_dict.Add(4065079953,'Ring of Paramount Health')
$item_dict.Add(2327440333,'Robe of the Master')
$item_dict.Add(1853338020,'Magic Nova Spell')
$item_dict.Add(3779337721,'Avenger Staff')
$item_dict.Add(386738835,'Robe of the Acolyte')
$item_dict.Add(4098064418,'Robe of the Neophyte')
$item_dict.Add(1957819805,'Tome of Divine Favor')
$item_dict.Add(3623086815,'Cloak of the Red Agent')
$item_dict.Add(1788110660,'Robe of the Ancient Intellect')
$item_dict.Add(2437724751,'Cloak of Darkness')
$item_dict.Add(183623808,'Ring of Health')
$item_dict.Add(1621139854,'Seal of the Aspirant')
$item_dict.Add(767605642,'Seal of the Divine')
$item_dict.Add(3845473197,'Ring of Exalted Defense')
$item_dict.Add(2661664744,'Black Iron Helm')
$item_dict.Add(1990033859,'Magic Mushroom')
$item_dict.Add(577059561,'Elixir of Health 5')
$item_dict.Add(3180025095,'Golden Quiver')
$item_dict.Add(807472246,'Staff of the Vital Unity')
$item_dict.Add(3732031033,'Cloak of Endless Twilight')
$item_dict.Add(1348021738,'Reinforced Quiver')
$item_dict.Add(3021378853,'Effusion of Life')
$item_dict.Add(3395618878,'Effusion of Dexterity')
$item_dict.Add(3915684306,'Robe of the Invoker')
$item_dict.Add(3877740720,'Chicken Leg of Doom')
$item_dict.Add(3880510558,'Prism of Phantoms')
$item_dict.Add(519063130,'Prism of Figments')
$item_dict.Add(39853558,'Hallucination Prism')
$item_dict.Add(655686690,'Illusion Prism')
$item_dict.Add(4048064007,'Deception Prism')
$item_dict.Add(2067008287,'Elixir of Magic 4')
$item_dict.Add(720571618,'Tincture of Mana')
$item_dict.Add(371137536,'Effusion of Defense')
$item_dict.Add(2947656575,'Effusion of Mana')
$item_dict.Add(253882381,'Dagger of Sinister Deeds')
$item_dict.Add(1525753404,'Tincture of Defense')
$item_dict.Add(1852729390,'Tincture of Life')
$item_dict.Add(3798946026,'Tincture of Dexterity')
$item_dict.Add(1234939963,'Sword of Acclaim')
$item_dict.Add(3858424989,'Staff of the Fundamental Core')
$item_dict.Add(353714900,'Ring of Exalted Vitality')
$item_dict.Add(1788527850,'Staff of the Cosmic Whole')
$item_dict.Add(1153286726,'Pirate Rum')
$item_dict.Add(2282988003,'Ring of Paramount Magic')
$item_dict.Add(2814963035,'Bow of Deep Enchantment')
$item_dict.Add(1951991516,'Bow of Mystical Energy')
$item_dict.Add(3395713043,'Bow of Covert Havens')
$item_dict.Add(4176334548,'Dagger of Dire Hatred')
$item_dict.Add(2256592827,'Dagger of Foul Malevolence')
$item_dict.Add(4061544413,'Annihilation Armor')
$item_dict.Add(3125743535,'Dominion Armor')
$item_dict.Add(2278872530,'Acropolis Armor')
$item_dict.Add(812339971,'Leviathan Armor')
$item_dict.Add(896056630,'Wyrmhide Armor')
$item_dict.Add(3230529408,'Hydra Skin Armor')
$item_dict.Add(2973078780,'Wand of Retribution')
$item_dict.Add(2734145712,'Wand of Evocation')
$item_dict.Add(2005576424,'Wand of Vengeance')
$item_dict.Add(4014546751,'Sword of Majesty')
$item_dict.Add(448687189,'Sword of Splendor')
$item_dict.Add(1328793686,'Yellow Drake Egg')
$item_dict.Add(938494956,'Green Drake Egg')
$item_dict.Add(2631764478,'Orange Drake Egg')
$item_dict.Add(3984441635,'Blue Drake Egg')
$item_dict.Add(705237469,'White Drake Egg')
$item_dict.Add(4246021422,'Greater Magic Potion')
$item_dict.Add(3582474937,'Greater Health Potion')
$item_dict.Add(1094182683,'Potion of Mana')
$item_dict.Add(1502047089,'Potion of Life')
$item_dict.Add(934262612,'Bricks and Mortar')
$item_dict.Add(716407228,'Powder Charge')
$item_dict.Add(333050140,'Powder Keg')
$item_dict.Add(1809790766,'Lightning Scepter')
$item_dict.Add(1434980471,'Stasis Orb')
$item_dict.Add(474722100,'Decoy Prism')
$item_dict.Add(3948942343,'Strike Amulet')
$item_dict.Add(3281250152,'Seal of the Pilgrim')
$item_dict.Add(1007008359,'Wand of Arcane Flame')
$item_dict.Add(1494813616,'Mithril Chainmail')
$item_dict.Add(2804535275,'Elvencraft Quiver')
$item_dict.Add(424158418,'Minor Magic Potion')
$item_dict.Add(2678468785,'Robe of the Illusionist')
$item_dict.Add(2135123896,'Ring of Defense')
$item_dict.Add(374720496,'Ring of Greater Vitality')
$item_dict.Add(2932815164,'Magic Potion')
$item_dict.Add(3309566551,'Tome of Rejuvenation')
$item_dict.Add(30375943,'Remedy Tome')
$item_dict.Add(3709689670,'Destruction Sphere Spell')
$item_dict.Add(2761022501,'Scorching Blast Spell')
$item_dict.Add(3620779464,'Flame Burst Spell')
$item_dict.Add(2801151536,'Drake Hide Armor')
$item_dict.Add(1885237240,'Wyvern Skin Armor')
$item_dict.Add(3247345866,'Chimera Hide Armor')
$item_dict.Add(1180740641,'Bearskin Armor')
$item_dict.Add(802545642,'Reinforced Shield')
$item_dict.Add(1303311143,'Ring of Exalted Magic')
$item_dict.Add(2635900521,'Ring of Exalted Health')
$item_dict.Add(339248698,'Ring of Exalted Dexterity')
$item_dict.Add(2339972711,'Robe of the Apprentice')
$item_dict.Add(1043888652,'Robe of the Adept')
$item_dict.Add(2291689741,'Ring of Exalted Speed')
$item_dict.Add(1721106608,'Ring of Greater Wisdom')
$item_dict.Add(2368871806,'Ring of Exalted Attack')
$item_dict.Add(414485667,'Ring of Wisdom')
$item_dict.Add(1836471400,'Ring of Vitality')
$item_dict.Add(1214178025,'Ring of Paramount Dexterity')
$item_dict.Add(1288644124,'Ring of Paramount  Wisdom')
$item_dict.Add(1735488185,'Ring of Paramount Vitality')
$item_dict.Add(1625590068,'Ring of Paramount Speed')
$item_dict.Add(571499378,'Ring of Paramount Defense')
$item_dict.Add(2751662425,'Ring of Paramount Attack')
$item_dict.Add(2716765111,'Ring of Superior Magic')
$item_dict.Add(3323278433,'Ring of Superior Health')
$item_dict.Add(3580487008,'Ring of Superior Dexterity')
$item_dict.Add(1934451134,'Ring of Superior Wisdom')
$item_dict.Add(563813256,'Ring of Superior Vitality')
$item_dict.Add(65447012,'Ring of Superior Speed')
$item_dict.Add(3370446305,'Ring of Superior Defense')
$item_dict.Add(1975380457,'Ring of Superior Attack')
$item_dict.Add(896436966,'Dragonstalker Trap')
$item_dict.Add(2126675444,'Demonhunter Trap')
$item_dict.Add(1470956105,'Savage Trap')
$item_dict.Add(76208990,'Deepforest Trap')
$item_dict.Add(1009131411,'Wilderlands Trap')
$item_dict.Add(263385299,'Seal of the Holy Warrior')
$item_dict.Add(1030796747,'Minor Health Potion')
$item_dict.Add(2209826059,'Lifedrinker Skull')
$item_dict.Add(1622749703,'Essence Tap Skull')
$item_dict.Add(3435514579,'Soul Siphon Skull')
$item_dict.Add(2432125187,'Heartstealer Skull')
$item_dict.Add(410864729,'Breathtaker Skull')
$item_dict.Add(2876316796,'Necrotic Skull')
$item_dict.Add(2947437334,'Purple Drake Egg')
$item_dict.Add(3644971413,'Nightwing Venom')
$item_dict.Add(1847667720,'Felwasp Toxin')
$item_dict.Add(4118440225,'Stingray Poison')
$item_dict.Add(2142404541,'Pit Viper Poison')
$item_dict.Add(4024051783,'Spider Venom')
$item_dict.Add(3608105498,'Centipede Poison')
$item_dict.Add(358465827,'Staff of Astral Knowledge')
$item_dict.Add(2261185472,'Potion of Wisdom')
$item_dict.Add(3413764765,'Staff of Necrotic Arcana')
$item_dict.Add(3899934160,'Tome of Renewing')
$item_dict.Add(2235468751,'Spirit Salve Tome')
$item_dict.Add(1198910415,'Healing Tome')
$item_dict.Add(2663222158,'Slayer Staff')
$item_dict.Add(1612555745,'Robe of the Conjurer')
$item_dict.Add(3662573371,'Robe of the Student')
$item_dict.Add(3508311641,'Comet Staff')
$item_dict.Add(636069039,'Firebrand Staff')
$item_dict.Add(839061172,'Ring of Greater Speed')
$item_dict.Add(3288889488,'Robe of the Elder Warlock')
$item_dict.Add(3443515602,'Robe of the Moon Wizard')
$item_dict.Add(3821828803,'Robe of the Shadow Magus')
$item_dict.Add(941365941,'Abyssal Armor')
$item_dict.Add(1225323690,'Vengeance Armor')
$item_dict.Add(3843919494,'Desolation Armor')
$item_dict.Add(4020954482,'Griffon Hide Armor')
$item_dict.Add(459302965,'Hippogriff Hide Armor')
$item_dict.Add(484964755,'Roc Leather Armor')
$item_dict.Add(1982600515,'Bow of Innocent Blood')
$item_dict.Add(2603881503,'Bow of Fey Magic')
$item_dict.Add(1735448136,'Verdant Bow')
$item_dict.Add(2132083725,'Agateclaw Dagger')
$item_dict.Add(1776591038,'Emeraldshard Dagger')
$item_dict.Add(880788589,'Ragetalon Dagger')
$item_dict.Add(1901165399,'Wand of Ancient Warning')
$item_dict.Add(2452386874,'Wand of Shadow')
$item_dict.Add(2132642530,'Wand of Deep Sorcery')
$item_dict.Add(1345347541,'Archon Sword')
$item_dict.Add(2091872281,'Dragonsoul Sword')
$item_dict.Add(396091890,'Ravenheart Sword')
$item_dict.Add(804210730,'Snake Eye Ring')
$item_dict.Add(4246792130,'Ring of Dexterity')
$item_dict.Add(2760730983,'Snake Oil')
$item_dict.Add(756467519,'Silver Chainmail')
$item_dict.Add(3708177089,'Blue Steel Mail')
$item_dict.Add(3696268912,'Iron Mail')
$item_dict.Add(37232680,'Minotaur Hide Armor')
$item_dict.Add(2620276688,'Basilisk Hide Armor')
$item_dict.Add(4089527662,'Wolfskin Armor')
$item_dict.Add(65193405,'Ironwood Bow')
$item_dict.Add(742938458,'Greywood Bow')
$item_dict.Add(588960591,'Reinforced Bow')
$item_dict.Add(2204860682,'Silver Dagger')
$item_dict.Add(419163377,'Dusky Rose Dagger')
$item_dict.Add(114973882,'Blue Steel Dagger')
$item_dict.Add(1348360462,'Eldritch Wand')
$item_dict.Add(3714463022,'Power Wand')
$item_dict.Add(1649603825,'Force Wand')
$item_dict.Add(2912626743,'Falchion')
$item_dict.Add(250539097,'Saber')
$item_dict.Add(2882303164,'Broad Sword')
$item_dict.Add(2529838915,'Golden Bow')
$item_dict.Add(3761383938,'Steel Helm')
$item_dict.Add(804946147,'Ring of Greater Defense')
$item_dict.Add(3708938600,'Crossbow')
$item_dict.Add(736667528,'Ring of Magic')
$item_dict.Add(302431465,'Potion of Vitality')
$item_dict.Add(2881157012,'Seal of the Seeker')
$item_dict.Add(3794882067,'Dirk')
$item_dict.Add(1421134094,'Magic Quiver')
$item_dict.Add(91213393,'Fire Spray Spell')
$item_dict.Add(2068922579,'Ring of Greater Magic')
$item_dict.Add(1909617432,'Ring of Greater Health')
$item_dict.Add(3258371335,'Golden Chainmail')
$item_dict.Add(3068446166,'Double Bow')
$item_dict.Add(457158697,'Ring of Greater Attack')
$item_dict.Add(369499218,'Cloak of the Planewalker')
$item_dict.Add(1426465439,'Shortbow')
$item_dict.Add(1277264551,'Ring of Speed')
$item_dict.Add(3514418763,'Ring of Minor Defense')
$item_dict.Add(2248373338,'Ring of Greater Dexterity')
$item_dict.Add(2890446505,'Heavy Crossbow')
$item_dict.Add(357078552,'Potion of Dexterity')
$item_dict.Add(2173352778,'Potion of Speed')
$item_dict.Add(1637729958,'Potion of Defense')
$item_dict.Add(4244294266,'Potion of Attack')
$item_dict.Add(150360963,'Plate Mail')
$item_dict.Add(2590288826,'Snake Skin Armor')
$item_dict.Add(648522679,'Chainmail')
$item_dict.Add(2677428950,'Studded Leather Armor')
$item_dict.Add(3465799542,'Fire Sword')
$item_dict.Add(2935052684,'Sprite Wand')
$item_dict.Add(4130553288,'Mithril Dagger')
$item_dict.Add(1607731115,'Snake Skin Shield')
$item_dict.Add(2361694206,'Skysplitter Sword')
$item_dict.Add(275192502,'Banishment Orb')
$item_dict.Add(2000978950,'Timelock Orb')
$item_dict.Add(3519989895,'Neutralization Orb')
$item_dict.Add(3400280174,'Imprisonment Orb')
$item_dict.Add(1413823308,'Suspension Orb')
$item_dict.Add(2132578227,'Wand of Dark Magic')
$item_dict.Add(2090730320,'Glass Sword')
$item_dict.Add(676140626,'Obsidian Dagger')
$item_dict.Add(575980161,'Golden Dagger')
$item_dict.Add(1776773703,'Steel Shield')
$item_dict.Add(2538723158,'Steel Dagger')
$item_dict.Add(1712090990,'Dragonscale Armor')
$item_dict.Add(3834495930,'Fire Bow')
$item_dict.Add(1345053863,'Health Potion')
$item_dict.Add(182153655,'Mithril Armor')
$item_dict.Add(2340352028,'Fire Dagger')
$item_dict.Add(3491902183,'Wand of Death')
$item_dict.Add(1712806695,"Hell's Fire Wand")
$item_dict.Add(1933446040,'Missile Wand')
$item_dict.Add(1951143484,'Leather Armor')
$item_dict.Add(1567959271,'Mithril Shield')
$item_dict.Add(2700502576,'Iron Shield')
$item_dict.Add(1195112102,'Wooden Shield')
$item_dict.Add(1793976844,'Fire Wand')
$item_dict.Add(3852423164,'Golden Shield')
$item_dict.Add(2798591417,'Golden Sword')
$item_dict.Add(3855620285,'Mithril Sword')
$item_dict.Add(1858601707,'Long Sword')
$item_dict.Add(2244218873,'Short Sword')


Global $hGUI, $aRadio[5], $hButton, $iStep
Func GetTier($obj_name)
	If $tier_dict.Exists($obj_name) Then
		Return $tier_dict.Item($obj_name)
	Else
		Return 0
	EndIf
EndFunc

Func GetSlot($obj_name)
	If $slot_dict.Exists($obj_name) Then
		Return $slot_dict.Item($obj_name)
	Else
		Return 0
	EndIf
EndFunc


Func _CRC32($Data, $CRC32 = -1)
	Local $Opcode = '0xC800040053BA2083B8EDB9000100008D41FF516A0859D1E8730231D0E2F85989848DFCFBFFFFE2E78B5D088B4D0C8B451085DB7416E3148A1330C20FB6D2C1E80833849500FCFFFF43E2ECF7D05BC9C21000'

	Local $CodeBuffer = DllStructCreate("byte[" & BinaryLen($Opcode) & "]")
	DllStructSetData($CodeBuffer, 1, $Opcode)

	Local $Input = DllStructCreate("byte[" & BinaryLen($Data) & "]")
	DllStructSetData($Input, 1, $Data)

	Local $Ret = DllCall("user32.dll", "uint", "CallWindowProc", "ptr", DllStructGetPtr($CodeBuffer), _
			"ptr", DllStructGetPtr($Input), _
			"int", BinaryLen($Data), _
			"uint", $CRC32, _
			"int", 0)

	$Input = 0
	$CodeBuffer = 0

	Return $Ret[0]
EndFunc   ;==>_CRC32



HotKeySet("{F12}","startover") ;i allocate to key F12 the function start over
;i do this because when i exit the game the auto-hunt might be too fast for me to stop 
; so i'll just press F12 and it will be stopped
; also u can add any key u want F1-12, NumPad0-9 ... and so on

Global $spots[20][2] = [[618,368],[662,368],[706,368],[750,368],[618,412],[662,412],[706,412],[750,412],[618,456],[662,456],[706,456],[750,456],[618,512],[662,512],[706,512],[750,512],[618,556],[662,556],[706,556],[750,556]]



Global $colors[379] = [0, 15597568, 9961474, 16711684, 11862016, 14225424, 8388627, 11579414, 14571865, 7149592, 11382810, 6832157, 13500447, 16771104, 4593328, 10068002, 15554607, 3684408, 2009147, 7149634, 16761867, 5011532, 13680724, 7258203, 15716445, 14684176, 6994025, 3283054, 7368816, 1376377, 14741626, 15571073, 16244869, 15657094, 15327371, 15698061, 3888383, 8724627, 2332159, 10997913, 2687131, 14811136, 10526880, 4077731, 11053224, 2105376, 13158600, 9212115, 9375968, 6316260, 8683218, 6767656, 13684985, 6226173, 262399, 16769280, 2670853, 13482248, 8982801, 4773703, 1184019, 5257496, 14008601, 5196063, 739618, 11114789, 11374891, 11899184, 15436081, 8542942, 4276545, 5329233, 7502163, 1950041, 6381921, 4013116, 9541995, 5470574, 5927167, 14344560, 14774658, 7051659, 10066329, 10329501, 11645361, 1665461, 9013687, 12698049, 13224393, 9265615, 13750737, 5716435, 6783446, 10993151, 14279129, 9267675, 16769506, 10783215, 9689589, 16630271, 13949695, 4607, 14905866, 14715408, 1249809, 5509650, 8730371, 15432212, 11399599, 14869020, 16771617, 10494498, 2124325, 8280614, 16757169, 2763306, 11899441, 11299380, 11618869, 13412923, 16728642, 13650506, 13883983, 15129180, 10494561, 2206307, 15975013, 15297130, 16245355, 5513840, 16495217, 13482613, 2488951, 15905402, 6447752, 3805841, 5233300, 6875808, 6824612, 16767657, 11213489, 764603, 12763842, 11610820, 7352098, 7555792, 5685979, 8608478, 14506736, 15176434, 16448250, 8688383, 15966985, 4741906, 14277081, 11375385, 9136603, 8676352, 8477479, 12794683, 5020477, 14369603, 10648411, 6579042, 6513507, 16243563, 14734193, 7566195, 11768692, 9096061, 4987780, 2861958, 11119055, 10914287, 7113244, 10724259, 11250603, 2263200, 6634435, 8268747, 14631679, 13882323, 16776153, 4219875, 16374271, 4887550, 6468607, 16765952, 6816772, 16753671, 14724106, 855051, 12192780, 15420439, 13376540, 16747552, 10773538, 8670245, 807974, 12547112, 4865065, 8805431, 12794940, 8718858, 8563782, 1547339, 9208909, 5526612, 6331487, 6349923, 6579300, 2151525, 7105644, 9966098, 8664497, 7722101, 4318336, 6874242, 7126153, 15326347, 14339226, 8045726, 6046236, 8973483, 16182451, 9510430, 12369084, 12895428, 6511814, 8428543, 16762061, 16305358, 9211087, 3488979, 11728078, 8297690, 15000804, 11721967, 791806, 11715839, 9830272, 14388486, 2546954, 11627789, 10323218, 4795670, 6843672, 13487386, 14951717, 2534694, 2960683, 2960684, 13577517, 15433007, 11631925, 16383286, 13411643, 6778187, 13337932, 1598808, 4943203, 4398441, 16244075, 7697781, 8750469, 4342338, 14589328, 15056276, 2581915, 1545629, 10197915, 11236934, 10218924, 7409073, 11908533, 6700483, 7941583, 14540253, 11046370, 4154851, 2236962, 11382257, 13666559, 15396351, 14603786, 7736846, 8289808, 9799195, 11017758, 7864320, 10642981, 13116966, 8468007, 1779250, 12461619, 6377018, 9258557, 712262, 5131854, 11537677, 9401949, 6710886, 1249553, 4605510, 6829330, 15658611, 12566463, 8557311, 11290240, 8502913, 15326859, 9342606, 5982489, 14374552, 15189660, 8650752, 10921638, 4726440, 11447982, 4724400, 11648689, 1148597, 15175354, 7368395, 13553358, 6457042, 8026746, 4382436, 15132390, 9361127, 20206, 6145776, 8427250, 6649598, 11042560, 3938051, 2829612, 2768660, 7685913, 15671071, 50977, 7360290, 9656107, 16713516, 6719287, 1253187, 4671303, 5211982, 1748817, 14978702, 2084706, 8861540, 6776679, 15443817, 16244587, 15724412, 16777088, 6301569, 16646023, 9408399, 3358609, 9934743, 7155151, 9633721, 9365435, 12697535, 4727456, 15615, 10661880, 12994520, 16777179, 16711680, 15198183, 6873066, 12910574, 13498360, 5926911, 2836478, 16777215]

_ArraySort($colors)

Global $curtext = ""

startover() ; i call that same function to run so i just won't have to press F12 

;healbot() ; i call that same function to run so i just won't have to press F12 

Func appendMsg($msg) 
	$curtext = $curtext & $msg & Chr(13) & Chr(10)
EndFunc

Func setMsg()
	If GUICtrlGetState($TEXT) <> $curtext Then
		GUICtrlSetData($TEXT,$curtext)
	EndIf
EndFunc

Func getHealth()
	$health_pos_x = $win_pos[0] + $pos[0] + 613
	$health_pos_y = $win_pos[1] + $pos[1] + 257
	$res = PixelGetColor($health_pos_x + 174,$health_pos_y)
	appendMsg($res)
	$res = PixelSearch($health_pos_x,$health_pos_y,$health_pos_x+174,$health_pos_y+1,5526612,0,1,$c)
	If Not @error Then
		$leftcol = PixelGetColor($res[0]-2,$health_pos_y)
		If $leftcol <> 14693428 Then
			Return 2
		EndIf
		
		Return ($res[0] - $health_pos_x)/174
	Else
		Return 1
	
	EndIf
EndFunc


Func getSpot2($loc)
	
	$spot_x = $spots[$loc][0]
	$spot_y = $spots[$loc][1]
	
	
	$bag_pos_x = $win_pos[0] + $pos[0] + $spot_x
	$bag_pos_y = $win_pos[1] + $pos[1] + $spot_y
	;appendMsg($bag_pos_y)
	$a = ""
	;$checksum = PixelChecksum($bag_pos_x,$bag_pos_y,$bag_pos_x+27,$bag_pos_y+30,1,$c)
	For $x =  2 to 7
		$blackon = False
		For $y = 0 To 4
			;appendMsg(($bag_pos_x+ $x * 4) & " " & ($bag_pos_y + $y * 4))
			$b = PixelGetColor($bag_pos_x + $x * 4,$bag_pos_y + $y * 4-1,$c)
			;appendMsg($b)
			$red = BitAnd($b,0x0000FF)
			$green = BitShift(BitAnd($b,0x00FF00),8)
			$blue = BitShift(BitAnd($b,0xFF0000),16)
			;appendMsg($red & " " & $green & " " & $blue )
			If ($red < 15 and $blue < 15 and $green < 15) Then
				$blackon = True
				
			EndIf
			;appendMsg($blackon)
			If $blackon Then
				$color = PixelGetColor($bag_pos_x + $x * 4,$bag_pos_y + $y * 4,$c)
				$index = _ArrayBinarySearch($colors,$color)
				If Not @error Then
					$a = $a & "+" & string($color)
					;appendMsg("+" & $color)
				Else
					;appendMsg($color)
				EndIf
			EndIf
			
			$b = PixelGetColor($bag_pos_x + $x * 4+1,$bag_pos_y + $y * 4+5,$c)
			;appendMsg($b)
			$red = BitAnd($b,0x0000FF)
			$green = BitShift(BitAnd($b,0x00FF00),8)
			$blue = BitShift(BitAnd($b,0xFF0000),16)
			;appendMsg($red & " " & $green & " " & $blue )
			If ($red < 15 and $blue < 15 and $green < 15) Then
				$blackon = False
				
			EndIf
		Next
		
	Next
	
	$checksum = _CRC32($a)
	
	If $item_dict.Exists($checksum) Then
		appendMsg($item_dict.Item($checksum))
		Return $item_dict.Item($checksum)
	ElseIf $checksum = 0 Then
		appendMsg("0Empty")
		
		Return "0Empty"
	Else
		appendMsg($checksum)
		Return "0"
	EndIf
EndFunc



Func getSpot($loc)
	
	$spot_x = $spots[$loc][0]
	$spot_y = $spots[$loc][1]
	
	
	$bag_pos_x = $win_pos[0] + $pos[0] + $spot_x
	$bag_pos_y = $win_pos[1] + $pos[1] + $spot_y
	
	$checksum = PixelChecksum($bag_pos_x,$bag_pos_y,$bag_pos_x+27,$bag_pos_y+30,1,$c)
	
	If $dict.Exists($checksum) Then
		appendMsg($dict.Item($checksum))
		Return $dict.Item($checksum)
	Else
		appendMsg($checksum)
		Return "0"
	EndIf
EndFunc


Func grabItem($from,$to)
	
	$from_x = $spots[$from][0]
	$from_y = $spots[$from][1]
	$from_pos_x = $win_pos[0] + $pos[0] + $from_x + 10
	$from_pos_y = $win_pos[1] + $pos[1] + $from_y + 10
	
	$to_x = $spots[$to][0]
	$to_y = $spots[$to][1]
	$to_pos_x = $win_pos[0] + $pos[0] + $to_x + 10
	$to_pos_y = $win_pos[1] + $pos[1] + $to_y + 10
	
	
	$mos_pos = MouseGetPos()
	
	MouseMove($from_pos_x,$from_pos_y,0)
	MouseDown("left")
	MouseMove($to_pos_x,$to_pos_y,0)
	MouseUp("left")
	MouseMove($mos_pos[0],$mos_pos[1],0)
EndFunc

Func startover();i declare it 


	Global $handle = WinGetHandle("[TITLE:Realm of the Mad God - Google Chrome; CLASS:Chrome_WidgetWin_0]","")
	Global $c = ControlGetHandle("[TITLE:Realm of the Mad God - Google Chrome; CLASS:Chrome_WidgetWin_0]","","[CLASS:NativeWindowClass; INSTANCE:1]")

	Global $win_pos = WinGetPos($handle)
	Global $pos = ControlGetPos($c,"","");


	;MsgBox(0,"hi",WinGetTitle($handle))
	$bag_pos_x = $win_pos[0] + $pos[0] + 621
	$bag_pos_y = $win_pos[1] + $pos[1] + 514

	Global $dict = ObjCreate("Scripting.Dictionary")
	$dict.Add(3478201914,"1Health")
	$dict.Add(3904037324,"1Health")

	$dict.Add(2212173581,"1Snake Oil")
	$dict.Add(1556424039,"0Nothing")
	$dict.Add(3301598250,"2Mana")
	$dict.Add(3633463546,"9Speed Pot")
	$dict.Add(3228036362,"9Attack Pot")
	$dict.Add(623438275,"9Def Pot")
	$dict.Add(1844892826,"9Wis Pot")

	$dict.Add(1372083870,"0Empty")
	$dict.Add(119356378,"0Empty") ; 1 spot
	$dict.Add(933703012,"0Empty") ; 2 spot
	$dict.Add(1629826383,"0Empty") ; 3 spot
	$dict.Add(4115606524,"0Empty") ; 4 spot
	$dict.Add(1949838743,"0Empty") ; 5 spot
	$dict.Add(3372230143,"0Empty") ; 6 spot
	$dict.Add(1155609915,"0Empty") ; 7 spot
	$dict.Add(3939115556,"0Empty") ; 8 spot

	$dict.Add(72101139,"9Drake Egg")

	;$dict.Add(3403093086,"5Dagger")
	;$dict.Add(2761876761,"6Dagger")
	;$dict.Add(2865976682,"7Dagger")
	;$dict.Add(1175133938,"8Dagger")

	;$dict.Add(3046896679,"5Robe")
	;$dict.Add(82931167,"6Robe")
	;$dict.Add(1064241756,"7Robe")
	$dict.Add(2331502347,"8Robe")

	;$dict.Add(3696095544,"8Leather")
	;$dict.Add(840467631,"7Leather")
	;$dict.Add(3550750537,"8Leather") ; snake skin

	;$dict.Add(1028465342,"8Armor") 

	;$dict.Add(2253659849,"7Sword")
	;$dict.Add(3704184646,"8Sword")
	;$dict.Add(3281121843,"9Sword")
	;$dict.Add(1594967592,"6Staff")
	;$dict.Add(1256203992,"7Staff")
	;$dict.Add(767570456,"8Staff")
	;$dict.Add(4115850992,"9Staff")
	$dict.Add(3406996784,"AStaff") ; hex, so A is 10

	;$dict.Add(1748787476,"6Wand")
	;$dict.Add(1676625132,"7Wand")
	;$dict.Add(3516127765,"8Wand")
	;$dict.Add(3917284964,"9Wand")


	;$dict.Add(4170401283,"3Quiver")
	;$dict.Add(2964515485,"4Quiver")
	;$dict.Add(470803779,"4Helm")

	;$dict.Add(2638405835,"5Bow")

	;$dict.Add(1972390004,"8Bow")
	;$dict.Add(4072021048,"9Bow")
	;$dict.Add(1216061267,"3Septer")
	;$dict.Add(1554813727,"4Septer")
	;$dict.Add(4100991459,"3Shield")
	;$dict.Add(995157558,"3Tome")
	;$dict.Add(2888245126,"4Tome")
	;$dict.Add(793157750,"4Poison")
	$dict.Add(2643246801,"2Skull")
	$dict.Add(871181639,"3Skull")
	$dict.Add(2176310483,"4Skull")
	;$dict.Add(59144946,"4Spell")
	;$dict.Add(1320050024,"4Cloak")

	;$dict.Add(713199341,"3Speed Ring")
	;$dict.Add(2341150221,"3Snake Ring")
	;$dict.Add(3062018253,"3Attack Ring")
	;$dict.Add(998496855,"4Attack Ring")
	;$dict.Add(1662738589,"3Vit Ring")
	$dict.Add(775131677,"3Def Ring")
	;$dict.Add(289323741,"3Dex Ring")
	;$dict.Add(4119129587,"4Dex Ring")
	;$dict.Add(3081815181,"3MP Ring")
	;$dict.Add(3802521487,"4HP Ring")




	GUICreate("Log Messages", 469, 639, (@DesktopWidth - 469) / 2, (@DesktopHeight - 639) / 2, $WS_OVERLAPPEDWINDOW + $WS_VISIBLE + $WS_CLIPSIBLINGS)

	Global $TEXT = GUICtrlCreateEdit("", 10, 65, 420, 500, $ES_AUTOVSCROLL + $WS_VSCROLL + $ES_MULTILINE + $ES_WANTRETURN)

	For $i = 0 to 19
		appendMsg($i & " - " & getSpot2($i))
		;getSpot2($i)
	Next
	
	setMsg()
	;$old_checksum = getSpot(1)
	While 1
		;$checksum = getSpot(1)
		If WinActive($handle) Then
			$curtext = ""
			$health = getHealth()
			appendMsg($health)
			If $health < 0.5  Then
				ControlSend($c,"","","{TAB}")
				sleep(10000)
			EndIf
			
			Dim $curGear[3]
			Dim $curTier[3]
			
			;For $I = 0 To 2
			;	$curSpot = getSpot2($I)
		;		$curGear[$I] = GetSlot($curSpot)
	;			$curTier[$I] = GetTier($curSpot)
	;		Next
			
			$empty = -1
			$healthPot = -1
			For $I = 4 To 11
				$spot = getSpot2($I)
				If $spot = "0Empty" Then
					$empty = $I
				EndIf
				If $spot = "Health Potion" Then
					$healthPot = $I
				EndIf
				
				
			Next
			
			If $health < 0.75 and $healthPot <> -1 Then
				ControlSend($c,"","",$healthPot - 3)
			EndIf
			
			$full = -1
			
			;For $I = 12 To 19
		;		If $full >= 0 Then
	;				ExitLoop
;				EndIf
;				
				;$groundSpot = getSpot2($I)

				;$curGroundGear = GetSlot($groundSpot)
				;$curGroundTier = GetTier($groundSpot)
				;appendMsg($curGroundGear)
				;appendMsg($curGroundTier)
				
				;For $J = 0 To 2
					;appendMsg($curGear[$J])
					;appendMsg($curTier[$J])
					
				;	If $curGroundGear = $curGear[$J] AND $curGroundTier > $curTier[$J] Then
				;		$empty = $J
				;		$full = $I
				;		ExitLoop 2
				;	EndIf
					
				;Next
			;Next
			
			For $I = 12 To 19
				If $full >= 0 Then
					ExitLoop
				EndIf
				
				$groundSpot = getSpot2($I)

				If $full = -1 AND StringLeft($groundSpot,1) <> "0" and GetTier($groundSpot) > 8 Then
					$full = $I
					ExitLoop
				EndIf 
				
			Next
			
			
			If $full >= 0 and $empty >= 0 Then
				; DISABLED, THIS IS CHEATING
                                ; grabItem($full,$empty)
			EndIf
			setMsg()
			sleep(10)
			
			;If $old_checksum <> $checksum Then
				
				;$mos_pos = MouseGetPos()
				
				;MouseMove($win_pos[0] + $pos[0] + 637,$win_pos[1]+ $pos[1] + 525,0)
				;MouseDown("left")
				;MouseMove($win_pos[0] + $pos[0] + 637,$win_pos[1]+ $pos[1] + 471,0)
				;MouseUp("left")
				;MouseMove($mos_pos[0],$mos_pos[1],0)
				
				;MouseClickDrag("left",$win_pos[0] + $pos[0] + 637,$win_pos[1]+ $pos[1] + 525,$win_pos[0] + $pos[0] + 637,$win_pos[1]+ $pos[1] + 471,0)
				;sleep(100)
				
			;EndIf
		EndIf
		;$old_checksum = $checksum
		sleep(10)
		
		$msg = GUIGetMsg()
		Select
			Case $msg = $GUI_EVENT_CLOSE
				ExitLoop
			Case Else
				;;;
			EndSelect
				
	WEnd
			

Endfunc ;and i end it

Func healbot()
	While 1
		
		Global $c = ControlGetHandle("[TITLE:Realm of the Mad God - Mozilla Firefox; CLASS:MozillaWindowClass]","","[CLASS:GeckoPluginWindow; INSTANCE:1]")
		sleep(1000)
		ControlSend($c,"",$c,"{space}")
		
	WEnd
	
EndFunc


;while 1; it will just keep the program in stand by untill the function is called
; useless in our case since we called the function automatically but it's good for u to know it
;	sleep(1000)
;WEnd
