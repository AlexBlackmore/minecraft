#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DETECT BLOCK---------------#
scoreboard players add @e[tag=!NPC,type=!#stats:show_hp,distance=..5,type=!bat] ApplyDamage 2000
playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .3 .3 .3 1 20 force
function skyblock:kill
#------------------------------------------#