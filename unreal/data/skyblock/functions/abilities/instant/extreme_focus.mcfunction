playsound minecraft:block.enchantment_table.use player @p[predicate=skyblock:end_stone_bow]

execute store result score @p[predicate=skyblock:end_stone_bow] attack_damage run data get entity @p[predicate=skyblock:end_stone_bow] XpLevel
scoreboard players operation @p[predicate=skyblock:end_stone_bow] damage += @p[predicate=skyblock:end_stone_bow] attack_damage

xp set @p[predicate=skyblock:end_stone_bow] 0 levels

function skyblock:abilities/reset_instant