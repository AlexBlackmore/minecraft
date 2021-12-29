#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FEROCITY-----------------#
# Random Particles
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 2
function skyblock:random/range_lcg
execute if score out RandMath matches 1 run function stats:ferocity/sfx/particles_1
execute if score out RandMath matches 2 run function stats:ferocity/sfx/particles_2
playsound minecraft:entity.zombie.break_wooden_door master @a[distance=..20] ~ ~ ~ 0.5 1 1
#------------------------------------------#