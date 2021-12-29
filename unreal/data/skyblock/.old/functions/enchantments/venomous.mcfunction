tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:1}}}] add venomous1
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:2}}}] add venomous2
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:3}}}] add venomous3
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:4}}}] add venomous4
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:5}}}] add venomous5
tag @p[tag=bonus_damage,nbt={SelectedItem:{tag:{Venomous:6}}}] add venomous6

tellraw @p[tag=venomous1] {"text":"[@: Venomous I]","italic":true,"color":"gray"}
tellraw @p[tag=venomous2] {"text":"[@: Venomous II]","italic":true,"color":"gray"}
tellraw @p[tag=venomous3] {"text":"[@: Venomous III]","italic":true,"color":"gray"}
tellraw @p[tag=venomous4] {"text":"[@: Venomous IV]","italic":true,"color":"gray"}
tellraw @p[tag=venomous5] {"text":"[@: Venomous V]","italic":true,"color":"gray"}
tellraw @p[tag=venomous6] {"text":"[@: Venomous VI]","italic":true,"color":"gray"}

execute if entity @p[tag=venomous1] run effect give @e[tag=target] slowness 4 0
execute if entity @p[tag=venomous2] run effect give @e[tag=target] slowness 4 1
execute if entity @p[tag=venomous3] run effect give @e[tag=target] slowness 4 2
execute if entity @p[tag=venomous4] run effect give @e[tag=target] slowness 4 3
execute if entity @p[tag=venomous5] run effect give @e[tag=target] slowness 4 4
execute if entity @p[tag=venomous6] run effect give @e[tag=target] slowness 4 5

execute if entity @p[tag=venomous1] run effect give @e[tag=target] poison 4 0
execute if entity @p[tag=venomous2] run effect give @e[tag=target] poison 4 1
execute if entity @p[tag=venomous3] run effect give @e[tag=target] poison 4 2
execute if entity @p[tag=venomous4] run effect give @e[tag=target] poison 4 3
execute if entity @p[tag=venomous5] run effect give @e[tag=target] poison 4 4
execute if entity @p[tag=venomous6] run effect give @e[tag=target] poison 4 5

tag @p[tag=venomous1] remove venomous1
tag @p[tag=venomous2] remove venomous2
tag @p[tag=venomous3] remove venomous3
tag @p[tag=venomous4] remove venomous4
tag @p[tag=venomous5] remove venomous5
tag @p[tag=venomous6] remove venomous6