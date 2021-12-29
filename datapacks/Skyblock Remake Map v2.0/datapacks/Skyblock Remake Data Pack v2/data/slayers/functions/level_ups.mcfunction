#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------------EXP-------------------#
tellraw @s {"text":"  SLAYER QUEST COMPLETE!","color":"green","bold":true}

execute unless score @s S_ZombieEXP >= @s S_ZombieEXPN if score @s S_CQuestType matches 1 unless score @s S_ZombieLvl matches 9.. run tellraw @s ["",{"text":"   Zombie Slayer LVL ","color":"yellow","bold":false},{"score":{"name":"@s","objective":"S_ZombieLvl"},"color":"yellow"},{"text":" - ","color":"dark_purple"},{"text":"Next LVL in ","color":"gray"},{"score":{"name":"$RemainingEXPZ","objective":"Temp"},"color":"light_purple"},{"text":" XP","color":"light_purple"},{"text":"!","color":"gray"}]
execute unless score @s S_SpiderEXP >= @s S_SpiderEXPN if score @s S_CQuestType matches 2 unless score @s S_SpiderLvl matches 9.. run tellraw @s ["",{"text":"   Spider Slayer LVL ","color":"yellow","bold":false},{"score":{"name":"@s","objective":"S_SpiderLvl"},"color":"yellow"},{"text":" - ","color":"dark_purple"},{"text":"Next LVL in ","color":"gray"},{"score":{"name":"$RemainingEXPS","objective":"Temp"},"color":"light_purple"},{"text":" XP","color":"light_purple"},{"text":"!","color":"gray"}]
execute unless score @s S_WolfEXP >= @s S_WolfEXPN if score @s S_CQuestType matches 3 unless score @s S_WolfLvl matches 9.. run tellraw @s ["",{"text":"   Wolf Slayer LVL ","color":"yellow","bold":false},{"score":{"name":"@s","objective":"S_WolfLvl"},"color":"yellow"},{"text":" - ","color":"dark_purple"},{"text":"Next LVL in ","color":"gray"},{"score":{"name":"$RemainingEXPW","objective":"Temp"},"color":"light_purple"},{"text":" XP","color":"light_purple"},{"text":"!","color":"gray"}]

execute unless score @s S_ZombieEXP >= @s S_ZombieEXPN if score @s S_CQuestType matches 1 if score @s S_ZombieLvl matches 9.. run tellraw @s ["",{"text":"   Zombie Slayer LVL","color":"yellow","bold":false},{"text":" - ","color":"dark_purple"},{"text":"MAXED OUT!","color":"green","bold":true}]
execute unless score @s S_SpiderEXP >= @s S_SpiderEXPN if score @s S_CQuestType matches 2 if score @s S_SpiderLvl matches 9.. run tellraw @s ["",{"text":"   Spider Slayer LVL","color":"yellow","bold":false},{"text":" - ","color":"dark_purple"},{"text":"MAXED OUT!","color":"green","bold":true}]
execute unless score @s S_WolfEXP >= @s S_WolfEXPN if score @s S_CQuestType matches 3 if score @s S_WolfLvl matches 9.. run tellraw @s ["",{"text":"   Wolf Slayer LVL","color":"yellow","bold":false},{"text":" - ","color":"dark_purple"},{"text":"MAXED OUT!","color":"green","bold":true}]

execute if score @s S_ZombieEXP >= @s S_ZombieEXPN unless score @s S_ZombieLvl matches 9.. run function slayers:level_up/zombie
execute if score @s S_SpiderEXP >= @s S_SpiderEXPN unless score @s S_SpiderLvl matches 9.. run function slayers:level_up/spider
execute if score @s S_WolfEXP >= @s S_WolfEXPN unless score @s S_WolfLvl matches 9.. run function slayers:level_up/wolf

