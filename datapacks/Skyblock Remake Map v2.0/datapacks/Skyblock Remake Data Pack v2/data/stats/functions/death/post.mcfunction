#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------DEATH-------------------#
execute unless entity @s[scores={Location=0}] run tellraw @s [{"text":"☠ ","color":"red"},{"text":"You died!","color":"gray"}]
execute if entity @s[scores={Location=0}] run tellraw @s [{"text":"☠ ","color":"red"},{"text":"You fell into the void.","color":"gray"}]
scoreboard players operation @s PlayerEHP = @s P_EHP
scoreboard players operation @s PlayerHP = @s P_Health
function stats:absorption/reset_absorption
execute unless entity @s[scores={Location=0}] run function profiling:coins/half
execute unless entity @s[scores={Location=0}] run function profiling:coins/add
scoreboard players set @s[scores={Location=-1}] Location 1
#execute unless entity @s[scores={Location=0}] run function public_islands:location_changed
scoreboard players reset @s Death
#------------ADJUST SPAWNPOINT-------------#
execute if entity @s[scores={Location=7}] at @s run tp @s ~-.5 ~ ~
execute if entity @s[scores={Location=8}] at @s run tp @s ~-.5 ~ ~-.5 ~-90 ~
execute if entity @s[scores={Location=20}] at @s run tp @s ~-0.5 ~ ~0.5 ~ ~
#--------------STATS UPDATES---------------#
execute unless entity @s[scores={Location=0}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @s ^ ^ ^ 1 2 0
execute if entity @s[team=aqua] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"aqua","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_aqua] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_aqua","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=red] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"red","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_red] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_red","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=green] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"green","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_green] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_green","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=gold] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"gold","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=yellow] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"yellow","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=blue] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"blue","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_blue] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_blue","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=light_purple] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"light_purple","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_purple] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_purple","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=gray] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"gray","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=dark_gray] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"dark_gray","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=black] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"black","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
execute if entity @s[team=white] run tellraw @s ["",{"text":"You died and lost ","color":"red"},{"score":{"name":"white","objective":"Coins"},"color":"red"},{"text":" coins!","color":"red"}]
tag @s add DeathPostDelay
#-----------------SLAYERS------------------#
execute if entity @s[tag=SlayerSpawned] run function slayers:died
#------------------------------------------#