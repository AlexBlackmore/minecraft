tag @p[advancements={skyblock:commands/abilities/haste=true}] add haste
tag @p[tag=haste,nbt={Inventory:[{Slot:100b,tag:{Name:"Miner's Outfit Boots"}},{Slot:101b,tag:{Name:"Miner's Outfit Leggings"}},{Slot:102b,tag:{Name:"Miner's Outfit Chestplate"}},{Slot:103b,tag:{Name:"Miner's Outfit Helmet"}}]}] add miners_outfit

effect give @p[tag=miners_outfit] haste 15 1

advancement revoke @p[advancements={skyblock:commands/abilities/haste=true},tag=!miners_outfit] only skyblock:commands/abilities/haste
execute if entity @p[tag=miners_outfit] run schedule function skyblock:abilities/ambient/haste 4s replace
tag @p[tag=haste] remove haste
tag @p[tag=miners_outfit] remove miners_outfit