execute as @s unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @s unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute store result score @s dummy run data get entity @s SelectedItem.tag.CustomEnchantments[{id:"skyblock:growth"}].lvl
tellraw @s[scores={dummy=5..}] {"text":"This item already has a higher level of that enchantment!","color":"red"}
tellraw @s[level=0..49] {"text":"You don't have enough Experience Levels to apply that enchantment!","color":"red"}
tag @s[scores={dummy=5..}] add fail
tag @s[level=0..49] add fail

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:player_head",tag:{Unbreakable:1b}}}] add head

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_helmet"}}] add head
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] add head

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_chestplate"}}] add chest
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_chestplate"}}] add chest
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_chestplate"}}] add chest
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_chestplate"}}] add chest
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_chestplate"}}] add chest
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] add chest

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_leggings"}}] add legs
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_leggings"}}] add legs
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_leggings"}}] add legs
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_leggings"}}] add legs
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_leggings"}}] add legs
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] add legs

tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:leather_boots"}}] add feet
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:chainmail_boots"}}] add feet
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:golden_boots"}}] add feet
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:iron_boots"}}] add feet
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:diamond_boots"}}] add feet
tag @s[tag=!fail,nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] add feet

tag @s[tag=!fail,tag=head] add success
tag @s[tag=!fail,tag=chest] add success
tag @s[tag=!fail,tag=legs] add success
tag @s[tag=!fail,tag=feet] add success

tellraw @s[tag=!success,tag=!fail] {"text":"This item cannot support that enchantment!","color":"red"}
tag @s[tag=!success] add fail


execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}
item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand


scoreboard objectives add growth dummy "Growth"
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s growth run data get entity @s HandItems[0].tag.CustomEnchantments[{id:"skyblock:growth"}].lvl
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 3
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s growth *= @s dummy
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 15
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s dummy -= @s growth

execute unless data entity @s[tag=head] SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:attributes/head/max_health
execute unless data entity @s[tag=chest] SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:attributes/chest/max_health
execute unless data entity @s[tag=legs] SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:attributes/legs/max_health
execute unless data entity @s[tag=feet] SelectedItem.tag.AttributeModifiers[{Name:"Max Health",Operation:0}] run item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:attributes/feet/max_health


execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s growth run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Max Health",Operation:0}].Amount
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s growth += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Max Health",Operation:0}].Amount double 1 run scoreboard players get @s growth

execute as @e[tag=anvil,limit=1,sort=nearest] unless data entity @s HandItems[0].tag.CustomEnchantments[{id:"skyblock:growth"}] run data modify entity @s HandItems[0].tag.CustomEnchantments insert 0 value {id:"skyblock:growth",lvl:5}
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.CustomEnchantments[{id:"skyblock:growth"}] run data modify entity @s HandItems[0].tag.CustomEnchantments[{id:"skyblock:growth"}].lvl set value 5


item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]

execute as @s[tag=success] run function skyblock:construct_lore

tellraw @s[tag=success] ["",{"text":"You enchanted your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" with "},{"text":"Growth V","color":"blue"},{"text":"!","color":"white"}]
xp add @s[tag=success] -50 levels

playsound minecraft:entity.enderman.teleport player @s[tag=fail]
playsound minecraft:entity.player.levelup player @s[tag=success]

tag @s[tag=fail] remove fail
tag @s[tag=success] remove success
scoreboard objectives remove growth