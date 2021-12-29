#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------CRAFTING TABLE---------------#
execute as @p[tag=PlaceAnvil] run function skyblock:get_cardinal_direction
scoreboard players operation @p[tag=PlaceAnvil] CardinalDirect %= c2 Constant

setblock ~ ~ ~ barrier
execute if entity @p[tag=PlaceAnvil,scores={CardinalDirect=1..}] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["Anvil","BlockRevamp","CustomBlock"],Marker:1b,Invisible:1b,ShowArms:1b,HandItems:[{id:"minecraft:scute",Count:1b,tag:{CustomModelData:101}},{}],Invulnerable:1,NoGravity:1b}
execute if entity @p[tag=PlaceAnvil,scores={CardinalDirect=0}] align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~-1 ~ {Rotation:[90f],Tags:["Anvil","BlockRevamp","CustomBlock"],Marker:1b,Invisible:1b,ShowArms:1b,HandItems:[{id:"minecraft:scute",Count:1b,tag:{CustomModelData:101}},{}],Invulnerable:1,NoGravity:1b}
tag @p[tag=PlaceAnvil] add PlaceAnvilSuccess
#------------------------------------------#