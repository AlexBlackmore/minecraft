tag @p[advancements={skyblock:commands/enchantments/rainbow=true}] add rainbow

execute at @p[tag=rainbow] run tag @e[type=item,nbt={Age:0s},distance=0..5] add wool
execute at @e[tag=wool] run loot spawn ~ ~ ~ loot skyblock:rainbow
kill @e[tag=wool]

advancement revoke @p[tag=rainbow] only skyblock:commands/enchantments/rainbow
tag @p[tag=rainbow] remove rainbow