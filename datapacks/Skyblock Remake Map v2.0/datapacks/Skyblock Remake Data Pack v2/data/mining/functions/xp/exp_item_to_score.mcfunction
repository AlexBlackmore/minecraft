execute store result score $MiningEXP Temp run data get entity @s Item.tag.Skill.Amount
scoreboard players operation @p AddMining = $MiningEXP Temp
kill @s