#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#particles
particle minecraft:item_snowball ~ ~ ~ 0.02 0.02 0.02 0.1 30 force

#make everything ready for next use
item replace entity @s weapon.mainhand with minecraft:air
kill @e[tag=flower_of_truth_dir_2]
execute as @e[tag=been_target] run tag @s remove been_target
kill @s