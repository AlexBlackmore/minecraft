tag @p[predicate=skyblock:cooldown,predicate=skyblock:guardian_chestplate] add guardian_chestplate

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"

execute store result score @p[tag=guardian_chestplate] max_health run attribute @p[tag=guardian_chestplate] minecraft:generic.max_health get
execute store result score @p[tag=guardian_chestplate] health run data get entity @p[tag=guardian_chestplate] Health

execute if score @p[tag=guardian_chestplate] health = @p[tag=guardian_chestplate] max_health run effect give @p[tag=guardian_chestplate] minecraft:resistance 11 4

tag @p[tag=guardian_chestplate] remove guardian_chestplate

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/guardian_chestplate=true}] run schedule function skyblock:abilities/ambient/guardian_chestplate 4s replace