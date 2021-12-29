tag @p[tag=enchant] add fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:shears"}}] remove fail
tellraw @p[tag=enchant,tag=fail] {"text":"<Librarian> The item you are holding cannot support that enchantment!"}

execute if data entity @p[tag=enchant] SelectedItem.tag.Rainbow run tellraw @p[tag=enchant] {"text":"<Librarian> The item you are holding already has that enchantment!"}
execute if data entity @p[tag=enchant] SelectedItem.tag.Rainbow run tag @p[tag=enchant] add fail

execute if entity @p[tag=enchant,level=0..3] run tellraw @p[tag=enchant] {"text":"<Librarian> You don't have enough levels to enchant that item!"}
tag @p[tag=enchant,level=0..3] add fail

item modify entity @p[tag=enchant,tag=!fail] weapon.mainhand skyblock:enchantments/rainbow/set_lore
item modify entity @p[tag=enchant,tag=!fail] weapon.mainhand skyblock:enchantments/rainbow/set_nbt1
item replace entity @p[tag=enchant,tag=!fail] weapon.offhand with air
xp add @p[tag=enchant,tag=!fail] -4 levels

playsound minecraft:entity.villager.no player @p[tag=enchant,tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=enchant,tag=!fail]

tag @p[tag=fail] remove fail