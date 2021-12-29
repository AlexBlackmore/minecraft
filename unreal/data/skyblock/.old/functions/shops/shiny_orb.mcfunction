tag @p[advancements={skyblock:commands/shops/shiny_orb=true}] add shiny_orb

item modify entity @p[tag=shiny_orb] weapon.mainhand skyblock:subtract_item

execute at @p[tag=shiny_orb] run execute at @e[type=pig,limit=1,sort=nearest] run summon minecraft:firework_rocket ~ ~1 ~ {FireworksItem:{Count:1b,id:"minecraft:firework_rocket",tag:{Fireworks:{Explosions:[{Colors:[I;11184810,16733525,16777045,16777215],Type:4b}]}}}}

loot give @p[tag=shiny_orb] loot skyblock:shiny_orb
execute at @p[tag=shiny_orb] positioned ^ ^ ^1 run tp @e[type=pig,limit=1,sort=nearest] ~ ~-256 ~


advancement revoke @p[tag=shiny_orb] only skyblock:commands/shops/shiny_orb
tag @p[tag=shiny_orb] remove shiny_orb