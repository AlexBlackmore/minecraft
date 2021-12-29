#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty


#summon sword (armor stand)
summon armor_stand ^ ^ ^1 {Tags:["livid_dagger_stand_1"],Pose:{RightArm:[0f,0f,0f]},Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,HandItems:[{Count:1,id:"iron_sword"}],DisabledSlots:4144959}
summon armor_stand ^ ^ ^-1 {Tags:["livid_dagger_direction_1"],Invisible:1b,NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,Silent:1b,DisabledSlots:4144959}
execute as @e[tag=livid_dagger_stand_1] at @s run tp @s ~ ~ ~ facing entity @e[tag=livid_dagger_direction_1,limit=1] feet 
data merge entity @e[type=armor_stand,tag=livid_dagger_stand_1,limit=1] {ShowArms:1}

#calculate damage
scoreboard players set $LividDamage Temp 0
tag @s add TargetEntity
function stats:calculate/weapon_damage
scoreboard players operation $LividDamage Temp += $DamageOutput Temp
tag @s remove TargetEntity

#remove old livid dagger
item replace entity @e[tag=livid_dagger_stand_2] weapon.mainhand with minecraft:air
execute as @e[tag=livid_dagger_direction_1] run kill @e[tag=livid_dagger_direction_2]
execute as @e[tag=livid_dagger_stand_1] run kill @e[tag=livid_dagger_stand_2] 
tag @e[tag=livid_dagger_stand_1] add livid_dagger_stand_2
tag @e[tag=livid_dagger_stand_1] remove livid_dagger_stand_1
tag @e[tag=livid_dagger_direction_1] add livid_dagger_direction_2
tag @e[tag=livid_dagger_direction_1] remove livid_dagger_direction_1

#enable movement after good rotation
schedule function items:item_abilities/right_click/livid_dagger_throw/enable_movement 5t

#reset after 25 seconds
schedule function items:item_abilities/right_click/livid_dagger_throw/reset 15s