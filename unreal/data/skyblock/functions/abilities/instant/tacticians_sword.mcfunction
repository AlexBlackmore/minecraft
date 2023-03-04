execute at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["anvil"]}
item replace entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/blaze=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Blaze set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/blaze=true}] ["",{"text":"BLAZE MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/blaze=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/cave_spider=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.CaveSpider set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/cave_spider=true}] ["",{"text":"CAVE SPIDER MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/cave_spider=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/creeper=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Creeper set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/creeper=true}] ["",{"text":"CREEPER MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/creeper=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/enderman=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Enderman set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/enderman=true}] ["",{"text":"ENDERMAN MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/enderman=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/ghast=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Ghast set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/ghast=true}] ["",{"text":"GHAST MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/ghast=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/magma_cube=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.MagmaCube set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/magma_cube=true}] ["",{"text":"MAGMA CUBE MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/magma_cube=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/skeleton=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Skeleton set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/skeleton=true}] ["",{"text":"SKELETON MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/skeleton=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/slime=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Slime set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/slime=true}] ["",{"text":"SLIME MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/slime=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/spider=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Spider set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/spider=true}] ["",{"text":"SPIDER MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/spider=true}] add upgrade

execute if entity @s[advancements={skyblock:commands/abilities/tacticians_sword/zombie=true}] run data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Mastery.Zombie set value true
tellraw @s[advancements={skyblock:commands/abilities/tacticians_sword/zombie=true}] ["",{"text":"ZOMBIE MASTERY! ","italic":true,"bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" +3 Attack Damage","color":"blue"}]
tag @s[advancements={skyblock:commands/abilities/tacticians_sword/zombie=true}] add upgrade


playsound minecraft:entity.player.levelup player @s[tag=upgrade]
execute if entity @s[tag=upgrade] as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount
execute if entity @s[tag=upgrade] as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players add @s dummy 3
execute if entity @s[tag=upgrade] as @e[tag=anvil,limit=1,sort=nearest] store result entity @s HandItems[0].tag.AttributeModifiers[{Name:"Attack Damage",Operation:0}].Amount double 1 run scoreboard players get @s dummy


item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
function skyblock:construct_lore

advancement revoke @s only skyblock:abilities/tacticians_sword/blaze
advancement revoke @s only skyblock:abilities/tacticians_sword/cave_spider
advancement revoke @s only skyblock:abilities/tacticians_sword/creeper
advancement revoke @s only skyblock:abilities/tacticians_sword/enderman
advancement revoke @s only skyblock:abilities/tacticians_sword/ghast
advancement revoke @s only skyblock:abilities/tacticians_sword/magma_cube
advancement revoke @s only skyblock:abilities/tacticians_sword/skeleton
advancement revoke @s only skyblock:abilities/tacticians_sword/slime
advancement revoke @s only skyblock:abilities/tacticians_sword/spider
advancement revoke @s only skyblock:abilities/tacticians_sword/zombie
tag @s remove upgrade