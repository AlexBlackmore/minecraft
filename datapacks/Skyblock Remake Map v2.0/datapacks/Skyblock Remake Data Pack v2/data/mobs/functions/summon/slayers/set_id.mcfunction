kill @e[tag=SlayerTimeDisplay]
scoreboard players operation @s PlayerID = @p PlayerID
execute as @a if score @s PlayerID = @e[tag=Slayer,sort=nearest,limit=1] PlayerID run tag @s add SlayerSpawned

execute if entity @s[tag=RevenantHorror,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier4Health S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier3Health S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier2Health S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier1Health S_ZInfos

execute if entity @s[tag=TarantulaBroodfather,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier4Health S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier3Health S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier2Health S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier1Health S_SInfos

execute if entity @s[tag=SvenPackmaster,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier4Health S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier3Health S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier2Health S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base double 1 run scoreboard players get Tier1Health S_WInfos



execute if entity @s[tag=RevenantHorror,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier4Dps S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier3Dps S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier2Dps S_ZInfos
execute if entity @s[tag=RevenantHorror,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier1Dps S_ZInfos

execute if entity @s[tag=TarantulaBroodfather,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier4Dps S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier3Dps S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier2Dps S_SInfos
execute if entity @s[tag=TarantulaBroodfather,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier1Dps S_SInfos

execute if entity @s[tag=SvenPackmaster,tag=Tier4] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier4Dps S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier3] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier3Dps S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier2] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier2Dps S_WInfos
execute if entity @s[tag=SvenPackmaster,tag=Tier1] store result entity @s Attributes[{Name:"minecraft:generic.attack_damage"}].Base double 1 run scoreboard players get Tier1Dps S_WInfos

summon armor_stand ~ ~ ~ {Tags:["SlayerTimeDisplay","NeedID","NewTimeDisplay"],Invisible:1b,Invulnerable:1b,Marker:1b}
scoreboard players operation @e[tag=NeedID,sort=nearest,limit=1] PlayerID = @s PlayerID
scoreboard players operation @e[tag=NeedID2,sort=nearest,limit=1] PlayerID = @s PlayerID
attribute @s minecraft:generic.knockback_resistance base set 50
attribute @s minecraft:generic.movement_speed base set 0.6

scoreboard players set @s I_SlayerTime 0
scoreboard players set @s I_SlayerTimeSec 0
scoreboard players set @s I_SlayerTimeMin 3
team join NoCol @e[tag=NeedID2] 
tag @e[tag=NeedID] remove NeedID
tag @e[tag=NeedID2] remove NeedID
execute at @e[tag=TarantulaBroodfather,tag=NewSlayer] run summon minecraft:snowball ~1.3 ~ ~ {Tags:["AggroSnowball"],Motion: [-0.8,0.0,0.0]}
execute if entity @s[tag=TarantulaBroodfather] as @a at @s as @e[tag=TarantulaBroodfather] if score @s PlayerID = @p PlayerID run data modify entity @e[tag=AggroSnowball,tag=!GotUUID,limit=1] Owner set from entity @p UUID
tag @e[tag=AggroSnowball] add GotUUID
execute if entity @s[tag=SvenPackmaster] as @a at @s as @e[tag=SvenPackmaster] if score @s PlayerID = @p PlayerID run data modify entity @s AngerTime set value 100000
execute if entity @s[tag=SvenPackmaster] as @a at @s as @e[tag=SvenPackmaster] if score @s PlayerID = @p PlayerID run data modify entity @s AngryAt set from entity @p UUID
tag @s remove NewSlayer

