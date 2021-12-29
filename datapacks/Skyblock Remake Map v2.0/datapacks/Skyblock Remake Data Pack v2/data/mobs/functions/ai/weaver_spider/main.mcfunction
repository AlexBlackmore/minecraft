# shoot a web every 3 seconds if a player is near the weaver spider
scoreboard players add @s[tag=!readytoshoot] WeaverTimer 1
tag @s[tag=!readytoshoot,scores={WeaverTimer=60..}] add readytoshoot
execute if entity @s[tag=readytoshoot] at @s run function mobs:ai/weaver_spider/before_raycast