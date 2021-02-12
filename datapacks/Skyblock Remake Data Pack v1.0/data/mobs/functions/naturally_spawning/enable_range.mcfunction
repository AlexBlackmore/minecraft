#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------RANGE------------------#
tag @e[tag=NaturallySpawning,sort=nearest,limit=1] remove DisabledRange
data merge entity @e[tag=NaturallySpawning,sort=nearest,limit=1] {Attributes:[{Name:generic.follow_range,Base:16}]}
#------------------------------------------#