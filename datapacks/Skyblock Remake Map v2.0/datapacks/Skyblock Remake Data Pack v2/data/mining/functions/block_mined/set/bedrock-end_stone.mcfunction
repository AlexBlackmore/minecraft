setblock ~ ~ ~ bedrock
execute align xyz run summon area_effect_cloud ~ ~ ~ {Duration:101,Tags:["regen_end_stone"]}
kill @s