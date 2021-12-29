#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $AlchemyEXP Temp = @s AddAlchemy
execute if score @s S_TotalAlchemyB matches 1.. run function skills:alchemy/calc_exp_drop
scoreboard players operation @s S_AlchemyEXP += $AlchemyEXP Temp
execute if score @s S_Alchemy < @s S_MaxAlchemy if score @s S_AlchemyEXP >= @s S_AlchemyEXPN run function skills:alchemy/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$AlchemyEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Alchemy","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_AlchemyEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_AlchemyEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddAlchemy 0
#------------------------------------------#