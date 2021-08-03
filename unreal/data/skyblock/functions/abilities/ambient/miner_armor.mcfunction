attribute @p minecraft:generic.armor modifier remove 55-42-1-51-61
attribute @p minecraft:generic.armor modifier remove 25-79-2-59-13
attribute @p minecraft:generic.armor modifier remove 40-100-49-59-22
attribute @p minecraft:generic.armor modifier remove 24-30-54-73-89

attribute @p[advancements={skyblock:commands/ambient/mine_biomes=true},predicate=skyblock:miner_helmet] minecraft:generic.armor modifier add 55-42-1-51-61 "Miner Helmet" 8 add
attribute @p[advancements={skyblock:commands/ambient/mine_biomes=true},predicate=skyblock:miner_chestplate] minecraft:generic.armor modifier add 25-79-2-59-13 "Miner Chestplate" 18 add
attribute @p[advancements={skyblock:commands/ambient/mine_biomes=true},predicate=skyblock:miner_leggings] minecraft:generic.armor modifier add 40-100-49-59-22 "Miner Leggings" 13 add
attribute @p[advancements={skyblock:commands/ambient/mine_biomes=true},predicate=skyblock:miner_boots] minecraft:generic.armor modifier add 24-30-54-73-89 "Miner Boots" 8 add

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/miner_armor=true}] run schedule function skyblock:abilities/ambient/miner_armor 2s replace