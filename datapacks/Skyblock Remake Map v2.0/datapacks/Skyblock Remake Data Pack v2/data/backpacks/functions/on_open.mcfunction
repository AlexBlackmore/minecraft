playsound minecraft:entity.horse.armor master @s ~ ~ ~ 0.7
#execute if score @s backpacks.pages matches 1 run function backpacks:holding/single_page/open
execute if score @s backpacks.pages matches 2.. run function backpacks:holding/multiple_page/open
advancement revoke @s only backpacks:open_backpack