tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=13..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=19..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=26..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=37..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=48..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=63..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 13 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 19 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 26 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 37 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 48 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 63 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats


data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge

data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.8f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.2f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 1.6f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 2.0f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 2.0f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -250 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -500 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -1000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -2500 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -5000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -10000 points
