#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------REMOVE MENU ITEMS-------------#
data modify storage blue:lore_builder OutputEnchants set from storage blue:lore_builder ItemStorage.Base.Enchantments

scoreboard players set $HighestLevel E_StatCalc 1
scoreboard players reset @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{aiming:{identifier:1b}}].aiming.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{angler:{identifier:1b}}].angler.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{aqua_affinity:{identifier:1b}}].aqua_affinity.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{bane_of_arthropods:{identifier:1b}}].bane_of_arthropods.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{blast_protection:{identifier:1b}}].blast_protection.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{blessing:{identifier:1b}}].blessing.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{depth_strider:{identifier:1b}}].depth_strider.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{caster:{identifier:1b}}].caster.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{cleave:{identifier:1b}}].cleave.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{critical:{identifier:1b}}].critical.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{cubism:{identifier:1b}}].cubism.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{dragon_hunter:{identifier:1b}}].dragon_hunter.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{efficiency:{identifier:1b}}].efficiency.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{ender_slayer:{identifier:1b}}].ender_slayer.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{execute:{identifier:1b}}].execute.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{experience:{identifier:1b}}].experience.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{feather_falling:{identifier:1b}}].feather_falling.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{fire_aspect:{identifier:1b}}].fire_aspect.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{fire_protection:{identifier:1b}}].fire_protection.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{first_strike:{identifier:1b}}].first_strike.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{flame:{identifier:1b}}].flame.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{fortune:{identifier:1b}}].fortune.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{frail:{identifier:1b}}].frail.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{frost_walker:{identifier:1b}}].frost_walker.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{giant_killer:{identifier:1b}}].giant_killer.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{growth:{identifier:1b}}].growth.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{harvesting:{identifier:1b}}].harvesting.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{impaling:{identifier:1b}}].impaling.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{infinite_quiver:{identifier:1b}}].impaling.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{knockback:{identifier:1b}}].knockback.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{lethality:{identifier:1b}}].lethality.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{life_steal:{identifier:1b}}].life_steal.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{looting:{identifier:1b}}].looting.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{luck:{identifier:1b}}].luck.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{luck_of_the_sea:{identifier:1b}}].luck_of_the_sea.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{lure:{identifier:1b}}].lure.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{magnet:{identifier:1b}}].magnet.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{piercing:{identifier:1b}}].piercing.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{power:{identifier:1b}}].power.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{projectile_protection:{identifier:1b}}].projectile_protection.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{protection:{identifier:1b}}].protection.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{punch:{identifier:1b}}].punch.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{rainbow:{identifier:1b}}].rainbow.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{respiration:{identifier:1b}}].respiration.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{replenish:{identifier:1b}}].replenish.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{scavenger:{identifier:1b}}].scavenger.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{sharpness:{identifier:1b}}].sharpness.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{silk_touch:{identifier:1b}}].silk_touch.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{smelting_touch:{identifier:1b}}].smelting_touch.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{smite:{identifier:1b}}].smite.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{snipe:{identifier:1b}}].snipe.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{spiked_hook:{identifier:1b}}].spiked_hook.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{telekinesis:{identifier:1b}}].telekinesis.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{thorns:{identifier:1b}}].thorns.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{thunderlord:{identifier:1b}}].thunderlord.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{true_protection:{identifier:1b}}].true_protection.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{sugar_rush:{identifier:1b}}].sugar_rush.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{vampirism:{identifier:1b}}].vampirism.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc
execute store result score @s E_StatCalc run data get storage blue:lore_builder OutputEnchants[{venomous:{identifier:1b}}].venomous.level
execute if score @s E_StatCalc > $HighestLevel E_StatCalc run scoreboard players operation $HighestLevel E_StatCalc = @s E_StatCalc


data merge storage blue:lore_builder {TypeStorage:"minecraft:enchanted_book"}
execute if score $HighestLevel E_StatCalc matches 1..4 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}'},display:{Name:'{"text":"Enchanted Book","color":"white","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 5 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}'},display:{Name:'{"text":"Enchanted Book","color":"green","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 6 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"RARE",RarityColor:'{"text":"","color":"blue"}'},display:{Name:'{"text":"Enchanted Book","color":"blue","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 7 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},display:{Name:'{"text":"Enchanted Book","color":"dark_purple","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 8 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"LEGENDARY",RarityColor:'{"text":"","color":"gold"}'},display:{Name:'{"text":"Enchanted Book","color":"gold","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 9 run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"MYTHIC",RarityColor:'{"text":"","color":"light_purple"}'},display:{Name:'{"text":"Enchanted Book","color":"light_purple","italic":false}'}}}
execute if score $HighestLevel E_StatCalc matches 10.. run data merge storage blue:lore_builder {ItemStorage:{HideFlags:63,Base:{AnvilUses:0,RepairCost:0,Vanilla:1b,Type:"",Rarity:"SUPREME",RarityColor:'{"text":"","color":"dark_red"}'},display:{Name:'{"text":"Enchanted Book","color":"dark_red","italic":false}'}}}
#------------------------------------------#