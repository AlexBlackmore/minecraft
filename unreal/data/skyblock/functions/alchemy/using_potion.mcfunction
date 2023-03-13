execute if entity @s[advancements={skyblock:commands/alchemy/using_potion=true}] run schedule function skyblock:alchemy/using_potion 1t replace

kill @e[tag=brewing_stand]
execute at @s[advancements={skyblock:commands/alchemy/using_potion=true}] unless entity @e[tag=brewing_stand] run summon armor_stand ~ ~ ~ {Tags:["brewing_stand"],Invisible:true,Marker:true,Invulnerable:true}
execute at @s[advancements={skyblock:commands/alchemy/using_potion=true}] run item replace entity @e[tag=brewing_stand,limit=1,sort=nearest] weapon.mainhand from entity @s weapon.mainhand

advancement revoke @s only skyblock:commands/alchemy/using_potion