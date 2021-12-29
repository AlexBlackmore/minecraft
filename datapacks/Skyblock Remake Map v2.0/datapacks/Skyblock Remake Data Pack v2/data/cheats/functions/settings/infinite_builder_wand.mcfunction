#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------STOP HOPPERS---------------#
scoreboard players add InfiniteBuilderWand Setting 1
execute if score InfiniteBuilderWand Setting matches 2.. run scoreboard players set InfiniteBuilderWand Setting 0

execute if score InfiniteBuilderWand Setting matches 1 run tellraw @a ["",{"text":"You can now use the Builder's Wand without having the required blocks.","color":"green"}]
execute if score InfiniteBuilderWand Setting matches 0 run tellraw @a ["",{"text":"You can no longer use the Builder's Wand without having the required blocks.","color":"red"}]

playsound minecraft:ui.button.click master @p ~ ~ ~ 1 0.5 1
#------------------------------------------#