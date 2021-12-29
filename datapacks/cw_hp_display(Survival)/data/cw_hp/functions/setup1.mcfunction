scoreboard players operation @s cw_hp_id = .system cw_hp_id
scoreboard players operation .search cw_hp_id = .system cw_hp_id
data modify storage cw_hp temp set value ''
execute unless data entity @s CustomName run execute as @s run function cw_hp:set_default_name
data modify storage cw_hp temp set from entity @s CustomName
function cw_hp:set_data