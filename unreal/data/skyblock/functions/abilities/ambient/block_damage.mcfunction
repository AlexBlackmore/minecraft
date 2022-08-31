execute store result score @s health run data get entity @s Health
execute store result score @s max_health run attribute @s minecraft:generic.max_health get
execute if score @s health = @s max_health run effect give @s[advancements={skyblock:commands/abilities/block_damage=false}] resistance 15 4
