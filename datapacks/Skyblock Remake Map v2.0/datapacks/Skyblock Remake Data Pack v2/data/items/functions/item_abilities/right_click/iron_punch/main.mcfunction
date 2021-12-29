summon area_effect_cloud ~ ~ ~ {Particle:"explosion",Radius:5f,Duration:10}
function items:item_abilities/right_click/iron_punch/summon_blocks
execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..6] ApplyDamage = $AbilityDamageOutput Temp
