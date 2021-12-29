#reset the check for new cycle check
scoreboard players set $CooldownFullRot Temp 0
data modify storage blue:cooldown CooldownFullRotCheck set value CooldownNameCycle

#check if the first ability in the cooldown string matches CooldownNameCycle
execute store success score $CooldownFullRot Temp run data modify storage blue:cooldown CooldownFullRotCheck set from storage blue:multiplayer_storage data.Cooldown.CooldownName[0]

#check if the first ability in cooldownName matches the weapons
execute if score $CooldownFullRot Temp matches 1 if score $CooldownFound Temp matches 1 run data modify storage blue:cooldown CooldownNameCheck set from storage blue:item ItemAbility[0].Name
execute if score $CooldownFullRot Temp matches 1 if score $CooldownFound Temp matches 1 store success score $CooldownFound Temp run data modify storage blue:cooldown CooldownNameCheck set from storage blue:multiplayer_storage data.Cooldown.CooldownName[0]
execute if score $CooldownFullRot Temp matches 1 if score $CooldownFound Temp matches 1 run scoreboard players add $CooldownAbilityPlace Temp 1
execute if score $CooldownFullRot Temp matches 1 run scoreboard players add $CooldownItems Temp 1


#if there was a full cycle without finding the cooldown add the cooldown to the list and remove the CooldownNameCycle from the cooldown list
execute if score $CooldownFullRot Temp matches 0 run data remove storage blue:multiplayer_storage data.Cooldown.CooldownName[0]
execute if score $CooldownFullRot Temp matches 0 if score $CooldownFound Temp matches 1 run data modify storage blue:multiplayer_storage data.Cooldown.CooldownName append from entity @s SelectedItem.tag.Base.Abilities[0].Name
execute if score $CooldownFullRot Temp matches 0 if score $CooldownFound Temp matches 1 run data modify storage blue:multiplayer_storage data.Cooldown.CooldownTimer append from entity @s SelectedItem.tag.Base.Abilities[0].Cooldown
execute if score $CooldownFullRot Temp matches 0 if score $CooldownFound Temp matches 1 run scoreboard players set $CooldownCanUse Temp 1

#if the array didn't do a full rotation move every item one to the left
execute if score $CooldownFullRot Temp matches 1 run data modify storage blue:multiplayer_storage data.Cooldown.CooldownName append from storage blue:multiplayer_storage data.Cooldown.CooldownName[0]
execute if score $CooldownFullRot Temp matches 1 run data remove storage blue:multiplayer_storage data.Cooldown.CooldownName[0]


#run this function again when there isn't a full rot
execute if score $CooldownFullRot Temp matches 1.. run function items:item_abilities/right_click/cycle_cooldown_name



