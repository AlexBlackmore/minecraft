#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add SpecialZealotChances Setting 1
execute if score SpecialZealotChances Setting matches 6..10 run scoreboard players set SpecialZealotChances Setting 10
execute if score SpecialZealotChances Setting matches 11..25 run scoreboard players set SpecialZealotChances Setting 25
execute if score SpecialZealotChances Setting matches 26..50 run scoreboard players set SpecialZealotChances Setting 50
execute if score SpecialZealotChances Setting matches 51..100 run scoreboard players set SpecialZealotChances Setting 100
execute if score SpecialZealotChances Setting matches 101..250 run scoreboard players set SpecialZealotChances Setting 250
execute if score SpecialZealotChances Setting matches 251..500 run scoreboard players set SpecialZealotChances Setting 500
execute if score SpecialZealotChances Setting matches 501.. run scoreboard players set SpecialZealotChances Setting 1

tellraw @a ["",{"text":"You are now ","color":"white"},{"score":{"name":"SpecialZealotChances","objective":"Setting"},"color":"blue"},{"text":"x","color":"blue"},{"text":" as likely to get a Special Zealot drop (than in vanilla skyblock)","color":"white"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#