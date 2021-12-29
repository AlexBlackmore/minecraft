#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------REDUCE MANA---------------#
#scoreboard players operation @s PlayerMana -= $ManaCost Temp
#execute if score $ManaCost Temp matches 1.. run scoreboard players set @s I_ActionbarTimer 40
#execute if score $ManaCost Temp matches 1.. run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"-","color":"aqua"},{"nbt":"ItemAbility[{Activation:\"RIGHT CLICK\"}].Mana","storage":"blue:item","color":"aqua"},{"text":" Mana (","color":"aqua"},{"nbt":"ItemAbility[{Activation:\"RIGHT CLICK\"}].Name","storage":"blue:item","color":"gold"},{"text":")    ","color":"aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#--------------ITEM ABILITIES--------------#
scoreboard players set $CooldownSet Temp 0
execute store success score $CooldownSet Temp run data get storage blue:item ItemAbility[0].Cooldown
execute if score $DoneAbility Temp matches 0 if score $CooldownSet Temp matches 0 run function items:item_abilities/right_click/no_cooldown
execute if score $DoneAbility Temp matches 0 if score CooldownsEnabled Setting matches 0 run function items:item_abilities/right_click/no_cooldown

execute if data storage blue:item ItemAbility[{Name:"Shadow Fury"}] unless entity @e[distance=..12,tag=!NPC,type=!player,type=!#stats:show_hp] run tellraw @s ["",{"text":"There are no enemies nearby!","color":"red"}]
execute if data storage blue:item ItemAbility[{Name:"Shadow Fury"}] unless entity @e[distance=..12,tag=!NPC,type=!player,type=!#stats:show_hp] run scoreboard players set $DoneAbility Temp 1

execute if score $DoneAbility Temp matches 0 if score CooldownsEnabled Setting matches 1 if score $CooldownSet Temp matches 1 run function items:item_abilities/right_click/cooldown_check
scoreboard players set $DoneAbility Temp 0

data remove storage blue:item ItemAbility
#------------------------------------------#