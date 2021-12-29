tag @p[advancements={skyblock:commands/ambient/dashing=true}] add dashing
tag @p[tag=dashing,nbt={Inventory:[{Slot:100b,tag:{Name:"Cheap Tuxedo Oxfords"}},{Slot:101b,tag:{Name:"Cheap Tuxedo Pants"}},{Slot:102b,tag:{Name:"Cheap Tuxedo Jacket"}}]}] add cheap
tag @p[tag=dashing,nbt={Inventory:[{Slot:100b,tag:{Name:"Fancy Tuxedo Oxfords"}},{Slot:101b,tag:{Name:"Fancy Tuxedo Pants"}},{Slot:102b,tag:{Name:"Fancy Tuxedo Jacket"}}]}] add fancy
tag @p[tag=dashing,nbt={Inventory:[{Slot:100b,tag:{Name:"Elegant Tuxedo Oxfords"}},{Slot:101b,tag:{Name:"Elegant Tuxedo Pants"}},{Slot:102b,tag:{Name:"Elegant Tuxedo Jacket"}}]}] add elegant

attribute @p[tag=dashing,tag=!cheap,tag=!fancy,tag=!elegant] minecraft:generic.max_health base set 20
attribute @p[tag=dashing,tag=cheap] minecraft:generic.max_health base set 15
attribute @p[tag=dashing,tag=fancy] minecraft:generic.max_health base set 30
attribute @p[tag=dashing,tag=elegant] minecraft:generic.max_health base set 50

attribute @p[tag=dashing] minecraft:generic.attack_damage modifier remove 97-31-29-36-66
attribute @p[tag=dashing,tag=cheap] minecraft:generic.attack_damage modifier add 97-31-29-36-66 "Dashing" 0.5 multiply
attribute @p[tag=dashing,tag=fancy] minecraft:generic.attack_damage modifier add 97-31-29-36-66 "Dashing" 1.0 multiply
attribute @p[tag=dashing,tag=elegant] minecraft:generic.attack_damage modifier add 97-31-29-36-66 "Dashing" 1.5 multiply


advancement revoke @p[tag=dashing,tag=!cheap,tag=!fancy,tag=!elegant] only skyblock:commands/ambient/dashing
tag @p[tag=dashing,advancements={skyblock:commands/ambient/dashing=false}] remove dashing
execute if entity @p[tag=dashing] run schedule function skyblock:abilities/ambient/dashing 2s replace
tag @p[tag=cheap] remove cheap
tag @p[tag=fancy] remove fancy
tag @p[tag=elegant] remove elegant