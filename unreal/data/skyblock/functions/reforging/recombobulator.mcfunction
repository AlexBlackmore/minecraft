execute unless data entity @s SelectedItem.tag.Recombobulated unless entity @s[nbt={SelectedItem:{tag:{Rarity:5}}}] run tag @s add success
tellraw @s[tag=!success] {"text":"This item already has the max level of that upgrade!","color":"red"}


execute as @s[tag=success] unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items

item modify entity @s[tag=success] weapon.mainhand skyblock:recombobulator/set_nbt

execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["reforge_anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=reforge_anvil,limit=1,sort=nearest] weapon.mainhand from entity @s[tag=success] weapon.mainhand

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


advancement revoke @s only skyblock:commands/reforging/recombobulator
tag @s remove success
tag @s remove free