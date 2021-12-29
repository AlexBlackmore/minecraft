#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $CombatEXP Temp = @s AddCombat
execute if score @s S_TotalCombatB matches 1.. run function skills:combat/calc_exp_drop
scoreboard players operation @s S_CombatEXP += $CombatEXP Temp
execute if score @s S_Combat < @s S_MaxCombat if score @s S_CombatEXP >= @s S_CombatEXPN run function skills:combat/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$CombatEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Combat","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_CombatEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_CombatEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddCombat 0
#------------------------------------------#