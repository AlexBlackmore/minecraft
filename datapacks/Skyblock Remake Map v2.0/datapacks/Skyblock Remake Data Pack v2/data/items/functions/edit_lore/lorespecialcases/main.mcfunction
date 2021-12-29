#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
##Ability Damage Text
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage if entity @s[type=chest_minecart] run function stats:calculate/ability_damage
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage store result storage blue:lore_builder ItemStorage.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage int 1 run scoreboard players get $AbilityDamageOutput Temp
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Dragon Rage"}] run function items:edit_lore/lorespecialcases/dragon_rage
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Fire Blast"}] run function items:edit_lore/lorespecialcases/fire_blast
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Guided Bat"}] run function items:edit_lore/lorespecialcases/guided_bat
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Ice Bolt"}] run function items:edit_lore/lorespecialcases/ice_bolt
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Ink Bomb"}] run function items:edit_lore/lorespecialcases/ink_bomb
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Molten Wave"}] run function items:edit_lore/lorespecialcases/molten_wave
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Showtime"}] run function items:edit_lore/lorespecialcases/showtime
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Implosion"}] run function items:edit_lore/lorespecialcases/implosion
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Giant's Slam"}] run function items:edit_lore/lorespecialcases/giant_slam
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Terrain Toss"}] run function items:edit_lore/lorespecialcases/terrain_toss
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Iron Punch"}] run function items:edit_lore/lorespecialcases/iron_punch

##Other
execute if data storage blue:lore_builder ItemStorage.Base.InfiniteDamage run function items:edit_lore/lorespecialcases/sword_of_the_universe
#Magma Chestplate
#Lantern Helmet
#Promising Pickaxe
#Proising Shovel
#Promising Axe
#Kloonboat
#Obsidian Chestplate
#Brozen Blade Armor
#Zombie Sword
#Ornate Zombie Sword
#Midas Sword
#Farmer Boots
#Emerald Blade
execute if data storage blue:lore_builder ItemStorage.Base.Abilities[{Name:"Refraction"}] run function items:edit_lore/lorespecialcases/refraction
#Angler Armor
#Tactician's Sword
#Revenant Armor
#Tarantula Armor
#Fairy Armor
#Monster Hunter Armor
#Blaze Armor
#Recluse Fang
#Raider's Axe
#Wither Scrolls
#------------------------------------------#