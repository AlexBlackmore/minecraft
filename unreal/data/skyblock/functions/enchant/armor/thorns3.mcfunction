scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..44]

execute as @p[level=45..] store success score @s dummy run enchant @s minecraft:thorns 3
xp add @p[level=45..,scores={dummy=1}] -45 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=45..,scores={dummy=0}]

scoreboard players set @p dummy 0