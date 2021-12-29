#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------ENDER CHESTS---------------#
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.0 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.1 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.2 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.3 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.4 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.5 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.6 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.7 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.8 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.9 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.10 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.11 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.12 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.13 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.14 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.15 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.16 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.17 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.18 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.19 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.20 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.21 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.22 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.23 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.24 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.25 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.26 with air
item replace entity @e[tag=MenuChest,sort=nearest,limit=1] container.27 with air
data modify entity @e[tag=MenuChest,sort=nearest,limit=1] Items set from entity @s EnderItems
tag @e[tag=MenuChest,sort=nearest,limit=1] add EnderMenuChest
scoreboard players set @e[tag=MenuChest,sort=nearest,limit=1] M_CurrentPage -2
function menu:click_event
playsound minecraft:block.ender_chest.open master @s ~ ~ ~ 1 1 1
#------------------------------------------#