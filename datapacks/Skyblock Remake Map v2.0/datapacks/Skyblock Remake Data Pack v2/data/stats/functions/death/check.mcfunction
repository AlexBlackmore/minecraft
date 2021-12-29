#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DEATH-------------------#
execute if entity @s[scores={Location=8}] if data entity @s Inventory[].tag.RemnantEye run tag @s add RemnantSave
execute if entity @s[tag=!RemnantSave] run function stats:death/pre
execute if entity @s[tag=RemnantSave] run function public_islands:the_end/remnant_save
#------------------------------------------#