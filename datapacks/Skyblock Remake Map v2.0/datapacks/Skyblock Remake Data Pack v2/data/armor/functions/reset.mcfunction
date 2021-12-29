#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Armor SkyblockModules matches 0.. run scoreboard players set Armor SkyblockModules 1

#Block Helmets
scoreboard objectives add BlockHelmetSwap dummy
scoreboard objectives add BlockHelmetSwap2 dummy
scoreboard objectives add BlockHelmetType dummy

#Crystal armor
scoreboard objectives add I_LightLevel dummy
#Superior dragon armor
scoreboard objectives add SuperiorBonus dummy
#Wise dragon armor
scoreboard objectives add WiseBonus dummy
#Strong dragon armor
scoreboard objectives add P_StrBloodStr dummy
#Frozen blaze
scoreboard objectives add FrozenBlazeTick dummy
scoreboard objectives add FrozenBlazeDmg dummy
scoreboard objectives add FrozenBlazeHPDmg dummy
scoreboard objectives add FrozenBlazeMax dummy
scoreboard objectives add FrozenBlazeRods dummy
#Unstable dragon armor
scoreboard objectives add UnstableDragTick dummy
#Young dragon armor
scoreboard objectives add YoungDragHP dummy
#Mastiff armor
scoreboard objectives add MastiffHPBonus dummy
scoreboard objectives add MastiffCooldown dummy
scoreboard objectives add MastiffHeal dummy
#Wither armor
scoreboard objectives add WitherCooldown dummy
scoreboard objectives add WitherPos dummy
scoreboard objectives add WitherSpeed dummy
scoreboard objectives add WitherID dummy
#Tarantula armor
scoreboard objectives add TarantulaHits dummy
#Emerald armor
scoreboard objectives add emCollection dummy

#Warden helmet
scoreboard objectives add WardenBonus dummy

scoreboard players set #NextID WitherID 0
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Armor Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#