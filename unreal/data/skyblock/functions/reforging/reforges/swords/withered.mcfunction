tag @s[nbt={SelectedItem:{tag:{Rarity:0}}},level=63..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:1}}},level=83..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:2}}},level=98..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:3}}},level=111..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:4}}},level=122..] add success
tag @s[nbt={SelectedItem:{tag:{Rarity:5}}},level=132..] add success

tellraw @s[nbt={SelectedItem:{tag:{Rarity:0}}},tag=!success] {"text":"You need at least 63 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:1}}},tag=!success] {"text":"You need at least 83 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:2}}},tag=!success] {"text":"You need at least 98 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:3}}},tag=!success] {"text":"You need at least 111 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:4}}},tag=!success] {"text":"You need at least 122 levels to apply this reforge!","color":"red"}
tellraw @s[nbt={SelectedItem:{tag:{Rarity:5}}},tag=!success] {"text":"You need at least 132 levels to apply this reforge!","color":"red"}

execute if entity @s[tag=success] run tag @e[tag=anvil,limit=1,sort=nearest] add success

execute as @s[tag=success] run function skyblock:reforging/reset_reforge_stats


data modify entity @e[tag=success,tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge set from entity @s[tag=success] Inventory[{Slot:-106b}].tag.Reforge

data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 12.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 15.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 18.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 22.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 27.0f
data modify entity @e[tag=success,tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 34.0f


xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:0}}}] -10000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:1}}}] -20000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:2}}}] -30000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:3}}}] -40000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:4}}}] -50000 points
xp add @s[tag=success,nbt={SelectedItem:{tag:{Rarity:5}}}] -60000 points