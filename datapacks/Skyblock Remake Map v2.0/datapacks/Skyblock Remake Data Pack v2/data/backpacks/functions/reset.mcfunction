execute unless score Backpacks SkyblockModules matches 0.. run scoreboard players set Backpacks SkyblockModules 1

scoreboard objectives add backpacks.pages dummy
scoreboard objectives add backpacks.select dummy
scoreboard objectives add backpacks.previd dummy
scoreboard objectives add backpacks.cartid dummy
scoreboard objectives add backpacks.currpg dummy
setblock 29999980 1 29832 shulker_box{CustomName:'{"text":"Backpacks Item Update"}'}
scoreboard players set @a backpacks.currpg 1

tellraw @a ["",{"text":"Backpacks Module Loading...","color":"yellow","bold":false}]