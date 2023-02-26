tellraw @s[advancements={skyblock:quests/city_projects=false}] ["",{"text":"<","color":"white"},{"text":"Elizabeth","color":"yellow"},{"text":"> Hello! Welcome to ","color":"white"},{"text":"Skyblock","color":"aqua"},{"text":"! I have powerful items to offer, but only the experienced adventurers! Until then, I suggest leveling up!","color":"white"}]
advancement grant @s only skyblock:quests/city_projects


tag @s[advancements={skyblock:quests/city_projects/blacksmith_workspace/renovations=true,skyblock:quests/city_projects/blacksmith_workspace/new_anvils=true,skyblock:quests/city_projects/blacksmith_workspace/fuel_for_years=true,skyblock:quests/city_projects/blacksmith_workspace/labor=true}] add fire_sale
advancement revoke @s[advancements={skyblock:quests/city_projects/blacksmith_workspace/renovations=true,skyblock:quests/city_projects/blacksmith_workspace/new_anvils=true,skyblock:quests/city_projects/blacksmith_workspace/fuel_for_years=true,skyblock:quests/city_projects/blacksmith_workspace/labor=true}] from skyblock:quests/city_projects/blacksmith_workspace/renovations

tag @s[advancements={skyblock:quests/city_projects/builders_house/plenty_of_cobble=true,skyblock:quests/city_projects/builders_house/dyes=true,skyblock:quests/city_projects/builders_house/new_building=true,skyblock:quests/city_projects/builders_house/labor=true}] add fire_sale
advancement revoke @s[advancements={skyblock:quests/city_projects/builders_house/plenty_of_cobble=true,skyblock:quests/city_projects/builders_house/dyes=true,skyblock:quests/city_projects/builders_house/new_building=true,skyblock:quests/city_projects/builders_house/labor=true}] from skyblock:quests/city_projects/builders_house/plenty_of_cobble

tag @s[advancements={skyblock:quests/city_projects/farm_merchants_dwelling/building_foundations=true,skyblock:quests/city_projects/farm_merchants_dwelling/share_of_harvests=true,skyblock:quests/city_projects/farm_merchants_dwelling/towering_cacti=true,skyblock:quests/city_projects/farm_merchants_dwelling/labor=true}] add fire_sale
advancement revoke @s[advancements={skyblock:quests/city_projects/farm_merchants_dwelling/building_foundations=true,skyblock:quests/city_projects/farm_merchants_dwelling/share_of_harvests=true,skyblock:quests/city_projects/farm_merchants_dwelling/towering_cacti=true,skyblock:quests/city_projects/farm_merchants_dwelling/labor=true}] from skyblock:quests/city_projects/farm_merchants_dwelling/building_foundations

tag @s[advancements={skyblock:quests/city_projects/bartenders_brewery/building_machinery=true,skyblock:quests/city_projects/bartenders_brewery/sugary_drinks=true,skyblock:quests/city_projects/bartenders_brewery/slavic_recipes=true,skyblock:quests/city_projects/bartenders_brewery/labor=true}] add fire_sale
advancement revoke @s[advancements={skyblock:quests/city_projects/bartenders_brewery/building_machinery=true,skyblock:quests/city_projects/bartenders_brewery/sugary_drinks=true,skyblock:quests/city_projects/bartenders_brewery/slavic_recipes=true,skyblock:quests/city_projects/bartenders_brewery/labor=true}] from skyblock:quests/city_projects/bartenders_brewery/building_machinery

tag @s[advancements={skyblock:quests/city_projects/weaponsmiths_workshop/foundation_improvements=true,skyblock:quests/city_projects/weaponsmiths_workshop/basement_addition=true,skyblock:quests/city_projects/weaponsmiths_workshop/arrow_supplies=true,skyblock:quests/city_projects/weaponsmiths_workshop/labor=true}] add fire_sale
advancement revoke @s[advancements={skyblock:quests/city_projects/weaponsmiths_workshop/foundation_improvements=true,skyblock:quests/city_projects/weaponsmiths_workshop/basement_addition=true,skyblock:quests/city_projects/weaponsmiths_workshop/arrow_supplies=true,skyblock:quests/city_projects/weaponsmiths_workshop/labor=true}] from skyblock:quests/city_projects/weaponsmiths_workshop/foundation_improvements


execute at @s[tag=fire_sale] run loot spawn ~ ~ ~ loot skyblock:chests/fire_sale
tellraw @s[tag=fire_sale] ["",{"text":"?","obfuscated":true,"color":"gold","bold":true},{"text":" FIRE SALE ","color":"red","bold":true},{"text":"?","obfuscated":true,"color":"gold","bold":true}]
tellraw @s[tag=fire_sale] ["",{"text":"Received ","color":"yellow"},{"nbt":"Item.tag.display.Name","entity":"@e[type=item,limit=1,sort=nearest,nbt={Age:0s}]","interpret":true},{"text":"!","color":"yellow"}]

tag @s[tag=fire_sale] remove fire_sale
advancement revoke @s only skyblock:commands/npcs/elizabeth