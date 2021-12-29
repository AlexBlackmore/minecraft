#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ARROW AIMING----------------#
execute if entity @s[scores={E_BowAiming=1}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..2] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=2}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..4] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=3}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..6] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=4}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..8] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=5}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..10] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=6..10}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..15] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=11..21}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..25] run tag @s add AimingTarget
execute if entity @s[scores={E_BowAiming=22..}] as @e[tag=!AimingTarget,type=!#enchanting:aiming_avoid,sort=nearest,limit=1,nbt={Invulnerable:0b},distance=..30] run tag @s add AimingTarget

execute if entity @e[tag=AimingTarget,distance=..10] run function enchanting:enchants/aiming/move
#------------------------------------------#