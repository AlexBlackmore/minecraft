execute at @s run summon armor_stand ~ ~ ~ {Invisible:true,Tags:["brewing_stand"]}

item replace entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=brewing_stand,limit=1,sort=nearest] HandItems[0].tag.display.Lore[] set value ""

execute as @s run function skyblock:lore/potions

item replace entity @s weapon.mainhand from entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=brewing_stand]
