#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------FISHING-------------------#
scoreboard players add @e[type=minecraft:fishing_bobber] RodTimeout 1
kill @e[type=minecraft:fishing_bobber,scores={RodTimeout=1200..}]

execute as @e[type=minecraft:fishing_bobber,tag=!GotStats] at @s run function fishing:new_hook
tag @e[type=fishing_bobber,nbt={OnGround:1b}] add inGround

execute as @e[type=minecraft:fishing_bobber,tag=!HookedMob] at @s unless block ~ ~ ~ water as @e[type=!minecraft:fishing_bobber,tag=HasHealthDisplay,dx=0,limit=1] run function fishing:event/hooked_entity
execute as @a[scores={Catch=1..}] at @s run function fishing:event/caught_fish
#------------------------------------------#