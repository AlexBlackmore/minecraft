execute as @a[predicate=backpacks:holding] at @s run function backpacks:holding/main
execute as @a[predicate=!backpacks:holding,tag=holding_backpack] at @s run function backpacks:not_holding/main