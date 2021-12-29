#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------START DRAG SEQUENCE------------#
kill @e[tag=End_EyeStand]
function public_islands:the_end/close_door/start
execute in skyblock:the_end run summon minecraft:armor_stand 0 7 0 {Small:1b,NoGravity:1b,Invisible:1b,Marker:1b,Tags:["End_CrackStand"]}
execute as @a at @s run playsound minecraft:entity.ender_dragon.death master @s ~ ~ ~ 1 2 1
#------------------------------------------#