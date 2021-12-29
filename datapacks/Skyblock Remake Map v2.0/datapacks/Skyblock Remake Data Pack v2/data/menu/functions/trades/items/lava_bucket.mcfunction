#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TRADE-------------------#
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=aqua] run scoreboard players remove aqua Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=black] run scoreboard players remove black Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=blue] run scoreboard players remove blue Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_aqua] run scoreboard players remove dark_aqua Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_blue] run scoreboard players remove dark_blue Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_gray] run scoreboard players remove dark_gray Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_green] run scoreboard players remove dark_green Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_purple] run scoreboard players remove dark_purple Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=dark_red] run scoreboard players remove dark_red Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=gold] run scoreboard players remove gold Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=gray] run scoreboard players remove gray Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=green] run scoreboard players remove green Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=light_purple] run scoreboard players remove light_purple Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=red] run scoreboard players remove red Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=white] run scoreboard players remove white Coins 20
execute if entity @s[scores={CraftFullInv=0}] if entity @p[team=yellow] run scoreboard players remove yellow Coins 20
execute if entity @s[scores={CraftFullInv=0}] run give @s lava_bucket{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Lava Bucket","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}} 1
execute if entity @s[scores={CraftFullInv=0}] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
function profiling:coins/add

execute if entity @s[scores={CraftFullInv=1}] run function menu:trades/fail_nospace
#------------------------------------------#