summon armor_stand ~ ~0.4 ~ {Invulnerable:1b,Invisible:1b,Tags:["MoltenWaveBlock","Timeout","0.5SecTimeout"],ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{CustomModelData:1}}]}
tag @s add block 
playsound block.grass.break player @a[distance=..20] ~ ~ ~ 1 0.5 1