#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------DAMAGE AMOUNT---------------#
scoreboard players set in RandMath 150
execute if entity @e[type=ender_dragon,name="Superior Dragon"] run scoreboard players set in RandMath 200
execute if entity @e[type=ender_dragon,name="Strong Dragon"] run scoreboard players set in RandMath 250
execute if entity @e[type=ender_dragon,name="Unstable Dragon"] run scoreboard players set in RandMath 300
scoreboard players set in1 RandMath 350
execute if entity @e[type=ender_dragon,name="Superior Dragon"] run scoreboard players set in1 RandMath 400
execute if entity @e[type=ender_dragon,name="Strong Dragon"] run scoreboard players set in1 RandMath 450
execute if entity @e[type=ender_dragon,name="Unstable Dragon"] run scoreboard players set in1 RandMath 450
function skyblock:random/range_lcg
scoreboard players operation $Damage Temp = out RandMath
function skyblock:random/range_lcg
scoreboard players operation $Damage Temp += out RandMath

scoreboard players operation @s[gamemode=!creative] ApplyTrueDamage += $Damage Temp
#--------------ATTACK MESSAGE--------------#
tellraw @s ["",{"text":"☬ ","color":"dark_purple"},{"selector":"@e[type=ender_dragon,name=!\"Ender Dragon\",limit=1]"},{"text":" used ","color":"light_purple"},{"text":"Lightning Strike","color":"yellow"},{"text":" on you for ","color":"light_purple"},{"score":{"name":"$Damage","objective":"Temp"},"color":"red"},{"text":" damage.","color":"red"}]
execute if score @s PlayerHP matches 0 run function stats:death/check
#------------------------------------------#