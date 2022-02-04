execute if data entity @s SelectedItem.tag.The_Art_Of_War run tag @s add fail
tellraw @s[tag=fail] ["",{"text":"The item you are holding already has that upgrade!","color":"red"}]
playsound minecraft:block.anvil.land player @s[tag=fail]

execute unless data entity @s[tag=!fail] SelectedItem.tag.Name run function skyblock:set_default_items

execute at @s[tag=!fail] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s[tag=!fail] weapon.mainhand

execute as @e[type=armor_stand,tag=anvil] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount
execute as @e[type=armor_stand,tag=anvil] run scoreboard players add @s attack_damage 1
execute as @e[type=armor_stand,tag=anvil] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{AttributeName:"minecraft:generic.attack_damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage

item replace entity @s[tag=!fail] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

item modify entity @s[tag=!fail] weapon.mainhand skyblock:reforging/the_art_of_war/set_lore
item modify entity @s[tag=!fail] weapon.mainhand skyblock:reforging/the_art_of_war/set_nbt
item modify entity @s[tag=!fail] weapon.offhand skyblock:subtract_item
xp add @s[tag=!fail] -1 levels

playsound minecraft:block.anvil.use player @s[tag=!fail]

tag @s[tag=fail] remove fail
advancement revoke @s only skyblock:commands/reforging/the_art_of_war