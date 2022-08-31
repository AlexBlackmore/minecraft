stopsound @s music
playsound minecraft:ui.button.click music @s
execute at @s run particle minecraft:note ~ ~ ~ 1 1 1 10 10

execute store result score @s time run time query gametime
scoreboard players set @s dummy 15
scoreboard players operation @s time %= @s dummy

execute if score @s time matches 0 run playsound minecraft:music_disc.13 music @s
execute if score @s time matches 0 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - 13]","italic":true,"color":"gray"}

execute if score @s time matches 1 run playsound minecraft:music_disc.cat music @s
execute if score @s time matches 1 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - cat]","italic":true,"color":"gray"}

execute if score @s time matches 2 run playsound minecraft:music_disc.blocks music @s
execute if score @s time matches 2 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - blocks]","italic":true,"color":"gray"}

execute if score @s time matches 3 run playsound minecraft:music_disc.chirp music @s
execute if score @s time matches 3 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - chirp]","italic":true,"color":"gray"}

execute if score @s time matches 4 run playsound minecraft:music_disc.far music @s
execute if score @s time matches 4 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - far]","italic":true,"color":"gray"}

execute if score @s time matches 5 run playsound minecraft:music_disc.mall music @s
execute if score @s time matches 5 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - mall]","italic":true,"color":"gray"}

execute if score @s time matches 6 run playsound minecraft:music_disc.mellohi music @s
execute if score @s time matches 6 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - mellohi]","italic":true,"color":"gray"}

execute if score @s time matches 7 run playsound minecraft:music_disc.stal music @s
execute if score @s time matches 7 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - stal]","italic":true,"color":"gray"}

execute if score @s time matches 8 run playsound minecraft:music_disc.strad music @s
execute if score @s time matches 8 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - strad]","italic":true,"color":"gray"}

execute if score @s time matches 9 run playsound minecraft:music_disc.ward music @s
execute if score @s time matches 9 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - ward]","italic":true,"color":"gray"}

execute if score @s time matches 10 run playsound minecraft:music_disc.11 music @s
execute if score @s time matches 10 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - 11]","italic":true,"color":"gray"}

execute if score @s time matches 11 run playsound minecraft:music_disc.wait music @s
execute if score @s time matches 11 run tellraw @s {"text":"[Stereo Pants: Now playing: C418 - wait]","italic":true,"color":"gray"}

execute if score @s time matches 12 run playsound minecraft:music_disc.otherside music @s
execute if score @s time matches 12 run tellraw @s {"text":"[Stereo Pants: Now playing: Lena Raine - otherside]","italic":true,"color":"gray"}

execute if score @s time matches 13 run playsound minecraft:music_disc.5 music @s
execute if score @s time matches 13 run tellraw @s {"text":"[Stereo Pants: Now playing: Samuel Åberg - 5]","italic":true,"color":"gray"}

execute if score @s time matches 14 run playsound minecraft:music_disc.pigstep music @s
execute if score @s time matches 14 run tellraw @s {"text":"[Stereo Pants: Now playing: Lena Raine - Pigstep]","italic":true,"color":"gray"}

effect give @s hunger 1
