#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------KNOCKBACK-----------------#
execute at @e[type=slime,tag=Slime] at @a[distance=..4,nbt={HurtTime:10s}] run function mobs:ai/slimehill_slime/knockback_1
execute at @e[type=slime,tag=LargeSlime] at @a[distance=..8,nbt={HurtTime:8s}] run function mobs:ai/slimehill_slime/knockback_2
execute at @e[type=slime,tag=MediumSlime] at @a[distance=..6,nbt={HurtTime:8s}] run function mobs:ai/slimehill_slime/knockback_2
execute at @e[type=slime,tag=SmallSlime] at @a[distance=..4,nbt={HurtTime:8s}] run function mobs:ai/slimehill_slime/knockback_2

execute at @e[tag=Slime,type=slime] if block ~ ~-1 ~ air run tp @e[limit=1,sort=nearest] ~ ~-0.5 ~
#------------------------------------------#