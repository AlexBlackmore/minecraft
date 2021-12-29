#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
data modify storage blue:lore_builder NewLore append value '[{"text":"Item Ability: Ink Bomb","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Shoot an ink bomb in front of","color":"gray","italic":false}]'

execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"you dealing \",\"color\":\"gray\",\"italic\":false},{\"score\":{\"name\":\"$AbilityDamageOutput\",\"objective\":\"Temp\"},\"color\":\"green\",\"italic\":false},{\"text\":\" damage\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air

data modify storage blue:lore_builder NewLore append value '[{"text":"and giving blindness!","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Mana cost: ","color":"dark_gray","italic":false},{"text":"60","color":"dark_aqua","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Cooldown: ","color":"dark_gray","italic":false},{"text":"30s","color":"green","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
#------------------------------------------#