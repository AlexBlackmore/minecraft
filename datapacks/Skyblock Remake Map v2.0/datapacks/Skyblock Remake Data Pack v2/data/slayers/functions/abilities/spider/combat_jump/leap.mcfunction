execute at @s as @a if score @s PlayerID = @e[tag=TarantulaBroodfather,sort=nearest,limit=1] PlayerID at @s run function slayers:abilities/spider/combat_jump/target
execute store result score $startX Motion run data get entity @s Pos[0] 10
execute store result score $startZ Motion run data get entity @s Pos[2] 10
scoreboard players operation $desX Motion -= $startX Motion
scoreboard players operation $desZ Motion -= $startZ Motion
scoreboard players set $temp Motion 100
scoreboard players operation $desX Motion *= $temp Motion
scoreboard players operation $desZ Motion *= $temp Motion
scoreboard players set $temp Motion 65
scoreboard players operation $desX Motion /= $temp Motion
scoreboard players operation $desZ Motion /= $temp Motion

execute store result entity @s Motion[0] double 0.011 run scoreboard players get $desX Motion
data modify entity @s Motion[1] set value 0.9
execute store result entity @s Motion[2] double 0.011 run scoreboard players get $desZ Motion

summon item ~ ~ ~ {PickupDelay:1200,Age:5980,Item:{id:"minecraft:cobweb",Count:1},Motion:[0.8,0.0,0.0]}
summon item ~ ~ ~ {PickupDelay:1200,Age:5980,Item:{id:"minecraft:cobweb",Count:1},Motion:[-0.8,0.0,0.0]}
summon item ~ ~ ~ {PickupDelay:1200,Age:5980,Item:{id:"minecraft:cobweb",Count:1},Motion:[0.0,0.0,-0.8]}
summon item ~ ~ ~ {PickupDelay:1200,Age:5980,Item:{id:"minecraft:cobweb",Count:1},Motion:[0.0,0.0,0.8]}

particle minecraft:cloud ~ ~ ~ 0 0 0 0.1 20 normal
scoreboard players set @s S_BefJump 0
tag @s remove NeedYAxis

