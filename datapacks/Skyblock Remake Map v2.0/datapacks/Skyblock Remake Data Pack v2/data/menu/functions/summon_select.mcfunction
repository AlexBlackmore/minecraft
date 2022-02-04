#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,DisabledSlots:4144959,Tags:["MenuMove","NewMenu"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["SelectTeamChest","MenuChest","NewMenu","invisible_minecart"],CustomDisplayTile:1b,CustomName:'{"text":"Select Team"}',DisplayState:{Name:"minecraft:air"}}]}
summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,Small:1b,Tags:["SlayerCraftingEvaluator"]}
execute positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] PlayerID = @s PlayerID
execute positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=SlayerCraftingEvaluator,distance=..1,limit=1,sort=nearest] PlayerID = @s PlayerID
execute positioned ~ ~0.5 ~ run scoreboard players set @e[type=chest_minecart,tag=NewMenu,distance=..1,limit=1,sort=nearest] M_CurrentPage 296
execute positioned ~ ~0.5 ~ run scoreboard players set @e[type=chest_minecart,tag=NewMenu,distance=..1,limit=1,sort=nearest] M_PageDelay 1
execute positioned ~ ~0.5 ~ run tag @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] remove NewMenu
tag @s add Menu
scoreboard players set @s M_ClickElement 1
#------------------------------------------#