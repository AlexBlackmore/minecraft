advancement revoke @a from skyblock:events/election
execute at @e[type=minecraft:armor_stand,tag=aatrox] as @e[type=minecraft:villager,tag=aatrox] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=barry] as @e[type=minecraft:villager,tag=barry] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=cole] as @e[type=minecraft:villager,tag=cole] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=diana] as @e[type=minecraft:villager,tag=diana] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=diaz] as @e[type=minecraft:villager,tag=diaz] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=foxy] as @e[type=minecraft:villager,tag=foxy] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=marina] as @e[type=minecraft:villager,tag=marina] run tp @s ~ ~ ~
execute at @e[type=minecraft:armor_stand,tag=paul] as @e[type=minecraft:villager,tag=paul] run tp @s ~ ~ ~


scoreboard objectives add random dummy "Random"
summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @s random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @s dummy 8
scoreboard players operation @s random %= @s dummy

#0 Aatrox
execute if score @s random matches 0 run advancement grant @a only skyblock:events/election/aatrox
execute if score @s random matches 0 run tellraw @s ["",{"text":"Aatrox is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=aatrox] run tp @s ~ ~ ~

#1 Barry
execute if score @s random matches 1 run advancement grant @a only skyblock:events/election/barry
execute if score @s random matches 0 run tellraw @s ["",{"text":"Barry is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=barry] run tp @s ~ ~ ~

#2 Cole
execute if score @s random matches 2 run advancement grant @a only skyblock:events/election/cole
execute if score @s random matches 0 run tellraw @s ["",{"text":"Cole is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=cole] run tp @s ~ ~ ~

#3 Diana
execute if score @s random matches 3 run advancement grant @a only skyblock:events/election/diana
execute if score @s random matches 0 run tellraw @s ["",{"text":"Diana is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=diana] run tp @s ~ ~ ~

#4 Diaz
execute if score @s random matches 4 run advancement grant @a only skyblock:events/election/diaz
execute if score @s random matches 0 run tellraw @s ["",{"text":"Diaz is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=diaz] run tp @s ~ ~ ~

#5 Foxy
execute if score @s random matches 5 run advancement grant @a only skyblock:events/election/foxy
execute if score @s random matches 0 run tellraw @s ["",{"text":"Foxy is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=foxy] run tp @s ~ ~ ~

#6 Marina
execute if score @s random matches 6 run advancement grant @a only skyblock:events/election/marina
execute if score @s random matches 0 run tellraw @s ["",{"text":"Marina is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=marina] run tp @s ~ ~ ~

#7 Paul
execute if score @s random matches 7 run advancement grant @a only skyblock:events/election/paul
execute if score @s random matches 0 run tellraw @s ["",{"text":"Paul is elected mayor for the year, ","color":"yellow"},{"text":"gg","color":"gold"},{"text":"! Everybody unlocks ","color":"yellow"},{"text":"exclusive","color":"gold"},{"text":" perks!","color":"yellow"}]
execute at @e[type=minecraft:armor_stand,tag=mayor] as @e[type=minecraft:villager,tag=paul] run tp @s ~ ~ ~

#8 Special

