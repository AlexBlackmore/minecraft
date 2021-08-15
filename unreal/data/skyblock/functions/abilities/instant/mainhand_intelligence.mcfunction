tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"UNCOMMON\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add uncommon
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"RARE\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add rare
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"EPIC\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add epic
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"LEGENDARY\",\"bold\":true,\"color\":\"aqua\"}"]}}}}] add legendary
tag @p[nbt={SelectedItem:{tag:{display:{Lore:["{\"text\":\"MYTHIC\",\"bold\":true,\"color\":\"dark_purple\"}"]}}}}] add mythic
tag @p[tag=!uncommon,tag=!rare,tag=!epic,tag=!legendary,tag=!mythic] add common

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=common] -5
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=uncommon] -10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=rare] -18
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=epic] -32
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=legendary] -50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Odd"}}},tag=mythic] -75

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=common] 2
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=uncommon] 3
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=rare] 4
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=epic] 7
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=legendary] 10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Fair"}}},tag=mythic] 12

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=common] 40
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=uncommon] 50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=rare] 65
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=epic] 80
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=legendary] 100
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Heroic"}}},tag=mythic] 125

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=common] 5
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=uncommon] 8
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=rare] 12
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=epic] 18
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=legendary] 25
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Legendary"}}},tag=mythic] 35

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=common] 3
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=uncommon] 6
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=rare] 10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=epic] 15
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=legendary] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Neat"}}},tag=mythic] 25

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=common] -5
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=uncommon] -10
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=rare] -18
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=epic] -32
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=legendary] -50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Awkward"}}},tag=mythic] -72

xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=common] 20
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=uncommon] 25
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=rare] 30
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=epic] 40
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=legendary] 50
xp add @p[nbt={SelectedItem:{tag:{Reforge:"Rich"}}},tag=mythic] 60

tag @p[tag=common] remove common
tag @p[tag=uncommon] remove uncommon
tag @p[tag=rare] remove rare
tag @p[tag=epic] remove epic
tag @p[tag=legendary] remove legendary
tag @p[tag=mythic] remove mythic

function skyblock:abilities/reset_instant
