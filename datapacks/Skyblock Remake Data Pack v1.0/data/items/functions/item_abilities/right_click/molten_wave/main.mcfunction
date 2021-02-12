summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:["MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^3 {Tags:["MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^3 {Tags:["MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^ ^ ^4 {Tags:["MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^4 {Tags:["MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^4 {Tags:["MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["MoltenWaveAEC","MoltenWave3"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^5 {Tags:["MoltenWaveAEC","MoltenWave3"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^5 {Tags:["MoltenWaveAEC","MoltenWave3"],Duration:10}

scoreboard players set @e[tag=!block,tag=MoltenWave2,distance=..6] I_MoltenTimer 2
scoreboard players set @e[tag=!block,tag=MoltenWave3,distance=..6] I_MoltenTimer 4

execute as @e[tag=MoltenWaveAEC,tag=MoltenWave1,tag=!block] at @s run function items:item_abilities/right_click/molten_wave/summon_blocks
