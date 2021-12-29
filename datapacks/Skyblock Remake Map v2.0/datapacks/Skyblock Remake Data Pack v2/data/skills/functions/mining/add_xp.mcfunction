#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $MiningEXP Temp = @s AddMining
execute if score @s S_TotalMiningB matches 1.. run function skills:mining/calc_exp_drop
scoreboard players operation @s S_MiningEXP += $MiningEXP Temp
execute if score @s S_Mining < @s S_MaxMining if score @s S_MiningEXP >= @s S_MiningEXPN run function skills:mining/level_up
scoreboard players set @s I_ActionbarTimer 40

scoreboard players operation @s Temp = $MiningEXP Temp
scoreboard players operation @s Temp2 = @s Temp
scoreboard players operation @s Temp2 %= c10 Constant
scoreboard players operation @s temp -= @s Temp2
scoreboard players operation @s Temp /= c10 Constant

function mining:xp/calculations
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_aqua"},{"text":".","color":"dark_aqua"},{"score":{"name":"@s","objective":"Temp2"},"color":"dark_aqua"},{"text":" Mining","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_MiningEXPp"},"color":"dark_aqua"},{"text":".","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_MiningEXPa"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_MiningEXPNp"},"color":"dark_aqua"},{"text":".","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_MiningEXPNa"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]

scoreboard players operation @s AddMining /= c10 Constant
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players reset @s AddMining
#------------------------------------------#