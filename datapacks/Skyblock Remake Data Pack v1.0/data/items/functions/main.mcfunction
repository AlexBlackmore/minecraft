#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COIN ITEMS-----------------#
tag @e[type=item,nbt={OnGround:1b,Item:{tag:{PickupCoin:1b}}}] add CoinLanded
execute as @e[type=item,nbt={Item:{tag:{PickupCoin:1b}}}] at @s if block ~ ~ ~ water run tag @s add CoinLanded
execute as @a at @s if entity @e[tag=CoinLanded,distance=..1.7] run function skyblock:coin_item_to_score
#-----------ITEM FROM CREATIVE-------------#
execute as @a[scores={InvItemUpdate=1..}] at @s run function items:new_item/new_item_found
#--------------ITEM ABILITIES--------------#s
function items:item_abilities/passive
scoreboard players remove @a[scores={I_ActionbarTimer=1..}] I_ActionbarTimer 1
#---------------MAGICAL SOUP---------------#
kill @e[tag=SoupWalkOn]
execute as @a at @s run function items:item_abilities/soup/main
#-------------RIGHT CLICK RODS-------------#
execute as @a[tag=Held_GrapplingHook,tag=GrapplingPlayer] at @s run function items:item_abilities/grappling_hook/main_thrown
execute as @a[tag=!Held_GrapplingHook] run function items:item_abilities/grappling_hook/clean_up

execute if entity @e[tag=GrapplingAnchor] run function items:item_abilities/grappling_hook/anchor/main
scoreboard players remove @a[scores={I_GrappleCool=1..}] I_GrappleCool 1
#----------TEMPORARY STAT BONUSES----------#
scoreboard players remove @a[scores={I_TempSpeedTimer=1..}] I_TempSpeedTimer 1
execute as @a[scores={I_TempSpeedTimer=0}] run function items:temporary_stat/speed_end
#------------ITEM ABILITY LOOPS------------#
#Fire Blast
function items:item_abilities/right_click/fire_blast/main
#Ink Bomb
execute as @e[tag=InkBomb] at @s if entity @e[tag=!NPC,type=!#stats:show_hp,dx=0] run function items:item_abilities/right_click/ink_bomb/hit_entity
#Showtime
function items:item_abilities/right_click/showtime/collision_loop
#Guided Bat
execute as @e[tag=GuidedBat] run function items:item_abilities/right_click/guided_bat/collision_loop
#Dragon Rage
execute as @e[tag=DragonRageStand] run function items:item_abilities/right_click/dragon_rage/particles_stand_main
#Ice Bolt
execute if entity @e[tag=IceBolt] run function items:item_abilities/right_click/ice_bolt/moving_bolt
#Instant Heal
scoreboard players remove @a[scores={I_HealCharges=1..}] I_HealChargesT 1
execute as @a[scores={I_HealChargesT=..0}] run function items:item_abilities/right_click/instant_heal/add_charge
#Molten Wave
execute as @e[tag=MoltenWaveAEC] at @s run function items:item_abilities/right_click/molten_wave/cloud_main
#----CLEAR SCUTE IF ANYTHING GOES WRONG-----#
clear @a scute{TempCoin:1b}
#------------------------------------------#