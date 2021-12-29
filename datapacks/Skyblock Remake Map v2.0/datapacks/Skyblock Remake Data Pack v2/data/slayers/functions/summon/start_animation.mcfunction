#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------SUMMON AECS---------------#
execute if score @s S_CQuestType matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["ZombieSlayerSummon","SlayerAnimAEC","NewAnimAEC"],Duration:45}
execute if score @s S_CQuestType matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["SpiderSlayerSummon","SlayerAnimAEC","NewAnimAEC"],Duration:45}
execute if score @s S_CQuestType matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["WolfSlayerSummon","SlayerAnimAEC","NewAnimAEC"],Duration:45}
scoreboard players set @s S_NoLoop 1
tag @s add Spawning
function slayers:scoreboard/tree
#------------------AEC ID------------------#
scoreboard players operation @e[tag=SlayerAnimAEC,sort=nearest,limit=1] PlayerID = @s PlayerID
