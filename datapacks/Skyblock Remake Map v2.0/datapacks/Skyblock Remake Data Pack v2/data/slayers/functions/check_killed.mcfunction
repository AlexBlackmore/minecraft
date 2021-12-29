#===================NOTE===================#
#  This function was coded by TheCarotte   #
# Please don't claim this as your own work #
#==========================================#
#----------------BOSS KILLED---------------#
tag @e remove This
execute as @e[tag=Slayer] if score @s PlayerID = @p PlayerID run tag @s add This
execute unless entity @e[tag=This] run function slayers:slayer_killed
#-----------------------------------------#