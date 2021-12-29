#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
data modify storage blue:lore_builder NewLore append value '[{"text":"Item Ability: Molten Wave","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Cast a wave of molten gold in","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"the direction you are facing!","color":"gray","italic":false}]'

execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"text\":\"Deals up to \",\"color\":\"gray\",\"italic\":false},{\"score\":{\"name\":\"$AbilityDamageOutput\",\"objective\":\"Temp\"},\"color\":\"red\",\"italic\":false},{\"text\":\" damage.\",\"color\":\"gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air

data modify storage blue:lore_builder NewLore append value '[{"text":"Mana cost: ","color":"dark_gray","italic":false},{"text":"500","color":"dark_aqua","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Cooldown: ","color":"dark_gray","italic":false},{"text":"1s","color":"green","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'

data modify storage blue:lore_builder NewLore append value '[{"text":"Item Ability: Greed","color":"gold","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"The ","color":"gray","italic":false},{"text":"ability damage bonus","color":"dark_aqua","italic":false},{"text":" of","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"this item is dependent on the","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"price paid in the ","color":"gray","italic":false},{"text":"Dark","color":"dark_purple","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Auction","color":"dark_purple","italic":false},{"text":"!","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"The maximum bonus of this item","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"is ","color":"gray","italic":false},{"text":"16000","color":"dark_aqua","italic":false},{"text":" if the bid was","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"100,000,000 Coins","color":"gold","italic":false},{"text":" or higher!","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'

data modify storage blue:lore_builder NewLore append value '[{"text":"Price paid: ","color":"gray","italic":false},{"text":"100,000,000 Coins","color":"gold","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Base Ability Damage Bonus: ","color":"gray","italic":false},{"text":"16000","color":"dark_aqua","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
#------------------------------------------#