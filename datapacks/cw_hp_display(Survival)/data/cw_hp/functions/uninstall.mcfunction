tellraw @s {"text":"Mob Health Display datapack successfully uninstalled!","color":"#ff8585"}
scoreboard objectives remove cw_hp
scoreboard objectives remove cw_hp_id
data remove storage cw_hp data
data remove storage cw_hp temp
setblock 76891 0 76891 bedrock
forceload remove 76891 76891