#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
data merge entity @s {ArmorItems:[{id:diamond_boots,Count:1},{id:chainmail_leggings,tag:{Enchantments:[{}]},Count:1},{id:diamond_chestplate,tag:{Enchantments:[{}]},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;-275785545,676744624,-1504261926,894305861],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZDhiZWUyM2I1YzcyNmFlOGUzZDAyMWU4YjRmNzUyNTYxOWFiMTAyYTRlMDRiZTk4M2I2MTQxNDM0OWFhYWM2NyJ9fX0="}]}}},Count:1}]}
tag @s remove Enrage
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.6
execute store result score $PreDamage Temp run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 0.5 run scoreboard players get $PreDamage Temp
execute store result score $PreDamage Temp run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players set @s S_BefEnrage 0
playsound minecraft:entity.zombie_villager.converted master @a[distance=..20] ~ ~ ~ 1 1 1