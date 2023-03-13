execute as @a store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @a store result score @s knockback_resistance run attribute @s minecraft:generic.knockback_resistance get
execute as @a store result score @s movement_speed run attribute @s minecraft:generic.movement_speed get 1000
execute as @a store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @a store result score @s armor run attribute @s minecraft:generic.armor get
execute as @a store result score @s armor_toughness run attribute @s minecraft:generic.armor_toughness get
execute as @a store result score @s attack_knockback run attribute @s minecraft:generic.attack_knockback get

execute as @a run function skyblock:stats/farming_fortune
execute as @a run function skyblock:stats/farming_wisdom
execute as @a run function skyblock:stats/foraging_wisdom
execute as @a run function skyblock:stats/mining_fortune
execute as @a run function skyblock:stats/mining_wisdom
execute as @a run function skyblock:stats/combat_wisdom
execute as @a run function skyblock:stats/pristine


execute as @a[advancements={skyblock:accessories/magnetic_talisman=true}] at @s run tp @e[type=item,distance=0..3] ~ ~ ~

#Hub Island fishing locations
execute as @a at @s if entity @e[tag=tia_the_fairy,distance=0..40] run tag @s add FairyPond
execute as @a at @s unless entity @e[tag=tia_the_fairy,distance=0..40] run tag @s remove FairyPond
execute as @a at @s if entity @e[tag=fisherman,distance=0..40] run tag @s add FishermansHut
execute as @a at @s unless entity @e[tag=fisherman,distance=0..40] run tag @s remove FishermansHut


#Potions
execute as @a run function skyblock:alchemy/active_effects


execute as @a if predicate skyblock:time/seconds/4 run function skyblock:tick4s


#Campfire Badge
effect give @a[advancements={skyblock:accessories/campfire_cultist_badge=true},predicate=skyblock:on_fire] instant_health 1 0
effect give @a[advancements={skyblock:accessories/campfire_god_badge=true},predicate=skyblock:on_fire] instant_health 1 1

execute as @a[advancements={skyblock:accessories/campfire_adept_badge=true},predicate=skyblock:on_fire] if predicate skyblock:time/seconds/2 run effect give @s instant_health 1 0
execute as @a[advancements={skyblock:accessories/campfire_scion_badge=true},predicate=skyblock:on_fire] if predicate skyblock:time/seconds/2 run effect give @s instant_health 1 1
execute as @a[advancements={skyblock:accessories/campfire_initiate_badge=true},predicate=skyblock:on_fire] if predicate skyblock:time/seconds/5 run effect give @s instant_health 1 0

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
