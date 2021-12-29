#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $ForagingEXP Temp = @s AddForaging
execute if score @s S_TotalForagingB matches 1.. run function skills:foraging/calc_exp_drop
scoreboard players operation @s S_ForagingEXP += $ForagingEXP Temp
execute if score @s S_Foraging < @s S_MaxForaging if score @s S_ForagingEXP >= @s S_ForagingEXPN run function skills:foraging/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$ForagingEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Foraging","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_ForagingEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_ForagingEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddForaging 0
#------------------------------------------#