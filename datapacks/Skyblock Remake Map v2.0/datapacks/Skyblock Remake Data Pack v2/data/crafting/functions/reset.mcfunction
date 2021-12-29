#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Crafting SkyblockModules matches 0.. run scoreboard players set Crafting SkyblockModules 1

kill @e[tag=CraftingEvaluator,type=armor_stand]
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"red",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_red",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"aqua",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_aqua",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"green",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_green",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"yellow",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"blue",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_blue",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"gold",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"light_purple",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_purple",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"gray",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"dark_gray",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"black",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute in minecraft:overworld run summon minecraft:armor_stand 29999978 1 29832 {Team:"white",ShowArms:1b,Tags:["CraftingEvaluator"],HandItems:[{id:"minecraft:stone",Count:1b},{}]}
execute as @e[tag=CraftingEvaluator] at @s run function crafting:armor_stand_reset_score
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Crafting Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#