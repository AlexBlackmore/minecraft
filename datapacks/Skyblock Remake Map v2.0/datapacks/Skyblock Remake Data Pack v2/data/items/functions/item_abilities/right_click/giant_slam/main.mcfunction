#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage

#summon the giant
execute at @s anchored eyes run summon minecraft:giant ^ ^ ^8 {Tags:["GiantSlamGiantA","NPC"],Rotation:[90f,90f],NoAI:1b,NoGravity:1b,Invulnerable:1,PersistenceRequired:1,ActiveEffects:[{Id:14,Amplifier:0,Duration:999999,Ambient:1}],Silent:1,HandItems:[{Count:1,id:"iron_sword"},{}],CustomName:'"Dinnerbone"'}
execute as @e[tag=GiantSlamGiantA] run team join giant_colission
team modify giant_colission collisionRule never
execute as @e[tag=GiantSlamGiantA] at @e[tag=GiantSlamGiantA] run playsound block.anvil.land block @p ~ ~ ~ 
execute as @e[tag=GiantSlamGiantA] at @e[tag=GiantSlamGiantA] run playsound entity.lightning_bolt.thunder block @p ~ ~ ~ 

#remove old giant (just to be sure its gone)
item replace entity @e[tag=GiantSlamGiantB] weapon.mainhand with minecraft:air
execute as @e[tag=GiantSlamGiantA] run kill @e[tag=GiantSlamGiantB] 
tag @e[tag=GiantSlamGiantA] add GiantSlamGiantB
tag @e[tag=GiantSlamGiantA] remove GiantSlamGiantA

#do damage
execute as @e[tag=GiantSlamGiantB] at @e[tag=GiantSlamGiantB] run function items:item_abilities/right_click/giant_slam/damage

#reset player
scoreboard players remove @a[scores={giantsslam=1..}] giantsslam 1

#remove giant
execute as @e[tag=GiantSlamGiantB] at @s run schedule function items:item_abilities/right_click/giant_slam/reset 5s


