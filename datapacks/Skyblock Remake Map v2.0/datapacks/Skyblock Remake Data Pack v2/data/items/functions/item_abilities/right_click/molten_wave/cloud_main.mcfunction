#Animation
scoreboard players remove @s I_MoltenTimer 1
execute if entity @s[scores={I_MoltenTimer=0},tag=!block] run function items:item_abilities/right_click/molten_wave/summon_blocks

#Deal Damage
function items:item_abilities/right_click/molten_wave/damage