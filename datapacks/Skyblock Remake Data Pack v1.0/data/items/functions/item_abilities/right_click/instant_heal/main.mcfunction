scoreboard players operation @s PlayerHP += $HealAmount Temp
function stats:calculate/current_effective_health
tellraw @s ["",{"text":"You healed yourself for ","color":"green","bold":true},{"score":{"name":"$HealAmount","objective": "Temp"},"color":"green","bold":true},{"text":" health!","color":"green","bold":true}]
playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 1 1 1
scoreboard players set @s I_HealChargesT 300