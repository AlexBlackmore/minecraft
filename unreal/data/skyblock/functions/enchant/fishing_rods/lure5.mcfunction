scoreboard objectives add dummy dummy "dummy"

playsound minecraft:block.dispenser.fail player @p[level=0..29]

execute as @p[level=30..] store success score @s dummy run enchant @s minecraft:lure 3
item modify entity @p[level=30..,scores={dummy=1}] weapon.mainhand skyblock:enchantments/increase_lure
item modify entity @p[level=30..,scores={dummy=1}] weapon.mainhand skyblock:enchantments/increase_lure
xp add @p[level=30..,scores={dummy=1}] -30 levels
playsound minecraft:block.enchantment_table.use player @p[scores={dummy=1}]


playsound minecraft:block.dispenser.fail player @p[level=30..,scores={dummy=0}]

scoreboard players set @p dummy 0