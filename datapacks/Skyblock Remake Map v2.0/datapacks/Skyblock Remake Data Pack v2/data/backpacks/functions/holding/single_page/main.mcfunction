execute as @s[tag=!given_id] run function backpacks:give_id
tag @s[tag=!holding_backpack] add summoning_cart
execute if entity @s[tag=!holding_backpack] run function backpacks:holding/single_page/summon_cart
tag @s add holding_backpack
function backpacks:link
execute store result score @s backpacks.select run data get entity @s SelectedItemSlot
execute unless score @s backpacks.select = @s backpacks.previd run function backpacks:not_holding/main
execute run scoreboard players operation @s backpacks.previd = @s backpacks.select
execute as @e[type=chest_minecart,limit=1,sort=nearest,tag=backpack,distance=0..2] run function backpacks:holding/single_page/update_item/main