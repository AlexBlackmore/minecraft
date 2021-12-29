scoreboard players add .system cw_hp_id 1
execute if score .system cw_hp_id matches 512.. run scoreboard players set .system cw_hp_id 0
scoreboard players set .bool cw_hp_id 0
execute as @e if score @s cw_hp_id = .system cw_hp_id run scoreboard players set .bool cw_hp_id 1
execute if score .bool cw_hp_id matches 0 run function cw_hp:setup1
execute if score .bool cw_hp_id matches 1 run function cw_hp:setup