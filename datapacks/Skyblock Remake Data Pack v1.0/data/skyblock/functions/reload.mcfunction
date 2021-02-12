#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------FORCELOADS-----------------#
execute in minecraft:overworld run forceload remove 29999977 29832
execute in minecraft:overworld run forceload add 29999977 29832
execute in minecraft:overworld run fill 29999976 0 29831 29999980 2 29833 bedrock
execute in minecraft:overworld run setblock 29999977 1 29832 shulker_box{CustomName:'"SkyBlock Ender Chest Transfer"'}
execute in minecraft:overworld run setblock 29999978 1 29832 shulker_box{CustomName:'"SkyBlock Player Stat Item"',Items:[{Slot:0b,id:"minecraft:scute",Count:1b,tag:{CustomModelData:1,SkyblockMenu:1b,HideFlags:63,display:{Name:'{"text":""}'},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:100,Operation:0,UUIDLeast:671779,UUIDMost:793509,Slot:"offhand"}]}}]}
#-----------------MODULES------------------#
#Player IDs
scoreboard objectives add PlayerID dummy
execute unless score Global PlayerID matches 0.. run scoreboard players set Global PlayerID 0

#Multiplayer Storage (using custom dimension)
scoreboard objectives add MPStorage dummy
scoreboard players set 16 MPStorage 16
scoreboard players set 65536 MPStorage 65536
execute in skyblock:multiplayer_storage run forceload add 0 0
execute unless entity d28b2115-c99e-84c2-6e45-963d34071d44 run summon item_frame ~ ~ ~ {UUID:[I;-762633963,-912358206,1850054205,872881476],Fixed:1b,Invisible:1b}
execute in skyblock:multiplayer_storage run tp d28b2115-c99e-84c2-6e45-963d34071d44 0 0 0

#Temp Scoreboard (most fake players should go in here)
scoreboard objectives add Temp dummy

#Timers
scoreboard objectives add TickTimer dummy
scoreboard objectives add Timeout dummy

#Motion System
scoreboard objectives add Motion dummy
scoreboard objectives add Motion_x dummy
scoreboard objectives add Motion_y dummy
scoreboard objectives add Motion_z dummy
scoreboard objectives add Motion_speed dummy

#Constants and Randomiser
scoreboard objectives add Constant dummy
scoreboard players set c-1 Constant -1
scoreboard players set c2 Constant 2
scoreboard players set c3 Constant 3
scoreboard players set c4 Constant 4
scoreboard players set c5 Constant 5
scoreboard players set c6 Constant 6
scoreboard players set c8 Constant 8
scoreboard players set c10 Constant 10
scoreboard players set c15 Constant 15
scoreboard players set c16 Constant 16
scoreboard players set c17 Constant 17
scoreboard players set c20 Constant 20
scoreboard players set c22 Constant 22
scoreboard players set c25 Constant 25
scoreboard players set c30 Constant 30
scoreboard players set c34 Constant 34
scoreboard players set c35 Constant 35
scoreboard players set c40 Constant 40
scoreboard players set c50 Constant 50
scoreboard players set c51 Constant 51
scoreboard players set c59 Constant 59
scoreboard players set c60 Constant 60
scoreboard players set c80 Constant 80
scoreboard players set c90 Constant 90
scoreboard players set c100 Constant 100
scoreboard players set c110 Constant 110
scoreboard players set c120 Constant 120
scoreboard players set c125 Constant 125
scoreboard players set c360 Constant 360
scoreboard players set c500 Constant 500
scoreboard players set c1000 Constant 1000
scoreboard players set c3600 Constant 3600
scoreboard players set #lcg Constant 1103515245
scoreboard objectives add RandMath dummy
execute unless score #lcg RandMath matches ..0 unless score #lcg RandMath matches 1.. run function skyblock:random/uuid_reset

#Rotation & Position Tracking
scoreboard objectives add PlayerPosX dummy
scoreboard objectives add PlayerPosY dummy
scoreboard objectives add PlayerPosZ dummy
scoreboard objectives add PlayerPosXOld dummy
scoreboard objectives add PlayerPosYOld dummy
scoreboard objectives add PlayerPosZOld dummy
scoreboard objectives add OldRot dummy
scoreboard objectives add NewRot dummy
scoreboard objectives add CardinalDirect dummy

#Events
scoreboard objectives add join_game minecraft.custom:minecraft.leave_game
scoreboard objectives add right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add rc_content dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add jump minecraft.custom:minecraft.jump

#Module Reload Functions
scoreboard objectives add SkyblockModules dummy
function menu:reset
function armor:reset
function items:reset
function mobs:reset
function collections:reset
function skills:reset
function anvils:reset
function crafting:reset
function enchanting:reset
function stats:reset
function profiling:reset
function fishing:reset
function cheats:reset
function public_islands:reset
function time:reset
#------------------TEAMS-------------------#
team add nocol
team modify nocol collisionRule never
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Skyblock Remake> ","color":"blue","bold":false},{"text":"Data Pack Modules Finished Reloading!","color":"none","bold":false}]
tellraw @a ["",{"text":"Skyblock Remake> ","color":"blue","bold":false},{"text":"Created by BlueCommander","color":"none","bold":false}]
tellraw @a ["",{"text":"Keep Up To Date: ","color":"white"},{"text":"[Youtube]","color":"red","clickEvent":{"action":"open_url","value":"https://www.youtube.com/BlueCommander"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Youtube Channel!"}}},{"text":" [Twitter]","color":"dark_aqua","clickEvent":{"action":"open_url","value":"https://twitter.com/ItsBlueCmdr"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my Twitter!"}}},{"text":" [Discord]","color":"dark_purple","clickEvent":{"action":"open_url","value":"https://discord.com/invite/g6zHaNC"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to visit my discord!"}}},{"text":"\n"},{"text":"[Click to view additional credits]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function skyblock:view_credits"}}]
#------------------------------------------#