#===================NOTE===================#
# This function was coded by SilicatYT #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/SilicatYT  #
#==========================================#
scoreboard players set §§§§§ Date 0
scoreboard players set §§§§§ NPC_Skin 1
scoreboard players set §§§§§ Location 0

scoreboard players set §§§§ bar_aqua 6
scoreboard players set §§§§ bar_black 6
scoreboard players set §§§§ bar_blue 6
scoreboard players set §§§§ bar_dark_aqua 6
scoreboard players set §§§§ bar_dark_blue 6
scoreboard players set §§§§ bar_dark_gray 6
scoreboard players set §§§§ bar_dark_green 6
scoreboard players set §§§§ bar_dark_purple 6
scoreboard players set §§§§ bar_dark_red 6
scoreboard players set §§§§ bar_gold 6
scoreboard players set §§§§ bar_gray 6
scoreboard players set §§§§ bar_green 6
scoreboard players set §§§§ bar_light_purple 6
scoreboard players set §§§§ bar_red 6
scoreboard players set §§§§ bar_white 6
scoreboard players set §§§§ bar_yellow 6
scoreboard players set §§§§§ bar_aqua 7
scoreboard players set §§§§§ bar_black 7
scoreboard players set §§§§§ bar_blue 7
scoreboard players set §§§§§ bar_dark_aqua 7
scoreboard players set §§§§§ bar_dark_blue 7
scoreboard players set §§§§§ bar_dark_gray 7
scoreboard players set §§§§§ bar_dark_green 7
scoreboard players set §§§§§ bar_dark_purple 7
scoreboard players set §§§§§ bar_dark_red 7
scoreboard players set §§§§§ bar_gold 7
scoreboard players set §§§§§ bar_gray 7
scoreboard players set §§§§§ bar_green 7
scoreboard players set §§§§§ bar_light_purple 7
scoreboard players set §§§§§ bar_red 7
scoreboard players set §§§§§ bar_white 7
scoreboard players set §§§§§ bar_yellow 7

team add time_daytime
team add time_date

team join time_daytime §§§§
team join time_date §§§§§

team modify time_date suffix {"text":" Early Winter 1st"}

gamerule doDaylightCycle true

function time:cycle/daytime/0_0
