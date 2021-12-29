summon minecraft:area_effect_cloud ^ ^ ^3 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^3 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^3 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave1"],Duration:10}
summon minecraft:area_effect_cloud ^ ^ ^4 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^4 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^4 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave2"],Duration:10}
summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave3"],Duration:10}
summon minecraft:area_effect_cloud ^1 ^ ^5 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave3"],Duration:10}
summon minecraft:area_effect_cloud ^-1 ^ ^5 {Tags:["NewMoltenWaveAEC","MoltenWaveAEC","MoltenWave3"],Duration:10}

scoreboard players set @e[tag=!block,tag=MoltenWave2,distance=..6] I_MoltenTimer 2
scoreboard players set @e[tag=!block,tag=MoltenWave3,distance=..6] I_MoltenTimer 4

execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage
scoreboard players operation @e[tag=NewMoltenWaveAEC,sort=nearest,limit=9] I_AbilDmgStore = $AbilityDamageOutput Temp
tag @e remove NewMoltenWaveAEC

execute as @e[tag=MoltenWaveAEC,tag=MoltenWave1,tag=!block] at @s run function items:item_abilities/right_click/molten_wave/summon_blocks
