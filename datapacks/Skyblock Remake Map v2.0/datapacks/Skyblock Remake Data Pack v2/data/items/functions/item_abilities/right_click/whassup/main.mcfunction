execute unless score @s I_WhassupTimer matches 1.. run tellraw @s[tag=!DidntCallAgain] {"text":"✆Ring...","color":"yellow"}
execute unless score @s I_WhassupTimer matches 1.. run scoreboard players set @s[tag=!DidntCallAgain] I_WhassupTimer 60
execute if entity @s[tag=DidntCallAgain] run tellraw @s {"text":"The line is off! Call again!","color":"red"}
execute if entity @s[tag=DidntCallAgain] run tag @s remove DidntCallAgain
tag @s remove CanOpenMaddox
execute if entity @s[tag=MaddoxMenuOpen] at @s run function items:item_abilities/right_click/whassup/close