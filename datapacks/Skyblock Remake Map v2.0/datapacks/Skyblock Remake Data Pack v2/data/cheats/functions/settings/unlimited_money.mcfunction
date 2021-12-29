#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------UNLIMITED MONEY-------------#
scoreboard players add UnlimitedMoney Setting 1
execute if score UnlimitedMoney Setting matches 2.. run scoreboard players set UnlimitedMoney Setting 0

execute if score UnlimitedMoney Setting matches 0 run function cheats:settings/resources/reset_money

execute if score UnlimitedMoney Setting matches 1 run tellraw @a ["",{"text":"You will now recieve Unlimited Money.","color":"green"}]
execute if score UnlimitedMoney Setting matches 0 run tellraw @a ["",{"text":"You will no longer recieve Unlimited Money.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#