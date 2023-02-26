advancement revoke @s from skyblock:quests/slayer/zombie/tier1
advancement revoke @s from skyblock:quests/slayer/spider/tier1
advancement revoke @s from skyblock:quests/slayer/wolf/tier1
advancement revoke @s from skyblock:quests/slayer/enderman/tier1
advancement revoke @s from skyblock:quests/slayer/blaze/tier1

tellraw @s ["",{"text":"SLAYER QUEST COMPLETED!","bold":true,"color":"green"}]

advancement revoke @s only skyblock:commands/slayer_kill
tag @s remove Slayer
tag @s remove ZombieSlayer
tag @s remove SpiderSlayer
tag @s remove WolfSlayer
tag @s remove EndermanSlayer
tag @s remove BlazeSlayer