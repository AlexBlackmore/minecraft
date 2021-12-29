tag @p[advancements={skyblock:commands/ambient/fairys_outfit=true}] add fairys_outfit
tag @p[tag=fairys_outfit,nbt={Inventory:[{Slot:100b,tag:{Name:"Fairy's Galoshes"}}]}] add boots
tag @p[tag=fairys_outfit,nbt={Inventory:[{Slot:101b,tag:{Name:"Fairy's Trousers"}}]}] add leggings
tag @p[tag=fairys_outfit,nbt={Inventory:[{Slot:102b,tag:{Name:"Fairy's Polo"}}]}] add chestplate
tag @p[tag=fairys_outfit,nbt={Inventory:[{Slot:103b,tag:{Name:"Fairy's Fedora"}}]}] add helmet

execute if predicate skyblock:fairys_outfit/time_check0 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color1
execute if predicate skyblock:fairys_outfit/time_check0 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color2
execute if predicate skyblock:fairys_outfit/time_check0 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color3
execute if predicate skyblock:fairys_outfit/time_check0 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color4

execute if predicate skyblock:fairys_outfit/time_check1 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color2
execute if predicate skyblock:fairys_outfit/time_check1 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color3
execute if predicate skyblock:fairys_outfit/time_check1 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color4
execute if predicate skyblock:fairys_outfit/time_check1 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color5

execute if predicate skyblock:fairys_outfit/time_check2 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color3
execute if predicate skyblock:fairys_outfit/time_check2 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color4
execute if predicate skyblock:fairys_outfit/time_check2 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color5
execute if predicate skyblock:fairys_outfit/time_check2 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color6

execute if predicate skyblock:fairys_outfit/time_check3 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color4
execute if predicate skyblock:fairys_outfit/time_check3 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color5
execute if predicate skyblock:fairys_outfit/time_check3 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color6
execute if predicate skyblock:fairys_outfit/time_check3 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color7

execute if predicate skyblock:fairys_outfit/time_check4 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color5
execute if predicate skyblock:fairys_outfit/time_check4 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color6
execute if predicate skyblock:fairys_outfit/time_check4 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color7
execute if predicate skyblock:fairys_outfit/time_check4 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color8

execute if predicate skyblock:fairys_outfit/time_check5 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color6
execute if predicate skyblock:fairys_outfit/time_check5 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color7
execute if predicate skyblock:fairys_outfit/time_check5 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color8
execute if predicate skyblock:fairys_outfit/time_check5 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color1

execute if predicate skyblock:fairys_outfit/time_check6 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color7
execute if predicate skyblock:fairys_outfit/time_check6 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color8
execute if predicate skyblock:fairys_outfit/time_check6 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color1
execute if predicate skyblock:fairys_outfit/time_check6 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color2

execute if predicate skyblock:fairys_outfit/time_check7 run item modify entity @p[tag=helmet] armor.head skyblock:fairys_outfit/change_color8
execute if predicate skyblock:fairys_outfit/time_check7 run item modify entity @p[tag=chestplate] armor.chest skyblock:fairys_outfit/change_color1
execute if predicate skyblock:fairys_outfit/time_check7 run item modify entity @p[tag=leggings] armor.legs skyblock:fairys_outfit/change_color2
execute if predicate skyblock:fairys_outfit/time_check7 run item modify entity @p[tag=boots] armor.feet skyblock:fairys_outfit/change_color3


scoreboard objectives add fairy_souls dummy "Fairy Souls"
scoreboard objectives add dummy dummy "Dummy"
scoreboard players set @p[tag=fairys_outfit] fairy_souls -4

scoreboard players set @p[tag=fairys_outfit] dummy 0
execute as @p[tag=boots] run execute store result score @s dummy run data get entity @s Inventory[{Slot:100b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=boots] run scoreboard players operation @s fairy_souls += @s dummy

scoreboard players set @p[tag=fairys_outfit] dummy 0
execute as @p[tag=boots] run execute store result score @s dummy run data get entity @s Inventory[{Slot:101b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=boots] run scoreboard players operation @s fairy_souls += @s dummy

scoreboard players set @p[tag=fairys_outfit] dummy 0
execute as @p[tag=boots] run execute store result score @s dummy run data get entity @s Inventory[{Slot:102b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=boots] run scoreboard players operation @s fairy_souls += @s dummy

scoreboard players set @p[tag=fairys_outfit] dummy 0
execute as @p[tag=boots] run execute store result score @s dummy run data get entity @s Inventory[{Slot:103b}].tag.AttributeModifiers[{AttributeName:"minecraft:generic.max_health",Operation:0}].Amount
execute as @p[tag=boots] run scoreboard players operation @s fairy_souls += @s dummy

attribute @p[tag=fairys_outfit] minecraft:generic.movement_speed modifier remove 69-74-87-79-2
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=40..}] minecraft:generic.movement_speed modifier add 69-74-87-79-2 "Fairy's Outfit" 0.04 multiply_base
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=30..39}] minecraft:generic.movement_speed modifier add 69-74-87-79-2 "Fairy's Outfit" 0.03 multiply_base
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=20..29}] minecraft:generic.movement_speed modifier add 69-74-87-79-2 "Fairy's Outfit" 0.02 multiply_base
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=10..19}] minecraft:generic.movement_speed modifier add 69-74-87-79-2 "Fairy's Outfit" 0.01 multiply_base

