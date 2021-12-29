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

#Item Ability Cooldowns
scoreboard objectives add CooldownPlayer dummy

#Temporary Speed
scoreboard objectives add I_TempSpeed dummy
scoreboard objectives add I_TempSpeedTimer dummy

#Item Abilities
scoreboard objectives add I_ActionbarTimer dummy
scoreboard objectives add I_AbilDmgStore dummy
scoreboard objectives add I_FireBlastTime dummy
scoreboard objectives add I_DRageAni dummy
scoreboard objectives add I_HealCharges dummy
scoreboard objectives add I_HealChargesT dummy
scoreboard objectives add I_HealMaxCharges dummy
scoreboard objectives add I_MoltenTimer dummy
scoreboard objectives add EnemyTruth dummy 
scoreboard objectives add LividArmRot dummy 
scoreboard objectives add AttackShadow dummy

#yeti sword
scoreboard objectives add TossPosTerrainX dummy
scoreboard objectives add TossPosTerrainY dummy
scoreboard objectives add TossPosTerrainZ dummy

scoreboard objectives add TossPosTargetX dummy
scoreboard objectives add TossPosTargetY dummy
scoreboard objectives add TossPosTargetZ dummy

#Soul Whip
scoreboard objectives add FlayPosBoltX dummy
scoreboard objectives add FlayPosBoltY dummy
scoreboard objectives add FlayPosBoltZ dummy

scoreboard objectives add FlayPosTargetX dummy
scoreboard objectives add FlayPosTargetY dummy
scoreboard objectives add FlayPosTargetZ dummy

#Builders Wand
scoreboard objectives add I_BWBuildDist dummy
scoreboard objectives add I_BWBuild_x1 dummy
scoreboard objectives add I_BWBuild_y1 dummy
scoreboard objectives add I_BWBuild_z1 dummy
scoreboard objectives add I_BWBuild_x2 dummy
scoreboard objectives add I_BWBuild_y2 dummy
scoreboard objectives add I_BWBuild_z2 dummy
scoreboard objectives add I_BWMove_pos1 dummy
scoreboard objectives add I_BWMove_pos2 dummy
scoreboard objectives add I_BWMove_pos3 dummy
scoreboard objectives add I_BWMove_posr1 dummy
scoreboard objectives add I_BWMove_posr2 dummy
scoreboard objectives add I_BWMove_posr3 dummy
scoreboard objectives add I_BWBlank_Score dummy
scoreboard objectives add I_BWBlank_Score2 dummy
scoreboard objectives add I_BWBuildAmount dummy
scoreboard players set $Build_Count I_BWBlank_Score 0
scoreboard players set $Build_Count2 I_BWBlank_Score 0
scoreboard objectives add I_BWandID dummy
execute unless score $WandID Temp matches 1.. run scoreboard players add $WandID Temp 1

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

#TreeCapitator
scoreboard objectives add Treecapitator dummy

scoreboard objectives add PassiveCooldown dummy
scoreboard players add @a PassiveCooldown 0


scoreboard objectives add ender_pearl_use minecraft.used:minecraft.ender_pearl
scoreboard objectives add egg_use minecraft.used:minecraft.egg
scoreboard objectives add golden_apple_use minecraft.used:minecraft.golden_apple
scoreboard objectives add e_gold_apple_use minecraft.used:minecraft.enchanted_golden_apple
#----------------MESSAGES------------------#
tellraw @a ["",{"text":"Items Module Loading...","color":"yellow","bold":false}]
#------------------------------------------#