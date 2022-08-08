execute as @a store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @a store result score @s knockback_resistance run attribute @s minecraft:generic.knockback_resistance get
execute as @a store result score @s movement_speed run attribute @s minecraft:generic.movement_speed get
execute as @a store result score @s attack_damage run attribute @s minecraft:generic.attack_damage get
execute as @a store result score @s armor run attribute @s minecraft:generic.armor get
execute as @a store result score @s armor_toughness run attribute @s minecraft:generic.armor_toughness get
execute as @a store result score @s attack_knockback run attribute @s minecraft:generic.attack_knockback get

execute as @e[type=!minecraft:armor_stand] unless data entity @s CustomName run function skyblock:set_default_name

scoreboard players set @a dummy 20
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a if score @s time matches 0 run function skyblock:tick1s

scoreboard players set @a dummy 80
execute store result score @a time run time query gametime
scoreboard players operation @a time %= @a dummy
execute as @a if score @s time matches 0 run function skyblock:tick4s

execute store result score @a hour run time query daytime
execute as @a if score @s hour matches 0 run function skyblock:good_morning


execute as @a at @s run tp @e[type=#minecraft:hostile,distance=64..128] ~ ~-256 ~
execute at @e[type=minecraft:villager] run tp @e[type=#minecraft:zombies,distance=0..2] ~ ~-256 ~
execute as @a at @s if entity @e[type=armor_stand,distance=8..16] run function skyblock:summon_mobs

execute as @a[advancements={skyblock:accessories/magnetic_talisman=true}] at @s run tp @e[type=item,distance=0..3] ~ ~ ~

execute as @a[scores={mined_coal_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_deepslate_coal_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_lapis_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_deepslate_lapis_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_redstone_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_deepslate_redstone_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_diamond_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_deepslate_diamond_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_emerald_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_deepslate_emerald_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_quartz_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_nether_gold_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_end_stone=1..}] run function skyblock:bonus_mining_xp
execute as @a[scores={mined_stone=1..}] run function skyblock:mineral_armor