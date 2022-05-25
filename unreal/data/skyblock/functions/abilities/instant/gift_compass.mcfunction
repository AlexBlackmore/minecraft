item replace entity @s weapon.mainhand from entity @e[tag=white_gift,limit=1,sort=nearest] weapon.mainhand
item replace entity @e[tag=white_gift,limit=1,sort=nearest] weapon.mainhand with air

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute store result score @s x run data get entity @s SelectedItem.tag.LodestonePos.X
execute store result score @s y run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score @s z run data get entity @s SelectedItem.tag.LodestonePos.Z

execute at @s as @e[tag=white_gift,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0]
execute at @s as @e[tag=white_gift,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1]
execute at @s as @e[tag=white_gift,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2]

#tellraw @s ["",{"text":"[@: X:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"x"},"italic":true,"color":"gray"},{"text":", Y:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"y"},"italic":true,"color":"gray"},{"text":", Z:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"z"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]
#execute as @e[tag=white_gift,limit=1,sort=nearest] run tellraw @p ["",{"text":"[@: X:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"x"},"italic":true,"color":"gray"},{"text":", Y:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"y"},"italic":true,"color":"gray"},{"text":", Z:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"z"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]


execute if score @s x = @e[tag=white_gift,limit=1,sort=nearest] x run tag @s add x
execute if score @s y = @e[tag=white_gift,limit=1,sort=nearest] y run tag @s add y
execute if score @s z = @e[tag=white_gift,limit=1,sort=nearest] z run tag @s add z
tag @s[tag=x,tag=y,tag=z] add success
playsound minecraft:entity.villager.no player @s[tag=!success]

loot give @s[tag=success] loot skyblock:items/gifts/white
execute if entity @s[tag=success] at @e[tag=white_gift,limit=1,sort=nearest] run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{Count:1,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;16733525],Type:0}]}}}} 

execute if entity @s[tag=success] run tag @e[tag=white_gift,limit=1,sort=random] add next
execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[tag=anvil] weapon.mainhand from entity @s[tag=success] weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.X set from entity @e[tag=next,limit=1,sort=nearest] Pos[0]
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.Y set from entity @e[tag=next,limit=1,sort=nearest] Pos[1]
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.Z set from entity @e[tag=next,limit=1,sort=nearest] Pos[2]

item replace entity @s[tag=success] weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[tag=anvil]


scoreboard objectives remove x
scoreboard objectives remove y
scoreboard objectives remove z

tag @s[tag=success] remove success
tag @s[tag=x] remove x
tag @s[tag=y] remove y
tag @s[tag=z] remove z
tag @e[tag=next] remove next

advancement revoke @s only skyblock:commands/abilities/gift_compass