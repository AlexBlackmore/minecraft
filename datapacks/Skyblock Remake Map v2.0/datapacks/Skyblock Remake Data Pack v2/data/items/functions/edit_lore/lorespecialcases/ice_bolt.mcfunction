#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
data modify storage blue:lore_builder NewLore append value '[{"text":"Item Ability: Ice Bolt","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Shoots ","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":" Ice Bolt that deals","color":"gray","italic":false}]'

execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"score\":{\"name\":\"$AbilityDamageOutput\",\"objective\":\"Temp\"},\"color\":\"red\",\"italic\":false},{\"text\":\" damage and slows\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air

data modify storage blue:lore_builder NewLore append value '[{"text":"enemies hit for ","color":"gray","italic":false},{"text":"5","color":"green","italic":false},{"text":" seconds!","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Mana cost: ","color":"dark_gray","italic":false},{"text":"50","color":"dark_aqua","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
#------------------------------------------#