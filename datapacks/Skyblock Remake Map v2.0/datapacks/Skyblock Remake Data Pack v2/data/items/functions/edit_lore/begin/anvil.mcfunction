#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#NOTE ITS IMPLEMENTATION INTO THE DATA PACK DOESN'T INCLUDE "BREWING INGREDIENT" LORE OR POTENTIALLY ANYTHING ELSE TOOLS/ARMOR/WEAPONS WOULDN'T HAVE
#------------MAKE COPY OF LORE-------------#
data modify storage blue:lore_builder TypeStorage set from entity @s Items[{Slot:4b}].id
data modify storage blue:lore_builder ItemStorage set from entity @s Items[{Slot:4b}].tag
data modify storage blue:lore_builder LoreStorage set from entity @s Items[{Slot:4b}].tag.display.Lore
data merge storage blue:lore_builder {NewLore:[]}
#-------EMPTY REAL LORE FOR EDITING--------#
data remove entity @s Items[{Slot:4b}].tag.display.Lore
#----------------MAIN LORE-----------------#
function items:edit_lore/main
#-----------RESET SCORES & TAGS------------#
data modify entity @s Items[{Slot:4b}].id set from storage blue:lore_builder TypeStorage
data modify entity @s Items[{Slot:4b}].tag set from storage blue:lore_builder ItemStorage
data modify entity @s Items[{Slot:4b}].tag.display.Lore set from storage blue:lore_builder NewLore
#------------------------------------------#