scoreboard players remove @s I_WhassupTimer 1
execute if score @s I_WhassupTimer matches 1 run function items:item_abilities/right_click/whassup/pickup_line
execute if score @s I_WhassupTimer matches 45..60 at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s I_WhassupTimer matches 40 run function items:item_abilities/right_click/whassup/2nd_ring
execute if score @s I_WhassupTimer matches 25..39 at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
execute if score @s I_WhassupTimer matches 20 run function items:item_abilities/right_click/whassup/3rd_ring
execute if score @s I_WhassupTimer matches 5..19 at @s run playsound block.note_block.pling player @s ~ ~ ~ 1 2 1