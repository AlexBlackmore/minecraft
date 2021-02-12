#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
execute if entity @p[scores={P_Speed=51..150}] positioned ^ ^ ^1 run tp @s ~ ~0.5 ~
execute if entity @p[scores={P_Speed=151..295}] positioned ^ ^ ^2 run tp @s ~ ~0.5 ~
execute if entity @p[scores={P_Speed=296..355}] positioned ^ ^ ^2.5 run tp @s ~ ~0.5 ~
execute if entity @p[scores={P_Speed=356..500}] positioned ^ ^ ^3 run tp @s ~ ~0.5 ~
tag @p remove MoveUpdate
#------------------------------------------#