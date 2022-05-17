execute if data entity @p SelectedItem.tag.Smelting_Touch run tag @p add fail

tag @p[level=0..4] add fail

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] add mainhand

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] add mainhand

tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add mainhand
tag @p[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] add mainhand

tag @p[tag=!success] add fail
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/smelting_touch/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/smelting_touch/set_nbt
xp add @p[tag=success] -5 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success