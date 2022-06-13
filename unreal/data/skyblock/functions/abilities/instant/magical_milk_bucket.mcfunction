tag @s[nbt={SelectedItem:{id:"minecraft:bucket"}}] add mainhand
tag @s[tag=!mainhand,nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] add offhand 


tag @s[tag=mainhand] remove mainhand
tag @s[tag=offhand] remove offhand

execute if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run say hi

advancement revoke @s only skyblock:commands/abilities/magical_milk_bucket