tag @p[advancements={skyblock:pets/bee=true}] add pet
tag @p[advancements={skyblock:pets/bee/uncommon=true}] add pet
tag @p[advancements={skyblock:pets/bee/rare=true}] add pet
tag @p[advancements={skyblock:pets/bee/epic=true}] add pet
tag @p[advancements={skyblock:pets/bee/legendary=true}] add pet

attribute @p[tag=pet] minecraft:generic.attack_damage modifier remove 73-82-20-11-52
attribute @p[tag=pet] minecraft:generic.movement_speed modifier remove 26-29-61-30-47
attribute @p[tag=pet] minecraft:generic.attack_damage modifier remove 82-25-45-9-46

execute unless entity @p[tag=pet,nbt={Inventory:[{tag:{Name:"Bee"}}]}] run tag @p[tag=pet] remove pet
advancement revoke @p[tag=!pet] from skyblock:pets/bee

tag @p[tag=pet,advancements={skyblock:pets/bee=true}] add common
tag @p[tag=pet,advancements={skyblock:pets/bee/uncommon=true}] add uncommon
tag @p[tag=pet,advancements={skyblock:pets/bee/rare=true}] add rare
tag @p[tag=pet,advancements={skyblock:pets/bee/epic=true}] add epic
tag @p[tag=pet,advancements={skyblock:pets/bee/legendary=true}] add legendary


attribute @p[tag=pet,level=0..19] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 1 add
attribute @p[tag=pet,level=20..39] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 2 add
attribute @p[tag=pet,level=40..59] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 3 add
attribute @p[tag=pet,level=60..79] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 4 add
attribute @p[tag=pet,level=80..99] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 5 add
attribute @p[tag=pet,level=100..] minecraft:generic.attack_damage modifier add 73-82-20-11-52 "Pet Strength" 6 add




attribute @p[tag=pet,level=10..19] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.01 multiply_base
attribute @p[tag=pet,level=20..29] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.02 multiply_base
attribute @p[tag=pet,level=30..39] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.03 multiply_base
attribute @p[tag=pet,level=40..49] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.04 multiply_base
attribute @p[tag=pet,level=50..59] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.05 multiply_base
attribute @p[tag=pet,level=60..69] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.06 multiply_base
attribute @p[tag=pet,level=70..79] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.07 multiply_base
attribute @p[tag=pet,level=80..89] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.08 multiply_base
attribute @p[tag=pet,level=90..99] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.09 multiply_base
attribute @p[tag=pet,level=100..] minecraft:generic.movement_speed modifier add 26-29-61-30-47 "Pet Speed" 0.1 multiply_base



scoreboard objectives add hive dummy "Hive"
execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

execute at @p[tag=pet] run tag @e[type=bee,limit=1,sort=nearest,distance=0..15,tag=!hive_counted] add hive_count
execute if entity @e[tag=hive_count] run scoreboard players add @p[tag=pet] hive 1
tag @e[tag=hive_count] add hive_counted
tag @e[tag=hive_count] remove hive_count

tag @e[tag=hive_counted] remove hive_counted

