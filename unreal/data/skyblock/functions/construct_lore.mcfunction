execute at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}

item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:reset_lore
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Enchantments if data entity @s HandItems[0].tag.Lore run item modify entity @s weapon.mainhand skyblock:lore_spacer
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.display.Lore set from entity @s SelectedItem.tag.Lore

execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.CustomEnchantments run item modify entity @s weapon.mainhand skyblock:lore_spacer
execute as @s run function skyblock:lore/enchantments

execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s weapon.mainhand skyblock:runecrafting/set_lore


item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:lore_spacer

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s intelligence run data get entity @s HandItems[0].tag.Intelligence
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeIntelligence
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s intelligence += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={intelligence=1..}] run item modify entity @s weapon.mainhand skyblock:intelligence_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={intelligence=..-1}] run item modify entity @s weapon.mainhand skyblock:intelligence_negative

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s crit_chance run data get entity @s HandItems[0].tag.CritChance
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeCritChance
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s crit_chance += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_chance=1..}] run item modify entity @s weapon.mainhand skyblock:crit_chance_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_chance=..-1}] run item modify entity @s weapon.mainhand skyblock:crit_chance_negative

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s crit_damage run data get entity @s HandItems[0].tag.CritDamage
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeCritDamage
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s crit_damage += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_damage=1..}] run item modify entity @s weapon.mainhand skyblock:crit_damage_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_damage=..-1}] run item modify entity @s weapon.mainhand skyblock:crit_damage_negative


item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]
