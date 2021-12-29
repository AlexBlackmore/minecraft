#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ITEM RANDOMIZER--------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 154
function skyblock:random/range_lcg

execute if score out RandMath matches 1..120 run scoreboard players set $XpAmount Temp 160
execute if score out RandMath matches 121..154 run scoreboard players set $XpAmount Temp 300
#--------------GOOD CATCHES----------------#
execute if score out RandMath matches 1..10 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:prismarine_shard",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Prismarine Shard","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 1..10 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Prismarine Shard.","color":"white"}]

execute if score out RandMath matches 11..20 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:prismarine_crystals",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Prismarine Crystals","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 11..20 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found some ","color":"aqua"},{"text":"Prismarine Crystals.","color":"white"}]

execute if score out RandMath matches 21..30 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:golden_apple",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Golden Apple","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 21..30 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Golden Apple","color":"white"}]

execute if score out RandMath matches 31..40 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:sponge",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Sponge","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 31..40 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Sponge.","color":"white"}]

execute if score out RandMath matches 41..70 run function fishing:event/caught_fish/item/good_coins

execute if score out RandMath matches 71..100 run function fishing:event/caught_fish/item/got_disc

execute if score out RandMath matches 101..110 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:experience_bottle",Count:1b,tag:{Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Grand Experience Bottle","color":"green","italic":false}',Lore:['{"text":"Smash it open to receive","color":"gray","italic":false}','{"text":"experience!","color":"gray","italic":false}','{"text":" "}','{"text":"UNCOMMON","color":"green","italic":false,"bold":true}']}}}}
execute if score out RandMath matches 101..110 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Grand Experience Bottle","color":"green"}]
execute if score out RandMath matches 101..110 run tag @s add F_GiveEnchantingXP

execute if score out RandMath matches 111..120 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:sea_lantern",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Sea Lantern","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 111..120 run tellraw @s ["",{"text":"GOOD CATCH!","bold":true,"color":"gold"},{"text":" You found a ","color":"aqua"},{"text":"Sea Lantern.","color":"white"}]
#--------------GREAT CATCHES---------------#
execute if score out RandMath matches 121..125 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{Base:{Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Golden Apple","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 121..125 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Golden Apple","color":"green"}]

execute if score out RandMath matches 126..127 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:experience_bottle",Count:1b,tag:{Base:{Vanilla:0b,Type:"",Rarity:"RARE",RarityColor:'{"text":"","color":"blue"}'},display:{Name:'{"text":"Titanic Experience Bottle","color":"blue","italic":false}',Lore:['{"text":"Smash it open to receive","color":"gray","italic":false}','{"text":"experience!","color":"gray","italic":false}','{"text":" "}','{"text":"RARE","color":"blue","italic":false,"bold":true}']}}}}
execute if score out RandMath matches 126..127 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Titanic Experience Bottle","color":"blue"}]
execute if score out RandMath matches 126..127 run tag @s add F_GiveEnchantingXP

execute if score out RandMath matches 128..131 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:clay_ball",Count:1b,tag:{Enchantments:[{}],Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Clay","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 128..131 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Clay","color":"green"}]

execute if score out RandMath matches 132..135 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{Enchantments:[{}],Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Iron","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 132..135 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Iron","color":"green"}]

execute if score out RandMath matches 136..139 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{Enchantments:[{}],Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Gold","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 136..139 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Gold","color":"green"}]

execute if score out RandMath matches 140..143 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:diamond",Count:1b,tag:{Enchantments:[{}],Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Diamond","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 140..143 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Diamond","color":"green"}]

execute if score out RandMath matches 144..147 run data merge entity @e[type=item,sort=nearest,limit=1,nbt={Age:0s}] {Item:{id:"minecraft:pufferfish",Count:1b,tag:{Enchantments:[{}],Base:{Vanilla:0b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Pufferfish","color":"green","italic":false}',Lore:['[{"text":"UNCOMMON","color":"green","italic":false,"bold":true}]']}}}}
execute if score out RandMath matches 144..147 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Enchanted Pufferfish","color":"green"}]

execute if score out RandMath matches 148..150 run function fishing:event/caught_fish/item/great_coins

execute if score out RandMath matches 151..152 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Guardian Pet (TODO)","color":"green"}]

execute if score out RandMath matches 153..154 run tellraw @s ["",{"text":"GREAT CATCH!","bold":true,"color":"dark_purple"},{"text":" You found an ","color":"aqua"},{"text":"Music Rune (TODO)","color":"green"}]
#------------------------------------------#