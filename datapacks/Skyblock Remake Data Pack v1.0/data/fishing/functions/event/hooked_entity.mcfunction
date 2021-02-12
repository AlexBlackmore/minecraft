#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
execute if entity @s[type=#enchanting:checks/is_undead] run effect give @s minecraft:instant_health 1 0 true
execute if entity @s[type=!#enchanting:checks/is_undead] run effect give @s minecraft:instant_damage 1 0 true
tag @e[type=minecraft:fishing_bobber,tag=!HookedMob,sort=nearest,limit=1] add TargetEntity
tag @e[type=minecraft:fishing_bobber,tag=!HookedMob,sort=nearest,limit=1] add HookedMob
#------------------------------------------#