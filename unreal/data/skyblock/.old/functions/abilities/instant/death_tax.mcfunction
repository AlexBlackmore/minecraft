tag @p[advancements={skyblock:commands/instant/death_tax_health=true}] add death_tax
effect give @p[tag=death_tax] instant_health 1
tellraw @p[tag=death_tax] {"text":"[Death Tax: +Instant Health]","italic":true,"color":"gray"}
advancement revoke @p[tag=death_tax] only skyblock:commands/instant/death_tax_health
tag @p[tag=death_tax] remove death_tax