tag @s remove move
execute store result score @s I_BWMove_pos1 run data get entity @s Pos[0] 100
execute store result score @s I_BWMove_pos2 run data get entity @s Pos[1] 100
execute store result score @s I_BWMove_pos3 run data get entity @s Pos[1] 100
execute run scoreboard players operation @s I_BWMove_posr1 -= @s I_BWMove_pos1
execute run scoreboard players operation @s I_BWMove_posr2 -= @s I_BWMove_pos2
execute run scoreboard players operation @s I_BWMove_posr3 -= @s I_BWMove_pos3
execute unless score @s I_BWMove_posr1 matches 0 run tag @s add move
execute unless score @s I_BWMove_posr2 matches 0 run tag @s add move
execute unless score @s I_BWMove_posr3 matches 0 run tag @s add move
execute run scoreboard players operation @s I_BWMove_posr1 = @s I_BWMove_pos1
execute run scoreboard players operation @s I_BWMove_posr2 = @s I_BWMove_pos2
execute run scoreboard players operation @s I_BWMove_posr3 = @s I_BWMove_pos3
tag @s[nbt=!{Motion:[0.0d,0.0d,0.0d]}] add move