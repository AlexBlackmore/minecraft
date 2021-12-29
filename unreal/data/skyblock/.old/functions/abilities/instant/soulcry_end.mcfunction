playsound minecraft:entity.enderman.death player @p[tag=soulcry]
tellraw @p[tag=soulcry] {"text":"[@: Soulcry has worn off]","italic":true,"color":"gray"}
tag @p[tag=soulcry] remove soulcry