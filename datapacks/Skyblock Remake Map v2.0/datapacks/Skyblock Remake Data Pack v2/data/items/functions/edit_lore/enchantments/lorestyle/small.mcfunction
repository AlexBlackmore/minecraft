#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#TWO PER LINE WITH COMMA
#------------------RESET-------------------#
execute in minecraft:overworld run setblock 29999978 1 29832 air
execute in minecraft:overworld run setblock 29999978 1 29832 birch_sign{Text1:"[\"\"]"}
tag @s remove LinePt2
tag @s remove DontDupe
#-------------ENCHANTMENT LIST-------------#
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].aiming run function items:edit_lore/enchantments/enchant/compact/aiming
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].angler run function items:edit_lore/enchantments/enchant/compact/angler
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].aqua_affinity run function items:edit_lore/enchantments/enchant/compact/aqua_affinity
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].bane_of_arthropods run function items:edit_lore/enchantments/enchant/compact/bane_of_arthropods
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].blast_protection run function items:edit_lore/enchantments/enchant/compact/blast_protection
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].blessing run function items:edit_lore/enchantments/enchant/compact/blessing
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].depth_strider run function items:edit_lore/enchantments/enchant/compact/depth_strider
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].caster run function items:edit_lore/enchantments/enchant/compact/caster
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].cleave run function items:edit_lore/enchantments/enchant/compact/cleave
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].critical run function items:edit_lore/enchantments/enchant/compact/critical
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].cubism run function items:edit_lore/enchantments/enchant/compact/cubism
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].dragon_hunter run function items:edit_lore/enchantments/enchant/compact/dragon_hunter
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].efficiency run function items:edit_lore/enchantments/enchant/compact/efficiency
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].ender_slayer run function items:edit_lore/enchantments/enchant/compact/ender_slayer
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].execute run function items:edit_lore/enchantments/enchant/compact/execute
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].experience run function items:edit_lore/enchantments/enchant/compact/experience
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].feather_falling run function items:edit_lore/enchantments/enchant/compact/feather_falling
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].fire_aspect run function items:edit_lore/enchantments/enchant/compact/fire_aspect
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].fire_protection run function items:edit_lore/enchantments/enchant/compact/fire_protection
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].first_strike run function items:edit_lore/enchantments/enchant/compact/first_strike
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].flame run function items:edit_lore/enchantments/enchant/compact/flame
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].fortune run function items:edit_lore/enchantments/enchant/compact/fortune
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].frail run function items:edit_lore/enchantments/enchant/compact/frail
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].frost_walker run function items:edit_lore/enchantments/enchant/compact/frost_walker
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].giant_killer run function items:edit_lore/enchantments/enchant/compact/giant_killer
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].growth run function items:edit_lore/enchantments/enchant/compact/growth
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].harvesting run function items:edit_lore/enchantments/enchant/compact/harvesting
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].impaling run function items:edit_lore/enchantments/enchant/compact/impaling
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].infinite_quiver run function items:edit_lore/enchantments/enchant/compact/infinite_quiver
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].knockback run function items:edit_lore/enchantments/enchant/compact/knockback
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].lethality run function items:edit_lore/enchantments/enchant/compact/lethality
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].life_steal run function items:edit_lore/enchantments/enchant/compact/life_steal
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].looting run function items:edit_lore/enchantments/enchant/compact/looting
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].luck run function items:edit_lore/enchantments/enchant/compact/luck
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].luck_of_the_sea run function items:edit_lore/enchantments/enchant/compact/luck_of_the_sea
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].lure run function items:edit_lore/enchantments/enchant/compact/lure
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].magnet run function items:edit_lore/enchantments/enchant/compact/magnet
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].piercing run function items:edit_lore/enchantments/enchant/compact/piercing
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].power run function items:edit_lore/enchantments/enchant/compact/power
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].projectile_protection run function items:edit_lore/enchantments/enchant/compact/projectile_protection
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].protection run function items:edit_lore/enchantments/enchant/compact/protection
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].punch run function items:edit_lore/enchantments/enchant/compact/punch
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].rainbow run function items:edit_lore/enchantments/enchant/compact/rainbow
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].respiration run function items:edit_lore/enchantments/enchant/compact/respiration
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].replenish run function items:edit_lore/enchantments/enchant/compact/replenish
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].scavenger run function items:edit_lore/enchantments/enchant/compact/scavenger
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].sharpness run function items:edit_lore/enchantments/enchant/compact/sharpness
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].silk_touch run function items:edit_lore/enchantments/enchant/compact/silk_touch
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].smelting_touch run function items:edit_lore/enchantments/enchant/compact/smelting_touch
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].smite run function items:edit_lore/enchantments/enchant/compact/smite
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].snipe run function items:edit_lore/enchantments/enchant/compact/snipe
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].spiked_hook run function items:edit_lore/enchantments/enchant/compact/spiked_hook
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].telekinesis run function items:edit_lore/enchantments/enchant/compact/telekinesis
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].thorns run function items:edit_lore/enchantments/enchant/compact/thorns
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].thunderlord run function items:edit_lore/enchantments/enchant/compact/thunderlord
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].true_protection run function items:edit_lore/enchantments/enchant/compact/true_protection
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].sugar_rush run function items:edit_lore/enchantments/enchant/compact/sugar_rush
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].vampirism run function items:edit_lore/enchantments/enchant/compact/vampirism
execute if data storage blue:lore_builder ItemStorage.Base.Enchantments[].venomous run function items:edit_lore/enchantments/enchant/compact/venomous
#-------ADD INCOMPLETE LINE (IF ODD)-------#
execute if entity @s[tag=LinePt2] in minecraft:overworld run data modify storage blue:lore_builder NewLore append from block 29999978 1 29832 Text1
#--------------ADD LINE AFTER--------------#
data modify storage blue:lore_builder NewLore append value '{"text":""}'
#------------------------------------------#