tag @p[advancements={skyblock:commands/instant/great_tilling=true},nbt={SelectedItem:{tag:{Name:"Hoe of Great Tilling"}}}] add great_tilling
tag @p[advancements={skyblock:commands/instant/great_tilling=true},nbt={SelectedItem:{tag:{Name:"Hoe of Greater Tilling"}}}] add greater_tilling

execute at @p[tag=great_tilling] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace dirt
execute at @p[tag=great_tilling] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace grass_block
execute at @p[tag=great_tilling] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 farmland replace dirt_path

execute at @p[tag=greater_tilling] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 farmland replace dirt
execute at @p[tag=greater_tilling] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 farmland replace grass_block
execute at @p[tag=greater_tilling] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 farmland replace dirt_path

execute at @p[tag=great_tilling] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 dirt replace coarse_dirt
execute at @p[tag=greater_tilling] run fill ~-2 ~-1 ~-2 ~2 ~-1 ~2 dirt replace coarse_dirt

tag @p[tag=great_tilling] remove great_tilling
tag @p[tag=greater_tilling] remove greater_tilling

function skyblock:abilities/reset_instant
