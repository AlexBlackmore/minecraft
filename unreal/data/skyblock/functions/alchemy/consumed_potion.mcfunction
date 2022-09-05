#tellraw @s "consumed_potion"

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/rabbit=true}] only skyblock:effects/rabbit
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/rabbit=true,skyblock:commands/alchemy/consumed_potion/cheap_coffee=true}] add cheap_coffee_rabbit
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/rabbit=true,skyblock:commands/alchemy/consumed_potion/decent_coffee=true}] add decent_coffee_rabbit
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/rabbit=true,skyblock:commands/alchemy/consumed_potion/black_coffee=true}] add black_coffee_rabbit
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/rabbit

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/burning=true}] only skyblock:effects/burning
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/burning

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/stun=true}] only skyblock:effects/stun
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/stun

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/archery=true}] only skyblock:effects/archery
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/archery=true,skyblock:commands/alchemy/consumed_potion/tutti_frutti_flavored_poison=true}] add tutti_frutti_flavored_poison
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/archery

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/adrenaline=true}] only skyblock:effects/adrenaline
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/adrenaline=true,skyblock:commands/alchemy/consumed_potion/cheap_coffee=true}] add cheap_coffee_adrenaline
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/adrenaline=true,skyblock:commands/alchemy/consumed_potion/decent_coffee=true}] add decent_coffee_adrenaline
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/adrenaline=true,skyblock:commands/alchemy/consumed_potion/black_coffee=true}] add black_coffee_adrenaline
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/adrenaline

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/critical=true}] only skyblock:effects/critical
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/critical=true,skyblock:commands/alchemy/consumed_potion/slayer_energy_drink=true}] add slayer_energy_drink
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/critical

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/dodge=true}] only skyblock:effects/dodge
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/dodge

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/true_resistance=true}] only skyblock:effects/true_resistance
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/true_resistance

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/agility=true}] only skyblock:effects/agility
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/agility=true,skyblock:commands/alchemy/consumed_potion/cheap_coffee=true}] add cheap_coffee_agility
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/agility=true,skyblock:commands/alchemy/consumed_potion/decent_coffee=true}] add decent_coffee_agility
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/agility=true,skyblock:commands/alchemy/consumed_potion/black_coffee=true}] add black_coffee_agility
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/agility

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/experience=true}] only skyblock:effects/experience
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/experience=true,skyblock:commands/alchemy/consumed_potion/bitter_iced_tea=true}] add bitter_iced_tea_experience
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/experience=true,skyblock:commands/alchemy/consumed_potion/vikings_tear=true}] add vikings_tear_experience
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/experience

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/mana=true}] only skyblock:effects/mana
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/mana=true,skyblock:commands/alchemy/consumed_potion/bitter_iced_tea=true}] add bitter_iced_tea_mana
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/mana=true,skyblock:commands/alchemy/consumed_potion/pulpous_orange_juice=true}] add pulpous_orange_juice_mana
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/mana

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/stamina=true}] only skyblock:effects/stamina
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/stamina=true,skyblock:commands/alchemy/consumed_potion/bitter_iced_tea=true}] add bitter_iced_tea_stamina
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/stamina=true,skyblock:commands/alchemy/consumed_potion/pulpous_orange_juice=true}] add pulpous_orange_juice_stamina
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/stamina

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/dungeon=true}] only skyblock:effects/critical
advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/dungeon=true},scores={archery_duration=1..}] only skyblock:effects/archery
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/dungeon

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/spirit=true}] only skyblock:effects/spirit
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/spirit

advancement grant @s[advancements={skyblock:commands/alchemy/consumed_potion/magic_find=true}] only skyblock:effects/magic_find
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/magic_find


tag @s[advancements={skyblock:commands/alchemy/consumed_potion/swiftness=true,skyblock:commands/alchemy/consumed_potion/cheap_coffee=true}] add cheap_coffee_swiftness
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/swiftness=true,skyblock:commands/alchemy/consumed_potion/decent_coffee=true}] add decent_coffee_swiftness
tag @s[advancements={skyblock:commands/alchemy/consumed_potion/swiftness=true,skyblock:commands/alchemy/consumed_potion/black_coffee=true}] add black_coffee_swiftness
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/swiftness

tag @s[advancements={skyblock:commands/alchemy/consumed_potion/tepid_green_tea=true}] add tepid_green_tea
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/tepid_green_tea

tag @s[advancements={skyblock:commands/alchemy/consumed_potion/regeneration=true,skyblock:commands/alchemy/consumed_potion/pulpous_orange_juice=true}] add pulpous_orange_juice_regeneration
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/pulpous_orange_juice
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/regeneration

tag @s[advancements={skyblock:commands/alchemy/consumed_potion/knockoff_cola=true}] add knockoff_cola
advancement revoke @s only skyblock:commands/alchemy/consumed_potion/knockoff_cola