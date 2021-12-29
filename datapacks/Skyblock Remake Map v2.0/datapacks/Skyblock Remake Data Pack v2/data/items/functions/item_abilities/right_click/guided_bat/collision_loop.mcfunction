#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ITEM ABILITIES--------------#
execute at @a if score @s PlayerID = @p PlayerID rotated as @p positioned as @s run tp @s ^ ^ ^.75 ~180 ~
execute at @s unless block ~ ~ ~ air run function items:item_abilities/right_click/guided_bat/explode
execute at @s if entity @e[tag=!NPC,type=!#stats:show_hp,dx=0,type=!bat] run function items:item_abilities/right_click/guided_bat/explode
#------------------------------------------#