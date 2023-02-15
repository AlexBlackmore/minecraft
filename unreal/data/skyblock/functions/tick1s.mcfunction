effect give @a[advancements={skyblock:accessories/campfire_cultist_badge=true},predicate=skyblock:on_fire] instant_health 1 0
effect give @a[advancements={skyblock:accessories/campfire_god_badge=true},predicate=skyblock:on_fire] instant_health 1 1

execute as @a[advancements={skyblock:accessories/magnetic_talisman=true}] at @s run tp @e[type=item,distance=0..3] ~ ~ ~


#Every 2 seconds
scoreboard players set @a dummy 40
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a[advancements={skyblock:accessories/campfire_adept_badge=true},predicate=skyblock:on_fire] if score @s time matches 0 run effect give @s instant_health 1 0
execute as @a[advancements={skyblock:accessories/campfire_scion_badge=true},predicate=skyblock:on_fire] if score @s time matches 0 run effect give @s instant_health 1 1

#Every 4 seconds
scoreboard players set @a dummy 80
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a if score @s time matches 0 run function skyblock:tick4

#Every 5 seconds
scoreboard players set @a dummy 100
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a[advancements={skyblock:accessories/campfire_initiate_badge=true},predicate=skyblock:on_fire] if score @s time matches 0 run effect give @s instant_health 1 0

execute as @a run attribute @s minecraft:generic.armor modifier remove 87-88-23-45-4
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Zombie Hat"}}]}] run function skyblock:abilities/ambient/zombie_hat

execute as @a run attribute @s minecraft:generic.max_health modifier remove 37-2-44-27-99
execute as @a run attribute @s minecraft:generic.armor modifier remove 37-38-41-44-43
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Lantern Helmet"}}]}] run function skyblock:abilities/ambient/lantern_helmet

execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 49-78-63-44-19
execute as @a[nbt={Inventory:[{Slot:102b,tag:{Name:"Obsidian Chestplate"}}]}] run function skyblock:abilities/ambient/obsidian_chestplate

execute as @a run attribute @s minecraft:generic.armor modifier remove 95-33-64-57-14
execute as @a run attribute @s minecraft:generic.movement_speed modifier remove 27-67-83-17-10
execute as @a[nbt={Inventory:[{Slot:100b,tag:{Name:"Farmer Boots"}}]}] run function skyblock:abilities/ambient/farmer_boots

execute as @a run attribute @s minecraft:generic.max_health modifier remove 37-97-73-45-64
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Lapis Armor Helmet"}},{Slot:102b,tag:{Name:"Lapis Armor Chestplate"}},{Slot:101b,tag:{Name:"Lapis Armor Leggings"}},{Slot:100b,tag:{Name:"Lapis Armor Boots"}}]}] run attribute @s minecraft:generic.max_health modifier add 37-97-73-45-64 "Health" 12 add
