#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------CHECK FOR ACCESSORY DUPLICATES------#
execute store result score PreCheck P_AChecker run data get entity @e[scores={P_AChecker=1..},type=armor_stand,limit=1] Tags
data modify entity @e[scores={P_AChecker=1..},type=armor_stand,limit=1] Tags append from storage blue:item CalcStatAccessory.tag.Base.AccessoryFamily
execute store result score PostCheck P_AChecker run data get entity @e[scores={P_AChecker=1..},type=armor_stand,limit=1] Tags

execute unless score PreCheck P_AChecker = PostCheck P_AChecker run function stats:collect_stats/accessory/add_stats
#------------------------------------------#