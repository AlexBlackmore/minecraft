tp @s ~ ~.11 ~
scoreboard players operation @s PlayerID = @p PlayerID
scoreboard players operation @e[tag=GrapplingTempAnchor,limit=1,sort=nearest] PlayerID = @p PlayerID
scoreboard players set @s I_GrapplePosr3 1
execute store result entity @s Motion[1] double 1 run scoreboard players get @s I_GrapplePosr3
tag @p add GrappleException
