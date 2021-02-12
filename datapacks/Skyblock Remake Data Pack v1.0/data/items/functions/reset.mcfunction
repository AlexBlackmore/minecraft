#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------OBJECTIVES-----------------#
execute unless score Items SkyblockModules matches 0.. run scoreboard players set Items SkyblockModules 1

#New Items
scoreboard objectives add StringLength dummy
scoreboard objectives add ItemCount dummy
scoreboard objectives add ItemCountUpdate dummy
scoreboard objectives add InvItemUpdate dummy

#Coin Items
scoreboard objectives add CoinDrop dummy

#Temporary Speed
scoreboard objectives add I_TempSpeed dummy
scoreboard objectives add I_TempSpeedTimer dummy

#Item Abilities
scoreboard objectives add I_ActionbarTimer dummy
scoreboard objectives add I_FireBlastTime dummy
scoreboard objectives add I_DRageAni dummy
scoreboard objectives add I_HealCharges dummy
scoreboard objectives add I_HealChargesT dummy
scoreboard objectives add I_HealMaxCharges dummy
scoreboard objectives add I_MoltenTimer dummy

#Grappling Hook
scoreboard objectives add I_GrappleTime dummy
scoreboard objectives add I_GrappleCool dummy
scoreboard objectives add I_GrappleDist dummy
scoreboard objectives add I_GrapplePos1 dummy
scoreboard objectives add I_GrapplePos2 dummy
scoreboard objectives add I_GrapplePos3 dummy
scoreboard objectives add I_GrapplePosr1 dummy
scoreboard objectives add I_GrapplePosr2 dummy
scoreboard objectives add I_GrapplePosr3 dummy


#Magical Soup
scoreboard objectives add UseSoup minecraft.used:minecraft.map
scoreboard objectives add SoupTrack1 dummy
scoreboard objectives add SoupTrack2 dummy
scoreboard objectives add SoupJumpClock dummy
scoreboard objectives add SoupJumpClock2 dummy
scoreboard players add @a SoupJumpClock 0
scoreboard players add @a SoupJumpClock2 0
scoreboard objectives add SoupFlightTime dummy
scoreboard objectives add SoupTime dummy
scoreboard objectives add SoupSecond dummy
scoreboard objectives add SoupMinute dummy
scoreboard objectives add SoupHour dummy
scoreboard objectives add SoupClock dummy
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Items Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#