scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..49]

execute as @p[level=50..] store success score @s dummy run enchant @s minecraft:power 5
xp add @p[level=50..,scores={dummy=1}] -50 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=50..,scores={dummy=0}]

scoreboard players set @p dummy 0