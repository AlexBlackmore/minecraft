function skyblock:abilities/reset_ambient
execute at @p[advancements={skyblock:commands/ambient/rejuvenate=true}] run effect give @e[type=!player,distance=0..8] poison 4
execute at @p[advancements={skyblock:commands/ambient/rejuvenate=true}] run execute if entity @e[type=!minecraft:player,distance=0..8] run effect give @p regeneration 11
execute if entity @p[advancements={skyblock:commands/ambient/rejuvenate=true}] run schedule function skyblock:abilities/ambient/rejuvenate 4s replace

