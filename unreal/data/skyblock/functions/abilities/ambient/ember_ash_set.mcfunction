tag @p[advancements={skyblock:commands/abilities/ember_ash_set=true}] add ember_ash_set
tag @p[tag=ember_ash_set,nbt={Inventory:[{Slot:100b,tag:{Name:"Ember Ash Boots"}},{Slot:101b,tag:{Name:"Ember Ash Leggings"}},{Slot:102b,tag:{Name:"Ember Ash Chestplate"}},{Slot:103b,tag:{Name:"Ember Ash Helmet"}}]}] add ember_ash_armor

effect give @p[tag=ember_ash_armor] haste 15 2

advancement revoke @p[advancements={skyblock:commands/abilities/ember_ash_set=true},tag=!ember_ash_armor] only skyblock:commands/abilities/ember_ash_set
execute if entity @p[tag=ember_ash_armor] run schedule function skyblock:abilities/ambient/ember_ash_set 4s replace
tag @p[tag=ember_ash_set] remove ember_ash_set
tag @p[tag=ember_ash_armor] remove ember_ash_armor