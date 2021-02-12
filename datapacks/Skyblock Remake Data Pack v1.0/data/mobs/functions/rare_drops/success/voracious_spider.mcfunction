#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------MESSAGE BOOK----------------#
function stats:calculate/drop_chance/include_pet_luck

execute if score $PetDropRarity DropChance matches 800.. run function mobs:rare_drops/success/voracious_spider_legendary_tarantula
execute if score $PetDropRarity DropChance matches ..799 run function mobs:rare_drops/success/voracious_spider_epic_tarantula
#------------------------------------------#