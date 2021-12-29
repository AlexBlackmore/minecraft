#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Tags:["MenuMove","NewMenu"],Small:1b,Passengers:[{id:"minecraft:furnace_minecart",Invulnerable:1b,Silent:1b,Tags:["MenuChest","NewMenu","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Add Pet"}',DisplayState:{Name:"minecraft:air"}}]}
execute positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] PlayerID = @s PlayerID
execute positioned ~ ~0.5 ~ run tag @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] remove NewMenu
tag @s add Menu
#------------------------------------------#