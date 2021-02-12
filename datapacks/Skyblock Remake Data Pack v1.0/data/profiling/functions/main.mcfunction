#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------PROFILES------------------#
#gamemode spectator @a[team=]
#gamemode adventure @a[team=!]

scoreboard players enable @a[gamemode=creative] SetCoins
scoreboard players enable @a[gamemode=creative] AddCoins
scoreboard players enable @a[gamemode=creative] ResetCoins
execute as @a[scores={SetCoins=1..}] run function profiling:coins/set
execute as @a[scores={AddCoins=1..}] run function profiling:coins/add
execute as @a[scores={ResetCoins=1..}] run function profiling:coins/reset
#------------------------------------------#