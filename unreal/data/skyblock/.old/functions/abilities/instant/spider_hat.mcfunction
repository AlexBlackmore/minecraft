tag @p[advancements={skyblock:commands/instant/spider_hat=true}] add spider_hat
tellraw @p[tag=spider_hat] ["",{"text":"[Spider Hat: +6 Armor Toughness]","italic":true,"color":"gray"}]

attribute @p[tag=spider_hat] minecraft:generic.armor_toughness modifier add 603-316-330-164-28 "Spider Hat" 6 add
schedule function skyblock:abilities/instant/spider_hat_end 4s replace

advancement revoke @p[tag=spider_hat] only skyblock:commands/instant/spider_hat