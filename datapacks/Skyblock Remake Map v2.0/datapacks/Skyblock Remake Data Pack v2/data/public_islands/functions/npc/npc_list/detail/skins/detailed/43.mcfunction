execute positioned ~ ~-1.7 ~ run item replace entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with scute{CustomModelData:212}
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with scute{CustomModelData:281}
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.offhand with scute{CustomModelData:350}
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] armor.head with scute{CustomModelData:143}
execute positioned ~ ~-1.7 ~ if entity @s[tag=Pat] run tag @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] add Pat
execute positioned ~ ~-1.7 ~ if entity @s[tag=Rick] run tag @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] add Rick
