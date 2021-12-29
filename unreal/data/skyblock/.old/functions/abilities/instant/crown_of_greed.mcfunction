tag @p[advancements={skyblock:commands/instant/crown_of_greed=true}] add xp_loss

scoreboard objectives add xp_level dummy "XP Level" 
scoreboard objectives add xp_target dummy "XP Target" 
scoreboard objectives add sharpness dummy "sharpness" 

execute store result score @p[tag=xp_loss] xp_level run xp query @p[tag=xp_loss] levels
scoreboard players operation @p[tag=xp_loss] xp_target = @p[tag=xp_loss] xp_level
execute store result score @p[tag=xp_loss] sharpness run data get entity @p[tag=xp_loss] SelectedItem.tag.Enchantments[{id:"minecraft:sharpness"}].lvl
scoreboard players operation @p[tag=xp_loss] xp_target -= @p[tag=xp_loss] sharpness
scoreboard players set @p[tag=xp_loss,scores={xp_target=..0}] xp_target 0

tellraw @p[tag=xp_loss] ["",{"text":"[Crown of Greed: -","italic":true,"color":"gray"},{"score":{"name":"*","objective":"sharpness"},"italic":true,"color":"gray"},{"text":" Levels]","italic":true,"color":"gray"}]

execute unless score @p[tag=xp_loss] xp_level = @p[tag=xp_loss] xp_target run function skyblock:xp_target

scoreboard objectives remove xp_level
scoreboard objectives remove xp_target
scoreboard objectives remove sharpness

tag @p[tag=xp_loss] remove xp_loss

advancement revoke @p[tag=xp_loss] only skyblock:commands/instant/crown_of_greed
