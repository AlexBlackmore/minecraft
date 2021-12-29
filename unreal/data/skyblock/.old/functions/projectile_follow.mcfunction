execute at @e[tag=shot,tag=projectile,nbt={inGround:0b}] run tp @e[tag=projectile,type=armor_stand,limit=1,sort=nearest] ^ ^ ^1
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run tp @e[tag=projectile,type=armor_stand,limit=1,sort=nearest] ~ ~ ~
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run advancement grant @p only skyblock:commands/bonus_damage
execute at @e[tag=shot,tag=projectile,nbt={inGround:1b}] run kill @e[tag=projectile,type=armor_stand,limit=1,sort=nearest]
tag @e[tag=projectile,nbt={inGround:1b}] remove projectile

execute if entity @e[tag=projectile] run schedule function skyblock:projectile_follow 1t replace