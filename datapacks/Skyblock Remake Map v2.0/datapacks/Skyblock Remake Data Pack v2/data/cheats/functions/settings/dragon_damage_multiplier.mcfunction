#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add DragonDamageMultiplier Setting 1
execute if score DragonDamageMultiplier Setting matches 6..10 run scoreboard players set DragonDamageMultiplier Setting 10
execute if score DragonDamageMultiplier Setting matches 11..25 run scoreboard players set DragonDamageMultiplier Setting 25
execute if score DragonDamageMultiplier Setting matches 26..50 run scoreboard players set DragonDamageMultiplier Setting 50
execute if score DragonDamageMultiplier Setting matches 51..100 run scoreboard players set DragonDamageMultiplier Setting 100
execute if score DragonDamageMultiplier Setting matches 101..250 run scoreboard players set DragonDamageMultiplier Setting 250
execute if score DragonDamageMultiplier Setting matches 251..500 run scoreboard players set DragonDamageMultiplier Setting 500
execute if score DragonDamageMultiplier Setting matches 501.. run scoreboard players set DragonDamageMultiplier Setting 1

tellraw @a ["",{"text":"You now deal ","color":"white"},{"score":{"name":"DragonDamageMultiplier","objective":"Setting"},"color":"blue"},{"text":"x","color":"blue"},{"text":" damage to dragons!","color":"white"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#