#correct
tellraw @s ["",{"text":"<Fetchur> thanks that probably what i needed. take some gifts!","color":"white"}]

item replace entity @s weapon.mainhand with air

tag @e[tag=fetchur] remove copper_ingot
tag @e[tag=fetchur] remove oak_door
tag @e[tag=fetchur] remove red_wool
tag @e[tag=fetchur] remove flint_and_steel
tag @e[tag=fetchur] remove coffee
tag @e[tag=fetchur] remove yellow_stained_glass
tag @e[tag=fetchur] remove firework_rocket
tag @e[tag=fetchur] remove compass
tag @e[tag=fetchur] remove pumpkin
tag @e[tag=fetchur] remove rabbit_foot
tag @e[tag=fetchur] remove superboom_tnt
tag @e[tag=fetchur] remove nether_quartz_ore

playsound minecraft:entity.villager.yes player @s
