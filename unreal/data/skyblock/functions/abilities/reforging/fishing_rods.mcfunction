execute if data entity @p SelectedItem.tag.Reforge run tag @p add fail

tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"UNCOMMON\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add uncommon
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"RARE\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add rare
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"EPIC\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add epic
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"LEGENDARY\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add legendary
tag @p[tag=!uncommon,tag=!rare,tag=!epic,tag=!legendary] add common

tag @p[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Hunk of Ice\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] add salty
tag @p[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Hunk of Blue Ice\",\"italic\":false,\"color\":\"aqua\"}"}}}]}] add treacherous
tag @p[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Hardened Wood\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] add stiff
tag @p[nbt={Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Lucky Dice\",\"italic\":false,\"color\":\"light_purple\"}"}}}]}] add lucky

item modify entity @p[tag=!fail,tag=salty,tag=common] weapon.mainhand skyblock:reforging/fishing_rods/salty/set_attributes_common
item modify entity @p[tag=!fail,tag=salty,tag=uncommon] weapon.mainhand skyblock:reforging/fishing_rods/salty/set_attributes_uncommon
item modify entity @p[tag=!fail,tag=salty,tag=rare] weapon.mainhand skyblock:reforging/salty/fishing_rods/set_attributes_rare
item modify entity @p[tag=!fail,tag=salty,tag=epic] weapon.mainhand skyblock:reforging/salty/fishing_rods/set_attributes_epic
item modify entity @p[tag=!fail,tag=salty,tag=legendary] weapon.mainhand skyblock:reforging/fishing_rods/salty/set_attributes_legendary

execute unless data entity @p[tag=!fail,tag=common] SelectedItem.tag.display.Name run item modify entity @p[tag=common] weapon.mainhand skyblock:reforging/fishing_rods/set_name_default
item modify entity @p[tag=!fail,tag=salty] weapon.mainhand skyblock:reforging/fishing_rods/salty/set_name

item modify entity @p[tag=!fail,tag=salty] weapon.mainhand skyblock:reforging/fishing_rods/salty/set_reforged
item modify entity @p[tag=!fail,tag=treacherous] weapon.mainhand skyblock:reforging/fishing_rods/treacherous/set_reforged
item modify entity @p[tag=!fail,tag=stiff] weapon.mainhand skyblock:reforging/fishing_rods/stiff/set_reforged
item modify entity @p[tag=!fail,tag=lucky] weapon.mainhand skyblock:reforging/fishing_rods/lucky/set_reforged

item replace entity @p[tag=!fail] weapon.offhand with air

tag @p[tag=fail] remove fail
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary
tag @p[tag=common] remove common
tag @p[tag=salty] remove salty
tag @p[tag=treacherous] remove treacherous
tag @p[tag=stiff] remove stiff
tag @p[tag=lucky] remove lucky

effect give @p hunger 1

function skyblock:abilities/reset_instant
