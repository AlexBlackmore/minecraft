execute store result score @s time run time query gametime
scoreboard players set @s dummy 3
scoreboard players operation @s time %= @s dummy 

execute if entity @s[scores={time=0}] at @s run function skyblock:summon/dwarven_mines/goblins/goblin
execute if entity @s[scores={time=1}] at @s run function skyblock:summon/dwarven_mines/goblins/fireslinger
execute if entity @s[scores={time=2}] at @s run function skyblock:summon/dwarven_mines/goblins/knifethrower