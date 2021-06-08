function skyblock:reset_commands

attribute @p[predicate=skyblock:wearing_cheap_tuxedo] minecraft:generic.max_health modifier add 124265907-745923958-736509633-547905027-370839049 "Cheap Tuxedo Health" 0.5 multiply_base
attribute @p[predicate=skyblock:wearing_cheap_tuxedo] minecraft:generic.attack_damage modifier add 226890022-109737562-55658036-136484533-962645424 "Cheap Tuxedo Damage" 0.5 multiply

attribute @p[predicate=!skyblock:wearing_cheap_tuxedo] minecraft:generic.max_health modifier remove 124265907-745923958-736509633-547905027-370839049
attribute @p[predicate=!skyblock:wearing_cheap_tuxedo] minecraft:generic.attack_damage modifier remove 226890022-109737562-55658036-136484533-962645424

execute as @p if predicate skyblock:wearing_cheap_tuxedo run schedule function skyblock:wearing_cheap_tuxedo 1s
