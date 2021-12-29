#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ITEM RANDOMIZER--------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 13
function skyblock:random/range_lcg
#------------------Discs-------------------#
execute if score out RandMath matches 1 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_blocks",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Blocks","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 1 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Blocks.","color":"green"}]

execute if score out RandMath matches 2 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_cat",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Cat","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 2 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Cat.","color":"green"}]

execute if score out RandMath matches 3 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_chirp",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Chirp","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 3 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Chirp.","color":"green"}]

execute if score out RandMath matches 4 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_far",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Far","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 4 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Far.","color":"green"}]

execute if score out RandMath matches 5 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_mall",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Mall","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 5 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Mall.","color":"green"}]

execute if score out RandMath matches 6 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_mellohi",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Mellohi","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 6 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Mellohi.","color":"green"}]

execute if score out RandMath matches 7 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_stal",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Stal","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 7 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Stal.","color":"green"}]

execute if score out RandMath matches 8 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_strad",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Strad","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 8 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Strad.","color":"green"}]

execute if score out RandMath matches 9 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_wait",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Wait","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 9 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Wait.","color":"green"}]

execute if score out RandMath matches 10 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_ward",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Ward","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 10 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Ward.","color":"green"}]

execute if score out RandMath matches 11 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_11",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - 11","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 11 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - 11.","color":"green"}]

execute if score out RandMath matches 12 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_13",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - 13","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 12 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - 13.","color":"green"}]

execute if score out RandMath matches 13 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:music_disc_pigstep",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Music Disc - Pigstep","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 13 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Music Disc - Pigstep.","color":"green"}]

scoreboard players set out RandMath 0
#------------------------------------------#