attribute @p[tag=fairys_outfit] minecraft:generic.attack_damage modifier remove 17-42-37-81-52
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=45..}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 53 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=44}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 52 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=43}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 51 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=42}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 50 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=41}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 49 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=40}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 48 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=39}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 46 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=38}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 45 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=37}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 44 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=36}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 43 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=35}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 42 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=34}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 40 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=33}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 39 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=32}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 38 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=31}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 37 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=30}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 36 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=29}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 34 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=28}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 33 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=27}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 32 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=26}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 31 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=25}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 30 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=24}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 28 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=23}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 27 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=22}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 26 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=21}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 25 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=20}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 24 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=19}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 22 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=18}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 21 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=17}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 20 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=16}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 19 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=15}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 18 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=14}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 16 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=13}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 15 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=12}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 14 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=11}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 13 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=10}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 12 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=9}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 10 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=8}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 9 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=7}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 8 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=6}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 7 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=5}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 6 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=4}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 4 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=3}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 3 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=2}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 2 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=1}] minecraft:generic.attack_damage modifier add 17-42-37-81-52 "Fairy's Outfit" 1 add


attribute @p[tag=fairys_outfit] minecraft:generic.armor modifier remove 9-14-88-66-43
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=22..}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 26 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=21}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 25 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=20}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 24 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=19}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 22 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=18}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 21 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=17}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 20 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=16}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 19 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=15}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 18 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=14}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 16 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=13}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 15 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=12}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 14 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=11}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 13 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=10}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 12 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=9}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 10 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=8}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 9 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=7}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 8 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=6}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 7 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=5}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 6 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=4}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 4 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=3}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 3 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=2}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 2 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=1}] minecraft:generic.armor modifier add 9-14-88-66-43 "Fairy's Outfit" 1 add


attribute @p[tag=fairys_outfit] minecraft:generic.max_health modifier remove 45-86-74-1-79
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=45..}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 615 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=44}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 592 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=43}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 569 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=42}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 546 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=41}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 523 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=40}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 500 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=39}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 478 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=38}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 456 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=37}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 435 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=36}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 414 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=35}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 394 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=34}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 374 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=33}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 355 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=32}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 336 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=31}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 318 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=30}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 300 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=29}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 283 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=28}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 266 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=27}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 250 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=26}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 234 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=25}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 219 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=24}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 204 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=23}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 190 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=22}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 176 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=21}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 163 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=20}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 150 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=19}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 138 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=18}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 126 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=17}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 115 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=16}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 104 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=15}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 94 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=14}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 84 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=13}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 75 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=12}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 66 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=11}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 58 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=10}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 50 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=9}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 43 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=8}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 36 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=7}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 30 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=6}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 24 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=5}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 19 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=4}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 14 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=3}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 10 add

attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=2}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 6 add
attribute @p[tag=helmet,tag=chestplate,tag=leggings,tag=boots,scores={fairy_souls=1}] minecraft:generic.max_health modifier add 45-86-74-1-79 "Fairy's Outfit" 3 add


advancement revoke @p[advancements={skyblock:commands/ambient/fairys_outfit=true},tag=!boots,tag=!leggings,tag=!chestplate,tag=!helmet] only skyblock:commands/ambient/fairys_outfit
execute if entity @p[advancements={skyblock:commands/ambient/fairys_outfit=true}] run schedule function skyblock:abilities/ambient/fairys_outfit 5t replace
tag @p[tag=fairys_outfit] remove fairys_outfit
tag @p[tag=boots] remove boots
tag @p[tag=leggings] remove leggings
tag @p[tag=chestplate] remove chestplate
tag @p[tag=helmet] remove helmet
