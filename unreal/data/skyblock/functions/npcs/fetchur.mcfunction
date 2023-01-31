execute unless entity @s[advancements={skyblock:quests/fetchur=true}] if entity @e[tag=fetchur,tag=!copper_ingot,tag=!oak_door,tag=!red_wool,tag=!flint_and_steel,tag=!coffee,tag=!yellow_stained_glass,tag=!firework_rocket,tag=!compass,tag=!pumpkin,tag=!rabbit_foot,tag=!superboom_tnt,tag=!nether_quartz_ore] run tag @e[tag=fetchur] add generate
execute if entity @e[tag=fetchur,tag=generate] run tellraw @s ["",{"text":"<Fetchur> hi i need your help maybe","color":"white"}]

execute at @s run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute store result score @e[limit=1,tag=rng] random run data get entity @e[limit=1,tag=rng] UUID[0]
scoreboard players set @e[tag=rng] dummy 12
execute as @e[tag=rng] run scoreboard players operation @s random %= @s dummy


#generate 
execute if entity @e[tag=rng,scores={random=0}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add copper_ingot
execute if entity @e[tag=rng,scores={random=1}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add oak_door
execute if entity @e[tag=rng,scores={random=2}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add red_wool
execute if entity @e[tag=rng,scores={random=3}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add flint_and_steel
execute if entity @e[tag=rng,scores={random=4}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add coffee
execute if entity @e[tag=rng,scores={random=5}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add yellow_stained_glass
execute if entity @e[tag=rng,scores={random=6}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add firework_rocket
execute if entity @e[tag=rng,scores={random=7}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add compass
execute if entity @e[tag=rng,scores={random=8}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add pumpkin
execute if entity @e[tag=rng,scores={random=9}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add rabbit_foot
execute if entity @e[tag=rng,scores={random=10}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add superboom_tnt
execute if entity @e[tag=rng,scores={random=11}] if entity @e[tag=fetchur,tag=generate] run tag @e[tag=fetchur] add nether_quartz_ore


#first interaction
execute if entity @e[tag=fetchur,tag=generate,tag=copper_ingot] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre expensive minerals. i need 20 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=oak_door] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh its tall and can be opened. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=red_wool] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre red and soft. i need 50 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=flint_and_steel] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre shiny and makes sparks. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=coffee] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre hot and gives energy. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=yellow_stained_glass] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre yellow and see-through. i need 20 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=firework_rocket] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre useful during celebrations. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=compass] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre circular and sometimes moves. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=pumpkin] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre wearable and grows. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=rabbit_foot] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre brown and fluffy. i need 3 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=superboom_tnt] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre explosive, more than usual. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=generate,tag=nether_quartz_ore] run tellraw @s ["",{"text":"<Fetchur> im looking for some stuff, dont remember the name tbh theyre red and white and you can mine it. i need 50 pls.","color":"white"}]


#no item
execute if entity @e[tag=fetchur,tag=!generate] unless data entity @s SelectedItem run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> you didnt find my things yet?","color":"white"}]


#wrong item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=copper_ingot] unless entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=oak_door] unless entity @s[nbt={SelectedItem:{id:"minecraft:oak_door"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=red_wool] unless entity @s[nbt={SelectedItem:{id:"minecraft:red_wool"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=flint_and_steel] unless entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=coffee] unless entity @s[nbt={SelectedItem:{tag:{Name:"Cheap Coffee"}}}] unless entity @s[nbt={SelectedItem:{tag:{Name:"Decent Coffee"}}}] unless entity @s[nbt={SelectedItem:{tag:{Name:"Black Coffee"}}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=yellow_stained_glass] unless entity @s[nbt={SelectedItem:{id:"minecraft:yellow_stained_glass"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=nether_quartz_ore] unless entity @s[nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=firework_rocket] unless entity @s[nbt={SelectedItem:{id:"minecraft:compass"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=compass] unless entity @s[nbt={SelectedItem:{id:"minecraft:pumpkin"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=pumpkin] unless entity @s[nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=rabbit_foot] unless entity @s[nbt={SelectedItem:{tag:{Name:"Superboom TNT"}}}] run tag @e[tag=fetchur] add wrong_item
execute if data entity @s SelectedItem if entity @e[tag=fetchur,tag=!generate,tag=superboom_tnt] unless entity @s[nbt={SelectedItem:{id:"minecraft:nether_quartz_ore"}}] run tag @e[tag=fetchur] add wrong_item

