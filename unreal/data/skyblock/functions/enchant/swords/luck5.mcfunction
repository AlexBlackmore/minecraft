execute if data entity @p SelectedItem.tag.Luck run tag @p add fail

tag @p[level=0..49] add fail

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


execute unless data entity @s[tag=success] SelectedItem.tag.Name run function skyblock:set_default_items

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
execute unless data entity @s[tag=success] SelectedItem.tag.AttributeModifiers[{Name:"Luck"}] run item modify entity @s[tag=success] weapon.mainhand skyblock:attributes/mainhand/luck
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute as @e[type=armor_stand,tag=anvil] run execute store result score @s luck run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Luck",AttributeName:"minecraft:generic.luck",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil] run scoreboard players add @s luck 5
execute as @e[type=armor_stand,tag=anvil] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.luck",Operation:0}].Amount double 1 run scoreboard players get @s luck

item replace entity @s[tag=success] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]


item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/luck/set_lore
item modify entity @p[tag=success] weapon.mainhand skyblock:enchantments/luck/set_nbt
xp add @p[tag=success] -50 levels

playsound minecraft:block.dispenser.fail player @p[tag=fail]
playsound minecraft:block.enchantment_table.use player @p[tag=success]

tag @p[tag=fail] remove fail
tag @p[tag=success] remove success