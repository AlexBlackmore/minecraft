execute as @a if entity @a[scores={m_oak_log=1..}] run loot give @s loot skyblock:sweet_axe
execute as @a if entity @a[scores={m_spruce_log=1..}] run loot give @s loot skyblock:sweet_axe
execute as @a if entity @a[scores={m_birch_log=1..}] run loot give @s loot skyblock:sweet_axe
execute as @a if entity @a[scores={m_jungle_log=1..}] run loot give @s loot skyblock:sweet_axe
execute as @a if entity @a[scores={m_acacia_log=1..}] run loot give @s loot skyblock:sweet_axe
execute as @a if entity @a[scores={m_dark_oak_log=1..}] run loot give @s loot skyblock:sweet_axe

scoreboard players remove @a[scores={m_oak_log=1..}] m_oak_log 1
scoreboard players remove @a[scores={m_spruce_log=1..}] m_spruce_log 1
scoreboard players remove @a[scores={m_birch_log=1..}] m_birch_log 1
scoreboard players remove @a[scores={m_jungle_log=1..}] m_jungle_log 1
scoreboard players remove @a[scores={m_acacia_log=1..}] m_acacia_log 1
scoreboard players remove @a[scores={m_dark_oak_log=1..}] m_dark_oak_log 1
