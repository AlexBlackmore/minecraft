execute if data entity @p SelectedItem.tag.Chance run tag @p add fail

tag @p[level=0..44] add fail

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:bow"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:crossbow"}}] add success

tag @p[tag=!success] add fail
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/chance/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/chance/set_nbt
xp add @p[tag=success] -45 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success