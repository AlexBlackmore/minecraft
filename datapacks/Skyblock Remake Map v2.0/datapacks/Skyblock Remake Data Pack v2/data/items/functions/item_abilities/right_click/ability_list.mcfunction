#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ITEM ABILITIES--------------#
execute if data storage blue:item ItemAbility[{Name:"Instant Transmission"}] run function items:item_abilities/right_click/instant_transmission/main
execute if data storage blue:item ItemAbility[{Name:"Fire Blast"}] run function items:item_abilities/right_click/fire_blast/activate
execute if data storage blue:item ItemAbility[{Name:"Parley"}] run function items:item_abilities/right_click/parley/main
execute if data storage blue:item ItemAbility[{Name:"Ink Bomb"}] run function items:item_abilities/right_click/ink_bomb/main
execute if data storage blue:item ItemAbility[{Name:"Dragon Rage"}] run function items:item_abilities/right_click/dragon_rage/main
execute if data storage blue:item ItemAbility[{Name:"Showtime"}] run function items:item_abilities/right_click/showtime/main
execute if data storage blue:item ItemAbility[{Name:"Guided Bat"}] run function items:item_abilities/right_click/guided_bat/main
execute if data storage blue:item ItemAbility[{Name:"Ice Bolt"}] run function items:item_abilities/right_click/ice_bolt/main
execute if data storage blue:item ItemAbility[{Name:"Instant Heal"}] unless data storage blue:item {ItemData:{Base:{BaseDamage:110}}} unless data storage blue:item {ItemData:{Base:{BaseDamage:150}}} run function items:item_abilities/right_click/instant_heal/zombie_sword/check_charges
execute if data storage blue:item ItemAbility[{Name:"Instant Heal"}] if data storage blue:item {ItemData:{Base:{BaseDamage:110}}} run function items:item_abilities/right_click/instant_heal/ornate_zombie_sword/check_charges
execute if data storage blue:item ItemAbility[{Name:"Instant Heal"}] if data storage blue:item {ItemData:{Base:{BaseDamage:150}}} run function items:item_abilities/right_click/instant_heal/florid_zombie_sword/check_charges
execute if data storage blue:item ItemAbility[{Name:"Molten Wave"}] run function items:item_abilities/right_click/molten_wave/main
execute if data storage blue:item ItemAbility[{Name:"Grand Architect"}] if entity @s[scores={SubLocation=-1}] anchored eyes positioned ~ ~ ~ run function items:item_abilities/builders_wand/click/click
execute if data storage blue:item ItemAbility[{Name:"Whassup?"}] run function items:item_abilities/right_click/whassup/main
execute if data storage blue:item ItemAbility[{Name:"Giant's Slam"}] run function items:item_abilities/right_click/giant_slam/main
execute if data storage blue:item ItemAbility[{Name:"Heat-Seeking Rose"}] run function items:item_abilities/right_click/heat_seeking_rose/main
execute if data storage blue:item ItemAbility[{Name:"Throw"}] run function items:item_abilities/right_click/livid_dagger_throw/main
execute if data storage blue:item ItemAbility[{Name:"Shadow Fury"}] run function items:item_abilities/right_click/shadow_fury/main
execute if data storage blue:item ItemAbility[{Name:"Terrain Toss"}] run function items:item_abilities/right_click/terrain_toss/main
execute if data storage blue:item ItemAbility[{Name:"Flay"}] run function items:item_abilities/right_click/soul_whip_flay/main
execute if data storage blue:item ItemAbility[{Name:"Iron Punch"}] run function items:item_abilities/right_click/iron_punch/main
#------------------------------------------#   