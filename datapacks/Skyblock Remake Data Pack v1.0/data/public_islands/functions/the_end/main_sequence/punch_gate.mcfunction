#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------PLAY SOUND----------------#
execute at @s run playsound minecraft:entity.zombie.attack_iron_door master @a[distance=..10] ~ ~ ~ 1 1.3 1
#----------------DAMAGE GATE---------------#s
execute if score Gate End_DragDamage matches 1.. run function public_islands:the_end/main_sequence/punch_gate_damage
#------------------------------------------#