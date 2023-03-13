scoreboard objectives add minutes dummy "Minutes"
scoreboard objectives add seconds dummy "Seconds"

execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:100}] run function skyblock:lore/potions/rabbit
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:101}] run function skyblock:lore/potions/burning
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:102}] run function skyblock:lore/potions/stun
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:103}] run function skyblock:lore/potions/archery
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:104}] run function skyblock:lore/potions/adrenaline
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:105}] run function skyblock:lore/potions/critical
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:106}] run function skyblock:lore/potions/dodge
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:107}] run function skyblock:lore/potions/true_resistance
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:108}] run function skyblock:lore/potions/agility
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:109}] run function skyblock:lore/potions/experience
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:110}] run function skyblock:lore/potions/mana
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:111}] run function skyblock:lore/potions/stamina
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:112}] run function skyblock:lore/potions/spirit
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:113}] run function skyblock:lore/potions/magic_find
#execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:114}] run function skyblock:lore/potions/jerry_candy
execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:115}] run function skyblock:lore/potions/spelunker
#execute as @s if data entity @s SelectedItem.tag.CustomPotionEffects[{Id:116}] run function skyblock:lore/potions/mushed_glowy_tonic

scoreboard objectives remove minutes
scoreboard objectives remove seconds