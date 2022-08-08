tag @a[advancements={skyblock:commands/abilities/skeletons_helmet=true}] add skeletons_helmet

tag @a[tag=skeletons_helmet,tag=bone_shield2] add bone_shield3
tag @a[tag=skeletons_helmet,tag=bone_shield2] remove bone_shield2

tag @a[tag=skeletons_helmet,tag=bone_shield1] add bone_shield2
tag @a[tag=skeletons_helmet,tag=bone_shield1] remove bone_shield1

tag @a[tag=skeletons_helmet,tag=!bone_shield1,tag=!bone_shield2,tag=!bone_shield3] add bone_shield1

execute if entity @a[advancements={skyblock:commands/abilities/skeletons_helmet=true}] run schedule function skyblock:abilities/ambient/bone_shield_increase 30s replace

tag @a[tag=!skeletons_helmet,tag=bone_shield1] remove bone_shield1
tag @a[tag=!skeletons_helmet,tag=bone_shield2] remove bone_shield2
tag @a[tag=!skeletons_helmet,tag=bone_shield3] remove bone_shield3
tag @a[tag=skeletons_helmet] remove skeletons_helmet