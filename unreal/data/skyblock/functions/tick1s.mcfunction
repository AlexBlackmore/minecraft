effect give @a[advancements={skyblock:accessories/campfire_cultist_badge=true},predicate=skyblock:fire] instant_health 1 0
effect give @a[advancements={skyblock:accessories/campfire_god_badge=true},predicate=skyblock:fire] instant_health 1 1

#Every 2 seconds
scoreboard players set @a dummy 40
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a[advancements={skyblock:accessories/campfire_adept_badge=true},predicate=skyblock:fire] if score @s time matches 0 run effect give @s instant_health 1 0
execute as @a[advancements={skyblock:accessories/campfire_scion_badge=true},predicate=skyblock:fire] if score @s time matches 0 run effect give @s instant_health 1 1

#Every 4 seconds
scoreboard players set @a dummy 80
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a if score @s time matches 0 run function skyblock:tick4

#Every 5 seconds
scoreboard players set @a dummy 100
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a[advancements={skyblock:accessories/campfire_initiate_badge=true},predicate=skyblock:fire] if score @s time matches 0 run effect give @s instant_health 1 0

execute as @a run attribute @s minecraft:generic.armor modifier remove 87-88-23-45-4
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Zombie Hat"}}]}] run function skyblock:abilities/ambient/zombie_hat

execute as @a run attribute @s minecraft:generic.max_health modifier remove 37-2-44-27-99
execute as @a run attribute @s minecraft:generic.armor modifier remove 37-38-41-44-43
execute as @a[nbt={Inventory:[{Slot:103b,tag:{Name:"Lantern Helmet"}}]}] run function skyblock:abilities/ambient/lantern_helmet
