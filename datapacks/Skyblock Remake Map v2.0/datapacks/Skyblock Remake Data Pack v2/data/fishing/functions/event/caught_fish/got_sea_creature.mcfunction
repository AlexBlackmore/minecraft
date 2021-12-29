#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------ITEM RANDOMIZER--------------#
#scoreboard players set in RandMath 1
#scoreboard players set in1 RandMath 100
#function skyblock:random/range_lcg
#----------------FISHING-------------------#
#execute if score out RandMath matches 1..15 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/squid
#execute if score out RandMath matches 16..23 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/sea_walker
#execute if score out RandMath matches 24..28 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/sea_guardian
#execute if score out RandMath matches 29..33 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/sea_archer
#execute if score out RandMath matches 34..37 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/monster_ot_deep
#execute if score out RandMath matches 38..40 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/catfish
#execute if score out RandMath matches 41 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/sea_leech
##this is where we lead into unknown chance territory
#execute if score out RandMath matches 42..47 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/guardian_defender
#execute if score out RandMath matches 48..50 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/deep_sea_protect
#execute if score out RandMath matches 51 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/water_hydra
#execute if score out RandMath matches 52 at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/sea_emperor
#----------------FISHING-------------------#
execute at @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run function mobs:summon/fishing/squid

execute if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{frail:{identifier:1b}}]}}}}] as @e[tag=NewFishing] run function enchanting:enchants/frail
tag @e remove NewFishing
kill @e[type=item,nbt={Age:0s}]
#------------------------------------------#