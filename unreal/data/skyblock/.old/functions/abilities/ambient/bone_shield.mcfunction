tag @p[advancements={skyblock:commands/ambient/bone_shield=true}] add bone_shield
tag @p[tag=bone_shield,nbt={Inventory:[{Slot:103b,tag:{Name:"Skeleton's Helmet"}}]}] add helmet

scoreboard objectives add absorption dummy "Absorption Amount"
execute as @p[tag=helmet] run execute store result score @s absorption run data get entity @s AbsorptionAmount 0.25

effect give @p[tag=helmet,scores={absorption=0}] absorption 31
effect give @p[tag=helmet,scores={absorption=1}] absorption 31 1
effect give @p[tag=helmet,scores={absorption=2..}] absorption 31 2
scoreboard objectives remove absorption


advancement revoke @p[advancements={skyblock:commands/ambient/bone_shield=true},tag=!helmet] only skyblock:commands/ambient/bone_shield
execute if entity @p[advancements={skyblock:commands/ambient/bone_shield=true}] run schedule function skyblock:abilities/ambient/bone_shield 30s replace
tag @p[tag=bone_shield] remove bone_shield
tag @p[tag=helmet] remove helmet

