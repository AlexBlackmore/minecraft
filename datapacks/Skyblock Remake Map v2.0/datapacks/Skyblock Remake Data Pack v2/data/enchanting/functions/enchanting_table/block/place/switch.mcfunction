#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------CRAFTING TABLE---------------#
setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=south]{Lock:"123456789",CustomName:'{"text":"Enchanting Table","italic":false}'} replace
function enchanting:enchanting_table/book_animation/place
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Tags:["EnchantingTable","BlockRevamp"],Marker:1b,Invisible:1b,ShowArms:1b,HandItems:[{id:"minecraft:scute",Count:1b,tag:{CustomModelData:100}},{}],Invulnerable:1,NoGravity:1b}
tag @p[tag=PlaceEnchanting] add PlaceEnchantingSuccess
#------------------------------------------#