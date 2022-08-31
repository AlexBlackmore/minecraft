tellraw @s ["",{"text":"BLOCK DAMAGE! ","italic":true,"bold":true,"color":"gold"},{"text":"-Resistance IV","italic":false,"color":"red"}]

effect clear @s minecraft:resistance
tag @s add block_damage
schedule function skyblock:abilities/instant/block_damage_end 60s replace 