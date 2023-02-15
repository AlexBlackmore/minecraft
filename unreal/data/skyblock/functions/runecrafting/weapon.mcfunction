#Blood
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Blood"}}}] run particle minecraft:block red_wool ~ ~1 ~ 0 0 0 1 100 normal

#Snow
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Snow"}}}] run particle minecraft:item_snowball ~ ~1 ~ 0 0 0 1 50 normal

#Jerry
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Jerry"}}}] run particle minecraft:item minecraft:brown_wool ~ ~1 ~ 0 0 0 0.1 50 normal

#Hearts 
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Hearts"}}}] run particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10 normal

#Lightning
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Lightning"}}}] run summon lightning_bolt ~ ~-16 ~

#Pestilence
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Pestilence"}}}] run particle minecraft:mycelium ~ ~1 ~ 0.5 0.5 0.5 1 500 normal

#Spirit
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Spirit"}}}] run particle minecraft:sculk_soul ~ ~1 ~ 0.2 2 0.2 0 20 normal

#Music
execute at @e[tag=target] if entity @s[nbt={SelectedItem:{tag:{Rune:"Music"}}}] run particle minecraft:note ~ ~1 ~ 0.5 0.5 0.5 1 10 normal