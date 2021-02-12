#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----RESETS THE BLOCK TRAVEL TRACKER------#
scoreboard players set $Raycast Temp 0
#--------CHECKS IF BLOCKS IN THE WAY-------#
execute at @s positioned ~ ~1.62 ~ if block ^ ^ ^1 #skyblock:allowed run tag @s add Ability_FreeSpace
#-----GIVE MANA BACK IF NO FREE SPACE------#
scoreboard players operation @s[tag=!Ability_FreeSpace] PlayerMana += $ManaCost Temp
scoreboard players reset @s I_ActionbarTimer
function stats:actionbar
#---------------TELEPORT LOOP--------------#
execute if entity @s[tag=Ability_FreeSpace] run function items:item_abilities/right_click/instant_transmission/teleport_loop
execute at @s unless block ~ ~ ~ #skyblock:allowed run tp @s ~ ~1 ~
#--------------RESET MOMENTUM--------------#
execute if entity @s[tag=Ability_FreeSpace] at @s run tp @s @s
#-----------BLOCKS IN WAY ERROR------------#
execute if entity @s[tag=!Ability_FreeSpace] run tellraw @s ["",{"text":"There are blocks in the way!","color":"red"}]
#----------------RESET TAGS----------------#
tag @s remove Ability_FreeSpace
#----------------PLAY SOUND----------------#
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1 1
#-------------TEMPORARY SPEED--------------#
execute unless score @s I_TempSpeedTimer matches 1.. run scoreboard players add @s P_BonusSpeed 50
execute unless score @s I_TempSpeedTimer matches 1.. run scoreboard players add @s P_Speed 50
execute unless score @s I_TempSpeedTimer matches 1.. run scoreboard players add @s I_TempSpeed 50
scoreboard players set @s I_TempSpeedTimer 60
scoreboard players operation @s P_ExtraSpeed = @s P_Speed
scoreboard players remove @s P_ExtraSpeed 100
function stats:set_attribute/speed/l9/l9_0
#------------------------------------------#