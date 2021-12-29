#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------------PETS-------------------#
execute if score @s AddFarming matches 1.. run scoreboard players operation $SkillEXP Temp = $FarmingEXP Temp
execute if score @s AddMining matches 1.. run scoreboard players operation $SkillEXP Temp = $MiningEXP Temp
execute if score @s AddCombat matches 1.. run scoreboard players operation $SkillEXP Temp = $CombatEXP Temp
execute if score @s AddForaging matches 1.. run scoreboard players operation $SkillEXP Temp = $ForagingEXP Temp
execute if score @s AddAlchemy matches 1.. run scoreboard players operation $SkillEXP Temp = $AlchemyEXP Temp
execute if score @s AddFishing matches 1.. run scoreboard players operation $SkillEXP Temp = $FishingEXP Temp
execute if score @s AddEnchanting matches 1.. run scoreboard players operation $SkillEXP Temp = $EnchantingEXP Temp

execute if score @s AddFarming matches 1.. run function pets:exp_system/skills/combat/wrong_skill
execute if score @s AddMining matches 1.. run function pets:exp_system/skills/combat/wrong_skill
execute if score @s AddCombat matches 1.. run function pets:exp_system/skills/combat/right_skill
execute if score @s AddForaging matches 1.. run function pets:exp_system/skills/combat/wrong_skill
execute if score @s AddAlchemy matches 1.. run function pets:exp_system/skills/combat/wrong_skill2
execute if score @s AddFishing matches 1.. run function pets:exp_system/skills/combat/wrong_skill
execute if score @s AddEnchanting matches 1.. run function pets:exp_system/skills/combat/wrong_skill2
#------------------------------------------#