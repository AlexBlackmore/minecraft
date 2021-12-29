tag @p[tag=enchant] add fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:stone_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:golden_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:iron_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] remove fail
tag @p[tag=enchant,tag=fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] remove fail
tellraw @p[tag=enchant,tag=fail] {"text":"<Librarian> The item you are holding cannot support that enchantment!"}

scoreboard objectives add item_level dummy "Item Level"
scoreboard objectives add book_level dummy "Book Level"

execute as @p[tag=enchant] run execute store result score @s item_level run data get entity @s SelectedItem.tag.Thunderbolt
execute as @p[tag=enchant] run execute store result score @s book_level run data get entity @s Inventory[{Slot:-106b}].tag.Thunderbolt

execute as @p[tag=enchant,tag=!fail] run execute if score @s item_level matches 6 run tellraw @s {"text":"<Librarian> The item you are holding already has the maximum level of that enchantment!"}
execute as @p[tag=enchant,tag=!fail] run execute if score @s item_level matches 6 run tag @s add fail

execute as @p[tag=enchant,tag=!fail] run execute if score @s item_level > @s book_level run tellraw @s {"text":"<Librarian> The item you are holding already has a higher level of that enchantment!"}
execute as @p[tag=enchant,tag=!fail] run execute if score @s item_level > @s book_level run tag @s add fail

scoreboard objectives add xp_level dummy "XP Level"
scoreboard objectives add xp_cost dummy "XP Cost"
execute as @p[tag=enchant,tag=!fail] run execute store result score @s xp_level run data get entity @s XpLevel
execute as @p[tag=enchant,tag=!fail] run scoreboard players set @s xp_cost 20
execute as @p[tag=enchant,tag=!fail] run scoreboard players operation @s xp_cost *= @s book_level

execute as @p[tag=enchant,tag=!fail] run execute if score @s xp_cost > @s xp_level run tellraw @s {"text":"<Librarian> You don't have enough levels to enchant that item!"}
execute as @p[tag=enchant,tag=!fail] run execute if score @s xp_cost > @s xp_level run tag @s add fail


item modify entity @p[tag=enchant,tag=!fail,scores={item_level=0}] weapon.mainhand skyblock:enchantments/thunderbolt/set_lore
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=0}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt1
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=1}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt2
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=2}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt3
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=3}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt4
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=4}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt5
item modify entity @p[tag=enchant,tag=!fail,scores={item_level=5}] weapon.mainhand skyblock:enchantments/thunderbolt/set_nbt6
item replace entity @p[tag=enchant,tag=!fail] weapon.offhand with air

xp add @p[tag=enchant,tag=!fail,scores={item_level=0}] -20 levels
xp add @p[tag=enchant,tag=!fail,scores={item_level=1}] -40 levels
xp add @p[tag=enchant,tag=!fail,scores={item_level=2}] -60 levels
xp add @p[tag=enchant,tag=!fail,scores={item_level=3}] -80 levels
xp add @p[tag=enchant,tag=!fail,scores={item_level=4}] -100 levels
xp add @p[tag=enchant,tag=!fail,scores={item_level=5}] -120 levels

playsound minecraft:entity.villager.no player @p[tag=enchant,tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=enchant,tag=!fail]

tag @p[tag=fail] remove fail
scoreboard objectives remove item_level
scoreboard objectives remove book_level
scoreboard objectives remove xp_cost
scoreboard objectives remove xp_level