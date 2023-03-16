tag @s[level=63..] add success

tellraw @s[tag=!success] {"text":"You need at least 63 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=reforge_anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats


data modify entity @e[tag=success,tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge

data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.05f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.07f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.09f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.13f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.16f
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.20f

data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 5
data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 7
data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 9
data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 13
data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 16
data modify entity @e[tag=success,tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingFortune set value 20

data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 1
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 2
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 3
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 4
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 5
data modify entity @e[tag=reforge_anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.ReforgeFarmingWisdom set value 6


xp add @s[tag=!free,tag=success] -10000 points