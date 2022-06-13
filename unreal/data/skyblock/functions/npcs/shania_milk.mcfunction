tag @s[nbt={SelectedItem:{id:"minecraft:milk_bucket"}}] add mainhand
tag @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] add mainhand

tag @s[tag=!mainhand,nbt={Inventory:[{Slot:-106b,id:"minecraft:milk_bucket"}]}] add offhand 
tag @s[tag=!mainhand,nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] add offhand 

item modify entity @s[tag=mainhand] weapon.mainhand skyblock:subtract_item
item modify entity @s[tag=offhand] weapon.offhand skyblock:subtract_item

loot give @s[tag=mainhand] loot skyblock:items/magical_milk_bucket
loot give @s[tag=offhand] loot skyblock:items/magical_milk_bucket

tellraw @s[nbt={SelectedItem:{tag:{Name:"Magical Milk Bucket"}}}] ":)"

tag @s[tag=mainhand] remove mainhand
tag @s[tag=offhand] remove offhand

playsound minecraft:entity.cow.hurt player @s
advancement revoke @s only skyblock:commands/npcs/shania_milk
