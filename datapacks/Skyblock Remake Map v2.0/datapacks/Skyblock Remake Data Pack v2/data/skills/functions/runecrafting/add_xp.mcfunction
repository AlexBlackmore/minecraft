#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $RunecraftEXP Temp = @s AddRunecraft
execute if score @s S_TotalRuneB matches 1.. run function skills:runecraft/calc_exp_drop
scoreboard players operation @s S_RunecraftEXP += $RunecraftEXP Temp
execute if score @s S_Runecrafting < @s S_MaxRunecraft if score @s S_RunecraftEXP >= @s S_RunecraftEXPN run function skills:runecrafting/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$RunecraftEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Runecraft","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_RunecraftEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_RunecraftEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddRunecraft 0
#------------------------------------------#