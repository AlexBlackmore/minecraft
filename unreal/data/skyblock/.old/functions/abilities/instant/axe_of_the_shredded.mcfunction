tag @p[advancements={skyblock:commands/instant/axe_of_the_shredded=true}] add axe_of_the_shredded

attribute @p[tag=axe_of_the_shredded] minecraft:generic.armor_toughness modifier add 88-70-50-55-74 "Axe of the Shredded" 4 add
tellraw @p[tag=axe_of_the_shredded] ["",{"text":"[Axe of the Shredded: +5 Armor Toughness]","italic":true,"color":"gray"}]

schedule function skyblock:abilities/instant/axe_of_the_shredded_end 4s replace

advancement revoke @p[tag=axe_of_the_shredded] only skyblock:commands/instant/axe_of_the_shredded