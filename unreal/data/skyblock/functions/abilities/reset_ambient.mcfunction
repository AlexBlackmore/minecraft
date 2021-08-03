execute as @a[advancements={skyblock:commands/ambient/ghast_head=true}] run execute unless entity @s[predicate=skyblock:ghast_head] run advancement revoke @p only skyblock:commands/ambient/ghast_head

execute as @a[advancements={skyblock:commands/ambient/rabbit_hat=true}] run execute unless entity @p[predicate=skyblock:rabbit_hat] run advancement revoke @p only skyblock:commands/ambient/rabbit_hat

execute as @a[advancements={skyblock:commands/ambient/hive=true}] run execute unless entity @p[predicate=skyblock:hive] run advancement revoke @p only skyblock:commands/ambient/hive

execute as @a[advancements={skyblock:commands/ambient/lantern_helmet=true}] run execute unless entity @p[predicate=skyblock:lantern_helmet] run advancement revoke @p only skyblock:commands/ambient/lantern_helmet

execute as @a[advancements={skyblock:commands/ambient/skeletons_hat=true}] run execute unless entity @p[predicate=skyblock:skeletons_helmet] run advancement revoke @p only skyblock:commands/ambient/skeletons_helmet
execute as @a[advancements={skyblock:commands/ambient/skeletons_hat=true}] run execute if entity @p[predicate=skyblock:skeletons_helmet] run schedule function skyblock:abilities/reset_ambient 4s replace

execute as @a[advancements={skyblock:commands/ambient/rejuvenate=true}] run execute unless entity @p[predicate=skyblock:vampire_mask] run execute unless entity @p[predicate=skyblock:vampire_witch_mask] run advancement revoke @p only skyblock:commands/ambient/rejuvenate

execute as @a[advancements={skyblock:commands/ambient/healing_boost=true}] run execute unless entity @p[predicate=skyblock:zombies_heart] run execute unless entity @p[predicate=skyblock:reaper_mask] run execute unless entity @p[predicate=skyblock:revived_heart] run execute unless entity @p[predicate=skyblock:crystallized_heart] run execute unless entity @p[predicate=skyblock:mender_helmet] run execute unless entity @p[predicate=skyblock:mender_fedora] run execute unless entity @p[predicate=skyblock:mender_crown] run advancement revoke @p only skyblock:commands/ambient/healing_boost
execute as @a[advancements={skyblock:commands/ambient/healing_boost=true}] run execute if entity @p[advancements={skyblock:commands/ambient/healing_boost=true}] run schedule function skyblock:abilities/reset_ambient 4s replace

execute as @a[advancements={skyblock:commands/ambient/brute_force=true}] run execute unless entity @p[predicate=skyblock:warden_helmet] run advancement revoke @p only skyblock:commands/ambient/brute_force

execute as @a[advancements={skyblock:commands/ambient/bonus_speed=true}] run execute unless entity @p[predicate=skyblock:farm_suit] run advancement revoke @p only skyblock:commands/ambient/bonus_speed
advancement revoke @p only skyblock:commands/ambient/farming_biomes

execute as @a[advancements={skyblock:commands/ambient/night_affinity=true}] run execute unless entity @p[predicate=skyblock:mushroom_armor] run advancement revoke @p only skyblock:commands/ambient/night_affinity

execute as @a[advancements={skyblock:commands/ambient/deepness_within=true}] run execute unless entity @p[predicate=skyblock:angler_armor] run advancement revoke @p only skyblock:commands/ambient/deepness_within

execute as @a[advancements={skyblock:commands/ambient/fairy_armor=true}] run execute unless entity @p[predicate=skyblock:fairy_fedora] run execute unless entity @p[predicate=skyblock:fairy_polo] run execute unless entity @p[predicate=skyblock:fairy_trousers] run execute unless entity @p[predicate=skyblock:fairy_galoshes] run advancement revoke @p only skyblock:commands/ambient/fairy_armor
execute as @a[advancements={skyblock:commands/ambient/fairys_outfit=true}] run execute unless entity @p[predicate=skyblock:fairy_armor] run advancement revoke @p only skyblock:commands/ambient/fairys_outfit

execute as @a[advancements={skyblock:commands/ambient/refraction=true}] run execute unless entity @p[predicate=skyblock:crystal_armor] run advancement revoke @p only skyblock:commands/ambient/refraction

execute as @a[advancements={skyblock:commands/ambient/pumpkin_buff=true}] run execute unless entity @p[predicate=skyblock:pumpkin_armor] run advancement revoke @p only skyblock:commands/ambient/pumpkin_buff

execute as @a[advancements={skyblock:commands/ambient/energy_of_the_forest=true}] run execute unless entity @p[predicate=skyblock:leaflet_armor] run advancement revoke @p only skyblock:commands/ambient/energy_of_the_forest
advancement revoke @p only skyblock:commands/ambient/forest_biomes

execute as @a[advancements={skyblock:commands/ambient/health=true}] run execute unless entity @p[predicate=skyblock:lapis_armor] run advancement revoke @p only skyblock:commands/ambient/health

execute as @a[advancements={skyblock:commands/ambient/haste=true}] run execute unless entity @s[predicate=skyblock:miners_outfit] run advancement revoke @p only skyblock:commands/ambient/haste

execute as @a[advancements={skyblock:commands/ambient/regeneration=true}] run execute unless entity @s[predicate=skyblock:miner_armor] run advancement revoke @p only skyblock:commands/ambient/regeneration

execute as @a[advancements={skyblock:commands/ambient/miner_armor=true}] run execute unless entity @p[predicate=skyblock:miner_helmet] run execute unless entity @p[predicate=skyblock:miner_chestplate] run execute unless entity @p[predicate=skyblock:miner_leggings] run execute unless entity @p[predicate=skyblock:miner_boots] run advancement revoke @p only skyblock:commands/ambient/miner_armor
advancement revoke @p only skyblock:commands/ambient/mine_biomes
