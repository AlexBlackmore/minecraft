#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
function skyblock:multiplayer_storage/get
data remove storage blue:multiplayer_storage data.Pets
data merge storage blue:multiplayer_storage {data:{Pets:[]}}
function skyblock:multiplayer_storage/save
#------------------------------------------#