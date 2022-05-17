scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..9]

execute as @p[level=10..] store success score @s dummy run enchant @s minecraft:silk_touch
xp add @p[level=10..,scores={dummy=1}] -10 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=10..,scores={dummy=0}]

scoreboard players set @p dummy 0