#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------DISPLAY------------------#
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign
tag @s add SetHealthDisplay
data modify entity @s[tag=!TarantulaChild] CustomName set value '""'
scoreboard players operation $Health/2 Temp = @s DisplayMaxHealth
scoreboard players operation $Health/2 Temp /= c2 Constant

execute if score $Health/2 Temp >= @s P_Health if entity @s[tag=!Slayer] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"[","color":"dark_gray"},{"text":"Lv","color":"gray"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayLevel"},"color":"gray"},{"text":"] ","color":"dark_gray"},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"yellow"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayMaxHealth"},"color":"green"},{"text":"❤","color":"red"}]'}
execute unless score $Health/2 Temp >= @s P_Health if entity @s[tag=!Slayer] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"[","color":"dark_gray"},{"text":"Lv","color":"gray"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayLevel"},"color":"gray"},{"text":"] ","color":"dark_gray"},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"/","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"DisplayMaxHealth"},"color":"green"},{"text":"❤","color":"red"}]'}

execute if entity @s[tag=!Slayer,tag=!TarantulaChild] in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1

execute if score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=RevenantHorror] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"aqua"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"yellow"},{"text":"❤","color":"red"}]'}
execute unless score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=RevenantHorror] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"aqua"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=Slayer,tag=RevenantHorror] in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1

execute if score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=TarantulaBroodfather] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"dark_purple","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"dark_red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"yellow"},{"text":"❤","color":"red"}]'}
execute unless score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=TarantulaBroodfather] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"dark_purple","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"dark_red"},{"text":" ","color":"red"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=Slayer,tag=TarantulaBroodfather] in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1

execute if score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=SvenPackmaster] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"yellow"},{"text":"❤","color":"red"}]'}
execute unless score $Health/2 Temp >= @s P_Health if entity @s[tag=Slayer,tag=SvenPackmaster] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=Slayer,tag=SvenPackmaster] in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1

execute if score $Health/2 Temp >= @s P_Health if entity @s[tag=SvenPup] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"yellow"},{"text":"❤","color":"red"}]'}
execute unless score $Health/2 Temp >= @s P_Health if entity @s[tag=SvenPup] in minecraft:overworld run data merge block 29999978 1 29832 {Text1:'["",{"text":"☠ ","color":"red","italic":false},{"nbt":"HandItems[1].tag.display.Name","entity":"@e[tag=SetHealthDisplay]","interpret":true,"color":"white"},{"text":" ","color":"white"},{"score":{"name":"@e[tag=SetHealthDisplay]","objective":"P_Health"},"color":"green"},{"text":"❤","color":"red"}]'}
execute if entity @s[tag=SvenPup] in minecraft:overworld run data modify entity @s CustomName set from block 29999978 1 29832 Text1

tag @s remove SetHealthDisplay
#---------IF ITS A WITHERBORN WITHER-------#
function armor:full_set_bonus/abilities/witherborn/kill
#------------------------------------------#