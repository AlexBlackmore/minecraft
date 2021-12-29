#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

#get enemy
tag @e[tag=shadow_target,sort=random,limit=1] add shadow_current_target

#teleport to enemy
execute as @e[tag=shadow_current_target] at @s run tp @e[tag=shadow_caster] ^ ^ ^-1 facing entity @s feet

#calculate/apply damage and play sound
scoreboard players set $ShadowDamage Temp 0
tag @e[tag=shadow_caster] add TargetEntity
execute as @e[tag=shadow_caster] run function stats:calculate/weapon_damage
#execute as @e[tag=shadow_current_target] run function stats:calculate/crit_damage
scoreboard players operation $ShadowDamage Temp += $DamageOutput Temp
tag @e[tag=shadow_caster] remove TargetEntity

playsound entity.experience_orb.pickup master @p[tag=shadow_caster]
execute as @e[tag=shadow_current_target] at @s run scoreboard players operation @s ApplyDamage += $ShadowDamage Temp

#reset enemy
execute as @e[tag=shadow_current_target] run tag @s remove shadow_target
execute as @e[tag=shadow_current_target] run tag @s remove shadow_current_target

#schedule next attack
scoreboard players remove @e[tag=shadow_caster,limit=1] AttackShadow 1
execute unless score @e[tag=shadow_caster,limit=1] AttackShadow matches 0 run schedule function items:item_abilities/right_click/shadow_fury/attack_cycle 10t
execute if score @e[tag=shadow_caster,limit=1] AttackShadow matches 0 run tag @e[tag=shadow_caster,limit=1] remove shadow_caster