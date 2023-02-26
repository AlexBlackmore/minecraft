execute store result score @s dummy run data get entity @s[nbt={Inventory:[{Slot:-106b,tag:{Name:"Enchanted Emerald"}}]}] Inventory[{Slot:-106b}].Count
tag @s[scores={dummy=20..}] add success
tellraw @s[tag=!success] ["",{"text":"You do not have enough ","color":"red"},{"text":"Enchanted Emeralds","color":"yellow"},{"text":" in your offhand to start this quest!","color":"red"}]

advancement revoke @s[tag=success] from skyblock:quests/slayer/zombie/tier1

item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item
item modify entity @s[tag=success] weapon.offhand skyblock:subtract_item

advancement grant @s[tag=success] only skyblock:quests/slayer/zombie/tier2
tag @s[tag=success] add Slayer
tag @s[tag=success] add ZombieSlayer

tellraw @s[tag=success] ["",{"text":"SLAYER QUEST STARTED!","bold":true,"color":"dark_purple"}]
tellraw @s[tag=success] ["",{"text":"> ","bold":true,"color":"dark_purple"},{"text":"Slay Zombies in the ","color":"gray"},{"text":"Crypts","color":"aqua"},{"text":" until you summon a ","color":"gray"},{"text":"Revenant Horror","color":"red"},{"text":".","color":"gray"}]

tag @s remove success