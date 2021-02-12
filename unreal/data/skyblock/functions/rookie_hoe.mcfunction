execute as @a if entity @a[scores={m_wheat=1..}] run loot give @s loot skyblock:rookie_hoe

scoreboard players remove @a[scores={m_wheat=1..}] m_wheat 1
