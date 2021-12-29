#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------SLAYERS------------------#
execute if entity @s[tag=RevenantSycophant] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/sycophant_veteran"}
execute if entity @s[tag=RevenantChampion] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/champion_veteran"}
execute if entity @s[tag=DeformedRevenant] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/revenant_veteran"}

execute if entity @s[tag=PackEnforcer] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/vermin_veteran"}
execute if entity @s[tag=SvenFollower] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/beast_veteran"}
execute if entity @s[tag=SvenAlpha] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/mutant_veteran"}

execute if entity @s[tag=TarantulaVermin] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/vermin_veteran"}
execute if entity @s[tag=TarantulaBeast] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/beast_veteran"}
execute if entity @s[tag=MutantTarantula] run data merge entity @s {DeathLootTable:"mobs:mob_loot/mini_bosses/mutant_veteran"}
tag @s add Veteran