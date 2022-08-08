execute at @s store result score @s dummy run execute if entity @e[type=#minecraft:zombies,distance=0..8]

attribute @s[scores={dummy=1}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 2 add
attribute @s[scores={dummy=2}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 4 add
attribute @s[scores={dummy=3}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 6 add
attribute @s[scores={dummy=4}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 8 add
attribute @s[scores={dummy=5}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 10 add
attribute @s[scores={dummy=6}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 12 add
attribute @s[scores={dummy=7}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 14 add
attribute @s[scores={dummy=8}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 16 add
attribute @s[scores={dummy=9}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 18 add
attribute @s[scores={dummy=10}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 20 add
attribute @s[scores={dummy=11}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 22 add
attribute @s[scores={dummy=12}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 24 add
attribute @s[scores={dummy=13}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 26 add
attribute @s[scores={dummy=14..}] minecraft:generic.armor modifier add 87-88-23-45-4 "Zombie Hat" 28 add

scoreboard players operation @s dummy += @s dummy
tellraw @s[scores={dummy=1..}] ["",{"text":"[Zombie Hat: +","italic":true,"color":"gray"},{"score":{"name":"*","objective":"dummy"},"italic":true,"color":"gray"},{"text":" Armor]","italic":true,"color":"gray"}]

