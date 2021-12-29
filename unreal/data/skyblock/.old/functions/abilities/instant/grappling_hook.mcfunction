tp @p[tag=ability] @e[type=minecraft:fishing_bobber,limit=1,sort=nearest]
kill @e[type=fishing_bobber]

tag @p[tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Bat Person Boots"}},{Slot:101b,tag:{Name:"Bat Person Leggings"}},{Slot:102b,tag:{Name:"Bat Person Chestplate"}},{Slot:103b,tag:{Name:"Bat Person Helmet"}}]}] add bat_person
effect give @p[tag=!bat_person] hunger 2
