tag @p[advancements={skyblock:commands/ambient/ember_ash_armor=true}] add haste
tag @p[tag=haste,nbt={Inventory:[{Slot:100b,tag:{Name:"Ember Ash Boots"}},{Slot:101b,tag:{Name:"Ember Ash Leggings"}},{Slot:102b,tag:{Name:"Ember Ash Chestplate"}},{Slot:103b,tag:{Name:"Ember Ash Helmet"}}]}] add ember_ash_armor

effect give @p[tag=ember_ash_armor] haste 15 2

advancement revoke @p[advancements={skyblock:commands/ambient/ember_ash_armor=true},tag=!ember_ash_armor] only skyblock:commands/ambient/ember_ash_armor
execute if entity @p[tag=ember_ash_armor] run schedule function skyblock:abilities/ambient/ember_ash_armor 4s replace
tag @p[tag=haste] remove haste
tag @p[tag=ember_ash_armor] remove ember_ash_armor