tag @p[advancements={skyblock:commands/enchantments/vampirism=true}] add vampirism

tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:1}}}] add vampirism1
tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:2}}}] add vampirism2
tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:3}}}] add vampirism3
tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:4}}}] add vampirism4
tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:5}}}] add vampirism5
tag @p[tag=vampirism,nbt={SelectedItem:{tag:{Vampirism:6}}}] add vampirism6

tellraw @p[tag=vampirism1] {"text":"[@: Vampirism I]","italic":true,"color":"gray"}
tellraw @p[tag=vampirism2] {"text":"[@: Vampirism II]","italic":true,"color":"gray"}
tellraw @p[tag=vampirism3] {"text":"[@: Vampirism III]","italic":true,"color":"gray"}
tellraw @p[tag=vampirism4] {"text":"[@: Vampirism IV]","italic":true,"color":"gray"}
tellraw @p[tag=vampirism5] {"text":"[@: Vampirism V]","italic":true,"color":"gray"}
tellraw @p[tag=vampirism6] {"text":"[@: Vampirism VI]","italic":true,"color":"gray"}

scoreboard objectives add health dummy "Health"

execute as @p[tag=vampirism1] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.01
execute as @p[tag=vampirism2] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.02
execute as @p[tag=vampirism3] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.03
execute as @p[tag=vampirism4] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.04
execute as @p[tag=vampirism5] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.05
execute as @p[tag=vampirism6] run execute store result score @s health run attribute @s minecraft:generic.max_health get 0.06

effect give @p[tag=vampirism,scores={health=0..7}] instant_health 1 0
tellraw @p[tag=vampirism,scores={health=0..7}] {"text":"[Vampirism: +Instant Health]","italic":true,"color":"gray"}

effect give @p[tag=vampirism,scores={health=8..15}] instant_health 1 1
tellraw @p[tag=vampirism,scores={health=8..15}] {"text":"[Vampirism: +Instant Health II]","italic":true,"color":"gray"}

effect give @p[tag=vampirism,scores={health=16..31}] instant_health 1 2
tellraw @p[tag=vampirism,scores={health=16..31}] {"text":"[Vampirism: +Instant Health III]","italic":true,"color":"gray"}

effect give @p[tag=vampirism,scores={health=32..}] instant_health 1 3
tellraw @p[tag=vampirism,scores={health=32..}] {"text":"[Vampirism: +Instant Health IV]","italic":true,"color":"gray"}                                                         

scoreboard objectives remove health
tag @p[tag=vampirism1] remove vampirism1
tag @p[tag=vampirism2] remove vampirism2
tag @p[tag=vampirism3] remove vampirism3
tag @p[tag=vampirism4] remove vampirism4
tag @p[tag=vampirism5] remove vampirism5
tag @p[tag=vampirism6] remove vampirism6
advancement revoke @p[tag=vampirism] only skyblock:commands/enchantments/vampirism
tag @p[tag=vampirism] remove vampirism