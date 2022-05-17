execute if data entity @p SelectedItem.tag.Triple_Strike run tag @p add fail

tag @p[level=0..39] add fail

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_sword"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_sword"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] add success

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add success
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] add success

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:trident"}}] add success

tag @p[tag=!success] add fail
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/triple_strike/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/triple_strike/set_nbt
xp add @p[tag=success] -40 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success