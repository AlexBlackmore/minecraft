#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------ADD SCORE-----------------#
scoreboard players operation $EnchantingEXP Temp = @s AddEnchanting
execute if score @s S_TotalEnchB matches 1.. run function skills:enchanting/calc_exp_drop
scoreboard players operation @s S_EnchantingEXP += $EnchantingEXP Temp
execute if score @s S_Enchanting < @s S_MaxEnchanting if score @s S_EnchantingEXP >= @s S_EnchantingEXPN run function skills:enchanting/level_up
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$EnchantingEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Enchanting","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_EnchantingEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_EnchantingEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
execute if entity @s[tag=PetSpawned] run function pets:exp_system/add_exp

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
scoreboard players set @s AddEnchanting 0
#------------------------------------------#