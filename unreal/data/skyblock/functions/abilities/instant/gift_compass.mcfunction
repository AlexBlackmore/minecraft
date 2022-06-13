item replace entity @s[advancements={skyblock:commands/npcs/st_jerry=false}] weapon.mainhand from entity @e[tag=WhiteGift,limit=1,sort=nearest] weapon.mainhand
item replace entity @e[tag=WhiteGift,limit=1,sort=nearest] weapon.mainhand with air

scoreboard objectives add x dummy "X"
scoreboard objectives add y dummy "Y"
scoreboard objectives add z dummy "Z"

execute store result score @s x run data get entity @s SelectedItem.tag.LodestonePos.X
execute store result score @s y run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score @s z run data get entity @s SelectedItem.tag.LodestonePos.Z

execute at @s as @e[tag=WhiteGift,limit=1,sort=nearest] store result score @s x run data get entity @s Pos[0]
execute at @s as @e[tag=WhiteGift,limit=1,sort=nearest] store result score @s y run data get entity @s Pos[1]
execute at @s as @e[tag=WhiteGift,limit=1,sort=nearest] store result score @s z run data get entity @s Pos[2]

#tellraw @s ["",{"text":"[@: X:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"x"},"italic":true,"color":"gray"},{"text":", Y:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"y"},"italic":true,"color":"gray"},{"text":", Z:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"z"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]
#execute as @e[tag=WhiteGift,limit=1,sort=nearest] run tellraw @p ["",{"text":"[@: X:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"x"},"italic":true,"color":"gray"},{"text":", Y:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"y"},"italic":true,"color":"gray"},{"text":", Z:","italic":true,"color":"gray"},{"score":{"name":"*","objective":"z"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]


execute if score @s x = @e[tag=WhiteGift,limit=1,sort=nearest] x run tag @s add x
execute if score @s y = @e[tag=WhiteGift,limit=1,sort=nearest] y run tag @s add y
execute if score @s z = @e[tag=WhiteGift,limit=1,sort=nearest] z run tag @s add z
tag @s[tag=x,tag=y,tag=z] add success
playsound minecraft:entity.villager.no player @s[tag=!success]

loot give @s[tag=success] loot skyblock:items/gifts/white
execute if entity @s[tag=success] at @e[tag=WhiteGift,limit=1,sort=nearest] run summon minecraft:firework_rocket ~ ~0.5 ~ {FireworksItem:{Count:1,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;16733525],Type:0}]}}}} 

tag @s[advancements={skyblock:commands/npcs/st_jerry=true}] add success

execute if entity @s[tag=success] run tag @e[tag=WhiteGift,limit=1,sort=random,distance=5..] add next
execute as @e[tag=WhiteGift,tag=!next] run data modify entity @s DisabledSlots set value 63
data modify entity @e[tag=next,limit=1,sort=nearest] DisabledSlots set value 62
execute at @s[tag=success] run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[tag=anvil] weapon.mainhand from entity @s[tag=success] weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.X set from entity @e[tag=next,limit=1,sort=nearest] Pos[0]
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.Y set from entity @e[tag=next,limit=1,sort=nearest] Pos[1]
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.LodestonePos.Z set from entity @e[tag=next,limit=1,sort=nearest] Pos[2]

execute as @e[tag=anvil,limit=1,sort=nearest] store result score @s dummy run data get entity @s HandItems[0].tag.Uses
scoreboard players remove @e[tag=anvil,limit=1,sort=nearest] dummy 1 
execute as @e[tag=anvil,limit=1,sort=nearest] store result entity @s HandItems[0].tag.Uses int 1 run scoreboard players get @s dummy

data modify entity @e[tag=anvil,limit=1,sort=nearest,scores={dummy=0}] HandItems[0].tag.LodestonePos.X set value -23
data modify entity @e[tag=anvil,limit=1,sort=nearest,scores={dummy=0}] HandItems[0].tag.LodestonePos.Y set value 76
data modify entity @e[tag=anvil,limit=1,sort=nearest,scores={dummy=0}] HandItems[0].tag.LodestonePos.Z set value 92

tellraw @s[tag=success] ["",{"text":"You found a White Gift! ","color":"white"},{"text":"(","color":"gray"},{"score":{"name":"@e[tag=anvil,limit=1,sort=nearest]","objective":"dummy"},"color":"gray"},{"text":" uses remaining)","color":"gray"}]
execute if entity @e[tag=anvil,scores={dummy=1..}] run tellraw @s[tag=success] ["",{"text":"You feel your ","color":"white"},{"text":"Gift Compass","color":"yellow"},{"text":" pull towards a new location...","color":"white"}]
execute if entity @e[tag=anvil,scores={dummy=0}] run tellraw @s[tag=success] ["",{"text":"You have found all the gifts from this ","color":"white"},{"text":"Gift Compass","color":"yellow"},{"text":"! Talk to ","color":"white"},{"text":"St. Jerry","color":"red"},{"text":" to receive a reward!","color":"white"}]
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