scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..24]

execute as @p[level=25..] store success score @s dummy run enchant @s minecraft:flame
xp add @p[level=25..,scores={dummy=1}] -25 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=25..,scores={dummy=0}]

scoreboard players set @p dummy 0