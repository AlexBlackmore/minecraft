execute unless data entity @s SelectedItem.tag.Thick run tag @s add success
tellraw @s[tag=!success] {"text":"This item already has the max level of that upgrade!","color":"red"}


execute as @s[tag=success] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute as @s[tag=success] unless data entity @s SelectedItem.tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}] run item modify entity @s weapon.mainhand skyblock:attributes/mainhand/attack_damage

item modify entity @s[tag=success] weapon.mainhand skyblock:wood_singularity/set_nbt

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["reforge_anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result score @s attack_damage run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run scoreboard players add @s attack_damage 20
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount double 1 run scoreboard players get @s attack_damage

execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result score @s dummy run data get entity @s HandItems[0].tag.Rarity
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run scoreboard players add @s dummy 1
execute as @e[tag=reforge_anvil,limit=1,sort=nearest] run execute store result entity @s HandItems[0].tag.Rarity int 1 run scoreboard players get @s dummy


item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=reforge_anvil]

item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item


tag @s[tag=success] add free
execute if data entity @s[tag=success] SelectedItem.tag.Reforge run advancement grant @s only skyblock:commands/reforging/reforge_stones/swords
execute as @s[tag=success] unless data entity @s SelectedItem.tag.Reforge run function skyblock:construct_lore

playsound minecraft:entity.villager.no player @s[tag=!success]
execute as @s[tag=success] unless data entity @s SelectedItem.tag.Reforge run playsound minecraft:block.anvil.use player @s


advancement revoke @s only skyblock:commands/reforging/wood_singularity
tag @s remove success
tag @s remove free