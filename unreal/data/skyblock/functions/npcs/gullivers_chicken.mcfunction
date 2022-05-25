item modify entity @s weapon.mainhand skyblock:subtract_item
loot give @s loot skyblock:gameplay/gullivers_chicken
execute at @e[tag=gullivers_chicken] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 5 5
advancement revoke @s only skyblock:commands/npcs/gullivers_chicken
