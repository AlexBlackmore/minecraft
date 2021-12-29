#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ABILITIES----------------#

#--------------SVEN PACKMASTER-------------#
#Call The Pups!
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,tag=!SpawnPup] at @s run function slayers:abilities/wolf/start_summon
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=1..}] at @s run scoreboard players remove @s S_SvenPupTimer 1
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=41}] at @s run function slayers:abilities/wolf/summon_pups
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=41}] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.2
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=31}] at @s run function slayers:abilities/wolf/summon_pups
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=21}] at @s run function slayers:abilities/wolf/summon_pups
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=11}] at @s run function slayers:abilities/wolf/summon_pups
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=1}] at @s run function slayers:abilities/wolf/summon_pups
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,scores={S_SvenPupTimer=1}] run function slayers:abilities/wolf/protected

execute as @e[tag=NewPup] run function slayers:abilities/wolf/set_pup_id
execute as @e[tag=SvenPup] at @s unless entity @e[tag=SvenPackmaster,distance=..20] run tp @s ~ -300 ~
execute as @e[tag=SvenPup] at @s unless entity @e[tag=SvenPackmaster,distance=..20] run kill @s
execute as @e[tag=SvenPup] at @s unless entity @e[tag=SvenPackmaster,distance=..10] run scoreboard players add @s S_SvenPupTimer 1
execute as @e[tag=SvenPup,scores={S_SvenPupTimer=40..}] at @s unless entity @e[tag=SvenPackmaster,distance=..10] run function slayers:abilities/wolf/tp_pup
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1] at @s store result score @s S_PupCounter if entity @e[tag=SvenPup,distance=..10]
execute as @e[tag=SvenHalfHp,tag=!Tier2,tag=!Tier1,tag=SvenProtected,scores={S_PupCounter=0}] at @s run function slayers:abilities/wolf/no_protected
#-----------TARANTULA BROODFATHER----------#

#--------------REVENANT HORROR-------------#
#Life steal thing
execute as @e[tag=RevenantHorror] run scoreboard players add @s S_ParticleTimer 1
execute as @e[tag=RevenantHorror,scores={S_ParticleTimer=80..}] at @s run function slayers:particles/revenant

execute as @e[tag=RevenantLifeSteal] run scoreboard players add @s S_RevLifeSteal 1
execute as @e[tag=RevenantLifeSteal,tag=!GoBack] at @s run function slayers:abilities/zombie/life_steal
execute as @e[tag=RevenantLifeSteal,tag=GoBack] at @s run function slayers:abilities/zombie/life_steal_go_back
execute at @e[tag=RevenantLifeSteal,tag=!GoBack] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 1 10 force
execute at @e[tag=RevenantLifeSteal,tag=GoBack] run particle minecraft:heart ~ ~ ~ 0 0 0 1 10 force
execute as @e[tag=RevenantLifeSteal,scores={S_RevLifeSteal=40..}] run kill @s
#Pestilence
execute as @e[tag=RevenantHorror,tag=!Tier1] run scoreboard players add @s S_PestilTimer 1
execute as @e[tag=RevenantHorror,scores={S_PestilTimer=20..}] at @s run function slayers:abilities/zombie/deal_aoe
execute as @a[scores={S_ShredArmorCd=1..}] run scoreboard players remove @s S_ShredArmorCd 1
execute as @a[scores={S_ShredArmorCd=1}] run function slayers:abilities/zombie/defense_back
#Enrage
execute as @e[tag=RevenantHorror,tag=!Tier2,tag=!Tier1] run scoreboard players add @s S_BefEnrage 1
execute as @e[scores={S_BefEnrage=1200}] at @s run function slayers:abilities/zombie/enrage
execute as @e[tag=Enrage] run scoreboard players add @s S_EnrageTimer 1
execute as @e[tag=Enrage,scores={S_EnrageTimer=200..}] at @s run function slayers:abilities/zombie/enrage_end
#-----------TARANTULA BROODFATHER----------#
#Combat Jump
execute as @e[tag=TarantulaBroodfather] at @s unless entity @a[distance=..15] run scoreboard players add @s S_BefJump 1 
execute as @e[tag=TarantulaBroodfather] at @s as @a[distance=..15] unless score @s PlayerID = @e[tag=TarantulaBroodfather,sort=nearest,limit=1] PlayerID as @e[tag=TarantulaBroodfather,sort=nearest,limit=1] run scoreboard players add @s S_BefJump 1 
execute as @e[tag=TarantulaBroodfather,scores={S_BefJump=30..},tag=!NeedYAxis] at @s run function slayers:abilities/spider/combat_jump/leap_y
execute as @e[tag=TarantulaBroodfather,tag=NeedYAxis] at @s run function slayers:abilities/spider/combat_jump/calc_y_distance 
execute as @e[tag=TarantulaBroodfather,tag=NeedYAxis] at @s if score $desY Motion matches ..0 run function slayers:abilities/spider/combat_jump/leap
#Noxious
execute as @e[tag=TarantulaBroodfather,tag=!Tier1] run scoreboard players add @s S_NoxiousTimer 1
execute as @e[tag=TarantulaBroodfather,scores={S_NoxiousTimer=20..}] at @s run function slayers:abilities/spider/noxious/deal_aoe
execute as @a[scores={S_NoxiousCd=1..}] run scoreboard players remove @s S_NoxiousCd 1
execute as @a[scores={S_NoxiousCd=1}] run function slayers:abilities/spider/noxious/healing_back
