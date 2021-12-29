#get storage
function skyblock:multiplayer_storage/get

#check if there already is a cooldown
data modify storage blue:multiplayer_storage data.Cooldown.CooldownName append value CooldownNameCycle
scoreboard players set $CooldownFound Temp 1
scoreboard players set $CooldownItems Temp 0
scoreboard players set $CooldownAbilityPlace Temp 0
function items:item_abilities/right_click/cycle_cooldown_name
scoreboard players add $CooldownAbilityPlace Temp 1

#if there is a cooldown get how much time is on the cooldown
scoreboard players set $CooldownFoundTimer Temp 0
execute if score $CooldownCanUse Temp matches 0 run function items:item_abilities/right_click/cooldown_checktimer
function skyblock:multiplayer_storage/save

#if there is a cooldown say for how many seconds
execute store result score $CooldownTime Temp run data get storage blue:cooldown CooldownTimerCheck
execute unless score $CooldownCanUse Temp matches 1 run tellraw @s [{"text": "This Ability is on cooldown for ","color":"red"},{"score":{"name":"$CooldownTime","objective":"Temp","color":"red"}},{"text":"s","color":"red"}]
execute unless score $CooldownCanUse Temp matches 1 run playsound entity.enderman.teleport player @s ^ ^ ^ 1 0.5 1
#----------------REDUCE MANA---------------#
execute if score $CooldownCanUse Temp matches 1 run scoreboard players add @s CooldownPlayer 1

execute if score $CooldownCanUse Temp matches 1 run scoreboard players operation @s PlayerMana -= $ManaCost Temp
execute if score $CooldownCanUse Temp matches 1 if score $ManaCost Temp matches 1.. run scoreboard players set @s I_ActionbarTimer 40
execute if score $CooldownCanUse Temp matches 1 if score $ManaCost Temp matches 1.. run title @s actionbar ["",{"score":{"name":"@s","objective":"PlayerHP"},"color":"red"},{"text":"/","color":"red"},{"score":{"name":"@s","objective":"P_Health"},"color":"red"},{"text":"❤    ","color":"red"},{"text":"-","color":"aqua"},{"nbt":"ItemAbility[{Activation:\"RIGHT CLICK\"}].Mana","storage":"blue:item","color":"aqua"},{"text":" Mana (","color":"aqua"},{"nbt":"ItemAbility[{Activation:\"RIGHT CLICK\"}].Name","storage":"blue:item","color":"gold"},{"text":")    ","color":"aqua"},{"score":{"name":"@s","objective":"PlayerMana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"P_ManaPool"},"color":"aqua"},{"text":"✎ Mana","color":"aqua"}]
#--------------ITEM ABILITIES--------------#
execute if score $CooldownCanUse Temp matches 1 run function items:item_abilities/right_click/ability_list

scoreboard players set $CooldownCanUse Temp 0


 