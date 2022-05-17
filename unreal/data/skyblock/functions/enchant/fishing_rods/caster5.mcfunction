execute if data entity @p SelectedItem.tag.Caster run tag @p add fail

tag @p[level=0..49] add fail

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] add success

tag @p[tag=!success] add fail
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/caster/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/caster/set_nbt
xp add @p[tag=success] -50 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success