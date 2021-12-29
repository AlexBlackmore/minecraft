execute unless entity @p[nbt={SelectedItem:{id:"minecraft:bucket"}}] run item replace entity @p[nbt={Inventory:[{Slot:-106b,id:"minecraft:bucket"}]}] weapon.offhand with air
item replace entity @p[nbt={SelectedItem:{id:"minecraft:bucket"}}] weapon.mainhand with air

loot give @p loot skyblock:items/magical_water_bucket

function skyblock:abilities/reset_instant
