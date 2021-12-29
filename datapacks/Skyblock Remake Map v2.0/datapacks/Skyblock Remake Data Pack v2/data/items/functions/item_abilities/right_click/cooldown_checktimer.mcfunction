#cycle the timers until cooldown
execute unless score $CooldownAbilityPlace Temp matches 0 run scoreboard players remove $CooldownAbilityPlace Temp 1

scoreboard players remove $CooldownItems Temp 1

execute if score $CooldownAbilityPlace Temp matches 0 unless score $CooldownFoundTimer Temp matches 1 run data modify storage blue:cooldown CooldownTimerCheck set from storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]
execute if score $CooldownAbilityPlace Temp matches 0 unless score $CooldownFoundTimer Temp matches 1 store result score $CooldownTime Temp run data get storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]
execute if score $CooldownAbilityPlace Temp matches 0 unless score $CooldownFoundTimer Temp matches 1 if data storage blue:cooldown {CooldownTimerCheck:0} run scoreboard players set $CooldownCanUse Temp 1
execute if score $CooldownAbilityPlace Temp matches 0 unless score $CooldownFoundTimer Temp matches 1 if score $CooldownCanUse Temp matches 1 run data modify storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0] set from entity @s SelectedItem.tag.Base.Abilities[0].Cooldown
execute if score $CooldownAbilityPlace Temp matches 0 run scoreboard players set $CooldownFoundTimer Temp 1

data modify storage blue:multiplayer_storage data.Cooldown.CooldownTimer append from storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]
data remove storage blue:multiplayer_storage data.Cooldown.CooldownTimer[0]

execute if score $CooldownItems Temp matches 1.. run function items:item_abilities/right_click/cooldown_checktimer