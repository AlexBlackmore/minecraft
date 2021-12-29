#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COLLECTIONS----------------#
scoreboard players operation @s C_Bone += @p C_Bone
execute if score @s C_Bone >= @s C_BoneN unless score @s C_BoneL matches 10.. run function collections:update_collections/combat/bone/levelup
scoreboard players reset @p C_Bone
#------------------------------------------#