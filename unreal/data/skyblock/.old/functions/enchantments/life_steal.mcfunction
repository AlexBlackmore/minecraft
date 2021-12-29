tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Life Steal:1}}}] add life_steal1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Life Steal:2}}}] add life_steal2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Life Steal:3}}}] add life_steal3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Life Steal:4}}}] add life_steal4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Life Steal:5}}}] add life_steal5

scoreboard objectives add health dummy "Health"

execute as @p[tag=life_steal1] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.005
execute as @p[tag=life_steal2] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.01
execute as @p[tag=life_steal3] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.015
execute as @p[tag=life_steal4] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.02
execute as @p[tag=life_steal5] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.025

tellraw @p[tag=life_steal1,scores={health=4..}] {"text":"[@: Life Steal I]","italic":true,"color":"gray"}
tellraw @p[tag=life_steal2,scores={health=4..}] {"text":"[@: Life Steal II]","italic":true,"color":"gray"}
tellraw @p[tag=life_steal3,scores={health=4..}] {"text":"[@: Life Steal III]","italic":true,"color":"gray"}
tellraw @p[tag=life_steal4,scores={health=4..}] {"text":"[@: Life Steal IV]","italic":true,"color":"gray"}
tellraw @p[tag=life_steal5,scores={health=4..}] {"text":"[@: Life Steal V]","italic":true,"color":"gray"}

effect give @p[tag=life_steal,scores={health=4..7}] instant_health 1 0
tellraw @p[tag=life_steal,scores={health=4..7}] {"text":"[Life Steal: +Instant Health]","italic":true,"color":"gray"}

effect give @p[tag=life_steal,scores={health=8..15}] instant_health 1 1
tellraw @p[tag=life_steal,scores={health=8..15}] {"text":"[Life Steal: +Instant Health II]","italic":true,"color":"gray"}

effect give @p[tag=life_steal,scores={health=16..}] instant_health 1 2
tellraw @p[tag=life_steal,scores={health=16..}] {"text":"[Life Steal: +Instant Health III]","italic":true,"color":"gray"}                                                        

tag @p[tag=life_steal1] remove life_steal1
tag @p[tag=life_steal2] remove life_steal2
tag @p[tag=life_steal3] remove life_steal3
tag @p[tag=life_steal4] remove life_steal4
tag @p[tag=life_steal5] remove life_steal5