#####--------------------------------------#####
##### author: Blockfox_XV                  #####
##### date created: 24NOV20                #####
##### date edited: 25NOV20                 #####
#####                                      #####
##### This file was created by Blockfox_XV #####
##### Please give proper credit if you use #####
##### this file in your Datapacks or works #####
#####--------------------------------------#####
##### executed by: mobs:ai/splitter_spider/kill.json
##### spawns two silverfish at the location of the dead spider
#####--------------------------------------#####

scoreboard players add $splitter_spiders_killed Temp 1
schedule function mobs:ai/splitter_spider/summon 1
advancement revoke @s only mobs:ai/splitter_spider/kill
