#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------UNLIMITED MONEY-------------#
scoreboard players add SlayerRequirements Setting 1
execute if score SlayerRequirements Setting matches 2.. run scoreboard players set SlayerRequirements Setting 0

execute if score SlayerRequirements Setting matches 0 as @a run function cheats:settings/resources/store_slayer_levels

execute if score SlayerRequirements Setting matches 1 as @a run scoreboard players operation @s S_SHighSlain = @s StoredSHighSlain
execute if score SlayerRequirements Setting matches 1 as @a run scoreboard players operation @s S_ZHighSlain = @s StoredZHighSlain
execute if score SlayerRequirements Setting matches 1 as @a run scoreboard players operation @s S_WHighSlain = @s StoredWHighSlain

execute if score SlayerRequirements Setting matches 0 run tellraw @a ["",{"text":"Slayers will no longer require you to slay the previous tiers first.","color":"red"}]
execute if score SlayerRequirements Setting matches 1 run tellraw @a ["",{"text":"Slayers will now require you to slay the previous tiers first.","color":"green"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#