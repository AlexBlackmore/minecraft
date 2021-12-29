#===================NOTE===================#
#  This function was coded by TheCarotte   #
# Please don't claim this as your own work #
#==========================================#
#---------------SPAWN ANIMS----------------#
execute as @e[tag=SlayerAnimAEC] at @s run function slayers:spawn_animation
#----------------BOSS KILLED---------------#
execute as @a[tag=SlayerSpawned] at @s run function slayers:check_killed
#------TARANTULA'S CHILD ON ITS BACK-------#
execute as @e[tag=TarantulaBroodfather] at @s as @e[tag=TarantulaChild] if score @s PlayerID = @e[tag=TarantulaBroodfather,sort=nearest,limit=1] PlayerID run tp @s ~ ~0.6 ~ ~ ~
execute as @e[tag=TarantulaChild] at @s unless entity @e[tag=TarantulaBroodfather,distance=..2,limit=1] run tp @s ~ -200 ~
#-------------BOSSES PARTICLES-------------#
execute at @e[tag=TarantulaBroodfather] run particle entity_effect ~ ~0.8 ~ 1 0 0 1 0 force
execute at @e[tag=SvenPackmaster] run function slayers:particles/sven
#------------------BOSSES------------------#
#Tarantula Aggro
execute as @e[tag=TarantulaBroodfather] run scoreboard players add @s S_BefAggro 1 
execute as @e[tag=TarantulaBroodfather,scores={S_BefAggro=120..}] at @s run function slayers:abilities/spider/combat_jump/aggro
execute as @e[tag=TarantulaBroodfather,scores={S_BefAggro=130..}] run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @e[tag=TarantulaBroodfather,scores={S_BefAggro=130..}] run scoreboard players set @s S_BefAggro 0
#----------------TIME DISPLAY--------------#
execute as @e[tag=Slayer,tag=RevenantHorror] at @s as @e[tag=SlayerTimeDisplay] if score @s PlayerID = @e[tag=Slayer,sort=nearest,limit=1] PlayerID anchored eyes run tp @s ~ ~2.3 ~
execute as @e[tag=Slayer,tag=!RevenantHorror] at @s as @e[tag=SlayerTimeDisplay] if score @s PlayerID = @e[tag=Slayer,sort=nearest,limit=1] PlayerID anchored eyes run tp @s ~ ~1.2 ~
execute as @e[tag=Slayer,scores={I_SlayerTime=0..}] run scoreboard players remove @s I_SlayerTime 1
execute as @e[tag=Slayer,scores={I_SlayerTime=..0}] run function slayers:timer/second
execute as @e[tag=Slayer] unless score @s I_SlayerTimeSec matches 0.. run function slayers:timer/minute
execute as @e[tag=Slayer] unless score @s I_SlayerTimeSec matches 1.. unless score @s I_SlayerTimeMin matches 1.. at @s as @a if score @s PlayerID = @e[tag=Slayer,distance=0,sort=nearest,limit=1] PlayerID run function slayers:ran_out_of_time

execute as @e[tag=NewTimeDisplay] at @s run function slayers:timer/display/new_timer

execute as @e[tag=SlayerTimeDisplay] at @s unless entity @e[tag=Slayer,distance=..3.5] run kill @s
#-------------BOSSES ABILITIES------------#
execute if score SlayerBossesAbilities Setting matches 1 run function slayers:abilities/main
#---TIME TO KILL, SPANW AND SINCE START---#
execute as @a[tag=HasSlayerQuest] run scoreboard players add @s S_TimeToSpawn 1
execute as @a[tag=SlayerSpawned] run scoreboard players add @s S_TimeToKill 1

execute as @a[tag=HasSlayerQuest] run scoreboard players add @s S_SinceStart 1
execute as @a[tag=SlayerSpawned] run scoreboard players add @s S_SinceStart 1
#-----------------TAG FIX-----------------#
execute as @a[tag=NeedRewards] unless score @s S_CQuestType matches 1.. run tag @s remove NeedRewards
execute as @a[tag=HasSlayerQuest] unless score @s S_CQuestType matches 1.. run tag @s remove HasSlayerQuest
execute as @a[tag=SlayerSpawned] unless score @s S_CQuestType matches 1.. run tag @s remove SlayerSpawned
#-----------------------------------------#