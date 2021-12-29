function skyblock:multiplayer_storage/get
scoreboard players set $CooldownLength Temp 1
execute store result score $CooldownLength Temp run data get storage blue:multiplayer_storage data.Cooldown.CooldownTimer
execute if score $CooldownLength Temp matches 1.. run function items:item_abilities/right_click/cooldown_countdown
#tellraw @p [{"nbt":"data.Cooldown","storage":"blue:multiplayer_storage","color":"red"}]
function skyblock:multiplayer_storage/save