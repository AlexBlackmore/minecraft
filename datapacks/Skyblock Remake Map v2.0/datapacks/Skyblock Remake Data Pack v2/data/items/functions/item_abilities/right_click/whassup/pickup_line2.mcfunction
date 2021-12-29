execute as @a[tag=WhassupLine] at @s run playsound minecraft:block.wooden_pressure_plate.click_on master @s ~ ~ ~ 1 0.9 1

scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 6
function skyblock:random/range_lcg
execute if score out RandMath matches 1 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ How does a lobster answer ? Shello!","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]
execute if score out RandMath matches 2 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ Hello?","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]
execute if score out RandMath matches 3 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ Someone answers!","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]
execute if score out RandMath matches 4 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ Hey what do you need?","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]
execute if score out RandMath matches 5 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ You hear the line pick up...","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]
execute if score out RandMath matches 6 run tellraw @a[tag=WhassupLine] ["",{"text":"✆ You again? What do you want this time?","color":"green"},{"text":" [RIGHT CLICK AGAIN]","color":"dark_green","bold":true}]

scoreboard players set @a[tag=WhassupLine] I_WhassupTimer2 100
tag @a[tag=WhassupLine] add WhassupCanPickup
tag @a[tag=WhassupLine] add CanOpenMaddox
execute as @a[tag=WhassupLine] at @s run function items:item_abilities/right_click/whassup/open
tag @a[tag=WhassupLine] remove WhassupLine
