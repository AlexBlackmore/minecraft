#===================NOTE===================#
# This function was coded by SilicatYT #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/SilicatYT  #
#==========================================#
scoreboard players add §§§§§ Date 1
execute if score §§§§§ Date matches 373 run scoreboard players set §§§§§ Date 1

function time:cycle/check_date

team modify time_daytime suffix [{"text":" 0:00am ","color":"gray"},{"text":"☽","color":"aqua"}]

time set midnight

schedule function time:cycle/daytime/0_1 166.666666667t
