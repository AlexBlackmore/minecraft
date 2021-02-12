#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------SUCCESS SOUND---------------#
playsound minecraft:block.note_block.pling master @p ~ ~ ~ 1 2 1
#-----------CREATE INITIAL ITEM------------#
loot replace entity @s container.13 loot cheats:custom_enchanting/book_receive
#----------------SET LEVEL-----------------#
execute if score @s CustomEnchPage matches 0 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].bane_of_arthropods.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 1 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].cleave.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 2 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].critical.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 3 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].cubism.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 4 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].dragon_hunter.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 5 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].ender_slayer.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 6 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].execute.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 7 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].experience.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 8 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].fire_aspect.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 9 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].first_strike.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 10 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].giant_killer.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 11 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].impaling.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 12 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].knockback.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 13 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].lethality.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 14 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].life_steal.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 15 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].looting.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 16 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].luck.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 17 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].scavenger.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 18 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].sharpness.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 19 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].smite.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 20 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].telekinesis.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 21 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].thunderlord.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 22 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].vampirism.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 23 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].venomous.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 24 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].aiming.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 25 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].flame.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 26 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].infinite_quiver.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 27 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].piercing.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 28 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].power.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 29 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].punch.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 30 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].snipe.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 31 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].aqua_affinity.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 32 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].blast_protection.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 33 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].depth_strider.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 34 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].feather_falling.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 35 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].fire_protection.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 36 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].frost_walker.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 37 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].growth.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 38 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].projectile_protection.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 39 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].protection.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 40 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].respiration.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 41 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].thorns.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 42 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].true_protection.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 43 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].sugar_rush.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 44 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].efficiency.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 45 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].fortune.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 46 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].harvesting.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 47 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].rainbow.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 48 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].replenish.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 49 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].silk_touch.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 50 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].smelting_touch.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 51 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].angler.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 52 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].blessing.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 53 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].caster.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 54 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].frail.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 55 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].luck_of_the_sea.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 56 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].lure.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 57 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].magnet.level int 1 run scoreboard players get @s CustomEnchLevel
execute if score @s CustomEnchPage matches 58 store result entity @s Items[{Slot:13b}].tag.Base.Enchantments[].spiked_hook.level int 1 run scoreboard players get @s CustomEnchLevel
#---------FIX LORE & ADD NEEDED NBT--------#
function items:edit_lore/begin/equipment
#-------------GIVE PLAYER ITEM-------------#
function menu:return_item/13
#------------------------------------------#