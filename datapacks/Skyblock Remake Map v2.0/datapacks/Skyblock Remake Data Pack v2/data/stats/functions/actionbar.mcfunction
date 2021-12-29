#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ACTIONBAR----------------#
function stats:calculate/current_health_including_absorption

#With Defense and Without Absorption
execute if entity @s[scores={P_Defense=1..},tag=!ItemUsingActionbar] unless score @s PlayerAHP matches 1.. unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"score":{"name":"@s","objective":"P_Defense"},"color":"green"},{"text":"❈ Defense    ","color":"green"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#Without Defense and Without Absorption
execute if entity @s[scores={P_Defense=0},tag=!ItemUsingActionbar] unless score @s PlayerAHP matches 1.. unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]

#With Defense and With Absorption
execute if entity @s[scores={P_Defense=1..},tag=!ItemUsingActionbar] if score @s PlayerAHP matches 1.. unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerAHPT"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@s","objective":"P_Health"},"color":"gold"},{"text":"❤    ","color":"gold"},{"score":{"name":"@s","objective":"P_Defense"},"color":"green"},{"text":"❈ Defense    ","color":"green"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#Without Defense and With Absorption
execute if entity @s[scores={P_Defense=0},tag=!ItemUsingActionbar] if score @s PlayerAHP matches 1.. unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerAHPT"},"color":"gold"},{"text":"/","color":"gold"},{"score":{"name":"@s","objective":"P_Health"},"color":"gold"},{"text":"❤    ","color":"gold"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]

#Holding Item With Action Bar Text
execute if entity @s[tag=ItemUsingActionbar] unless entity @s[scores={I_ActionbarTimer=1..}] run function items:actionbar_text/item_list
#------------------------------------------#