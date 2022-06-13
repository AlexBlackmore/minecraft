scoreboard objectives add time dummy "Time"
scoreboard objectives add dummy dummy "Dummy"

execute store result score @s time run time query gametime
scoreboard players set @s dummy 3
scoreboard players operation @s time %= @s dummy 

execute if score @s time matches 0 run tellraw @s {"text":"<Shania> Moo."}
execute if score @s time matches 1 run tellraw @s {"text":"<Shania> Moo!"}
execute if score @s time matches 2 run tellraw @s {"text":"<Shania> Moooooo!"}

scoreboard objectives remove time 
advancement revoke @s only skyblock:commands/npcs/shania
