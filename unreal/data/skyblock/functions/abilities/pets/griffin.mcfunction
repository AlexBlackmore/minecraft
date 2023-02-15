tag @p[advancements={skyblock:pets/griffin=true}] add pet
tag @p[advancements={skyblock:pets/griffin/uncommon=true}] add pet
tag @p[advancements={skyblock:pets/griffin/rare=true}] add pet
tag @p[advancements={skyblock:pets/griffin/epic=true}] add pet
tag @p[advancements={skyblock:pets/griffin/legendary=true}] add pet

attribute @p[tag=pet] minecraft:generic.luck modifier remove 11-53-69-89-24
attribute @p[tag=pet] minecraft:generic.attack_damage modifier remove 77-36-39-73-73
attribute @p[tag=pet] minecraft:generic.attack_damage modifier remove 94-38-84-70-31

execute unless entity @p[tag=pet,nbt={Inventory:[{tag:{Name:"Griffin"}}]}] run tag @p[tag=pet] remove pet
advancement revoke @p[tag=!pet] from skyblock:pets/griffin

tag @p[tag=pet,advancements={skyblock:pets/griffin=true}] add common
tag @p[tag=pet,advancements={skyblock:pets/griffin/uncommon=true}] add uncommon
tag @p[tag=pet,advancements={skyblock:pets/griffin/rare=true}] add rare
tag @p[tag=pet,advancements={skyblock:pets/griffin/epic=true}] add epic
tag @p[tag=pet,advancements={skyblock:pets/griffin/legendary=true}] add legendary


attribute @p[tag=pet,level=10..19] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 1 add
attribute @p[tag=pet,level=20..29] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 2 add
attribute @p[tag=pet,level=30..39] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 3 add
attribute @p[tag=pet,level=40..49] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 4 add
attribute @p[tag=pet,level=50..59] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 5 add
attribute @p[tag=pet,level=60..69] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 6 add
attribute @p[tag=pet,level=70..79] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 7 add
attribute @p[tag=pet,level=80..89] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 8 add
attribute @p[tag=pet,level=90..99] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 9 add
attribute @p[tag=pet,level=100..] minecraft:generic.luck modifier add 11-53-69-89-24 "Pet Luck" 10 add

attribute @p[tag=pet,level=20..39] minecraft:generic.attack_damage modifier add 77-36-39-73-73 "Pet Strength" 1 add
attribute @p[tag=pet,level=40..59] minecraft:generic.attack_damage modifier add 77-36-39-73-73 "Pet Strength" 2 add
attribute @p[tag=pet,level=60..79] minecraft:generic.attack_damage modifier add 77-36-39-73-73 "Pet Strength" 3 add
attribute @p[tag=pet,level=80..99] minecraft:generic.attack_damage modifier add 77-36-39-73-73 "Pet Strength" 4 add
attribute @p[tag=pet,level=100..] minecraft:generic.attack_damage modifier add 77-36-39-73-73 "Pet Strength" 5 add


effect give @p[tag=uncommon] regeneration 15 4
effect give @p[tag=uncommon] strength 15 6

effect give @p[tag=rare] regeneration 15 5
effect give @p[tag=rare] strength 15 6

effect give @p[tag=epic] regeneration 15 5
effect give @p[tag=epic] strength 15 7

effect give @p[tag=legendary] regeneration 15 6
effect give @p[tag=legendary] strength 15 7


scoreboard objectives add health dummy "Health"
scoreboard objectives add max_health dummy "Max Health"

execute as @p[tag=legendary] store result score @s health run data get entity @s Health 100
execute as @p[tag=legendary] store result score @s max_health run attribute @s minecraft:generic.max_health get 100
execute as @p[tag=legendary] run scoreboard players operation @s health /= @s max_health 
attribute @p[tag=legendary,scores={health=85..}] minecraft:generic.attack_damage modifier add 94-38-84-70-31 "King of Kings" 0.15 multiply


execute if entity @p[tag=pet] run schedule function skyblock:abilities/pets/griffin 4s replace
tag @p[tag=pet] remove pet
tag @p[tag=common] remove common
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary