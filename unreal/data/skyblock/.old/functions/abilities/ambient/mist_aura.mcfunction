tag @p[advancements={skyblock:commands/ambient/mist_aura=true}] add mist_aura
tag @p[tag=mist_aura,advancements={skyblock:commands/ambient/mist_aura=true},nbt={Inventory:[{Slot:100b,tag:{Name:"Sorrow Boots"}}]}] add boots
tag @p[tag=mist_aura,advancements={skyblock:commands/ambient/mist_aura=true},nbt={Inventory:[{Slot:101b,tag:{Name:"Sorrow Leggings"}}]}] add leggings
tag @p[tag=mist_aura,advancements={skyblock:commands/ambient/mist_aura=true},nbt={Inventory:[{Slot:102b,tag:{Name:"Sorrow Chestplate"}}]}] add chestplate
tag @p[tag=mist_aura,advancements={skyblock:commands/ambient/mist_aura=true},nbt={Inventory:[{Slot:103b,tag:{Name:"Sorrow Helmet"}}]}] add helmet

effect give @p[tag=mist_aura,tag=helmet,tag=chestplate,tag=leggings,tag=boots] haste 15 9
effect give @p[tag=mist_aura] invisibility 15

tag @p[tag=mist_aura,tag=!helmet,tag=!chestplate,tag=!leggings,tag=!boots] remove mist_aura
execute if entity @p[tag=mist_aura] run schedule function skyblock:abilities/ambient/mist_aura 4s replace
advancement revoke @p[advancements={skyblock:commands/ambient/mist_aura=true},tag=!mist_aura] only skyblock:commands/ambient/mist_aura
tag @p[tag=mist_aura] remove mist_aura
tag @p[tag=helmet] remove helmet
tag @p[tag=chestplate] remove chestplate
tag @p[tag=leggings] remove leggings
tag @p[tag=boots] remove boots