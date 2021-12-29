tag @p[advancements={skyblock:commands/ambient/block_damage=true}] add block_damage
tag @p[advancements={skyblock:commands/instant/block_damage=true}] add block_damage
tag @p[tag=block_damage,nbt={Inventory:[{Slot:102b,tag:{Name:"Guardian Chestplate"}}]}] add chestplate

effect clear @p[tag=chestplate,advancements={skyblock:commands/instant/block_damage=true}] resistance
effect give @p[tag=chestplate,advancements={skyblock:commands/instant/block_damage=true}] hunger 60

scoreboard objectives add health dummy "Health"
execute as @p[tag=chestplate] run execute store result score @s max_health run attribute @s minecraft:generic.max_health get
execute as @p[tag=chestplate] run execute store result score @s health run data get entity @s Health

execute as @p[tag=chestplate] if score @s health = @s max_health unless data entity @s ActiveEffects[{Id:17b}] run effect give @s resistance 15 4
scoreboard objectives remove health

advancement revoke @p[tag=block_damage] only skyblock:commands/instant/block_damage
advancement revoke @p[advancements={skyblock:commands/ambient/block_damage=true},tag=!chestplate] only skyblock:commands/ambient/block_damage
execute if entity @p[advancements={skyblock:commands/ambient/block_damage=true}] run schedule function skyblock:abilities/ambient/block_damage 4s replace
tag @p[tag=block_damage] remove block_damage
tag @p[tag=chestplate] remove chestplate

