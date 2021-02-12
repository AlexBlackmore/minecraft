scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg
execute store result score $EnchantLevel Temp run data get entity @s SelectedItem.tag.Base.Enchantments[{fortune:{identifier:1b}}].fortune.bonus
execute if entity @s[scores={U_WPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
execute if entity @s[scores={U_SPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
execute if entity @s[scores={U_GPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
execute if entity @s[scores={U_IPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
execute if entity @s[scores={U_DPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
execute if entity @s[scores={U_NPick=1..}] if score out RandMath <= $EnchantLevel Temp as @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/success
function enchanting:reset_mine_scores