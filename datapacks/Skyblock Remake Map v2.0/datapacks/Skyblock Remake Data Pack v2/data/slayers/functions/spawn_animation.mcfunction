#===================NOTE===================#
#  This function was coded by TheCarotte   #
# Please don't claim this as your own work #
#==========================================#
#---------------SPAWN ANIMS----------------#
particle witch ~ ~ ~ 0.6 1.5 0.6 1 10 normal
particle effect ~ ~ ~ 0.6 1.5 0.6 1 10 normal
scoreboard players add @s S_AnimTimer 1
execute if entity @s[scores={S_AnimTimer=2}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.7 1
execute if entity @s[scores={S_AnimTimer=5}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.7 1
execute if entity @s[scores={S_AnimTimer=8}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[scores={S_AnimTimer=11}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[scores={S_AnimTimer=14}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.9 1
execute if entity @s[scores={S_AnimTimer=17}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 0.9 1
execute if entity @s[scores={S_AnimTimer=20}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1 1
execute if entity @s[scores={S_AnimTimer=23}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1 1
execute if entity @s[scores={S_AnimTimer=26}] run playsound minecraft:entity.wither.shoot hostile @a[distance=..10] ~ ~ ~ 1 1.1 1

execute if entity @s[scores={S_AnimTimer=1}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.5 1
execute if entity @s[scores={S_AnimTimer=3}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.5 1
execute if entity @s[scores={S_AnimTimer=5}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.6 1
execute if entity @s[scores={S_AnimTimer=7}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.6 1
execute if entity @s[scores={S_AnimTimer=9}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.7 1
execute if entity @s[scores={S_AnimTimer=11}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.7 1
execute if entity @s[scores={S_AnimTimer=13}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.8 1
execute if entity @s[scores={S_AnimTimer=15}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.8 1
execute if entity @s[scores={S_AnimTimer=17}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.9 1
execute if entity @s[scores={S_AnimTimer=19}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 0.9 1
execute if entity @s[scores={S_AnimTimer=21}] run playsound minecraft:entity.snowball.throw hostile @a[distance=..10] ~ ~ ~ 1.5 1 1

#####
execute at @a[scores={S_CQuestTier=1,S_CQuestType=1}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/zombie/tier_1
execute at @a[scores={S_CQuestTier=2,S_CQuestType=1}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/zombie/tier_2
execute at @a[scores={S_CQuestTier=3,S_CQuestType=1}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/zombie/tier_3
execute at @a[scores={S_CQuestTier=4,S_CQuestType=1}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/zombie/tier_4

execute at @a[scores={S_CQuestTier=1,S_CQuestType=2}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/spider/tier_1
execute at @a[scores={S_CQuestTier=2,S_CQuestType=2}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/spider/tier_2
execute at @a[scores={S_CQuestTier=3,S_CQuestType=2}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/spider/tier_3
execute at @a[scores={S_CQuestTier=4,S_CQuestType=2}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/spider/tier_4

execute at @a[scores={S_CQuestTier=1,S_CQuestType=3}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/wolf/tier_1
execute at @a[scores={S_CQuestTier=2,S_CQuestType=3}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/wolf/tier_2
execute at @a[scores={S_CQuestTier=3,S_CQuestType=3}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/wolf/tier_3
execute at @a[scores={S_CQuestTier=4,S_CQuestType=3}] if score @s[scores={S_AnimTimer=38}] PlayerID = @p PlayerID at @s run function mobs:summon/slayers/wolf/tier_4

execute if entity @s[tag=SlayerAnimAEC,scores={S_AnimTimer=40}] as @a at @s if score @s PlayerID = @e[tag=SlayerAnimAEC,scores={S_AnimTimer=40},distance=..10,limit=1] PlayerID run scoreboard players set @s S_ZNeededExp 0
#-----------------------------------------#