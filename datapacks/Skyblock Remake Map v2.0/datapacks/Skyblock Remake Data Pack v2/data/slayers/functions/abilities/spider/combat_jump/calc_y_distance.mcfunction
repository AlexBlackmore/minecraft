execute at @s as @a if score @s PlayerID = @e[tag=TarantulaBroodfather,sort=nearest,limit=1] PlayerID at @s run function slayers:abilities/spider/combat_jump/target
execute store result score $startY Motion run data get entity @s Pos[1]
scoreboard players operation $desY Motion -= $startY Motion
