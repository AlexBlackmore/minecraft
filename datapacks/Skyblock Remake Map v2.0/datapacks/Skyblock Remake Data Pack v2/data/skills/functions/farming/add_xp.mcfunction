#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $FarmingEXP Temp = @s AddFarming
execute if score @s S_TotalFarmingB matches 1.. run function skills:farming/calc_exp_drop
scoreboard players operation @s S_FarmingEXP += $FarmingEXP Temp
execute if score @s S_Farming < @s S_MaxFarming if score @s S_FarmingEXP >= @s S_FarmingEXPN run function skills:farming/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$FarmingEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Farming","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_FarmingEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_FarmingEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddFarming 0
#------------------------------------------#