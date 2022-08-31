tag @p[predicate=skyblock:is_sneaking,nbt={SelectedItem:{id:"minecraft:fishing_rod"},Inventory:[{Slot:-106b,Count:64b,tag:{Name:"Hunk of Ice"}}]}] add salty
tag @p[predicate=skyblock:is_sneaking,nbt={SelectedItem:{id:"minecraft:fishing_rod"},Inventory:[{Slot:-106b,Count:64b,tag:{Name:"Hunk of Blue Ice"}}]}] add treacherous

tellraw @s[tag=!salty,tag=!treacherous] ["",{"text":"<Terry> Ahoy, ","color":"white"},{"selector":"@s","color":"aqua"},{"text":"! Welcome to the Jerry Pond! You may have noticed that this pond is full of unique creatures and treasures! I'm looking for ","color":"white"},{"text":"Ice Hunks","color":"yellow"},{"text":" and ","color":"white"},{"text":"Blue Ice Hunks","color":"aqua"},{"text":"! You can find these by ","color":"white"},{"text":"ice fishing","color":"aqua"},{"text":" in the pond - break the ice and cast your rod! Bring enough hunks back to me and I will reforge your fishing rod with modifiers exclusive to me - Terry!","color":"white"}]
playsound minecraft:entity.villager.yes player @s[tag=!salty,tag=!treacherous]

execute as @s[tag=salty] run function skyblock:reforging/fishing_rods/salty
execute as @s[tag=treacherous] run function skyblock:reforging/fishing_rods/treacherous

advancement revoke @s only skyblock:commands/npcs/terry

tag @s[tag=salty] remove salty
tag @s[tag=treacherous] remove treacherous