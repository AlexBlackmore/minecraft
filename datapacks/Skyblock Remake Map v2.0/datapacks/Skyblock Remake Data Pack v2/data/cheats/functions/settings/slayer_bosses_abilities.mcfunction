#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------UNLIMITED MONEY-------------#
scoreboard players add SlayerBossesAbilities Setting 1
execute if score SlayerBossesAbilities Setting matches 2.. run scoreboard players set SlayerBossesAbilities Setting 0

execute if score SlayerBossesAbilities Setting matches 0 run tellraw @a ["",{"text":"Slayer Bosses will no longer be able to use their abilities.","color":"red"}]
execute if score SlayerBossesAbilities Setting matches 1 run tellraw @a ["",{"text":"Slayer Bosses will now be able to use their abilities.","color":"green"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#