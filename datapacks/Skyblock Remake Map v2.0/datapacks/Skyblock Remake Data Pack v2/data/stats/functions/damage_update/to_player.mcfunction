#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------CACTUS TEST----------------#
execute unless block ~ ~ ~0.2986 minecraft:cactus unless block ~ ~ ~-0.2986 minecraft:cactus unless block ~0.2986 ~ ~ minecraft:cactus unless block ~-0.2986 ~ ~ minecraft:cactus unless block ~-0.2986 ~ ~0.2986 minecraft:cactus unless block ~0.2986 ~ ~-0.2986 minecraft:cactus unless block ~-0.2986 ~ ~-0.2986 minecraft:cactus unless block ~0.2986 ~ ~0.2986 minecraft:cactus run tag @s add NotCactusDmg
execute if entity @s[tag=!NotCactusDmg] run scoreboard players set @s P_DamageTaken 35
tag @s remove NotCactusDmg
#--------------BONUS DEFENSE---------------#
#For blast, proj prot and should be fire prot (but seems to be broken on real skyblock)
execute if entity @s[scores={E_BonusDef=1..}] run function enchanting:temporary_defense/start
#--------------CHANGE HEALTH---------------#
#Correct input
scoreboard players operation @s P_DamageTaken /= c5 Constant
scoreboard players remove @s P_DamageTaken 5

#Apply damage (based on whether the player has absorption)
scoreboard players set $DamageOutput2 Temp 0
execute unless score @s PlayerAEHP matches 1.. run scoreboard players operation @s PlayerEHP -= @s P_DamageTaken
execute if score @s PlayerAEHP matches 1.. run function stats:absorption/damaged

#Find HP Difference (not including absorption) for damage display
scoreboard players operation $DamageOutput Temp = @s PlayerHP
function stats:calculate/current_health
scoreboard players operation $DamageOutput Temp -= @s PlayerHP

#Add Absorption HP lost to make total damage dealt
scoreboard players operation $DamageOutput Temp += $DamageOutput2 Temp
#--------------BONUS DEFENSE---------------#
#For blast or proj prot and should be fire prot (but seems to be broken on real skyblock)
execute if entity @s[scores={E_BonusDef=1..}] run function enchanting:temporary_defense/end
#------------------------------------------#