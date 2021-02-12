scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 1000
function skyblock:random/range_lcg
execute store result score $EnchantLevel Temp run data get entity @s SelectedItem.tag.Base.Enchantments[{harvesting:{identifier:1b}}].harvesting.bonus_float 10
execute if entity @s[scores={U_WHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
execute if entity @s[scores={U_SHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
execute if entity @s[scores={U_GHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
execute if entity @s[scores={U_IHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
execute if entity @s[scores={U_DHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
execute if entity @s[scores={U_NHoe=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/success
function enchanting:reset_mine_scores