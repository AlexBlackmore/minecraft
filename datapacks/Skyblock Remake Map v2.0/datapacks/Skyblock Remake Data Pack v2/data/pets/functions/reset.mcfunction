#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Pets SkyblockModules matches 0.. run scoreboard players set Pets SkyblockModules 1

# Used for pet lore generation
scoreboard objectives add Pet_Damage dummy
scoreboard objectives add Pet_Strength dummy
scoreboard objectives add Pet_CritChan dummy
scoreboard objectives add Pet_CritDmg dummy
scoreboard objectives add Pet_AtkSpd dummy
scoreboard objectives add Pet_SCChance dummy
scoreboard objectives add Pet_Health dummy
scoreboard objectives add Pet_Defense dummy
scoreboard objectives add Pet_Speed dummy
scoreboard objectives add Pet_Intel dummy
scoreboard objectives add Pet_TrueDef dummy
scoreboard objectives add Pet_MagicFind dummy
scoreboard objectives add Pet_PetLuck dummy
scoreboard objectives add Pet_Ferocity dummy
scoreboard objectives add Pet_AbilDmg dummy
scoreboard objectives add Pet_MngSpd dummy
scoreboard objectives add Pet_MngFrtn dummy

scoreboard objectives add PetXP dummy
scoreboard objectives add PetNXP dummy
scoreboard objectives add PetNLvl dummy

scoreboard objectives add P_PetEXPBoost dummy


scoreboard objectives add MaxPet trigger

#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Pets Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#