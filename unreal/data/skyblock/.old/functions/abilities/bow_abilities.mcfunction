execute if entity @p[tag=bow,predicate=skyblock:sneaking,level=10..,nbt={SelectedItem:{tag:{Name:"Scorpion Bow"}}}] run function skyblock:abilities/instant/stinger
execute if entity @p[tag=bow,predicate=skyblock:sneaking,level=1..,nbt={SelectedItem:{tag:{Name:"End Stone Bow"}}}] run function skyblock:abilities/instant/extreme_focus
execute if entity @p[tag=bow,predicate=skyblock:sneaking,level=5..,nbt={SelectedItem:{tag:{Name:"Ender Bow"}}}] run function skyblock:abilities/instant/ender_warp
execute if entity @p[tag=bow,predicate=skyblock:sneaking,nbt={SelectedItem:{tag:{Name:"Explosive Bow"}}}] run function skyblock:abilities/instant/explosive_shot

execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Sniper Bow"}}}] run data merge entity @e[limit=1,tag=calc] {NoGravity:true}
execute if entity @p[tag=bow,nbt={SelectedItem:{tag:{Name:"Soulstealer Bow"}}}] run data merge entity @e[limit=1,tag=calc] {NoGravity:true}