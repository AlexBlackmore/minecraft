tag @p[advancements={skyblock:commands/shops/buy_wood_singularity=true}] add buy

item replace entity @p[tag=buy] hotbar.0 with air
item replace entity @p[tag=buy] hotbar.1 with air
item replace entity @p[tag=buy] hotbar.2 with air
item replace entity @p[tag=buy] hotbar.3 with air
item replace entity @p[tag=buy] hotbar.4 with air
item replace entity @p[tag=buy] hotbar.5 with air
item replace entity @p[tag=buy] hotbar.6 with air
item replace entity @p[tag=buy] hotbar.7 with air
item replace entity @p[tag=buy] hotbar.8 with air
item replace entity @p[tag=buy] inventory.0 with air
item replace entity @p[tag=buy] inventory.1 with air
item replace entity @p[tag=buy] inventory.2 with air
item replace entity @p[tag=buy] inventory.3 with air
item replace entity @p[tag=buy] inventory.4 with air
item replace entity @p[tag=buy] inventory.5 with air
item replace entity @p[tag=buy] inventory.6 with air
item replace entity @p[tag=buy] inventory.7 with air
item replace entity @p[tag=buy] inventory.8 with air
item replace entity @p[tag=buy] inventory.9 with air
item replace entity @p[tag=buy] inventory.10 with air
item replace entity @p[tag=buy] inventory.11 with air
item replace entity @p[tag=buy] inventory.12 with air
item replace entity @p[tag=buy] inventory.13 with air
item replace entity @p[tag=buy] inventory.14 with air
item replace entity @p[tag=buy] inventory.15 with air
item replace entity @p[tag=buy] inventory.16 with air
item replace entity @p[tag=buy] inventory.17 with air
item replace entity @p[tag=buy] inventory.18 with air
item replace entity @p[tag=buy] inventory.19 with air
item replace entity @p[tag=buy] inventory.20 with air
item replace entity @p[tag=buy] inventory.21 with air
item replace entity @p[tag=buy] inventory.22 with air
item replace entity @p[tag=buy] inventory.23 with air

loot give @p[tag=buy] loot skyblock:items/wood_singularity

playsound minecraft:entity.villager.celebrate player @p[tag=buy]
tellraw @p[tag=buy] ["",{"text":"[@:Purchased Wood Singularity]","italic":true,"color":"gray"}]

advancement revoke @p[tag=buy] only skyblock:commands/shops/buy_wood_singularity
tag @p[tag=buy] remove buy