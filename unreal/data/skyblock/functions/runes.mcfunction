#BOOTS

#Hot
execute at @p run particle minecraft:dripping_lava ~ ~ ~ 0.2 0 0.2 0 2 normal

#Coulture
execute at @p run particle minecraft:flame ~ ~ ~ 0 0 0 0.02 2 normal

#Snake
execute at @p run particle minecraft:happy_villager ~ ~ ~ 0 0 0 0 2 normal

#Endersnake
execute at @p run particle minecraft:witch ~ ~ ~ 0 0 0 0 2 normal

#Tidal
execute at @p run particle minecraft:dripping_water ~ ~ ~ 0 0 0 2 2 normal

#Clouds
execute at @p run particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0 1 normal

#Sparkling
execute at @p run particle minecraft:electric_spark ~ ~ ~ 0.2 0 0.2 0 2 normal

#Zap
execute at @p run particle minecraft:falling_dust minecraft:yellow_wool ~ ~ ~ 0.2 0 0.2 0 1 normal

#Redstone
execute at @p run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.2 0 0.2 0 1 normal

#Rainbow
execute at @p run particle minecraft:dust_color_transition 1 0.333 0.333 1 1 0.667 0 ~ ~ ~ 0.2 0 0.2 0 1 normal #red-gold
execute at @p run particle minecraft:dust_color_transition 1 0.667 0 1 1 1 0.333 ~ ~ ~ 0.2 0 0.2 0 1 normal #gold-yellow
execute at @p run particle minecraft:dust_color_transition 1 1 0.333 1 0.333 1 0.333 ~ ~ ~ 0.2 0 0.2 0 1 normal #yellow-green
execute at @p run particle minecraft:dust_color_transition 0.333 1 0.333 1 0.333 1 1 ~ ~ ~ 0.2 0 0.2 0 1 normal #green-aqua
execute at @p run particle minecraft:dust_color_transition 0.333 1 1 1 0.333 0.333 1 ~ ~ ~ 0.2 0 0.2 0 1 normal #aqua-blue
execute at @p run particle minecraft:dust_color_transition 0.333 0.333 1 1 1 0.333 1 ~ ~ ~ 0.2 0 0.2 0 1 normal #blue-light_purple


#WEAPONS

#Blood
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:block red_wool ~ ~1 ~ 0 0 0 1 100 normal

#Snow
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:item_snowball ~ ~1 ~ 0 0 0 1 50 normal

#Jerry
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:item minecraft:brown_wool ~ ~1 ~ 0 0 0 0.1 50 normal

#Hearts 
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal

#Lightning
execute at @e[type=!player,limit=1,sort=nearest] run summon lightning_bolt ~ ~-16 ~

#Pestilence
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:mycelium ~ ~1 ~ 0.5 0.5 0.5 1 500 normal

#Spirit
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:sculk_soul ~ ~1 ~ 0.2 2 0.2 0 20 normal

#Music
execute at @e[type=!player,limit=1,sort=nearest] run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 1 10 normal


#BOWS

#Lava
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:falling_lava ~ ~ ~ 0.1 0.1 0.1 0 10

#Lavatears
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0 3

#Gem
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:happy_villager ~ ~ ~ 0.1 0.1 0.1 0 3

#Bite
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:composter ~ ~ ~ 0.1 0.1 0.1 1 3

#Wake
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:fishing ~ ~ ~ 0.1 0.1 0.1 0.1 3

#Ice
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:snowflake ~ ~ ~ 0.1 0.1 0.1 0.1 3

#White Spiral
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:effect ~ ~ ~ 0.1 0.1 0.1 0.1 3

#Flame 
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.1 3

#Golden
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:dust 1 0.667 0 1 ~ ~1 ~ 0.1 0.1 0.1 0.1 3 normal

#Smokey
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 1 3 normal

#Magical
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:witch ~ ~1 ~ 0.1 0.1 0.1 1 3 normal

#End
execute at @e[type=#minecraft:arrows,nbt=!{inGround:true}] run particle minecraft:dragon_breath ~ ~1 ~ 0.1 0.1 0.1 0.1 3 normal


#CHESTPLATE

#Enchant
execute at @p run particle minecraft:enchant ~ ~1 ~ 0.5 0.5 0.5 0 5

#Grand Searing
execute at @p run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0 5


#HOES

#Fiery Burst