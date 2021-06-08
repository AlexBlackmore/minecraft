function skyblock:reset_commands
effect give @p[predicate=skyblock:wearing_mushroom_armor] night_vision 15 0
execute if predicate skyblock:is_nighttime run attribute @p[predicate=skyblock:wearing_mushroom_armor] minecraft:generic.max_health modifier add 472480598-889425168-676189930-495267504-447023367 "Mushroom Armor Health" 22 add
execute if predicate skyblock:is_nighttime run attribute @p[predicate=skyblock:wearing_mushroom_armor] minecraft:generic.armor modifier add 985828432-689673354-185226682-26737330-82125018 "Mushroom Armor Defense" 6 add

execute unless predicate skyblock:is_nighttime run attribute @p[predicate=skyblock:wearing_mushroom_armor] minecraft:generic.max_health modifier remove 472480598-889425168-676189930-495267504-447023367
execute unless predicate skyblock:is_nighttime run attribute @p[predicate=skyblock:wearing_mushroom_armor] minecraft:generic.armor modifier remove 985828432-689673354-185226682-26737330-82125018

attribute @p[predicate=!skyblock:wearing_mushroom_armor] minecraft:generic.max_health modifier remove 472480598-889425168-676189930-495267504-447023367
attribute @p[predicate=!skyblock:wearing_mushroom_armor] minecraft:generic.armor modifier remove 985828432-689673354-185226682-26737330-82125018

execute as @p if predicate skyblock:wearing_mushroom_armor run schedule function skyblock:wearing_mushroom_armor 4s
