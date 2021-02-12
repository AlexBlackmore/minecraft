execute if data storage blue:item item{id:"minecraft:cracked_polished_blackstone_bricks"} run data merge entity @s {Item:{tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Cracked Polished Blackstone Bricks","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}
execute if data storage blue:item item{id:"minecraft:polished_blackstone_pressure_plate"} run data merge entity @s {Item:{tag:{Base:{Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Polished Blackstone Pressure Plate","color":"white","italic":false}',Lore:['[{"text":"COMMON","color":"white","italic":false,"bold":true}]']}}}}

#(?<=Name:'{"text":")((?>[^_"]+_)*)([^"A-Z_])([^"A-Z_]+)([^"]*)(?=","color":"white","italic":false}',Lore)
#\1\U\2\E\3\4

#(?<=Name:'{"text":")(_?(?>[^_"]+)*)(_)([^"_]+)([^"]*)(?=","color":"white","italic":false}',Lore)
#\1 \3\4