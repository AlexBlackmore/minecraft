execute unless score PersonalCompactors SkyblockModules matches 0.. run scoreboard players set PersonalCompactors SkyblockModules 1

scoreboard objectives add pcompact.select dummy
scoreboard objectives add pcompact.previd dummy
scoreboard objectives add pcompact.cartid dummy
scoreboard objectives add pcompact.strlgth dummy
setblock 29999980 1 29832 shulker_box{CustomName:'{"text":"Item Update"}'}

tellraw @a ["",{"text":"Personal Compactors Module Loading...","color":"yellow","bold":false}]