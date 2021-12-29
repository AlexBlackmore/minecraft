#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#NOTE ITS IMPLEMENTATION INTO THE DATA PACK DOESN'T INCLUDE "BREWING INGREDIENT" LORE OR POTENTIALLY ANYTHING ELSE TOOLS/ARMOR/WEAPONS WOULDN'T HAVE
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from storage blue:reforge Item.id
data modify storage blue:lore_builder ItemStorage set from storage blue:reforge Item.tag
data modify storage blue:lore_builder LoreStorage set from storage blue:reforge Item.tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#-------EMPTY REAL LORE FOR EDITING--------#
data remove storage blue:reforge Item.tag.display.Lore
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
data modify storage blue:reforge Item.id set from storage blue:lore_builder TypeStorage
data modify storage blue:reforge Item.tag set from storage blue:lore_builder ItemStorage
data modify storage blue:reforge Item.tag.display.Lore set from storage blue:lore_builder NewLore
#------------------------------------------#