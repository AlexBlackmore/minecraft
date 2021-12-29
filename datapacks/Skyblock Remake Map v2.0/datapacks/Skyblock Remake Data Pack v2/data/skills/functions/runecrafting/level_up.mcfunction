scoreboard players operation @s Temp = @s S_Runecrafting
scoreboard players add @s S_Runecrafting 1
scoreboard players add @s S_RunecraftingN 1
playsound entity.player.levelup master @s ~ ~ ~ 1 1 1
tellraw @s ["",{"text":"------------------------------------------","bold":true,"color":"dark_aqua"},{"text":"\n"},{"text":" SKILL LEVEL UP ","bold":true,"color":"aqua"},{"text":"Runecrafting","color":"dark_aqua"},{"text":" ","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"Temp"},"color":"dark_gray"},{"text":"\u2192","color":"dark_gray"},{"score":{"name":"@s","objective":"S_Runecrafting"},"color":"dark_aqua"},{"text":"\n\n "},{"text":"REWARDS\n   ","bold":true,"color":"green"},{"text":"???","color":"gray"},{"text":"\n"},{"text":"------------------------------------------","bold":true,"color":"dark_aqua"}]
scoreboard players set @s S_RunecraftEXP 0

execute if score @s S_Runecrafting >= @s S_MaxRunecraft run scoreboard players set @s S_RunecraftEXPN 0