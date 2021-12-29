#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add BonusAccessorySlots Setting 1
execute if score BonusAccessorySlots Setting matches 4.. run scoreboard players set BonusAccessorySlots Setting 0

execute as @a at @s run function menu:accessory_bag/avaliable_slots
tellraw @a ["",{"text":"You now have ","color":"white"},{"score":{"name":"BonusAccessorySlots","objective":"Setting"},"color":"blue"},{"text":" Bonus","color":"blue"},{"text":" Accessory Bag Slots.","color":"white"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#