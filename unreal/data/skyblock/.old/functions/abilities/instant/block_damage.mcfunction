tag @p[advancements={skyblock:commands/instant/block_damage=true}] add block_damage

tellraw @p[tag=block_damage] {"text":"[Guardian Chestplate: Block Damage activated]","italic":true,"color":"gray"}

effect clear @p[tag=block_damage] resistance
effect give @p[tag=block_damage] hunger 60

tag @p[tag=block_damage] remove block_damage

function skyblock:abilities/reset_instant
