#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ITEM ABILITIES--------------#
execute as @e[tag=BonzoBalloon] at @s run tp @s ^ ^ ^-1

execute as @e[tag=BonzoBalloon] at @s unless block ~ ~1.5 ~ air run function items:item_abilities/right_click/showtime/explode
execute as @e[tag=BonzoBalloon] at @s if entity @e[tag=!NPC,type=!#stats:show_hp,distance=..1] run function items:item_abilities/right_click/showtime/explode
#------------------------------------------#