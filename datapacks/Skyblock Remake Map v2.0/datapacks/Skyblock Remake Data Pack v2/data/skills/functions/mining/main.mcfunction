function mining:block_mined/has_mined
execute at @s if entity @e[type=item,distance=..3.5] as @e[type=item,nbt={Item:{tag:{Skill:{Type:"MINING"}}}},distance=..3.5,sort=nearest,limit=1] run function mining:xp/exp_item_to_score
execute as @e[type=minecraft:area_effect_cloud,nbt={Age:100}] at @s run function skills:mining/regenerate_blocks