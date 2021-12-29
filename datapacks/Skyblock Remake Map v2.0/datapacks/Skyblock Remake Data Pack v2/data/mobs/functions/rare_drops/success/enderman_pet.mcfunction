#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
function stats:calculate/drop_chance/include_pet_luck

execute if score $PetDropRarity DropChance matches 990.. run function mobs:rare_drops/success/enderman_pet_legendary
execute if score $PetDropRarity DropChance matches 900..989 run function mobs:rare_drops/success/enderman_pet_epic
execute if score $PetDropRarity DropChance matches ..899 run function mobs:rare_drops/success/enderman_pet_rare
#------------------------------------------#