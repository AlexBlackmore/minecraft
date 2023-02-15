tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=7..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=13..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=19..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=26..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=37..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=48..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=0..6] {"text":"You need at least 7 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=0..12] {"text":"You need at least 13 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=0..18] {"text":"You need at least 19 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=0..25] {"text":"You need at least 26 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=0..36] {"text":"You need at least 37 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=0..47] {"text":"You need at least 48 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success


data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Knockback Resistance"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor Toughness"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Knockback"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.0f
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.0f

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeCritChance set value 0
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeCritDamage set value 0
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeIntelligence set value 0

execute as @e[tag=success,tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.RepairCost run data modify entity @s HandItems[0].tag.RepairCost set value 0


data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge
data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.6f

data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.6f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.8f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.4f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.8f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.8f

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.ReforgeIntelligence set value 1


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -100 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -250 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -500 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -1000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -2500 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -5000 points


