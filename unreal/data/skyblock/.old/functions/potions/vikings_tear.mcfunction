tag @p[advancements={skyblock:commands/potions/vikings_tear=true}] add vikings_tear
advancement revoke @p[tag=vikings_tear] only skyblock:commands/potions/vikings_tear

tellraw @p[tag=vikings_tear] ["",{"text":"[@: You have been granted the Viking's Tear effect for 8 minutes]","italic":true,"color":"gray"}]

schedule function skyblock:potions/vikings_tear_end 480s replace