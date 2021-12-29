tag @p[tag=enchant] add fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] remove fail
tellraw @p[tag=enchant,tag=fail] {"text":"<Librarian> The item you are holding cannot support that enchantment!"}

execute if data entity @p[tag=enchant] SelectedItem.tag.Smelting_Touch run tellraw @p[tag=enchant] {"text":"<Librarian> The item you are holding already has that enchantment!"}
execute if data entity @p[tag=enchant] SelectedItem.tag.Smelting_Touch run tag @p[tag=enchant] add fail

execute if entity @p[tag=enchant,level=0..3] run tellraw @p[tag=enchant] {"text":"<Librarian> You don't have enough levels to enchant that item!"}
tag @p[tag=enchant,level=0..3] add fail

item modify entity @p[tag=enchant,tag=!fail] weapon.mainhand skyblock:enchantments/smelting_touch/set_lore
item modify entity @p[tag=enchant,tag=!fail] weapon.mainhand skyblock:enchantments/smelting_touch/set_nbt1
item replace entity @p[tag=enchant,tag=!fail] weapon.offhand with air
xp add @p[tag=enchant,tag=!fail] -4 levels

playsound minecraft:entity.villager.no player @p[tag=enchant,tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=enchant,tag=!fail]

tag @p[tag=fail] remove fail