attribute @p minecraft:generic.max_health modifier remove 83-79-17-26-38
attribute @p[predicate=skyblock:lantern_helmet,level=5..9] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 4 add
attribute @p[predicate=skyblock:lantern_helmet,level=10..14] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 8 add
attribute @p[predicate=skyblock:lantern_helmet,level=15..19] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 12 add
attribute @p[predicate=skyblock:lantern_helmet,level=20..24] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 16 add
attribute @p[predicate=skyblock:lantern_helmet,level=25..29] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 20 add
attribute @p[predicate=skyblock:lantern_helmet,level=30..34] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 24 add
attribute @p[predicate=skyblock:lantern_helmet,level=35..39] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 28 add
attribute @p[predicate=skyblock:lantern_helmet,level=40..44] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 32 add
attribute @p[predicate=skyblock:lantern_helmet,level=45..49] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 36 add
attribute @p[predicate=skyblock:lantern_helmet,level=50..54] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 40 add
attribute @p[predicate=skyblock:lantern_helmet,level=55..59] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 44 add
attribute @p[predicate=skyblock:lantern_helmet,level=60..] minecraft:generic.max_health modifier add 83-79-17-26-38 "Lantern Helmet" 48 add

attribute @p minecraft:generic.armor modifier remove 22-78-85-8-60
attribute @p[predicate=skyblock:lantern_helmet,level=5..9] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 2 add
attribute @p[predicate=skyblock:lantern_helmet,level=10..14] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 4 add
attribute @p[predicate=skyblock:lantern_helmet,level=15..19] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 6 add
attribute @p[predicate=skyblock:lantern_helmet,level=20..24] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 8 add
attribute @p[predicate=skyblock:lantern_helmet,level=25..29] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 10 add
attribute @p[predicate=skyblock:lantern_helmet,level=30..34] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 12 add
attribute @p[predicate=skyblock:lantern_helmet,level=35..39] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 14 add
attribute @p[predicate=skyblock:lantern_helmet,level=40..44] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 16 add
attribute @p[predicate=skyblock:lantern_helmet,level=45..49] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 18 add
attribute @p[predicate=skyblock:lantern_helmet,level=50..54] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 20 add
attribute @p[predicate=skyblock:lantern_helmet,level=55..59] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 22 add
attribute @p[predicate=skyblock:lantern_helmet,level=60..] minecraft:generic.armor modifier add 22-78-85-8-60 "Lantern Helmet" 24 add
function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/lantern_helmet=true}] run schedule function skyblock:abilities/ambient/lantern_helmet 4s replace

