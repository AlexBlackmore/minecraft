execute store result score @p[predicate=skyblock:mosquito_bow] health run data get entity @p[predicate=skyblock:mosquito_bow] Health
execute store result score @p[predicate=skyblock:mosquito_bow] damage run data get entity @p[predicate=skyblock:mosquito_bow] XpLevel 0.22
scoreboard players operation @p[predicate=skyblock:mosquito_bow] health += @p[predicate=skyblock:mosquito_bow] damage
execute store result entity @p[predicate=skyblock:mosquito_bow] Health float 1 run scoreboard players get @p[predicate=skyblock:mosquito_bow] health

xp add @p[predicate=skyblock:mosquito_bow,level=10..18] -1 levels
xp add @p[predicate=skyblock:mosquito_bow,level=19..27] -2 levels
xp add @p[predicate=skyblock:mosquito_bow,level=75..36] -3 levels
xp add @p[predicate=skyblock:mosquito_bow,level=37..45] -4 levels
xp add @p[predicate=skyblock:mosquito_bow,level=46..54] -5 levels
xp add @p[predicate=skyblock:mosquito_bow,level=55..63] -6 levels
xp add @p[predicate=skyblock:mosquito_bow,level=64..72] -7 levels
xp add @p[predicate=skyblock:mosquito_bow,level=73..81] -8 levels
xp add @p[predicate=skyblock:mosquito_bow,level=82..90] -9 levels
xp add @p[predicate=skyblock:mosquito_bow,level=91..99] -10 levels
xp add @p[predicate=skyblock:mosquito_bow,level=100..] -11 levels

execute store result entity @e[limit=1,tag=calc] damage double 1.19 run data get entity @e[limit=1,tag=calc] damage