#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------NATURAL SPAWNS--------------#
execute if score $25Seconds TickTimer matches 1 run function public_islands:deep_caverns/natural_spawns/pigmens_den
execute if score $25Seconds TickTimer matches 1 run function public_islands:deep_caverns/natural_spawns/slime_hill
execute if score $25Seconds TickTimer matches 1 run function public_islands:deep_caverns/natural_spawns/diamond_reserve
#-----------------ISLANDS------------------#
tag @a[scores={SubLocation=42},nbt={HurtTime:8s}] add SlimeHillHurtPlayer
execute as @a[scores={SubLocation=42},nbt={HurtTime:10s}] at @s if entity @e[type=slime,tag=Slime,distance=..4] run function mobs:ai/slimehill_slime/knockback_1

execute as @a[tag=SlimeHillHurtPlayer] at @s if entity @e[type=slime,tag=LargeSlime,distance=..8] run function mobs:ai/slimehill_slime/knockback_2
execute as @a[tag=SlimeHillHurtPlayer] at @s if entity @e[type=slime,tag=MediumSlime,distance=..6] run function mobs:ai/slimehill_slime/knockback_2
execute as @a[tag=SlimeHillHurtPlayer] at @s if entity @e[type=slime,tag=SmallSlime,distance=..4] run function mobs:ai/slimehill_slime/knockback_2
execute at @e[tag=Slime,type=slime] if block ~ ~-1 ~ air run tp @e[limit=1,sort=nearest] ~ ~-0.5 ~

stopsound @a[scores={SubLocation=42}] block minecraft:entity.generic.explode
tag @a remove SlimeHillHurtPlayer
#------------------------------------------#