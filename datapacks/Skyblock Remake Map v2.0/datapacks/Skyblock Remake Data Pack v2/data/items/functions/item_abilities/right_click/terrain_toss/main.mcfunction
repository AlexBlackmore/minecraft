#this ability is coded by TheGodCat
#feel free to use and edit this
#don't call this your own work plz
#ty

execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage

#get at what block the player is looking
execute at @s positioned ~ ~1.3 ~ run function items:item_abilities/right_click/terrain_toss/raycast

#summon the placeholder
function items:item_abilities/right_click/terrain_toss/summon

#calculate motion
execute as @e[tag=toss_block3,limit=1,sort=nearest] at @s run function items:item_abilities/right_click/terrain_toss/calculate_motion




