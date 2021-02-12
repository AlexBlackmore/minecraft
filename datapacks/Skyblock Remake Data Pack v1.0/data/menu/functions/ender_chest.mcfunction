#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------ENDER CHESTS---------------#
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.0 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.1 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.2 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.6 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.7 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.8 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.9 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.12 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.14 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.15 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.16 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.17 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.18 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.19 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.20 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.21 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.22 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.23 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.24 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.25 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.26 air
replaceitem entity @e[tag=MenuChest,sort=nearest,limit=1] container.27 air
data modify entity @e[tag=MenuChest,sort=nearest,limit=1] Items set from entity @s EnderItems
tag @e[tag=MenuChest,sort=nearest,limit=1] add EnderMenuChest
scoreboard players set @e[tag=MenuChest,sort=nearest,limit=1] M_CurrentPage -2
function menu:click_event
playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 1 1
#------------------------------------------#