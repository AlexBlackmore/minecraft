scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..19]

execute as @p[level=20..] store success score @s dummy run enchant @s minecraft:frost_walker 2
xp add @p[level=20..,scores={dummy=1}] -20 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=20..,scores={dummy=0}]

scoreboard players set @p dummy 0