attribute @p[tag=pet,tag=common,scores={hive=1}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 0.6 add
attribute @p[tag=pet,tag=common,scores={hive=2}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 1.2 add
attribute @p[tag=pet,tag=common,scores={hive=3}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 1.8 add
attribute @p[tag=pet,tag=common,scores={hive=4}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 2.4 add
attribute @p[tag=pet,tag=common,scores={hive=5}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 3.0 add
attribute @p[tag=pet,tag=common,scores={hive=6}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 3.6 add
attribute @p[tag=pet,tag=common,scores={hive=7}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 4.2 add
attribute @p[tag=pet,tag=common,scores={hive=8}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 4.8 add
attribute @p[tag=pet,tag=common,scores={hive=9}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 5.4 add
attribute @p[tag=pet,tag=common,scores={hive=10}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 6.0 add
attribute @p[tag=pet,tag=common,scores={hive=11}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 6.6 add
attribute @p[tag=pet,tag=common,scores={hive=12}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 7.2 add
attribute @p[tag=pet,tag=common,scores={hive=13}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 7.8 add
attribute @p[tag=pet,tag=common,scores={hive=14}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 8.4 add
attribute @p[tag=pet,tag=common,scores={hive=15..}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 9.0 add

attribute @p[tag=pet,tag=uncommon,scores={hive=1}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 1 add
attribute @p[tag=pet,tag=uncommon,scores={hive=2}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 2 add
attribute @p[tag=pet,tag=uncommon,scores={hive=3}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 3 add
attribute @p[tag=pet,tag=uncommon,scores={hive=4}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 4 add
attribute @p[tag=pet,tag=uncommon,scores={hive=5}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 5 add
attribute @p[tag=pet,tag=uncommon,scores={hive=6}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 6 add
attribute @p[tag=pet,tag=uncommon,scores={hive=7}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 7 add
attribute @p[tag=pet,tag=uncommon,scores={hive=8}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 8 add
attribute @p[tag=pet,tag=uncommon,scores={hive=9}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 9 add
attribute @p[tag=pet,tag=uncommon,scores={hive=10}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 10 add
attribute @p[tag=pet,tag=uncommon,scores={hive=11}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 11 add
attribute @p[tag=pet,tag=uncommon,scores={hive=12}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 12 add
attribute @p[tag=pet,tag=uncommon,scores={hive=13}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 13 add
attribute @p[tag=pet,tag=uncommon,scores={hive=14}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 14 add
attribute @p[tag=pet,tag=uncommon,scores={hive=15..}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 15 add

attribute @p[tag=pet,tag=rare,scores={hive=1}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 1.6 add
attribute @p[tag=pet,tag=rare,scores={hive=2}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 3.2 add
attribute @p[tag=pet,tag=rare,scores={hive=3}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 4.8 add
attribute @p[tag=pet,tag=rare,scores={hive=4}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 6.4 add
attribute @p[tag=pet,tag=rare,scores={hive=5}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 8.0 add
attribute @p[tag=pet,tag=rare,scores={hive=6}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 9.6 add
attribute @p[tag=pet,tag=rare,scores={hive=7}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 11.2 add
attribute @p[tag=pet,tag=rare,scores={hive=8}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 12.8 add
attribute @p[tag=pet,tag=rare,scores={hive=9}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 14.4 add
attribute @p[tag=pet,tag=rare,scores={hive=10}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 16.0 add
attribute @p[tag=pet,tag=rare,scores={hive=11}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 17.6 add
attribute @p[tag=pet,tag=rare,scores={hive=12}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 19.2 add
attribute @p[tag=pet,tag=rare,scores={hive=13}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 20.8 add
attribute @p[tag=pet,tag=rare,scores={hive=14}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 22.4 add
attribute @p[tag=pet,tag=rare,scores={hive=15..}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 24.0 add

attribute @p[tag=pet,tag=epic,scores={hive=1}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 2.4 add
attribute @p[tag=pet,tag=epic,scores={hive=2}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 4.8 add
attribute @p[tag=pet,tag=epic,scores={hive=3}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 7.2 add
attribute @p[tag=pet,tag=epic,scores={hive=4}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 9.6 add
attribute @p[tag=pet,tag=epic,scores={hive=5}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 12.0 add
attribute @p[tag=pet,tag=epic,scores={hive=6}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 14.4 add
attribute @p[tag=pet,tag=epic,scores={hive=7}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 16.8 add
attribute @p[tag=pet,tag=epic,scores={hive=8}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 19.2 add
attribute @p[tag=pet,tag=epic,scores={hive=9}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 21.6 add
attribute @p[tag=pet,tag=epic,scores={hive=10}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 24.0 add
attribute @p[tag=pet,tag=epic,scores={hive=11}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 26.4 add
attribute @p[tag=pet,tag=epic,scores={hive=12}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 28.8 add
attribute @p[tag=pet,tag=epic,scores={hive=13}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 31.2 add
attribute @p[tag=pet,tag=epic,scores={hive=14}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 33.6 add
attribute @p[tag=pet,tag=epic,scores={hive=15..}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 36.0 add

attribute @p[tag=pet,tag=legendary,scores={hive=1}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 3 add
attribute @p[tag=pet,tag=legendary,scores={hive=2}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 6 add
attribute @p[tag=pet,tag=legendary,scores={hive=3}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 9 add
attribute @p[tag=pet,tag=legendary,scores={hive=4}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 12 add
attribute @p[tag=pet,tag=legendary,scores={hive=5}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 15 add
attribute @p[tag=pet,tag=legendary,scores={hive=6}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 18 add
attribute @p[tag=pet,tag=legendary,scores={hive=7}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 21 add
attribute @p[tag=pet,tag=legendary,scores={hive=8}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 24 add
attribute @p[tag=pet,tag=legendary,scores={hive=9}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 27 add
attribute @p[tag=pet,tag=legendary,scores={hive=10}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 30 add
attribute @p[tag=pet,tag=legendary,scores={hive=11}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 33 add
attribute @p[tag=pet,tag=legendary,scores={hive=12}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 36 add
attribute @p[tag=pet,tag=legendary,scores={hive=13}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 39 add
attribute @p[tag=pet,tag=legendary,scores={hive=14}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 42 add
attribute @p[tag=pet,tag=legendary,scores={hive=15..}] minecraft:generic.attack_damage modifier add 82-25-45-9-46 "Hive" 45 add

scoreboard objectives remove hive
execute if entity @p[tag=pet] run schedule function skyblock:abilities/pets/bee 4s replace
tag @p[tag=pet] remove pet
tag @p[tag=common] remove common
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary