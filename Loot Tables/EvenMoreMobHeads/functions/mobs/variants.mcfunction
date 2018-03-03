scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 1 {Profession:0}
scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 2 {Profession:1}
scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 3 {Profession:2}
scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 4 {Profession:3}
scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 5 {Profession:4}
scoreboard players set @e[type=Zombie_Villager,tag=!loot] Var 6 {Profession:5}
scoreboard players set @e[type=Llama,tag=!loot] Var 7 {Variant:0}
scoreboard players set @e[type=Llama,tag=!loot] Var 8 {Variant:1}
scoreboard players set @e[type=Llama,tag=!loot] Var 9 {Variant:2}
scoreboard players set @e[type=Llama,tag=!loot] Var 10 {Variant:3}
scoreboard players set @e[type=Ocelot,tag=!loot] Var 11 {CatType:0}
scoreboard players set @e[type=Ocelot,tag=!loot1] Var 12 {CatType:1}
scoreboard players set @e[type=Ocelot,tag=!loot1] Var 13 {CatType:2}
scoreboard players set @e[type=Ocelot,tag=!loot1] Var 14 {CatType:3}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 15 {RabbitType:0}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 16 {RabbitType:1}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 17 {RabbitType:2}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 18 {RabbitType:3}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 19 {RabbitType:4}
scoreboard players set @e[type=Rabbit,tag=!loot] Var 20 {RabbitType:5}
scoreboard players set @e[type=Parrot,tag=!loot] Var 21 {Variant:0}
scoreboard players set @e[type=Parrot,tag=!loot] Var 22 {Variant:1}
scoreboard players set @e[type=Parrot,tag=!loot] Var 23 {Variant:2}
scoreboard players set @e[type=Parrot,tag=!loot] Var 24 {Variant:3}
scoreboard players set @e[type=Parrot,tag=!loot] Var 25 {Variant:4}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:0}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:256}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:512}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:768}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:1024}
scoreboard players set @e[type=Horse,tag=!loot] Var 26 {Variant:768}
scoreboard players set @e[type=Horse,tag=!loot] Var 27 {Variant:1}
scoreboard players set @e[type=Horse,tag=!loot] Var 27 {Variant:257}
scoreboard players set @e[type=Horse,tag=!loot] Var 27 {Variant:513}
scoreboard players set @e[type=Horse,tag=!loot] Var 27 {Variant:769}
scoreboard players set @e[type=Horse,tag=!loot] Var 27 {Variant:1025}
scoreboard players set @e[type=Horse,tag=!loot] Var 28 {Variant:2}
scoreboard players set @e[type=Horse,tag=!loot] Var 28 {Variant:258}
scoreboard players set @e[type=Horse,tag=!loot] Var 28 {Variant:514}
scoreboard players set @e[type=Horse,tag=!loot] Var 28 {Variant:770}
scoreboard players set @e[type=Horse,tag=!loot] Var 28 {Variant:1026}
scoreboard players set @e[type=Horse,tag=!loot] Var 29 {Variant:3}
scoreboard players set @e[type=Horse,tag=!loot] Var 29 {Variant:259}
scoreboard players set @e[type=Horse,tag=!loot] Var 29 {Variant:515}
scoreboard players set @e[type=Horse,tag=!loot] Var 29 {Variant:771}
scoreboard players set @e[type=Horse,tag=!loot] Var 29 {Variant:1027}
scoreboard players set @e[type=Horse,tag=!loot] Var 30 {Variant:4}
scoreboard players set @e[type=Horse,tag=!loot] Var 30 {Variant:260}
scoreboard players set @e[type=Horse,tag=!loot] Var 30 {Variant:516}
scoreboard players set @e[type=Horse,tag=!loot] Var 30 {Variant:772}
scoreboard players set @e[type=Horse,tag=!loot] Var 30 {Variant:1028}
scoreboard players set @e[type=Horse,tag=!loot] Var 31 {Variant:5}
scoreboard players set @e[type=Horse,tag=!loot] Var 31 {Variant:261}
scoreboard players set @e[type=Horse,tag=!loot] Var 31 {Variant:517}
scoreboard players set @e[type=Horse,tag=!loot] Var 31 {Variant:773}
scoreboard players set @e[type=Horse,tag=!loot] Var 31 {Variant:1029}
scoreboard players set @e[type=Horse,tag=!loot] Var 32 {Variant:6}
scoreboard players set @e[type=Horse,tag=!loot] Var 32 {Variant:262}
scoreboard players set @e[type=Horse,tag=!loot] Var 32 {Variant:518}
scoreboard players set @e[type=Horse,tag=!loot] Var 32 {Variant:774}
scoreboard players set @e[type=Horse,tag=!loot] Var 32 {Variant:1030}
scoreboard players set @e[type=Rabbit,tag=!loot1] Var 33 {CustomName:Toast}
scoreboard players set @e[type=Wither,tag=!loot] Var 34
scoreboard players set @e[type=Creeper,tag=!loot] Var 35 {powered:1b}
scoreboard players set @e[type=Sheep,tag=!loot] Var 36 {CustomName:jeb_}
execute @e[type=Zombie_Villager,score_Var=1,score_Var_min=1,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/farmer"}
execute @e[type=Zombie_Villager,score_Var=2,score_Var_min=2,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/librarian"}
execute @e[type=Zombie_Villager,score_Var=3,score_Var_min=3,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/cleric"}
execute @e[type=Zombie_Villager,score_Var=4,score_Var_min=4,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/smith"}
execute @e[type=Zombie_Villager,score_Var=5,score_Var_min=5,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/butcher"}
execute @e[type=Zombie_Villager,score_Var=6,score_Var_min=6,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:zombie_villager/nitwit"}
execute @e[type=Llama,score_Var=7,score_Var_min=7,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:llama/creamy"}
execute @e[type=Llama,score_Var=8,score_Var_min=8,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:llama/white"}
execute @e[type=Llama,score_Var=9,score_Var_min=9,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:llama/brown"}
execute @e[type=Llama,score_Var=10,score_Var_min=10,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:llama/gray"}
execute @e[type=Ocelot,score_Var=11,score_Var_min=11,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:cats/ocelot"}
execute @e[type=Ocelot,score_Var=12,score_Var_min=12,tag=!loot1] ~ ~ ~ entitydata @s {Tags:["loot1"],DeathLootTable:"mobs:cats/black"}
execute @e[type=Ocelot,score_Var=13,score_Var_min=13,tag=!loot1] ~ ~ ~ entitydata @s {Tags:["loot1"],DeathLootTable:"mobs:cats/ginger"}
execute @e[type=Ocelot,score_Var=14,score_Var_min=14,tag=!loot1] ~ ~ ~ entitydata @s {Tags:["loot1"],DeathLootTable:"mobs:cats/siamese"}
execute @e[type=Rabbit,score_Var=15,score_Var_min=15,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/brown"}
execute @e[type=Rabbit,score_Var=16,score_Var_min=16,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/white"}
execute @e[type=Rabbit,score_Var=17,score_Var_min=17,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/black"}
execute @e[type=Rabbit,score_Var=18,score_Var_min=18,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/blackandwhite"}
execute @e[type=Rabbit,score_Var=19,score_Var_min=19,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/gold"}
execute @e[type=Rabbit,score_Var=20,score_Var_min=20,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:rabbit/saltandpepper"}
execute @e[type=Parrot,score_Var=21,score_Var_min=21,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:parrot/red"}
execute @e[type=Parrot,score_Var=22,score_Var_min=22,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:parrot/blue"}
execute @e[type=Parrot,score_Var=23,score_Var_min=23,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:parrot/green"}
execute @e[type=Parrot,score_Var=24,score_Var_min=24,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:parrot/cyan"}
execute @e[type=Parrot,score_Var=25,score_Var_min=25,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:parrot/gray"}
execute @e[type=Horse,score_Var=26,score_Var_min=26,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/white"}
execute @e[type=Horse,score_Var=27,score_Var_min=27,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/creamy"}
execute @e[type=Horse,score_Var=28,score_Var_min=28,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/chestnut"}
execute @e[type=Horse,score_Var=29,score_Var_min=29,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/brown"}
execute @e[type=Horse,score_Var=30,score_Var_min=30,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/black"}
execute @e[type=Horse,score_Var=31,score_Var_min=31,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/gray"}
execute @e[type=Horse,score_Var=32,score_Var_min=32,tag=!loot] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:horse/dark_brown"}
execute @e[tag=!loot1,type=Rabbit,score_Var=33,score_Var_min=33] ~ ~ ~ entitydata @s {Tags:["loot1"],DeathLootTable:"mobs:rabbit/toast"}
execute @e[tag=!loot,type=Wither,score_Var=34,score_Var_min=34] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:wither"}
execute @e[tag=!loot,type=Creeper,score_Var=35,score_Var_min=35] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:chargedcreeper"}
execute @e[tag=!loot,type=Sheep,score_Var=36,score_Var_min=36] ~ ~ ~ entitydata @s {Tags:["loot"],DeathLootTable:"mobs:jebsheep"}