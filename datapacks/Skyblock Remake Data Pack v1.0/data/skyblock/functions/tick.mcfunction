#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------TIMERS------------------#
execute as @a[scores={join_game=1..}] at @s run function skyblock:join_game
scoreboard players add $1Second TickTimer 1
scoreboard players add $5Seconds TickTimer 1
scoreboard players add $25Seconds TickTimer 1
execute if score $1Second TickTimer matches 21.. run scoreboard players set $1Second TickTimer 0
execute if score $5Seconds TickTimer matches 101.. run scoreboard players set $5Seconds TickTimer 0
execute if score $25Seconds TickTimer matches 501.. run scoreboard players set $25Seconds TickTimer 0

execute as @e[tag=Timeout] run scoreboard players add @s Timeout 1
execute as @e[tag=0.5SecTimeout,scores={Timeout=10..}] run kill @s
execute as @e[tag=1SecTimeout,scores={Timeout=20..}] run kill @s
execute as @e[tag=2SecTimeout,scores={Timeout=40..}] run kill @s
execute as @e[tag=10SecTimeout,scores={Timeout=200..}] run kill @s
#----------------PLAYER IDS----------------#
execute as @a unless score @s PlayerID matches 0.. run tag @s add NeedID
execute as @a[tag=NeedID,limit=1] run function skyblock:new_player
#-----------------MODULES------------------#
execute if score Fishing SkyblockModules matches 1 run function fishing:main
execute if score Armor SkyblockModules matches 1 run function armor:main
execute if score Items SkyblockModules matches 1 run function items:main
execute if score Mobs SkyblockModules matches 1 run function mobs:main
execute if score Menu SkyblockModules matches 1 run function menu:main
execute if score Collections SkyblockModules matches 1 run function collections:main
execute if score Skills SkyblockModules matches 1 run function skills:main
execute if score Anvils SkyblockModules matches 1 run function anvils:main
execute if score Crafting SkyblockModules matches 1 run function crafting:main
execute if score Enchanting SkyblockModules matches 1 run function enchanting:main
execute if score Stats SkyblockModules matches 1 run function stats:main
execute if score Profiling SkyblockModules matches 1 run function profiling:main
execute if score Cheats SkyblockModules matches 1 run function cheats:main
execute if score PublicIslands SkyblockModules matches 1 run function public_islands:main
execute if score Time SkyblockModules matches 1 run function time:main
#------------------BLOCKS------------------#
execute as @e[tag=BlockRevamp] at @s if block ~ ~-1 ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
#------------------EVENT-------------------#
execute as @a[scores={walk=1..}] run function skyblock:keyboard_event/walk
execute as @a[scores={sprint=1..}] run function skyblock:keyboard_event/sprint
execute as @a[scores={jump=1..}] run function skyblock:keyboard_event/jump
execute as @a[scores={right_click=1..}] at @s run function skyblock:keyboard_event/right_click
#------------------------------------------#