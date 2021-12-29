#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DAMAGE ICON----------------#
execute in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"gray"}]'}
execute if data entity @e[tag=EntitySelf,tag=!DamageFromPlayer,sort=nearest,limit=1] ActiveEffects[{Id:20b}] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"black"}]'}
execute if data entity @e[tag=EntitySelf,tag=!DamageFromPlayer,sort=nearest,limit=1] ActiveEffects[{Id:19b}] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"dark_green"}]'}
execute as @e[tag=EntitySelf,tag=!DamageFromPlayer,sort=nearest,limit=1,scores={P_IconColour=2}] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"dark_aqua"}]'}
execute as @e[tag=EntitySelf,tag=!DamageFromPlayer,sort=nearest,limit=1,scores={P_IconColour=3}] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"gold"}]'}
execute as @e[tag=EntitySelf,tag=!DamageFromPlayer,sort=nearest,limit=1,scores={P_IconColour=4}] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'[{"score":{"name":"$DamageOutput","objective":"Temp"},"color":"dark_green"}]'}
execute in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1
tag @s remove DamageDealtNew
#------------------------------------------#