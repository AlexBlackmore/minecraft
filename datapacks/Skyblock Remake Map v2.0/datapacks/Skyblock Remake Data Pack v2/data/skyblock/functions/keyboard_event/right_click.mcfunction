#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------EVENT-------------------#
execute store result score @s rc_content run data get entity @s SelectedItem.tag.CustomModelData

execute if entity @s[scores={Location=8,rc_content=33..34}] unless score Global End_DragSeq matches 1.. positioned 0 9 0 if entity @s[distance=..10] at @s positioned ~ ~1.62 ~ run function public_islands:the_end/summoning_eye/frametest
execute if data entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}] run function items:item_abilities/right_click/mana_check
scoreboard players reset @s right_click
#------------------------------------------#