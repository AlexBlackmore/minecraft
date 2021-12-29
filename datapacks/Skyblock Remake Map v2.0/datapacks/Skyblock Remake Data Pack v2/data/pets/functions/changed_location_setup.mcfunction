#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute as @a[tag=NeedPet] at @s run function pets:changed_location
say change location setup
tag @a remove NeedPet
#------------------------------------------#
