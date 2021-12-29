#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------FEROCITY-----------------#
execute if entity @s[tag=!FeroStats] run function stats:calculate/ferocity_strikes
execute if entity @s[tag=FeroStats] unless score @e[tag=Hit,sort=nearest,limit=1] P_FeroStrikes matches 1.. run tag @s remove FeroStats
execute if entity @s[tag=FeroStrikePlayer] unless score @e[tag=Hit,sort=nearest,limit=1] P_FeroStrikes matches 1.. run tag @s remove FeroStrikePlayer

execute if entity @s[tag=!FeroStats] run scoreboard players set $BonusFeroStrikes Temp 0
execute if entity @s[tag=!FeroStats] run scoreboard players set in RandMath 1
execute if entity @s[tag=!FeroStats] run scoreboard players set in1 RandMath 100
execute if entity @s[tag=!FeroStats] run function skyblock:random/range_lcg

execute if entity @s[tag=!FeroStats] unless score $ChanceFor1MoreFero Temp matches 0 if score out RandMath <= $ChanceFor1MoreFero Temp run scoreboard players set $BonusFeroStrikes Temp 1
execute if entity @s[tag=!FeroStats] run scoreboard players operation $BaseFeroStrikes Temp += $BonusFeroStrikes Temp
execute if entity @s[tag=!FeroStats] if score $BaseFeroStrikes Temp matches 1.. run scoreboard players add $BaseFeroStrikes Temp 1

execute if entity @s[tag=!FeroStats] run scoreboard players operation @s P_FeroStrikes = $BaseFeroStrikes Temp
execute if entity @s[tag=!FeroStats] run scoreboard players operation @e[tag=Hit,sort=nearest,limit=1] P_FeroStrikes = @s P_FeroStrikes
execute if entity @s[tag=!FeroStats] at @s if score @e[tag=Hit,sort=nearest,limit=1] P_FeroStrikes matches 1.. run playsound minecraft:item.flintandsteel.use master @s ~ ~ ~ 1 0 1
execute if entity @s[tag=!FeroStats] at @s if score @e[tag=Hit,sort=nearest,limit=1] P_FeroStrikes matches 1.. run playsound minecraft:entity.iron_golem.attack master @s ~ ~ ~ 0.5 1.5 1
execute if entity @s[tag=!FeroStats] at @s as @e[tag=Hit,sort=nearest,limit=1] if score @s P_FeroStrikes matches 1.. run tag @p add FeroStats

execute if score @s P_FeroStrikes matches 1.. at @s as @e[tag=Hit,sort=nearest,limit=1] if score @s P_FeroStrikes matches 1.. run function stats:ferocity/strike_mob
#------------------------------------------#