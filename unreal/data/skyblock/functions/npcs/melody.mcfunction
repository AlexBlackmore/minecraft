tellraw @s[advancements={skyblock:quests/melodys_harp=false}] ["",{"text":"<Melody","color":"white"},{"text":"♫","color":"dark_purple"},{"text":"> Hello!","color":"white"},{"text":" ♪ ","color":"light_purple"},{"text":"Do you love music? Bring be some ","color":"white"},{"text":"Music Discs","color":"aqua"},{"text":" for a small reward! Collect them all for a special gift!","color":"white"},{"text":" ❤","color":"light_purple"}]

tellraw @s[advancements={skyblock:quests/melodys_harp=true}] ["",{"text":"<Melody","color":"white"},{"text":"♫","color":"dark_purple"},{"text":"> Wow!","color":"white"},{"text":" ❤ ","color":"light_purple"},{"text":"You collected every record!","color":"white"}]
tellraw @s[advancements={skyblock:quests/melodys_harp=true,skyblock:accessories/melodys_hair=false}] ["",{"text":"Here's a gift so you will always remember me! ","color":"white"},{"text":" ♪","color":"light_purple"}]

advancement revoke @s only skyblock:commands/npcs/melody