scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..29]

execute as @p[level=30..] store success score @s dummy run enchant @s minecraft:efficiency 5
xp add @p[level=30..,scores={dummy=1}] -30 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=30..,scores={dummy=0}]

scoreboard players set @p dummy 0