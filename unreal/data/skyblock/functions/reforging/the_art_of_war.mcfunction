execute unless data entity @s SelectedItem.tag.TheArtOfWar run tag @s add success
tellraw @s[tag=!success] {"text":"This item already has the max level of that upgrade!","color":"red"}


execute as @s[tag=success] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @s[tag=success] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/mainhand/attack_damage

item modify entity @s[tag=success] weapon.mainhand skyblock:the_art_of_war/set_nbt

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["reforge_anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute as @e[type=armor_stand,tag=reforge_anvil,limit=1,sort=nearest] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount
execute as @e[type=armor_stand,tag=reforge_anvil,limit=1,sort=nearest] run scoreboard players add @s attack_damage 1
execute as @e[type=armor_stand,tag=reforge_anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage


item replace entity @s[tag=success] weapon.mainhand from entity @e[type=minecraft:armor_stand,tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=reforge_anvil]

execute as @s[tag=success] run function skyblock:construct_lore
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

playsound minecraft:entity.villager.no player @s[tag=!success]
playsound minecraft:block.anvil.use player @s[tag=success]

advancement revoke @s only skyblock:commands/reforging/the_art_of_war
tag @s remove success