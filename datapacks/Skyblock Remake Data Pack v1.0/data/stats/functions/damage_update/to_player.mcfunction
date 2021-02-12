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
scoreboard players remove @s P_DamageTaken 10
scoreboard players operation @s P_DamageTaken /= c5 Constant
scoreboard players operation @s PlayerEHP -= @s P_DamageTaken

scoreboard players operation $DamageOutput Temp = @s PlayerHP
function stats:calculate/current_health
scoreboard players operation $DamageOutput Temp -= @s PlayerHP
#--------------BONUS DEFENSE---------------#
#For blast or proj prot and should be fire prot (but seems to be broken on real skyblock)
execute if entity @s[scores={E_BonusDef=1..}] run function enchanting:temporary_defense/end
#------------------------------------------#