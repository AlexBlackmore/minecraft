#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#set targets
execute as @e[distance=..8,tag=!NPC,type=!item,type=!player,type=!#stats:show_hp,tag=!been_target] run tag @s add flower_target
execute as @e[tag=flower_of_truth_2,tag=!flower_found_target] run tag @s add flower_found_target
execute as @e[tag=flower_of_truth_2,tag=flower_of_truth_done] run tag @s remove flower_of_truth_done
execute as @e[tag=flower_of_truth_2] run data merge entity @s {Pose:{RightArm:[180f,180f,0f]}} 
execute as @e[tag=flower_of_truth_2] at @s run tp @s ~ ~ ~ facing entity @e[tag=flower_target,limit=1] 


