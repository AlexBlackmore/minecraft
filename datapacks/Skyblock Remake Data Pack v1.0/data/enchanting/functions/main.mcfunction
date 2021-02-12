#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------MINING CUSTOM BLOCKS------------#
execute as @e[tag=EnchantingTable] at @s if block ~ ~ ~ air run function enchanting:enchanting_table/block/break
#-----------------BLOCKS-------------------#
execute as @e[type=armor_stand,tag=EBMain] at @s if entity @p[distance=..15] run function enchanting:enchanting_table/book_animation/main
#------------FIRE ASPECT TIMER-------------#
scoreboard players remove @e[scores={E_FireAspectTime=1..}] E_FireAspectTime 1
#--------------VENOMOUS TIMER--------------#
execute as @e[scores={E_VenomousTime=1..}] run function enchanting:enchants/venomous/timer
#---------------FROST WALKER---------------#
execute as @e[tag=FrostWalkerIce] at @s run function enchanting:enchants/frost_walker/ice_tick
execute as @a[tag=Held_FrostWalker] at @s run function enchanting:enchants/frost_walker/level_check
execute as @e[tag=FrostWalkerIce] at @s unless block ~ ~ ~ ice run kill @s
#--------------ARROW AIMING----------------#
execute as @e[type=minecraft:arrow,scores={E_BowAiming=1..},tag=!inGround] at @s run function enchanting:enchants/aiming/set_target
execute as @e[type=area_effect_cloud,tag=AimingCloud] run data modify entity @s Age set value 0
#------------OTHER ENCHANTMENTS------------#
execute as @a if entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{replenish:{identifier:1b}}]}}}}] at @s run function enchanting:enchants/replenish/main
execute as @a unless entity @s[nbt={SelectedItem:{tag:{Base:{Enchantments:[{replenish:{identifier:1b}}]}}}}] run tag @s remove ReplenishSelected

execute as @a[tag=Held_Experience] at @s if entity @e[type=minecraft:experience_orb,nbt={Age:0s},distance=..10] run function enchanting:enchants/experience/init
execute as @a[tag=Held_Fortune] at @s if entity @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/fortune/init
execute as @a[tag=Held_Harvesting] at @s if entity @e[type=minecraft:item,nbt={Age:0s},distance=..10] run function enchanting:enchants/harvesting/init

execute as @a[tag=Held_Telekinesis] at @s run function enchanting:enchants/telekinesis/block_check
#------------------------------------------#