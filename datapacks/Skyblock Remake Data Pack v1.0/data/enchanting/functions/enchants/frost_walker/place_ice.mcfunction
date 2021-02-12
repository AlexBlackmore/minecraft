#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FROST WALKER---------------#
setblock ~ ~ ~ ice
summon area_effect_cloud ~ ~ ~ {Tags:["FrostWalkerIce"],Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:1000000000,DurationOnUse:0f}
scoreboard players set @e[tag=FrostWalkerIce,sort=nearest,limit=1] FrostIceTimer 60
#------------------------------------------#