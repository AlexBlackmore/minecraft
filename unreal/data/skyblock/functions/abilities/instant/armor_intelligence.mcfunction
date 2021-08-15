tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"UNCOMMON\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add uncommon
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"RARE\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add rare
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"EPIC\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add epic
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"LEGENDARY\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add legendary
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"MYTHIC\",\"bold\":true,\"color\":\"dark_purple\"}"]}}}}] add mythic
tag @p[tag=!uncommon,tag=!rare,tag=!epic,tag=!legendary,tag=!mythic] add common

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=common] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=uncommon] 25
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=rare] 30
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=epic] 40
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=legendary] 50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Mythic"}}},tag=mythic] 60

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=common] 2
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=uncommon] 3
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=rare] 4
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=epic] 6
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=legendary] 8
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Pure"}}},tag=mythic] 10

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=common] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=uncommon] 40
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=rare] 60
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=epic] 80
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=legendary] 100
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Smart"}}},tag=mythic] 120

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=common] 25
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=uncommon] 50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=rare] 75
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=epic] 100
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=legendary] 125
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Wise"}}},tag=mythic] 150

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=common] 30
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=uncommon] 60
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=rare] 90
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=epic] 120
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=legendary] 150
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Necrotic"}}},tag=mythic] 200

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Ancient"}}},tag=epic] 16
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Ancient"}}},tag=legendary] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Ancient"}}},tag=mythic] 25

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=common] 3
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=uncommon] 4
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=rare] 6
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=epic] 8
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=legendary] 10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Spiked"}}},tag=mythic] 12

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=common] 3
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=uncommon] 4
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=rare] 6
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=epic] 8
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=legendary] 10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Renowned"}}},tag=mythic] 12

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=common] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=uncommon] 40
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=rare] 60
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=epic] 80
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=legendary] 100
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Loving"}}},tag=mythic] 120

tag @p[tag=common] remove common
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary
tag @p[tag=mythic] remove mythic

function skyblock:abilities/reset_instant
