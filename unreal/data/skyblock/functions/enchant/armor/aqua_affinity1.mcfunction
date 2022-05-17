scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..14]

execute as @p[level=15..] store success score @s dummy run enchant @s minecraft:aqua_affinity
xp add @p[level=15..,scores={dummy=1}] -15 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=15..,scores={dummy=0}]

scoreboard players set @p dummy 0