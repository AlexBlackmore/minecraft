tag @p[advancements={skyblock:commands/instant/effect_immunity=true}] add effect_immunity

effect clear @p[tag=effect_immunity,nbt={Inventory:[{Slot:102b,tag:{display:{Name:"{\"text\":\"Obsidian Chestplate\",\"italic\":false,\"color\":\"light_purple\"}"}}}]}] wither
effect clear @p[tag=effect_immunity,nbt={Inventory:[{tag:{display:{Name:"{\"text\":\"Vaccine Talisman\",\"italic\":false,\"color\":\"white\"}"}}}]}] poison

function skyblock:abilities/reset_instant
