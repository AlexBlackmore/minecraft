#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
scoreboard players operation @s S_CQuestEXP += $CombatEXP Temp
execute unless entity @s[tag=SlayerSpawned] run function slayers:mini_bosses/spider/check
execute unless entity @s[tag=SlayerSpawned] run function slayers:calc_kills
execute unless entity @s[tag=SlayerSpawned] run function slayers:calc_needed_kills
execute if score @s S_CQuestEXP >= @s S_SNeededExp at @s if score @s S_NoLoop matches 0 at @e[tag=DamageDealt,sort=nearest,limit=1] run function slayers:summon/start_animation
tag @s remove FirstKill
scoreboard players reset $CombatEXP Temp


