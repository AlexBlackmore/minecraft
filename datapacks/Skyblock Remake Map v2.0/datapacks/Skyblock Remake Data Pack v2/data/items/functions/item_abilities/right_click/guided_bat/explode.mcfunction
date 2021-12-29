#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DETECT BLOCK---------------#
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5,type=!bat] ApplyDamage = @s I_AbilDmgStore
playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force
function skyblock:kill
#------------------------------------------#