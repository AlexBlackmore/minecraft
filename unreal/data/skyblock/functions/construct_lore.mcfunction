execute at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}

item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand


#Duplicate Prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Wise"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Strong"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Superior"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Heavy"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Light"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Perfect"}}]}] run function skyblock:reforging/duplicate_prefixes
execute as @s if entity @e[tag=anvil,limit=1,sort=nearest,nbt={HandItems:[{tag:{Reforge:"Refined"}}]}] run function skyblock:reforging/duplicate_prefixes


#Lore
item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:reset_lore
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Enchantments if data entity @s HandItems[0].tag.Lore run item modify entity @s weapon.mainhand skyblock:lore_spacer
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.display.Lore set from entity @s SelectedItem.tag.Lore

#CustomEnchantments
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.CustomEnchantments run item modify entity @s weapon.mainhand skyblock:lore_spacer
execute as @s run function skyblock:lore/enchantments


#Dye
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:0}}]}] weapon.mainhand skyblock:dyes/set_lore/common
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:1}}]}] weapon.mainhand skyblock:dyes/set_lore/uncommon
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:2}}]}] weapon.mainhand skyblock:dyes/set_lore/rare
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:3}}]}] weapon.mainhand skyblock:dyes/set_lore/epic
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:4}}]}] weapon.mainhand skyblock:dyes/set_lore/legendary
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Dye run item modify entity @s[nbt={HandItems:[{tag:{DyeRarity:5}}]}] weapon.mainhand skyblock:dyes/set_lore/special

#Rune
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:0}}]}] weapon.mainhand skyblock:runecrafting/set_lore/common
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:1}}]}] weapon.mainhand skyblock:runecrafting/set_lore/uncommon
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:2}}]}] weapon.mainhand skyblock:runecrafting/set_lore/rare
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:3}}]}] weapon.mainhand skyblock:runecrafting/set_lore/epic
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:4}}]}] weapon.mainhand skyblock:runecrafting/set_lore/legendary
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.Rune run item modify entity @s[nbt={HandItems:[{tag:{RuneRarity:5}}]}] weapon.mainhand skyblock:runecrafting/set_lore/special

#HotPotatoBooks
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.HotPotatoBooks
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.HotPotatoBooks run item modify entity @s weapon.mainhand skyblock:hot_potato_books/set_lore

#FumingPotatoBooks
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.FumingPotatoBooks
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.FumingPotatoBooks run item modify entity @s weapon.mainhand skyblock:fuming_potato_books/set_lore

#TheArtOfWar
execute as @e[tag=anvil,limit=1,sort=nearest] if data entity @s HandItems[0].tag.TheArtOfWar run item modify entity @s weapon.mainhand skyblock:the_art_of_war/set_lore


item modify entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand skyblock:lore_spacer

#CritChance
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s crit_chance run data get entity @s HandItems[0].tag.CritChance
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeCritChance
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s crit_chance += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_chance=1..}] run item modify entity @s weapon.mainhand skyblock:crit_chance_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_chance=..-1}] run item modify entity @s weapon.mainhand skyblock:crit_chance_negative

#CritDamage
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s crit_damage run data get entity @s HandItems[0].tag.CritDamage
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeCritDamage
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s crit_damage += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_damage=1..}] run item modify entity @s weapon.mainhand skyblock:crit_damage_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={crit_damage=..-1}] run item modify entity @s weapon.mainhand skyblock:crit_damage_negative

#Intelligence
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s intelligence run data get entity @s HandItems[0].tag.Intelligence
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeIntelligence
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s intelligence += @s dummy
execute as @e[tag=anvil,limit=1,sort=nearest,scores={intelligence=1..}] run item modify entity @s weapon.mainhand skyblock:intelligence_positive
execute as @e[tag=anvil,limit=1,sort=nearest,scores={intelligence=..-1}] run item modify entity @s weapon.mainhand skyblock:intelligence_negative

#Ferocity
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s ferocity run data get entity @s HandItems[0].tag.Ferocity
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeFerocity
execute as @e[tag=anvil,limit=1,sort=nearest,scores={ferocity=1..}] run item modify entity @s weapon.mainhand skyblock:ferocity

#Wisdom
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s farming_wisdom run data get entity @s HandItems[0].tag.FarmingWidsom
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeFarmingWidsom
execute as @e[tag=anvil,limit=1,sort=nearest,scores={farming_wisdom=1..}] run item modify entity @s weapon.mainhand skyblock:farming_wisdom

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s foraging_wisdom run data get entity @s HandItems[0].tag.ForagingWisdom
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeForagingWisdom
execute as @e[tag=anvil,limit=1,sort=nearest,scores={foraging_wisdom=1..}] run item modify entity @s weapon.mainhand skyblock:foraging_wisdom

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s mining_wisdom run data get entity @s HandItems[0].tag.MiningWisdom
execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.ReforgeMiningWisdom
execute as @e[tag=anvil,limit=1,sort=nearest,scores={mining_wisdom=1..}] run item modify entity @s weapon.mainhand skyblock:mining_wisdom


item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]
