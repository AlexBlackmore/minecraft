tag @p[advancements={skyblock:commands/shops/buy_fancy_tuxedo=true}] add buy

item replace entity @p[tag=buy] hotbar.0 with air
item replace entity @p[tag=buy] hotbar.1 with air
item replace entity @p[tag=buy] hotbar.2 with air

loot give @p[tag=buy] loot skyblock:items/armor/fancy_tuxedo/fancy_tuxedo_jacket
loot give @p[tag=buy] loot skyblock:items/armor/fancy_tuxedo/fancy_tuxedo_pants
loot give @p[tag=buy] loot skyblock:items/armor/fancy_tuxedo/fancy_tuxedo_oxfords

playsound minecraft:entity.villager.celebrate player @p[tag=buy]
tellraw @p[tag=buy] ["",{"text":"[@:Purchased Fancy Tuxedo]","italic":true,"color":"gray"}]

advancement revoke @p[tag=buy] only skyblock:commands/shops/buy_fancy_tuxedo
tag @p[tag=buy] remove buy