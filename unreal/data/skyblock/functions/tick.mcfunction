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


execute at @e[type=minecraft:villager] run tp @e[type=#minecraft:zombies,distance=0..2] ~ ~-256 ~
execute as @a if entity @e[type=pig,tag=Spawner] run function skyblock:summon_mobs


#Bonus XP
tag @a[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}}] add silk_touch

execute as @a[tag=!silk_touch,scores={mined_coal_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_deepslate_coal_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_lapis_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_deepslate_lapis_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_redstone_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_deepslate_redstone_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_diamond_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_deepslate_diamond_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_emerald_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_deepslate_emerald_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_quartz_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_nether_gold_ore=1..}] run function skyblock:bonus_mining_xp
execute as @a[tag=!silk_touch,scores={mined_end_stone=1..}] run function skyblock:bonus_mining_xp

tag @a[tag=silk_touch] remove silk_touch


#Potions
execute as @a run function skyblock:alchemy/active_effects

#Runes
execute as @a if data entity @s Inventory[{Slot:100b}].tag.Rune run function skyblock:runecrafting/boot
execute as @a if data entity @s Inventory[{Slot:102b}].tag.Rune run function skyblock:runecrafting/chestplate
execute if entity @e[type=#minecraft:arrows,tag=rune] run function skyblock:runecrafting/bow