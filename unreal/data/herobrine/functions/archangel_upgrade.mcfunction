tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Oblivion","italic":false,"color":"light_purple"}'}}}}] add sword
tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Soul Breaker","italic":false,"color":"light_purple"}'}}}}] add bow
tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Hinder\'s Visage","italic":false,"color":"light_purple"}'}}}}] add helmet
tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Taz\'s Lavawalker","italic":false,"color":"light_purple"}'}}}}] add boots
tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Demonskin","italic":false,"color":"light_purple"}'}}}}] add chestplate
tag @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Warlord Legplates","italic":false,"color":"light_purple"}'}}}}] add leggings
tag @s[tag=!sword,tag=!bow,tag=!helmet,tag=!boots,tag=!chestplate,tag=!leggings] add fail
tellraw @s[tag=fail] {"text":"Press while holding an Archdemon item to upgrade it.","color":"red"}

tag @s[tag=sword,level=21..] add success
tag @s[tag=bow,level=20..] add success
tag @s[tag=helmet,level=14..] add success
tag @s[tag=boots,level=14..] add success
tag @s[tag=chestplate,level=18..] add success
tag @s[tag=leggings,level=18..] add success
tellraw @s[tag=!fail,tag=!success] {"text":"You do not have enough XP to upgrade that item.","color":"red"}

item replace entity @s[tag=success] weapon.mainhand with air
loot give @s[tag=success,tag=sword] loot herobrine:archangel/hope
loot give @s[tag=success,tag=bow] loot herobrine:archangel/araistama
loot give @s[tag=success,tag=helmet] loot herobrine:archangel/vanguard
loot give @s[tag=success,tag=boots] loot herobrine:archangel/windwalker
loot give @s[tag=success,tag=chestplate] loot herobrine:archangel/ariels_armor
loot give @s[tag=success,tag=leggings] loot herobrine:archangel/acheru_knights_legplate


xp add @s[tag=success,tag=sword] -610 points
xp add @s[tag=success,tag=bow] -545 points
xp add @s[tag=success,tag=helmet] -275 points
xp add @s[tag=success,tag=boots] -275 points
xp add @s[tag=success,tag=chestplate] -425 points
xp add @s[tag=success,tag=leggings] -425 points
playsound entity.player.levelup player @s[tag=success]

tag @s[tag=sword] remove sword
tag @s[tag=bow] remove bow
tag @s[tag=helmet] remove helmet
tag @s[tag=boots] remove boots
tag @s[tag=chestplate] remove chestplate
tag @s[tag=leggings] remove leggings
tag @s[tag=fail] remove fail
tag @s[tag=success] remove success
