execute if predicate skyblock/fairy_armor/time_check0 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color1
execute if predicate skyblock:fairy_armor/time_check0 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color2
execute if predicate skyblock:fairy_armor/time_check0 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color3
execute if predicate skyblock:fairy_armor/time_check0 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color4

execute if predicate skyblock:fairy_armor/time_check1 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color2
execute if predicate skyblock:fairy_armor/time_check1 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color3
execute if predicate skyblock:fairy_armor/time_check1 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color4
execute if predicate skyblock:fairy_armor/time_check1 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color5

execute if predicate skyblock:fairy_armor/time_check2 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color3
execute if predicate skyblock:fairy_armor/time_check2 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color4
execute if predicate skyblock:fairy_armor/time_check2 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color5
execute if predicate skyblock:fairy_armor/time_check2 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color6

execute if predicate skyblock:fairy_armor/time_check3 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color4
execute if predicate skyblock:fairy_armor/time_check3 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color5
execute if predicate skyblock:fairy_armor/time_check3 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color6
execute if predicate skyblock:fairy_armor/time_check3 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color7

execute if predicate skyblock:fairy_armor/time_check4 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color5
execute if predicate skyblock:fairy_armor/time_check4 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color6
execute if predicate skyblock:fairy_armor/time_check4 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color7
execute if predicate skyblock:fairy_armor/time_check4 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color8

execute if predicate skyblock:fairy_armor/time_check5 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color6
execute if predicate skyblock:fairy_armor/time_check5 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color7
execute if predicate skyblock:fairy_armor/time_check5 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color8
execute if predicate skyblock:fairy_armor/time_check5 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color1

execute if predicate skyblock:fairy_armor/time_check6 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color7
execute if predicate skyblock:fairy_armor/time_check6 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color8
execute if predicate skyblock:fairy_armor/time_check6 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color1
execute if predicate skyblock:fairy_armor/time_check6 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color2

execute if predicate skyblock:fairy_armor/time_check7 run item modify entity @p[predicate=skyblock:fairy_fedora] armor.head skyblock:fairy_armor/change_color8
execute if predicate skyblock:fairy_armor/time_check7 run item modify entity @p[predicate=skyblock:fairy_polo] armor.chest skyblock:fairy_armor/change_color1
execute if predicate skyblock:fairy_armor/time_check7 run item modify entity @p[predicate=skyblock:fairy_trousers] armor.legs skyblock:fairy_armor/change_color2
execute if predicate skyblock:fairy_armor/time_check7 run item modify entity @p[predicate=skyblock:fairy_galoshes] armor.feet skyblock:fairy_armor/change_color3

function skyblock:abilities/reset_ambient
execute if entity @p[advancements={skyblock:commands/ambient/fairy_armor=true}] run schedule function skyblock:abilities/ambient/fairy_armor 5t replace