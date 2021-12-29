execute as @e[type=armor_stand,tag=PlayerNPC,distance=..26] at @s run function public_islands:npc/rotate2
execute as @e[tag=NPC,distance=..8,tag=!NoRotate] at @s facing entity @p feet run tp @s ~ ~ ~ ~ ~
