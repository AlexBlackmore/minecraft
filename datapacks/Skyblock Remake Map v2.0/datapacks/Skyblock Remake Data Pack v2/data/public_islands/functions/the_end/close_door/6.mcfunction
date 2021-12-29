#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------START DRAG SEQUENCE------------#
execute as @e[tag=DragonGateHitbox] at @s run tp @s ~ ~10 ~
execute as @e[tag=DragonGateHitbox] run data merge entity @s {Invulnerable:0b}
execute in skyblock:the_end run setblock 69 22 -4 minecraft:structure_block[mode=load]{mode:"LOAD",posX:0,posY:0,posZ:0,name:"minecraft:end_door_6"}
execute in skyblock:the_end run setblock 69 23 -4 minecraft:redstone_block
execute in skyblock:the_end as @a[distance=0..] at @s run playsound minecraft:entity.player.small_fall master @s ~ ~ ~ 1 0 1
#------------------------------------------#