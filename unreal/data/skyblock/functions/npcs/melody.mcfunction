tag @s[advancements={skyblock:quests/melodys_harp/13=true,skyblock:quests/melodys_harp/cat=true,skyblock:quests/melodys_harp/blocks=true,skyblock:quests/melodys_harp/chirp=true,skyblock:quests/melodys_harp/far=true,skyblock:quests/melodys_harp/mall=true,skyblock:quests/melodys_harp/mellohi=true,skyblock:quests/melodys_harp/stal=true,skyblock:quests/melodys_harp/strad=true,skyblock:quests/melodys_harp/ward=true,skyblock:quests/melodys_harp/11=true,skyblock:quests/melodys_harp/wait=true,skyblock:quests/melodys_harp/otherside=true,skyblock:quests/melodys_harp/5=true,skyblock:quests/melodys_harp/pigstep=true}] add melodys_hair

tellraw @s[tag=!melodys_hair] ["",{"text":"<Melody","color":"white"},{"text":"♫","color":"dark_purple"},{"text":"> Hello!","color":"white"},{"text":" ♪ ","color":"light_purple"},{"text":"Do you love music? Bring be some ","color":"white"},{"text":"Music Discs","color":"aqua"},{"text":" for a small reward! Collect them all for a special gift!","color":"white"},{"text":" ❤","color":"light_purple"}]

tellraw @s[tag=melodys_hair] ["",{"text":"<Melody","color":"white"},{"text":"♫","color":"dark_purple"},{"text":"> Wow!","color":"white"},{"text":" ❤ ","color":"light_purple"},{"text":"You collected every record! Here's a gift so you will always remember me! ","color":"white"},{"text":" ♪","color":"light_purple"}]
loot give @s[tag=melodys_hair] loot skyblock:items/accessories/melodys_hair

advancement revoke @s only skyblock:commands/npcs/melody
advancement revoke @s[tag=melodys_hair] from skyblock:quests/melodys_harp
tag @s[tag=melodys_hair] remove melodys_hair
