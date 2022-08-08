item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air
item replace entity @s container.3 with air

loot give @s loot skyblock:items/armor/cheap_tuxedo/chestplate
loot give @s loot skyblock:items/armor/cheap_tuxedo/leggings
loot give @s loot skyblock:items/armor/cheap_tuxedo/boots

playsound minecraft:entity.villager.trade player @s

advancement revoke @s only skyblock:commands/npcs/seymour/cheap_tuxedo
