tag @p[advancements={skyblock:commands/instant/krampus_helmet=true}] add krampus_helmet

execute unless data entity @p[tag=krampus_helmet] Inventory[{Slot:103b}].tag.AttributeModifiers[99] run tellraw @p[tag=krampus_helmet] {"text":"[Krampus Helmet: +1 Max Health]","italic":true,"color":"gray"}
execute if data entity @p[tag=krampus_helmet] Inventory[{Slot:103b}].tag.AttributeModifiers[99] run tellraw @p[tag=krampus_helmet] {"text":"[Krampus Helmet: MAXED!]","italic":true,"color":"gray"}

execute if data entity @p[tag=krampus_helmet] Inventory[{Slot:103b}].tag.AttributeModifiers[99] run execute unless entity @p[tag=krampus_helmet,nbt={Inventory:[{Slot:103b,tag:{display:{Lore:["{\"text\":\"MAXED!\",\"italic\":false,\"bold\":true,\"color\":\"green\"}"]}}}]}] run item modify entity @p[tag=krampus_helmet] armor.head skyblock:add_lore_maxed

execute unless data entity @p[tag=krampus_helmet] Inventory[{Slot:103b}].tag.AttributeModifiers[99] run item modify entity @p[tag=krampus_helmet] armor.head skyblock:increase_mending_level
execute unless data entity @p[tag=krampus_helmet] Inventory[{Slot:103b}].tag.AttributeModifiers[99] run item modify entity @p[tag=krampus_helmet] armor.head skyblock:increase_max_health_helmet

advancement revoke @p[tag=krampus_helmet] only skyblock:commands/instant/krampus_helmet
tag @p[tag=krampus_helmet] remove krampus_helmet
