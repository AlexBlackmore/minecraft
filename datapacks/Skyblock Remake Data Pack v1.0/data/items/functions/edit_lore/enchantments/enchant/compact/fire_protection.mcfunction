#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------PT 1--------------------#
execute unless entity @s[tag=LinePt2] in minecraft:overworld run data modify block 29999978 1 29832 Text1 set value '[{"text":"Fire Protection ","color":"blue","italic":false},{"nbt":"ItemStorage.Base.Enchantments[].fire_protection.level","storage":"blue:lore_builder","color":"blue","italic":false}]'
execute unless entity @s[tag=LinePt2] run tag @s add DontDupe
execute unless entity @s[tag=LinePt2] run tag @s add LinePt2
#------------------PT 2--------------------#
execute if entity @s[tag=LinePt2,tag=!DontDupe] in minecraft:overworld run data modify block 29999978 1 29832 Text1 set value '[{"block":"29999978 1 29832","nbt":"Text1","interpret":true},{"text":", Fire Protection ","color":"blue","italic":false},{"nbt":"ItemStorage.Base.Enchantments[].fire_protection.level","storage":"blue:lore_builder","color":"blue","italic":false}]'
execute if entity @s[tag=LinePt2,tag=!DontDupe] in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
execute if entity @s[tag=LinePt2,tag=!DontDupe] in minecraft:overworld run setblock 29999978 1 29832 air
execute if entity @s[tag=LinePt2,tag=!DontDupe] in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\"]"}
execute if entity @s[tag=LinePt2,tag=!DontDupe] run tag @s remove LinePt2
#------------------RESET-------------------#
tag @s remove DontDupe
#------------------------------------------#