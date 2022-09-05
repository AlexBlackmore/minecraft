scoreboard objectives add multiplier dummy "Multiplier"

scoreboard players set @s multiplier 0

execute if predicate skyblock:random_chance/50 run scoreboard players add @s[nbt={Inventory:[{Slot:103b,tag:{Name:"Lapis Armor Helmet"}}]}] multiplier 1
execute if predicate skyblock:random_chance/50 run scoreboard players add @s[nbt={Inventory:[{Slot:102b,tag:{Name:"Lapis Armor Chestplate"}}]}] multiplier 1
execute if predicate skyblock:random_chance/50 run scoreboard players add @s[nbt={Inventory:[{Slot:101b,tag:{Name:"Lapis Armor Leggings"}}]}] multiplier 1
execute if predicate skyblock:random_chance/50 run scoreboard players add @s[nbt={Inventory:[{Slot:100b,tag:{Name:"Lapis Armor Boots"}}]}] multiplier 1

execute if predicate skyblock:random_chance/25 run scoreboard players add @s[nbt={Inventory:[{tag:{Name:"Experience Artifact"}}]}] multiplier 1

execute if predicate skyblock:random_chance/12 run scoreboard players add @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"skyblock:experience",lvl:1}]}}}] multiplier 1
execute if predicate skyblock:random_chance/25 run scoreboard players add @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"skyblock:experience",lvl:2}]}}}] multiplier 1
execute if predicate skyblock:random_chance/37 run scoreboard players add @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"skyblock:experience",lvl:3}]}}}] multiplier 1
execute if predicate skyblock:random_chance/50 run scoreboard players add @s[nbt={SelectedItem:{tag:{CustomEnchantments:[{id:"skyblock:experience",lvl:4}]}}}] multiplier 1

execute if predicate skyblock:random_chance/10 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:0}}}] multiplier 1
execute if predicate skyblock:random_chance/12 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:1}}}] multiplier 1
execute if predicate skyblock:random_chance/14 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:2}}}] multiplier 1
execute if predicate skyblock:random_chance/16 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:3}}}] multiplier 1
execute if predicate skyblock:random_chance/18 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:4}}}] multiplier 1
execute if predicate skyblock:random_chance/24 run scoreboard players add @s[nbt={SelectedItem:{tag:{Reforge:"Magnetic",Rarity:5}}}] multiplier 1

execute if predicate skyblock:random_chance/5 run scoreboard players add @s[advancements={skyblock:effects/experience=true},scores={experience_amplifier=0}] multiplier 1
execute if predicate skyblock:random_chance/10 run scoreboard players add @s[advancements={skyblock:effects/experience=true},scores={experience_amplifier=1}] multiplier 1
execute if predicate skyblock:random_chance/15 run scoreboard players add @s[advancements={skyblock:effects/experience=true},scores={experience_amplifier=2}] multiplier 1
execute if predicate skyblock:random_chance/20 run scoreboard players add @s[advancements={skyblock:effects/experience=true},scores={experience_amplifier=3}] multiplier 1

execute if predicate skyblock:random_chance/1 run scoreboard players add @s[tag=bitter_iced_tea_experience] multiplier 1
execute if predicate skyblock:random_chance/2 run scoreboard players add @s[tag=bitter_iced_tea_experience] multiplier 1
execute if predicate skyblock:random_chance/3 run scoreboard players add @s[tag=bitter_iced_tea_experience] multiplier 1
execute if predicate skyblock:random_chance/4 run scoreboard players add @s[tag=bitter_iced_tea_experience] multiplier 1

execute if predicate skyblock:random_chance/20 run scoreboard players add @s[tag=vikings_tear] multiplier 1


scoreboard objectives add points dummy "Points"
execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @s points run data get entity @e[limit=1,tag=rng] UUID[0]

scoreboard players set @s[scores={mined_coal_ore=1..}] dummy 3
scoreboard players set @s[scores={mined_deepslate_coal_ore=1..}] dummy 3
scoreboard players set @s[scores={mined_lapis_ore=1..}] dummy 4
scoreboard players set @s[scores={mined_deepslate_lapis_ore=1..}] dummy 4
scoreboard players set @s[scores={mined_redstone_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_deepslate_redstone_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_diamond_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_deepslate_diamond_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_emerald_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_deepslate_emerald_ore=1..}] dummy 5
scoreboard players set @s[scores={mined_quartz_ore=1..}] dummy 4
scoreboard players set @s[scores={mined_nether_gold_ore=1..}] dummy 2
scoreboard players set @s[scores={mined_end_stone=1..}] dummy 1

scoreboard players operation @s points %= @s dummy

scoreboard players add @s[scores={mined_diamond_ore=1..}] points 3
scoreboard players add @s[scores={mined_deepslate_diamond_ore=1..}] points 3
scoreboard players add @s[scores={mined_emerald_ore=1..}] points 3
scoreboard players add @s[scores={mined_deepslate_emerald_ore=1..}] points 3
scoreboard players add @s[scores={mined_lapis_ore=1..}] points 2
scoreboard players add @s[scores={mined_deepslate_lapis_ore=1..}] points 2
scoreboard players add @s[scores={mined_quartz_ore=1..}] points 2
scoreboard players add @s[scores={mined_redstone_ore=1..}] points 1
scoreboard players add @s[scores={mined_deepslate_redstone_ore=1..}] points 1
scoreboard players add @s[scores={mined_end_stone=1..}] points 1

scoreboard players operation @s points *= @s multiplier

tellraw @s[scores={points=1..}] ["",{"text":"[@: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"points"},"italic":true,"color":"gray"},{"text":" bonus XP]","italic":true,"color":"gray"}]
execute as @s run function skyblock:dynamic_xp

scoreboard players set @s mined_coal_ore 0
scoreboard players set @s mined_deepslate_coal_ore 0
scoreboard players set @s mined_lapis_ore 0
scoreboard players set @s mined_deepslate_lapis_ore 0
scoreboard players set @s mined_redstone_ore 0
scoreboard players set @s mined_deepslate_redstone_ore 0
scoreboard players set @s mined_diamond_ore 0
scoreboard players set @s mined_deepslate_diamond_ore 0
scoreboard players set @s mined_emerald_ore 0
scoreboard players set @s mined_deepslate_emerald_ore 0
scoreboard players set @s mined_quartz_ore 0
scoreboard players set @s mined_nether_gold_ore 0
scoreboard players set @s mined_end_stone 0
scoreboard players set @s mined_stone 0

scoreboard objectives remove points
scoreboard objectives remove multiplier