#tellraw @p "using_bow"

tag @p[advancements={skyblock:commands/using_bow=false}] add bow
execute if entity @p[tag=bow] run function skyblock:arrow_damage
execute if entity @s[advancements={skyblock:commands/using_bow=true}] run schedule function skyblock:using_bow 1t replace
advancement revoke @s[advancements={skyblock:commands/using_bow=true}] only skyblock:commands/using_bow
