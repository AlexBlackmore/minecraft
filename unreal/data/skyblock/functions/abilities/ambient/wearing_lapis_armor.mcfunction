function skyblock:reset_commands

attribute @p[predicate=skyblock:wearing_lapis_armor] minecraft:generic.max_health modifier add 197136056-492484348-355807247-571260017-289834734 "Lapis Armor Health" 12 add
attribute @p[predicate=!skyblock:wearing_lapis_armor] minecraft:generic.max_health modifier remove 197136056-492484348-355807247-571260017-289834734

execute as @p if predicate skyblock:wearing_lapis_armor run schedule function skyblock:wearing_lapis_armor 1s
