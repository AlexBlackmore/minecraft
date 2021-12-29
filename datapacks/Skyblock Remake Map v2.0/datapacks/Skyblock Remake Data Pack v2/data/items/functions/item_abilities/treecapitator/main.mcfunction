scoreboard players set @s PassiveCooldown 40
scoreboard players set @s Treecapitator 1
tag @s add Mining_Tree
execute if data entity @s SelectedItem.tag.Base{PassiveAbility:"JungleAxe"} run scoreboard players set Limit Treecapitator 16
execute if data entity @s SelectedItem.tag.Base{PassiveAbility:"Treecapitator"} run scoreboard players set Limit Treecapitator 32
execute positioned ~ ~1 ~ unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~-1 ~ unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give
execute positioned ~1 ~ ~ unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give
execute positioned ~-1 ~ ~ unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~ ~1 unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give
execute positioned ~ ~ ~-1 unless entity @e[tag=TravelTo,distance=..2] if block ~ ~ ~ #minecraft:logs run function items:item_abilities/treecapitator/tag_give