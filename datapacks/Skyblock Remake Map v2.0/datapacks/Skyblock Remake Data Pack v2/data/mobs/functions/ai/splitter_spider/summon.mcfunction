#####--------------------------------------#####
##### author: Blockfox_XV                  #####
##### date created: 24NOV20                #####
##### date edited: 25NOV20                 #####
#####                                      #####
##### This file was created by Blockfox_XV #####
##### Please give proper credit if you use #####
##### this file in your Datapacks or works #####
#####--------------------------------------#####
##### executed by: mobs:ai/splitter_spider/kill
##### summons the silverfish
#####--------------------------------------#####

execute as @e[type=item,nbt={Item:{tag:{isSplitter:1b}}},limit=1] at @s run function mobs:ai/splitter_spider/summon_sub
scoreboard players remove $splitter_spiders_killed Temp 1
execute if score $splitter_spiders_killed Temp matches 1.. run function mobs:ai/splitter_spider/summon
scoreboard players reset $splitter_spiders_killed Temp
