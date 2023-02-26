tellraw @s[advancements={skyblock:quests/fishermans_quest=false},tag=!fishermans_quest] ["",{"text":"<","color":"white"},{"text":"Fisherman","color":"yellow"},{"text":"> Could you fish some clay balls in this pond and bring them back to me please? I just realized my house is ugly, and I want to rebuild it out of clay.","color":"white"}]
tellraw @s[advancements={skyblock:quests/fishermans_quest=false},tag=fishermans_quest] ["",{"text":"<","color":"white"},{"text":"Fisherman","color":"yellow"},{"text":"> If you bring me 5 Clay Balls I'll reward you with something useful!","color":"white"}]

tellraw @s[advancements={skyblock:quests/fishermans_quest=true},tag=fishermans_quest] ["",{"text":"<","color":"white"},{"text":"Fisherman","color":"yellow"},{"text":"> Thanks a lot, here this is for you. This is a special fishing rod, you can fish Prismarine Shards and Crystals with it!","color":"white"}]
item replace entity @s[advancements={skyblock:quests/fishermans_quest=true},tag=fishermans_quest] weapon.mainhand with air

scoreboard objectives add random dummy "Random"

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 2
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy

execute if entity @e[tag=rng,scores={random=0}] run tellraw @s[advancements={skyblock:quests/fishermans_quest=true},tag=!fishermans_quest] ["",{"text":"<","color":"white"},{"text":"Fisherman","color":"yellow"},{"text":"> I like to fish.","color":"white"}]
execute if entity @e[tag=rng,scores={random=1}] run tellraw @s[advancements={skyblock:quests/fishermans_quest=true},tag=!fishermans_quest] ["",{"text":"<","color":"white"},{"text":"Fisherman","color":"yellow"},{"text":"> Most ponds have different items in them, you should try fishing in different places sometimes!","color":"white"}]

kill @e[tag=rng]

playsound minecraft:entity.villager.yes player @s

tag @s[advancements={skyblock:quests/fishermans_quest=false}] add fishermans_quest
tag @s[advancements={skyblock:quests/fishermans_quest=true}] remove fishermans_quest
advancement revoke @s only skyblock:commands/npcs/fisherman