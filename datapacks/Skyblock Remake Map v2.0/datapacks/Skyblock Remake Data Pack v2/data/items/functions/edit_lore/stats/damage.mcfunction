#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------STATS IN LORE---------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld if entity @s[tag=Reforging,tag=!HasPotatoBook] if score Damage BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false},{\"text\":\" \",\"color\":\"red\",\"italic\":false},{\"text\":\"(\",\"color\":\"blue\",\"italic\":false},{\"nbt\":\"Item.tag.Base.Reforge\",\"storage\":\"blue:reforge\",\"color\":\"blue\",\"italic\":false,\"interpret\":false},{\"text\":\" +\",\"color\":\"blue\",\"italic\":false},{\"score\":{\"name\":\"Damage\",\"objective\":\"BReforgeStats\"},\"color\":\"blue\",\"italic\":false},{\"text\":\")\",\"color\":\"blue\",\"italic\":false}]"}
execute in minecraft:overworld if entity @s[tag=Reforging,tag=!HasPotatoBook] unless score Damage BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false}]"}
function items:edit_lore/stats/calculate_potato_books
execute in minecraft:overworld if entity @s[tag=!Reforging,tag=HasPotatoBook] if score $HotPotatoDamageBoost Temp matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false},{\"text\":\" \"},{\"text\":\"(+\",\"color\":\"yellow\",\"italic\":false},{\"score\":{\"name\":\"$HotPotatoDamageBoost\",\"objective\":\"Temp\"},\"color\":\"yellow\",\"italic\":false},{\"text\":\")\",\"color\":\"yellow\",\"italic\":false}]"}
execute in minecraft:overworld if entity @s[tag=Reforging,tag=HasPotatoBook] if score $HotPotatoDamageBoost Temp matches 1.. if score Damage BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false},{\"text\":\" \"},{\"text\":\"(+\",\"color\":\"yellow\",\"italic\":false},{\"score\":{\"name\":\"$HotPotatoDamageBoost\",\"objective\":\"Temp\"},\"color\":\"yellow\",\"italic\":false},{\"text\":\")\",\"color\":\"yellow\",\"italic\":false},{\"text\":\" \",\"color\":\"red\",\"italic\":false},{\"text\":\"(\",\"color\":\"blue\",\"italic\":false},{\"nbt\":\"Item.tag.Base.Reforge\",\"storage\":\"blue:reforge\",\"color\":\"blue\",\"italic\":false,\"interpret\":false},{\"text\":\" +\",\"color\":\"blue\",\"italic\":false},{\"score\":{\"name\":\"Damage\",\"objective\":\"BReforgeStats\"},\"color\":\"blue\",\"italic\":false},{\"text\":\")\",\"color\":\"blue\",\"italic\":false}]"}
execute in minecraft:overworld if entity @s[tag=Reforging,tag=HasPotatoBook] if score $HotPotatoDamageBoost Temp matches 1.. unless score Damage BReforgeStats matches 1.. run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=Reforging,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false},{\"text\":\" \"},{\"text\":\"(+\",\"color\":\"yellow\",\"italic\":false},{\"score\":{\"name\":\"$HotPotatoDamageBoost\",\"objective\":\"Temp\"},\"color\":\"yellow\",\"italic\":false},{\"text\":\")\",\"color\":\"yellow\",\"italic\":false}]"}

execute in minecraft:overworld if entity @s[tag=!Reforging,tag=!HasPotatoBook] run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Damage: \",\"color\":\"gray\",\"italic\":false},{\"text\":\"+\",\"color\":\"red\",\"italic\":false},{\"score\":{\"name\":\"@e[tag=CurrentEnchant,limit=1]\",\"objective\":\"Ench_Damage\"},\"color\":\"red\",\"italic\":false}]"}


execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
tag @s add RedStat
#------------------------------------------#