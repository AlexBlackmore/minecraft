#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------PARTICLES-----------------#
summon minecraft:armor_stand ~ ~1 ~ {Invulnerable:1b,Invisible:1b,Marker:1b,Tags:["RevenantLifeSteal"],NoGravity:1b,Small:1b}
execute as @e[tag=RevenantLifeSteal] at @s rotated as @e[tag=RevenantHorror,sort=nearest,limit=1] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s S_ParticleTimer 0