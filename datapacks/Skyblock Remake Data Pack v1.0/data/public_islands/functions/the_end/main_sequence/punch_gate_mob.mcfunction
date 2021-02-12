#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------MOB SPAWN AT GATE------------#
execute if predicate minecraft:random_chance/50_percent run tag @e[tag=DragonGatePercent] add DragonGateMobType
execute if entity @e[tag=DragonGatePercent,tag=DragonGateMobType] at @s at @p run function mobs:summon/the_end/zealot
execute if entity @e[tag=DragonGatePercent,tag=!DragonGateMobType] at @s at @p run function mobs:summon/the_end/endermite_gate
tag @e[tag=DragonGatePercent] remove DragonGateMobType
#------------------------------------------#