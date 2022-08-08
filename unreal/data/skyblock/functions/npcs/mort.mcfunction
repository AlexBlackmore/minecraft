execute in skyblock:hub_island if entity @s[distance=0..] run function skyblock:teleports/to_dungeons_hub

tellraw @s ["",{"text":"<","color":"white"},{"text":"Mort","color":"red"},{"text":"> Hey ","color":"white"},{"selector":"@s","color":"white"},{"text":", welcome to the ","color":"white"},{"text":"Catacombs","color":"red"},{"text":"! We hope you have a long stay! Preferably, an ","color":"white"},{"text":"eternal","italic":true,"color":"white"},{"text":" adventure. Our forces are made of rotting adventurers. Good luck.","color":"white"}]
playsound minecraft:entity.villager.no player @s

advancement revoke @s only skyblock:commands/npcs/mort