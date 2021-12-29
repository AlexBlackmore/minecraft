#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------MAIN LORE-----------------#
execute store result storage blue:lore_builder ItemStorage.display.color int 1 run scoreboard players get Temp_Col I_LightLevel

data modify storage blue:lore_builder NewLore append value '[{"text":"Full Set Bonus: Refraction","color":"gold","italic":false},{"text":" ","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"The stats of this armor change ","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"from ","color":"gray","italic":false},{"text":"0","color":"green","italic":false},{"text":" to ","color":"gray","italic":false},{"text":"200%","color":"green","italic":false},{"text":" depending ","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"on the current light level.","color":"gray","italic":false}]'
data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
data modify storage blue:lore_builder NewLore append value '[{"text":"Current Light Level:","color":"gray","italic":false}]'

scoreboard players operation Temp_Lvl I_LightLevel = @s I_LightLevel
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute if score Temp_Lvl I_LightLevel matches 0..5 in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"score\":{\"name\":\"Temp_Lvl\",\"objective\":\"I_LightLevel\"},\"color\":\"red\",\"italic\":false},{\"text\":\" (\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_A\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\".\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_B\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\"%)\",\"color\":\"dark_gray\",\"italic\":false}]"}
execute if score Temp_Lvl I_LightLevel matches 6..10 in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"score\":{\"name\":\"Temp_Lvl\",\"objective\":\"I_LightLevel\"},\"color\":\"gold\",\"italic\":false},{\"text\":\" (\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_A\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\".\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_B\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\"%)\",\"color\":\"dark_gray\",\"italic\":false}]"}
execute if score Temp_Lvl I_LightLevel matches 11..15 in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\",{\"score\":{\"name\":\"Temp_Lvl\",\"objective\":\"I_LightLevel\"},\"color\":\"green\",\"italic\":false},{\"text\":\" (\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_A\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\".\",\"color\":\"dark_gray\",\"italic\":false},{\"score\":{\"name\":\"Temp_B\",\"objective\":\"I_LightLevel\"},\"color\":\"dark_gray\",\"italic\":false},{\"text\":\"%)\",\"color\":\"dark_gray\",\"italic\":false}]"}
execute in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
execute in minecraft:overworld run setblock 29999978 1 29832 air

data modify storage blue:lore_builder NewLore append value '[{"text":""}]'
#------------------------------------------#