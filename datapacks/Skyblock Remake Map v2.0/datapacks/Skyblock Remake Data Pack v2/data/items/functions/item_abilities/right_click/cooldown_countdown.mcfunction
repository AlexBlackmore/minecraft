scoreboard players set $CooldownCount Temp 0
execute store result score $CooldownCount Temp run data get storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]

scoreboard players remove $CooldownCount Temp 1
execute if score $CooldownCount Temp matches 1.. store result storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0] int 1 run scoreboard players get $CooldownCount Temp
execute if score $CooldownCount Temp matches ..0 run scoreboard players remove @s CooldownPlayer 1

execute if score $CooldownCount Temp matches 1.. run data modify storage blue:multiplayer_storage data.Cooldown.CooldownName append from storage blue:multiplayer_storage data.Cooldown.CooldownName[0]
data remove storage blue:multiplayer_storage data.Cooldown.CooldownName[0]

execute if score $CooldownCount Temp matches 1.. run data modify storage blue:multiplayer_storage data.Cooldown.CooldownTimer append from storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]
data remove storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]

scoreboard players remove $CooldownLength Temp 1
execute if score $CooldownLength Temp matches 1.. run function items:item_abilities/right_click/cooldown_countdown
