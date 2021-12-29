execute if entity @s[tag=HasSlayerQuest,tag=!Spawning,tag=!NeedRewards] run function slayers:scoreboard/tree/l11/l11_0
execute if entity @s[tag=HasSlayerQuest,tag=!Spawning,tag=!NeedRewards] run function slayers:scoreboard/tree2/l11/l11_0
execute if entity @s[tag=Spawning,tag=!NeedRewards] run function slayers:scoreboard/slay_boss
execute if entity @s[tag=!Spawning,tag=NeedRewards] run function slayers:scoreboard/boss_slain