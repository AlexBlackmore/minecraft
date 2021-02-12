#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MOB AIS-----------------#
execute as @e[type=minecraft:item,nbt={Item:{tag:{TempTags:{HighLevel:1b}}}}] at @s run tag @s add HighLevelBone
execute as @e[type=minecraft:item,nbt={Item:{tag:{TempTags:{HighLevel:1b}}}}] at @s run data remove entity @s Item.tag.TempTags
advancement revoke @s only mobs:ai/high_level_skeleton/kill
#------------------------------------------#