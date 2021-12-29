function slayers:abilities/spider/combat_jump/calc_y_motion

execute if score $desY Motion matches ..0 run data modify entity @s Motion[1] set value 0.3
execute if score $desY Motion matches 1..10 run data modify entity @s Motion[1] set value 0.5
execute if score $desY Motion matches 10.. run data modify entity @s Motion[1] set value 2d
execute if score $desY Motion matches 20.. run data modify entity @s Motion[1] set value 2.5d
execute if score $desY Motion matches 30.. run data modify entity @s Motion[1] set value 3d

tag @s add NeedYAxis
