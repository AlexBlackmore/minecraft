tag @p[predicate=skyblock:farm_suit] add farmer_aura
tag @p[advancements={skyblock:accessories/farmer_orb=true}] add farmer_aura

execute at @p[tag=farmer_aura] run fill ~ ~ ~ ~ ~1 ~ wheat[age=7] replace wheat
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=6] replace wheat[age=5]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=5] replace wheat[age=4]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=4] replace wheat[age=3]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=3] replace wheat[age=2]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=2] replace wheat[age=1]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 wheat[age=1] replace wheat[age=0]

execute at @p[tag=farmer_aura] run fill ~ ~ ~ ~ ~1 ~ carrots[age=7] replace carrots
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=6] replace carrots[age=5]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=5] replace carrots[age=4]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=4] replace carrots[age=3]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=3] replace carrots[age=2]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=2] replace carrots[age=1]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 carrots[age=1] replace carrots[age=0]

execute at @p[tag=farmer_aura] run fill ~ ~ ~ ~ ~1 ~ potatoes[age=7] replace potatoes
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=6] replace potatoes[age=5]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=5] replace potatoes[age=4]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=4] replace potatoes[age=3]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=3] replace potatoes[age=2]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=2] replace potatoes[age=1]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 potatoes[age=1] replace potatoes[age=0]

execute at @p[tag=farmer_aura] run fill ~ ~ ~ ~ ~1 ~ nether_wart[age=3] replace nether_wart
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 nether_wart[age=2] replace nether_wart[age=1]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 nether_wart[age=1] replace nether_wart[age=0]

execute at @p[tag=farmer_aura] run fill ~ ~ ~ ~ ~1 ~ beetroots[age=3] replace beetroots
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 beetroots[age=2] replace beetroots[age=1]
execute at @p[tag=farmer_aura] run fill ~-1 ~ ~-1 ~1 ~1 ~1 beetroots[age=1] replace beetroots[age=0]

execute at @p[tag=farmer_aura] run particle minecraft:happy_villager ~ ~ ~ 0.5 0 0.5 1 100
effect give @p[tag=farmer_aura] hunger 3

tag @p[tag=farmer_aura] remove farmer_aura
advancement revoke @p[advancements={skyblock:accessories/farmer_orb=true}] only skyblock:accessories/farmer_orb

function skyblock:abilities/reset_instant