execute if entity @e[tag=rng,scores={random=0..5}] if entity @e[tag=fetchur,tag=wrong_item] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> i didnt ask for this bro","color":"white"}]
execute if entity @e[tag=rng,scores={random=6..11}] if entity @e[tag=fetchur,tag=wrong_item] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> i didnt ask for this bro. why you giving me something completely different. people these days lol","color":"white"}]


#wrong amount
execute if entity @e[tag=fetchur,tag=!generate,tag=copper_ingot] if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ingot"}}] unless entity @s[nbt={SelectedItem:{Count:20}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=oak_door] if entity @s[nbt={SelectedItem:{id:"minecraft:oak_door"}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=red_wool] if entity @s[nbt={SelectedItem:{id:"minecraft:red_wool"}}] unless entity @s[nbt={SelectedItem:{Count:50}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=flint_and_steel] if entity @s[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=coffee] if entity @s[nbt={SelectedItem:{tag:{Name:"Cheap Coffee"}}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=coffee] if entity @s[nbt={SelectedItem:{tag:{Name:"Decent Coffee"}}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=coffee] if entity @s[nbt={SelectedItem:{tag:{Name:"Black Coffee"}}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=yellow_stained_glass] if entity @s[nbt={SelectedItem:{id:"minecraft:yellow_stained_glass"}}] unless entity @s[nbt={SelectedItem:{Count:20}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=firework_rocket] if entity @s[nbt={SelectedItem:{id:"minecraft:firework_rocket"}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=compass] if entity @s[nbt={SelectedItem:{id:"minecraft:compass"}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=pumpkin] if entity @s[nbt={SelectedItem:{id:"minecraft:pumpkin"}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=rabbit_foot] if entity @s[nbt={SelectedItem:{id:"minecraft:rabbit_foot"}}] unless entity @s[nbt={SelectedItem:{Count:3}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=superboom_tnt] if entity @s[nbt={SelectedItem:{tag:{Name:"Superboom TNT"}}}] unless entity @s[nbt={SelectedItem:{Count:1}}] run tag @e[tag=fetchur] add wrong_amount
execute if entity @e[tag=fetchur,tag=!generate,tag=nether_quartz_ore] if entity @s[nbt={SelectedItem:{id:"minecraft:nether_quartz_ore"}}] unless entity @s[nbt={SelectedItem:{Count:50}}] run tag @e[tag=fetchur] add wrong_amount

execute if entity @e[tag=fetchur,tag=wrong_amount] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> um yeah your close, but wroung amount??","color":"white"}]


#reminder hint
execute if entity @e[tag=fetchur,tag=!generate,tag=copper_ingot] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre expensive minerals. i need 20 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=oak_door] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> its tall and can be opened. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=red_wool] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre red and soft. i need 50 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=flint_and_steel] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre shiny and makes sparks. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=coffee] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre hot and gives energy. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=yellow_stained_glass] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre yellow and see-through. i need 20 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=firework_rocket] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre useful during celebrations. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=compass] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre circular and sometimes moves. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=pumpkin] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre wearable and grows. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=rabbit_foot] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre brown and fluffy. i need 3 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=superboom_tnt] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre explosive, more than usual. i need 1 pls.","color":"white"}]
execute if entity @e[tag=fetchur,tag=!generate,tag=nether_quartz_ore] run tellraw @s[advancements={skyblock:quests/fetchur=false}] ["",{"text":"<Fetchur> theyre red and white and you can mine it. i need 50 pls.","color":"white"}]


#tomorrow
tellraw @s[advancements={skyblock:quests/fetchur=true}] ["",{"text":"<Fetchur> come back another time, maybe tmrw","color":"white"}]

kill @e[tag=rng]
tag @e[tag=generate] remove generate
tag @e[tag=wrong_item] remove wrong_item
tag @e[tag=wrong_amount] remove wrong_amount
playsound minecraft:entity.villager.yes player @s

advancement revoke @s only skyblock:commands/npcs/fetchur
