#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty


#summon flower
playsound entity.generic.eat player @s
summon armor_stand ^ ^ ^1 {Tags:["flower_of_truth_1","NPC"],Pose:{RightArm:[180f,0f,0f]},Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,HandItems:[{Count:1,id:"poppy"}]}
summon armor_stand ^ ^ ^-1 {Tags:["flower_of_truth_dir_1"],Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
execute as @e[tag=livid_dagger_stand_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=flower_of_truth_dir_1,limit=1] feet
data merge entity @e[type=armor_stand,tag=livid_dagger_stand_1,limit=1] {ShowArms:1}

#calculate damage
scoreboard players set $FlowerDamage Temp 0
tag @s add TargetEntity
function stats:calculate/weapon_damage
scoreboard players operation $FlowerDamage Temp += $DamageOutput Temp
tag @s remove TargetEntity

#remove old flower
item replace entity @e[tag=flower_of_truth_2] weapon.mainhand with minecraft:air
execute as @e[tag=flower_of_truth_dir_1] run kill @e[tag=flower_of_truth_dir_2]
execute as @e[tag=flower_of_truth_1] run kill @e[tag=flower_of_truth_2] 
tag @e[tag=flower_of_truth_1] add flower_of_truth_2
tag @e[tag=flower_of_truth_1] remove flower_of_truth_1
tag @e[tag=flower_of_truth_dir_1] add flower_of_truth_dir_2
tag @e[tag=flower_of_truth_dir_1] remove flower_of_truth_dir_1

#enable movement after good rotation
schedule function items:item_abilities/right_click/heat_seeking_rose/enable_movement 5t

#reset after 10 seconds
schedule function items:item_abilities/right_click/heat_seeking_rose/reset 10s


