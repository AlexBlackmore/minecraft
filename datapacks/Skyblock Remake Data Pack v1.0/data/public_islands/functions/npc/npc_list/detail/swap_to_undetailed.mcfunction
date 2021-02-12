tag @s remove detailed

execute at @s positioned ~ ~-1.7 ~ run replaceitem entity @e[type=villager,tag=detailed_npc,limit=1,sort=nearest] weapon air
execute at @s positioned ~ ~-1.7 ~ run replaceitem entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] weapon.mainhand air
execute at @s positioned ~ ~-1.7 ~ run replaceitem entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] weapon.offhand air
execute at @s positioned ~ ~-1.7 ~ run replaceitem entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] armor.head air

execute at @s positioned ~ ~-1.7 ~ run tp @e[tag=detailed_npc,limit=2,sort=nearest] ~ -5 ~
execute at @s positioned ~ -5 ~ run kill @e[tag=detailed_npc,limit=2,sort=nearest]

#CHOOSE SKIN
function public_islands:npc/npc_list/detail/skins/undetailed/function_tree/l7/l7_0
