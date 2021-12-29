tag @p[advancements={skyblock:commands/instant/stereo_pants=true}] add stereo_pants

stopsound @p[tag=stereo_pants] music
playsound minecraft:ui.button.click music @p[tag=stereo_pants] 
execute at @p[tag=stereo_pants] run particle minecraft:note ~ ~ ~ 1 1 1 10 10

execute at @p[tag=stereo_pants] run summon area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}

scoreboard objectives add random dummy "Random"
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 13
scoreboard players operation @e[limit=1,tag=rng] random %= @e[limit=1,tag=rng] dummy

execute if score @e[limit=1,tag=rng] random matches 0 run playsound minecraft:music_disc.11 music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 0 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - 11]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 1 run playsound minecraft:music_disc.13 music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 1 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - 13]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 2 run playsound minecraft:music_disc.blocks music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 2 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - blocks]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 3 run playsound minecraft:music_disc.cat music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 3 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - cat]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 4 run playsound minecraft:music_disc.chirp music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 4 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - chirp]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 5 run playsound minecraft:music_disc.far music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 5 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - far]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 6 run playsound minecraft:music_disc.mall music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 6 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - mall]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 7 run playsound minecraft:music_disc.mellohi music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 7 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - mellohi]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 8 run playsound minecraft:music_disc.pigstep music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 8 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: Lena Raine - Pigstep]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 9 run playsound minecraft:music_disc.stal music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 9 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - stal]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 10 run playsound minecraft:music_disc.strad music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 10 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - strad]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 11 run playsound minecraft:music_disc.wait music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 11 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - wait]","italic":true,"color":"gray"}

execute if score @e[limit=1,tag=rng] random matches 12 run playsound minecraft:music_disc.ward music @p[tag=stereo_pants]
execute if score @e[limit=1,tag=rng] random matches 12 run tellraw @p[tag=stereo_pants] {"text":"[Stereo Pants: Now playing: C418 - ward]","italic":true,"color":"gray"}

effect give @p[tag=stereo_pants] hunger 1

tag @p[tag=stereo_pants] remove stereo_pants
scoreboard objectives remove random

function skyblock:abilities/reset_instant
