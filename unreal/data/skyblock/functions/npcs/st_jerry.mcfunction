tag @s[nbt={SelectedItem:{tag:{Name:"Gift Compass"}}}] add gift_compass
tag @s[nbt={SelectedItem:{tag:{Name:"Gift Compass",Uses:21}}}] add activate
tag @s[nbt={SelectedItem:{tag:{Name:"Gift Compass",Uses:0}}}] add break

scoreboard objectives add random dummy "Random"
scoreboard objectives add dummy dummy "Dummy"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 4
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s[tag=!gift_compass] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> Did you know you can access the Bank from Jerry's Workshop? Check out the Bank in the center of the village!","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s[tag=!gift_compass] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> Talk to any Villager while holding a Gift to receive a reward!","color":"white"}]
execute if entity @e[tag=rng,scores={random=2}] run tellraw @s[tag=!gift_compass] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> Come back with another ","color":"white"},{"text":"Gift Compass","color":"yellow"},{"text":" to find more Gifts!","color":"white"}]
execute if entity @e[tag=rng,scores={random=3}] run tellraw @s[tag=!gift_compass] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> ","color":"white"},{"text":"Ice fishing","color":"aqua"},{"text":" is a great way to relax during the winter! There are all sorts of icy creatures within the depths of ","color":"white"},{"text":"Jerry Pond","color":"aqua"},{"text":"!","color":"white"}]

tellraw @s[tag=activate] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> 'Tis ","color":"white"},{"text":"Season of Jerry","color":"red"},{"text":", ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"! You may have noticed some ","color":"white"},{"text":"Gifts","color":"green"},{"text":" laying around. Each year, I place them throughout the village to spread joy and good tidings. Find them all using a ","color":"white"},{"text":"Gift Compass","color":"yellow"},{"text":" and come back to me for a reward!","color":"white"}]
execute as @s[tag=activate] run function skyblock:abilities/instant/gift_compass

tellraw @s[tag=break] ["",{"text":"<","color":"white"},{"text":"St. Jerry","color":"red"},{"text":"> You found all of the Gifts! Take this ","color":"white"},{"text":"Green Gift","color":"green"},{"text":"! You'll hopefully find something nicer than what was in those White Gifts!","color":"white"}]
item replace entity @s[tag=break] weapon.mainhand with air
loot give @s[tag=break] loot skyblock:items/gifts/green
playsound minecraft:entity.villager.yes player @s

kill @e[tag=rng]

advancement revoke @s only skyblock:commands/npcs/st_jerry

tag @p[tag=gift_compass] remove gift_compass
tag @p[tag=break] remove break
tag @p[tag=activate] remove activate
