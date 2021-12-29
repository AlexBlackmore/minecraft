#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------MAIN-------------------#
execute as @a[scores={BlockHelmetSwap=1..}] run function armor:block_helmets/block_to_helmet
execute as @a[scores={BlockHelmetSwap2=1..}] run function armor:block_helmets/helmet_to_block

execute as @a[tag=Wear_FullSet] at @s run function armor:full_set_bonus/main
#------------------------------------------#