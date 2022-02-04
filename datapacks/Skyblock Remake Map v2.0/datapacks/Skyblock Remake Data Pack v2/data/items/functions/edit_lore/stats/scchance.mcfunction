#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld if entity @s[tag=Reforging] if score SCChance BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Sea Creature Chance: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_SCChance\"},\"color\":\"red\",\"italic\":false},{\"text\":\"% \",\"color\":\"red\",\"italic\":false},{\"text\":\"(\",\"color\":\"blue\",\"italic\":false},{\"nbt\":\"Item.tag.Base.Reforge\",\"storage\":\"blue:reforge\",\"color\":\"blue\",\"italic\":false,\"interpret\":false},{\"text\":\" +\",\"color\":\"blue\",\"italic\":false},{\"score\":{\"name\":\"SCChance\",\"objective\":\"BReforgeStats\"},\"color\":\"blue\",\"italic\":false},{\"text\":\"%)\",\"color\":\"blue\",\"italic\":false}]"}
execute in minecraft:overworld if entity @e[tag=Reforging] unless score SCChance BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Sea Creature Chance: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_SCChance\"},\"color\":\"red\",\"italic\":false},{\"text\":\"%\",\"color\":\"red\",\"italic\":false}]"}
execute in minecraft:overworld unless entity @e[tag=Reforging] run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Sea Creature Chance: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Ench_SCChance\"},\"color\":\"red\",\"italic\":false},{\"text\":\"%\",\"color\":\"red\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
tag @s add RedStat
#------------------------------------------#