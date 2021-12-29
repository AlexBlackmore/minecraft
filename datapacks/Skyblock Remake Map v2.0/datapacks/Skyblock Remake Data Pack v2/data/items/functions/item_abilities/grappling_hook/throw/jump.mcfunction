tp @s ~ ~.11 ~
scoreboard players operation @s PlayerID = @p PlayerID
scoreboard players operation @e[tag=GrapplingTempAnchor,limit=1,sort=nearest] PlayerID = @p PlayerID

execute store result score @s I_GrapplePos1 run data get entity @s Pos[0] 100
execute store result score @s I_GrapplePos3 run data get entity @s Pos[2] 100
execute at @s run tp @s ^ ^ ^1
execute store result score @s I_GrapplePosr1 run data get entity @s Pos[0] 100
execute store result score @s I_GrapplePosr3 run data get entity @s Pos[2] 100
execute at @s run tp @s ^ ^ ^-1
scoreboard players operation @s I_GrapplePosr1 -= @s I_GrapplePos1
scoreboard players operation @s I_GrapplePosr3 -= @s I_GrapplePos3
scoreboard players set @s[scores={I_GrappleDist=80..}] I_GrappleDist 80
scoreboard players operation @s I_GrappleDist *= c10 Constant
scoreboard players operation @s[scores={I_GrappleDist=1..}] I_GrappleDist -= c30 Constant
scoreboard players operation @s[scores={I_GrappleDist=..-1}] I_GrappleDist += c30 Constant
scoreboard players operation @s I_GrappleDist *= c51 Constant
scoreboard players operation @s I_GrapplePosr1 *= @s I_GrappleDist
scoreboard players operation @s I_GrapplePosr3 *= @s I_GrappleDist
scoreboard players set @s I_GrapplePosr2 1
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get @s I_GrapplePosr1
execute store result entity @s Motion[1] double 1 run scoreboard players get @s I_GrapplePosr2
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get @s I_GrapplePosr3


#tellraw @p ["",{"score":{"name":"@s","objective":"I_GrapplePosr1"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"I_GrapplePosr2"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@s","objective":"I_GrapplePosr3"},"bold":true,"color":"dark_green"},{"text":","},{"score":{"name":"@p","objective":"I_GrappleDist"},"bold":true,"color":"dark_red"}]



