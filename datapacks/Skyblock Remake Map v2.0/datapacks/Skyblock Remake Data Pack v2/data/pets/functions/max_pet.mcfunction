#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute if data entity @s SelectedItem.tag.Base{Type:"PET"} in minecraft:overworld run function pets:max_pet/success
execute unless data entity @s SelectedItem.tag.Base{Type:"PET"} run function pets:max_pet/error
scoreboard players reset @s MaxPet
scoreboard players enable @s MaxPet
#------------------------------------------#