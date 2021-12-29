#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------COIN ITEMS-----------------#
execute as @a at @s at @e[type=item,nbt={Item:{tag:{PickupCoin:1b}}},distance=..1.7] if block ~ ~ ~ #skyblock:allowed unless block ~ ~-1 ~ air run function skyblock:coin_item_to_score
#-----------ITEM FROM CREATIVE-------------#
execute as @a[scores={InvItemUpdate=1..}] at @s run function items:new_item/new_item_found
#--------------ITEM ABILITIES--------------#s
execute if score $1Second TickTimer matches 20.. as @a[scores={CooldownPlayer=1..}] run function items:item_abilities/right_click/cooldown_tick
scoreboard players remove @a[scores={I_ActionbarTimer=1..}] I_ActionbarTimer 1
#---------------MAGICAL SOUP---------------#
kill @e[tag=SoupWalkOn]
execute as @a at @s run function items:item_abilities/soup/main
#--------------BUILDER'S WAND--------------#
execute as @a[scores={SubLocation=-1}] at @s run function items:item_abilities/builders_wand/storage/buildermain
#--------------TREECAPITATOR---------------#
scoreboard players remove @a[scores={PassiveCooldown=1..}] PassiveCooldown 1
execute as @a[tag=Held_Treecapitator] at @s run function items:item_abilities/treecapitator/mined_test
execute as @e[tag=Treecapitator,type=item] at @s run function items:item_abilities/treecapitator/cut_tree
#-------------RIGHT CLICK RODS-------------#
execute as @a[tag=Held_GrapplingHook,tag=GrapplingPlayer] at @s run function items:item_abilities/grappling_hook/main_thrown

execute if entity @e[tag=GrapplingAnchor] run function items:item_abilities/grappling_hook/anchor/main
scoreboard players remove @a[scores={I_GrappleCool=1..}] I_GrappleCool 1
#----------TEMPORARY STAT BONUSES----------#
scoreboard players remove @a[scores={I_TempSpeedTimer=1..}] I_TempSpeedTimer 1
execute as @a[scores={I_TempSpeedTimer=0}] run function items:temporary_stat/speed_end
#------------ITEM ABILITY LOOPS------------#
#Fire Blast
function items:item_abilities/right_click/fire_blast/main
execute as @e[tag=FireblastStand] at @s unless entity @e[tag=Fireblast,distance=..1] run function items:item_abilities/right_click/fire_blast/hit_entity
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
#Whassup
execute as @a[scores={I_WhassupTimer=1..}] run function items:item_abilities/right_click/whassup/tick
execute as @a[scores={I_WhassupTimer2=1..},tag=CanOpenMaddox] run scoreboard players remove @s I_WhassupTimer2 1
execute as @a[scores={I_WhassupTimer2=0}] run tag @s remove CanOpenMaddox
#livid dagger throw
execute if entity @e[tag=livid_dagger_stand_2] run function items:item_abilities/right_click/livid_dagger_throw/update
#lheat seeking rose
execute if entity @e[tag=flower_of_truth_2] run function items:item_abilities/right_click/heat_seeking_rose/update
#giant slam
execute if entity @e[tag=GiantSlamGiantB] run function items:item_abilities/right_click/giant_slam/update
#Shadow Fury
function items:item_abilities/right_click/shadow_fury/update
#Terain Toss
execute if entity @e[tag=toss_block] run function items:item_abilities/right_click/terrain_toss/update
#Soul Whip Flay
execute if entity @e[tag=flay_bolt] run function items:item_abilities/right_click/soul_whip_flay/update
#----CLEAR SCUTE IF ANYTHING GOES WRONG----#
execute if score $1Second TickTimer matches 6 run clear @a scute{TempCoin:1b}
#------------EGG / PEARL THROWN------------#
execute as @p[scores={ender_pearl_use=1..}] at @s run function items:ender_pearl
execute as @p[scores={egg_use=1..}] at @s run function items:egg
execute as @a[scores={golden_apple_use=1..}] run function items:golden_apple
execute as @a[scores={e_gold_apple_use=1..}] run function items:enchanted_golden_apple
#-------------REFORGE COOLDOWN-------------#
scoreboard players remove @a[scores={ReforgeCooldown=1..}] ReforgeCooldown 1
#------------------------------------------#