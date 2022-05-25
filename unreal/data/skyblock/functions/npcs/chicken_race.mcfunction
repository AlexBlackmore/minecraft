tellraw @s ["",{"text":"<","color":"white"},{"text":"Gulliver","color":"gold"},{"text":"> Bukawk. Coot Coot Cluck, Puk Puk Pukaaak. Cluck cluck! Bacawk! Bakok. Buk bawk bakok puk pock? Puk Puk Pukaaak.","color":"white"}]
playsound minecraft:entity.chicken.hurt player @s
loot give @s loot skyblock:gameplay/chicken_race

advancement revoke @s only skyblock:commands/npcs/chicken_race

tp @s 65 106 30
execute at @s run summon experience_bottle ~ ~ ~
