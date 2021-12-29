scoreboard players operation $YoungDragHP Temp = @s PlayerHP
scoreboard players operation $YoungDragHP Temp *= c2 Constant
execute if score $YoungDragHP Temp > @s P_Health run scoreboard players add @s P_Speed 70