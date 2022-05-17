execute if data entity @p SelectedItem.tag.Growth run tag @p add fail

tag @p[level=0..49] add fail

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add head
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] add head

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] add chest
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] add chest
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_chestplate"}}] add chest
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] add chest
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] add chest
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] add chest

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] add legs
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] add legs
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_leggings"}}] add legs
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] add legs
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] add legs
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] add legs

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add boots
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add boots
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_boots"}}] add boots
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add boots
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add boots
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add boots

tag @p[tag=!success] add fail
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/growth/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/growth/set_nbt
xp add @p[tag=success] -50 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success