#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------UNSTABLE DRAGON IMPLOSION---------#
particle minecraft:explosion_emitter ~ ~ ~
#--------------ATTACK DAMAGE---------------#
scoreboard players set in RandMath 10
scoreboard players set in1 RandMath 15
function skyblock:random/range_lcg

execute as @a[distance=..20] run scoreboard players operation $Damage Temp = @s P_EHP
execute as @a[distance=..20] run scoreboard players operation $Damage Temp *= out RandMath
execute as @a[distance=..20] run scoreboard players operation $Damage Temp /= c100 Constant

scoreboard players operation @s[gamemode=!creative] ApplyTrueDamage += $Damage Temp
execute as @a[distance=..20] run tellraw @s ["",{"text":"☬ ","color":"dark_purple"},{"selector":"@e[type=ender_dragon,name=!\"Ender Dragon\",limit=1]"},{"text":" used ","color":"light_purple"},{"text":"Implosion","color":"yellow"},{"text":" on you for ","color":"light_purple"},{"score":{"name":"$Damage","objective":"Temp"},"color":"red"},{"text":" damage.","color":"red"}]
execute as @a[distance=..20] at @s if score @s PlayerHP matches 0 run function stats:death/check
#------------------------------------------#