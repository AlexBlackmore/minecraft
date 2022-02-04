#------------CROWN OF GREED----------------#
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{display:{Name:"[{\"text\":\"Crown of Greed\",\"color\":\"gold\",\"italic\":false}]"}}}]} run function armor:full_set_bonus/piece_bonuses/crown_of_greed/crown_of_greed
#------------MONSTER ARMORS----------------#
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:102b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:101b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:100b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}}]} run function armor:full_set_bonus/abilities/monster_hunter/damage_bonus
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:102b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:101b,tag:{Base:{Abilities:[{Name:"MonsterHunter"}]}}},{Slot:100b,tag:{Base:{Abilities:[{Name:"Octodexterity"}]}}}]} run function armor:full_set_bonus/abilities/monster_raider/damage_bonus
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{Base:{Abilities:[{Name:"Octodexterity"}]}}},{Slot:102b,tag:{Base:{Abilities:[{Name:"Octodexterity"}]}}},{Slot:101b,tag:{Base:{Abilities:[{Name:"Octodexterity"}]}}},{Slot:100b,tag:{Base:{Abilities:[{Name:"Octodexterity"}]}}}]} run function armor:full_set_bonus/abilities/octodexterity/hit_detection
#--------STRONG BLOOD DAMAGE BONUS---------#
execute if data storage blue:item {Inventory:[{Slot:103b,tag:{Base:{Abilities:[{Name:"Strong Blood"}]}}},{Slot:102b,tag:{Base:{Abilities:[{Name:"Strong Blood"}]}}},{Slot:101b,tag:{Base:{Abilities:[{Name:"Strong Blood"}]}}},{Slot:100b,tag:{Base:{Abilities:[{Name:"Strong Blood"}]}}}]} run execute if data storage blue:stats Weapon.tag.Base.Abilities[{"Name":"Instant Transmission"}] run scoreboard players add $WeaponDamage Temp 75
#--------------TUXEDO BONUSES--------------#
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Jacket\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Pants\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Elegant Tuxedo Oxfords\",\"color\":\"gold\",\"italic\":false}]"}}}]} run function armor:full_set_bonus/abilities/fashion/elegant
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Jacket\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Pants\",\"color\":\"gold\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Fancy Tuxedo Oxfords\",\"color\":\"gold\",\"italic\":false}]"}}}]} run function armor:full_set_bonus/abilities/fashion/fancy
execute if data storage blue:item {Inventory:[{Slot:102b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Jacket\",\"color\":\"dark_purple\",\"italic\":false}]"}}},{Slot:101b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Pants\",\"color\":\"dark_purple\",\"italic\":false}]"}}},{Slot:100b,tag:{display:{Name:"[{\"text\":\"Cheap Tuxedo Oxfords\",\"color\":\"dark_purple\",\"italic\":false}]"}}}]} run function armor:full_set_bonus/abilities/fashion/cheap
#---------------WARDEN HELMET--------------#
execute if data storage blue:item Inventory[{Slot:103b,tag:{Base:{Abilities:[{Name:"Brute Force"}]}}}] run function armor:full_set_bonus/piece_bonuses/warden_helmet_damage
#------------------------------------------#