tag @p[advancements={skyblock:commands/instant/raise_souls=true}] add raise_souls

execute at @p[tag=raise_souls] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={SelectedItem:{tag:{Name:"Reaper Scythe"}}}] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={Inventory:[{Slot:100b,tag:{Name:"Necromancer Lord Boots"}}]}] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={Inventory:[{Slot:101b,tag:{Name:"Necromancer Lord Leggings"}}]}] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={Inventory:[{Slot:102b,tag:{Name:"Necromancer Lord Chestplate"}}]}] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={Inventory:[{Slot:103b,tag:{Name:"Necromancer Lord Helmet"}}]}] run tag @e[tag=necromancy,tag=!counted,limit=1,sort=arbitrary] add counted
execute at @p[tag=raise_souls,nbt={Inventory:[{Slot:103b,tag:{Name:"Reaper Mask"}}]}] run tag @e[tag=necromancy,tag=!counted,limit=2,sort=arbitrary] add counted

execute unless entity @e[tag=necromancy,tag=!counted] run tag @p[tag=raise_souls] add success
execute at @p[tag=success] run playsound minecraft:entity.iron_golem.repair player @p
xp add @p[tag=success] -1 levels
execute at @p[tag=success] run summon iron_golem ~ ~ ~ {PlayerCreated:1b,Tags:["necromancy"],DeathLootTable:"minecraft:empty"}
tag @p[tag=success] remove success
tag @e[tag=counted] remove counted

advancement revoke @p[tag=raise_souls] only skyblock:commands/instant/raise_souls
tag @p[tag=raise_souls] remove raise_souls