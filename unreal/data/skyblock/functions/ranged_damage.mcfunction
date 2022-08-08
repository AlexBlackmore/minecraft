#Arrows
execute if entity @s[advancements={skyblock:commands/abilities/bouncy=true}] run function skyblock:abilities/instant/bouncy
advancement revoke @s only skyblock:commands/abilities/bouncy

execute if entity @s[advancements={skyblock:commands/abilities/icy_arrow=true}] run effect give @e[tag=target] slowness 3
advancement revoke @s only skyblock:commands/abilities/icy_arrow

execute if entity @s[advancements={skyblock:commands/abilities/armorshed_arrow=true}] run effect give @e[tag=target] weakness 30
advancement revoke @s only skyblock:commands/abilities/armorshed_arrow

execute if entity @s[advancements={skyblock:commands/abilities/glue_arrow=true}] run effect give @e[tag=target] slowness 2 6
advancement revoke @s only skyblock:commands/abilities/glue_arrow


#Enchantments
execute store result score @s dummy run data get entity @s SelectedItem.tag.Cubism 10
scoreboard players operation @e[tag=target,type=#minecraft:cubes] multiplier += @s dummy

execute store result score @s dummy run data get entity @s SelectedItem.tag.Dragon_Hunter 8
scoreboard players operation @e[tag=target,type=minecraft:ender_dragon] multiplier += @s dummy

execute store result score @s dummy run data get entity @s SelectedItem.tag.Smoldering 3
scoreboard players operation @e[tag=target,type=minecraft:blaze] multiplier += @p[tag=attacker] dummy


#Bows
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Wither Bow"}}}] as @e[tag=target,type=#minecraft:wither] run scoreboard players add @s multiplier 100

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Savanna Bow"}}}] as @e[tag=target] run scoreboard players add @s multiplier 100

execute as @s[nbt={SelectedItem:{tag:{Name:"Prismarine Bow"}},Inventory:[{Slot:-106b,id:"minecraft:prismarine_shard"}]}] run function skyblock:abilities/instant/prismarine_bow

execute as @e[tag=target,type=#minecraft:undead] if entity @s[nbt={SelectedItem:{tag:{Name:"Undead Bow"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#minecraft:undead] if entity @s[nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}}] run scoreboard players add @s multiplier 100
execute as @e[tag=target,type=#minecraft:undead] if entity @s[nbt={SelectedItem:{tag:{Name:"Death Bow"}}}] run scoreboard players add @s multiplier 100

execute if entity @s[nbt={SelectedItem:{tag:{Name:"Super Undead Bow"}}},predicate=skyblock:random_chance25] run function skyblock:abilities/instant/bouncy
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy
execute if entity @s[nbt={SelectedItem:{tag:{Name:"Death Bow"}}},predicate=skyblock:random_chance50] run function skyblock:abilities/instant/bouncy

execute as @s[nbt={SelectedItem:{tag:{Name:"Magma Bow"}},Inventory:[{Slot:-106b,id:"minecraft:magma_cream"}]}] run function skyblock:abilities/instant/magma_bow

execute as @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] run scoreboard players add @s multiplier 100

execute as @s[nbt={SelectedItem:{tag:{Name:"Slime Bow"}},Inventory:[{Slot:-106b,id:"minecraft:slime_ball"}]}] run function skyblock:abilities/instant/slime_bow

execute as @e[tag=target,type=#minecraft:undead] if entity @s[nbt={SelectedItem:{tag:{Name:"Spirit Bow"}}}] run function skyblock:abilities/instant/spirit_damage


#Armor
execute as @s[nbt={Inventory:[{Slot:103b,tag:{Name:"Skeleton Hat"}}]},predicate=skyblock:random_chance20] run function skyblock:abilities/instant/skeleton_hat
