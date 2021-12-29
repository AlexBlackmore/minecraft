#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COMPASS MENU---------------#
scoreboard players operation @p M_NPCMenuPage = @s M_NPCMenuPage
function menu:kill
kill @e[type=item,nbt={Item:{tag:{SkyblockMenu:1b}}},distance=..5]
summon minecraft:armor_stand ~ ~0.5 ~ {Invisible:1b,DisabledSlots:4144959,Tags:["MenuMove","NewMenu"],Small:1b,Passengers:[{id:"minecraft:chest_minecart",Invulnerable:1b,Silent:1b,Tags:["EntityMenuChest","MenuChest","NewMenu","invisible_minecart","NPCMenu"],CustomDisplayTile:1b,CustomName:'{"text":"Maddox"}',DisplayState:{Name:"minecraft:air"}}]}
execute positioned ~ ~0.5 ~ run scoreboard players operation @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] PlayerID = @s PlayerID

execute positioned ~ ~0.5 ~ run scoreboard players operation @e[type=chest_minecart,tag=NewMenu,distance=..1,limit=1,sort=nearest] M_CurrentPage = @p M_NPCMenuPage
execute positioned ~ ~0.5 ~ run scoreboard players operation @e[type=chest_minecart,tag=NewMenu,distance=..1,limit=1,sort=nearest] M_NPCMenuPage = @p M_NPCMenuPage
scoreboard players reset @p M_NPCMenuPage

execute positioned ~ ~0.5 ~ run scoreboard players set @e[type=chest_minecart,tag=NewMenu,distance=..1,limit=1,sort=nearest] M_PageDelay 1
execute positioned ~ ~0.5 ~ run tag @e[tag=NewMenu,distance=..1,limit=2,sort=nearest] remove NewMenu
tag @s add Menu
scoreboard players set @s M_ClickElement 1
#------------------------------------------#