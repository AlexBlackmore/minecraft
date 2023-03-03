data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Knockback Resistance"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor Toughness"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Knockback"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.0f
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.0f

data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 0
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 0
data modify entity @e[tag=reforge_anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeIntelligence set value 0

execute as @e[tag=reforge_anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.RepairCost run data modify entity @s HandItems[0].tag.RepairCost set value 0