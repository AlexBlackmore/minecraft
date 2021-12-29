#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#
data merge entity @s {ArmorItems:[{id:diamond_boots,Count:1},{id:chainmail_leggings,tag:{Enchantments:[{}]},Count:1},{id:leather_chestplate,tag:{Enchantments: [{}],display: {color:16711680}},Count:1},{id:player_head,tag:{SkullOwner:{Id:[I;1768783939,-1829157788,-1656269377,839076309],Properties:{textures:[{Value:"eyJ0aW1lc3RhbXAiOjE1Njg0NTc0MjAxMzcsInByb2ZpbGVJZCI6IjQxZDNhYmMyZDc0OTQwMGM5MDkwZDU0MzRkMDM4MzFiIiwicHJvZmlsZU5hbWUiOiJNZWdha2xvb24iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2RiYWQ5OWVkM2M4MjBiNzk3ODE5MGFkMDhhOTM0YTY4ZGZhOTBkOTk4NjgyNWRhMWM5N2Y2ZjIxZjQ5YWQ2MjYifX19="}]}}},Count:1}]}
tag @s add Enrage
data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.6
execute store result score $Attribute Temp run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
execute store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 2 run scoreboard players get $Attribute Temp
execute store result score $Attribute Temp run data get entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base
scoreboard players set @s S_EnrageTimer 0
playsound entity.zombie_villager.cure master @a[distance=..20] ~ ~ ~ 1 1.5 1
execute as @e[tag=SlayerTimeDisplay,sort=nearest,limit=1] at @s run function slayers:timer/display/update