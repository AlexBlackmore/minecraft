#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------DISABLE REAL HP SYSTEM----------#
effect give @s minecraft:resistance 3 5 true
execute if score $5Seconds TickTimer matches 0 run effect give @s minecraft:saturation 1 100 true
#-----------INVINCIBILITY TIMER------------#
scoreboard players remove @s[scores={P_Invincibility=1..}] P_Invincibility 1
#--------------NATURAL REGEN---------------#
execute unless score @s PlayerHP = @s P_Health run scoreboard players add @s P_RegenTimer 1
execute unless score @s PlayerHP = @s P_Health if entity @s[scores={P_RegenTimer=40..}] run function stats:regeneration/health
#--------------ABSORPTION TIMER---------------#
scoreboard players remove @s[scores={PlayerAbsorpTime=1..}] PlayerAbsorpTime 1
execute if score @s PlayerAbsorpTime matches 0 run function stats:absorption/reset_absorption
#----------------MANA REGEN----------------#
execute if score @s PlayerMana < @s P_ManaPool if score $1Second TickTimer matches 0 run function stats:regeneration/mana
#------------------DEATH-------------------#
execute unless score @s PlayerEHP matches 1.. run function stats:death/check

execute store result score @s P_Y run data get entity @s Pos[1]
execute if score @s P_Y matches ..-10 run function stats:death/check

execute if entity @s[tag=DeathPostDelay] run function stats:death/post_delayed
execute if score @s Death matches 1.. run function stats:death/post
#---------------CHANGE SLOT----------------#
execute store result score $CurrentSlot Temp run data get entity @s SelectedItemSlot
execute unless score $CurrentSlot Temp = @s P_PreviousSlot run function stats:calculate/stats
scoreboard players operation @s P_PreviousSlot = $CurrentSlot Temp
#---------------PLAYER HURT----------------#
execute unless entity @s[scores={P_Invincibility=1..}] if entity @s[scores={P_DamageTaken=1..}] run function stats:damage_update_player
scoreboard players reset @s P_DamageTaken
#------------------------------------------#