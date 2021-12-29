#Getting maximum amount of damage
scoreboard players operation Temp FrozenBlazeRods /= c5000 Constant
scoreboard players set Temp FrozenBlazeMax 100
scoreboard players operation Temp FrozenBlazeMax *= Temp FrozenBlazeRods
scoreboard players add Temp FrozenBlazeMax 500

#Calculating damage
scoreboard players set Temp FrozenBlazeHPDmg 3
scoreboard players operation Temp FrozenBlazeHPDmg *= @s DisplayMaxHealth
scoreboard players operation Temp FrozenBlazeHPDmg /= c100 Constant
scoreboard players set @s FrozenBlazeDmg 300
scoreboard players operation @s FrozenBlazeDmg += Temp FrozenBlazeHPDmg

#Checking if damage is exceeded
execute unless score @s FrozenBlazeDmg >= Temp FrozenBlazeMax run scoreboard players operation @s ApplyDamage += @s FrozenBlazeDmg
execute if score @s FrozenBlazeDmg >= Temp FrozenBlazeMax run scoreboard players operation @s ApplyDamage += Temp FrozenBlazeMax