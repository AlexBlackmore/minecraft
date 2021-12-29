tag @a[advancements={skyblock:commands/instant/consumable=true}] add consumable

loot give @p[tag=consumable,nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Reforge Book\",\"italic\":false,\"color\":\"white\"}"}}}}] loot skyblock:reforge_book

item modify entity @p[tag=consumable] weapon.mainhand skyblock:subtract_item
effect give @p[tag=consumable] nausea 1

tag @p[tag=consumable] remove consumable

function skyblock:abilities/reset_instant
