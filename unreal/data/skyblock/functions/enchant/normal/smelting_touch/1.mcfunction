execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:smelting_touch"}] run tag @s add fail
execute if data entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:smelting_touch"}] run tellraw @s {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..4] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[level=0..4] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] add success
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] add success

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:shears"}}] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}
item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.CustomEnchantments insert 0 value {id:"skyblock:smelting_touch",lvl:1}
item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]

execute as @s[tag=success] run function skyblock:construct_lore

tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Smelting Touch","color":"blue"},{"text":"!","color":"white"}]
xp add @s[tag=success] -5 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success