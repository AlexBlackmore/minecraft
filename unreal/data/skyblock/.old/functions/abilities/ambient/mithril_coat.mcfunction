tag @p[advancements={skyblock:commands/ambient/mithril_coat=true}] add mithril_coat

scoreboard objectives add max_health dummy "Max Health"
scoreboard objectives add health dummy "Health"

execute store result score @p[tag=mithril_coat] max_health run attribute @p[tag=mithril_coat] minecraft:generic.max_health get 0.4
execute store result score @p[tag=mithril_coat] health run data get entity @p[tag=mithril_coat] Health

execute if score @p[tag=mithril_coat] health < @p[tag=mithril_coat] max_health run tag @p[tag=mithril_coat] add mithrils_protection
tellraw @p[tag=mithrils_protection] ["",{"text":"[Mithril's Protection: +Regeneration]","italic":true,"color":"gray"}]

effect give @p[tag=mithrils_protection] minecraft:regeneration 11

tag @p[tag=mithril_coat] remove mithril_coat
tag @p[tag=mithrils_protection] remove mithrils_protection

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/mithril_coat=true}] run schedule function skyblock:abilities/ambient/mithril_coat 4s replace