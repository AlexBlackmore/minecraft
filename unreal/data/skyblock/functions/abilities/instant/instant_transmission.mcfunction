execute if block ^ ^1 ^8 air run xp add @p -50 points
execute if block ^ ^1 ^8 air run effect give @p hunger 1
execute if block ^ ^1 ^8 air run effect give @p slow_falling 2
execute if block ^ ^1 ^8 air run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1 1
execute if block ^ ^1 ^8 air run tp @p ^ ^1 ^8
function skyblock:abilities/reset_instant
