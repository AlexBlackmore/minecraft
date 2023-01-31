execute as @e[tag=magmafish,limit=1,sort=nearest] at @s if entity @s[type=cod] run loot spawn ~ ~ ~ loot skyblock:gameplay/fishing/lava/sea_creatures/common
execute as @e[tag=magmafish,limit=1,sort=nearest] at @s if entity @s[type=salmon] run loot spawn ~ ~ ~ loot skyblock:gameplay/fishing/lava/sea_creatures/rare
execute as @e[tag=magmafish,limit=1,sort=nearest] at @s if entity @s[type=pufferfish] run loot spawn ~ ~ ~ loot skyblock:gameplay/fishing/lava/sea_creatures/epic
execute as @e[tag=magmafish,limit=1,sort=nearest] at @s if entity @s[type=tropical_fish] run loot spawn ~ ~ ~ loot skyblock:gameplay/fishing/lava/sea_creatures/mythic

execute unless entity @e[type=item,nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run loot give @s loot skyblock:gameplay/fishing/lava_fishing
execute at @s if entity @e[type=item,nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run function skyblock:sea_creatures

execute at @s run kill @e[tag=magmafish,limit=1,sort=nearest]
execute as @s run function skyblock:reduce_durability
advancement revoke @s only skyblock:commands/lava_fishing