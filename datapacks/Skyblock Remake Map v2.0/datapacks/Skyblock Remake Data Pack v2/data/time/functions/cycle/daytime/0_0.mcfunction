#===================NOTE===================#
# This function was coded by SilicatYT #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/SilicatYT  #
#==========================================#
scoreboard players add §§§§§ Date 1
execute if score §§§§§ Date matches 32 run function time:cycle/next_season

scoreboard players add §§§§§ Location 1
execute if score §§§§§ Location matches 373 run scoreboard players set §§§§§ Location 1

function time:cycle/check_date

team modify time_daytime suffix [{"text":" 12:00am ","color":"gray"},{"text":"☽","color":"aqua"}]

time set midnight

schedule function time:cycle/daytime/0_1 166.666666667t
