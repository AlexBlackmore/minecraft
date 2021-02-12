#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
data modify storage blue:lore_builder NewLore append value '[{"text":"Damage: ","color":"gray","italic":false},{"text":"+∞","color":"light_purple","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Skill: ","color":"gray","italic":false},{"text":"-∞","color":"light_purple","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Clout: ","color":"gray","italic":false},{"text":"+100","color":"light_purple","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'

scoreboard players reset @s Ench_Damage
tag @s add PreserveDamage
#------------------------------------------#