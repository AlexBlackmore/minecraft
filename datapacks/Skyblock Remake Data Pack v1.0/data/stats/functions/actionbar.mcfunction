#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ACTIONBAR----------------#
#With Defense
execute as @a[scores={P_Defense=1..},tag=!ItemUsingActionbar] unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"score":{"name":"@s","objective":"P_Defense"},"color":"green"},{"text":"❈ Defense    ","color":"green"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#Without Defense
execute as @a[scores={P_Defense=0},tag=!ItemUsingActionbar] unless entity @s[scores={SoupFlightTime=1..,Location=0}] unless entity @s[scores={I_ActionbarTimer=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]

#Holding Item With Action Bar Text
execute as @a[tag=ItemUsingActionbar] unless entity @s[scores={I_ActionbarTimer=1..}] run function items:actionbar_text/item_list
#------------------------------------------#