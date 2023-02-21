tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=74..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=98..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=132..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=184..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=253..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=351..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 74 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 98 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 132 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 184 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 253 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 351 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats

data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge


data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.09f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.15f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.25f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.40f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.55f
data modify entity @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.75f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -15000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -30000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -60000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -125000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -250000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -500000 points
