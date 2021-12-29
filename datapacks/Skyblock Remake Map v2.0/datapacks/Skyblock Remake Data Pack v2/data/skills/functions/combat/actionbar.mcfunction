#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------EXP BOOSTS CALCS-------------#
scoreboard players set @s I_ActionbarTimer 40
title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"+","color":"dark_aqua"},{"score":{"name":"$CombatEXP","objective":"Temp"},"color":"dark_aqua"},{"text":" Combat","color":"dark_aqua"},{"text":" (","color":"dark_aqua"},{"score":{"name":"@s","objective": "S_CombatEXP"},"color":"dark_aqua"},{"text":"/","color":"dark_aqua"},{"score":{"name":"@s","objective":"S_CombatEXPN"},"color":"dark_aqua"},{"text":")   ","color":"dark_aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#------------------------------------------#