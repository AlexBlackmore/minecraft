#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#   // Returns a uniformly distributed random integer between 0 and n - 1, inclusive
#   function randomInt(n);
#   // Returns a uniformly distributed random real (fractional) number between 0 (inclusive) and 1 (exclusive)
#   function randomFloat();
#   // Returns the real number n rounded to the nearest integer.
#   function round(n);
#   // Generate a random number between 1 and 1+(enchantability/2), with a triangular distribution
#   int rand_enchantability = 1 + randomInt(enchantability / 4 + 1) + randomInt(enchantability / 4 + 1);
#   // Choose the enchantment level
#   int k = chosen_enchantment_level + rand_enchantability;
#   // A random bonus, between .85 and 1.15
#   float rand_bonus_percent = 1 + (randomFloat() + randomFloat() - 1) * 0.15;
#   // Finally, we calculate the level
#   int final_level = round(k * rand_bonus_percent);
#   if ( final_level < 1 ) final_level = 1
#--------RANDOM NUMBER FROM 0..N-1---------#
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 3
function skyblock:random/range_lcg
scoreboard players operation @s E_ModifiedBase = out RandMath
function skyblock:random/range_lcg
scoreboard players operation @s E_ModifiedBase += out RandMath
scoreboard players add @s E_ModifiedBase 1
#------------ADD TO BASE LEVEL-------------#
scoreboard players operation @s E_ModifiedBase += @s E_SelectedSlot
#---------RANDOM NUMBER FROM 0..99---------# (line 17)
scoreboard players set in RandMath 0
scoreboard players set in1 RandMath 99
function skyblock:random/range_lcg
scoreboard players operation @s E_RandPercent = out RandMath
function skyblock:random/range_lcg
scoreboard players operation @s E_RandPercent += out RandMath
scoreboard players remove @s E_RandPercent 100
scoreboard players operation @s E_RandPercent *= c15 Constant
scoreboard players operation @s E_RandPercent /= c100 Constant
scoreboard players add @s E_RandPercent 100
#------------ADD TO BASE LEVEL-------------#
scoreboard players operation @s E_ModifiedBase *= @s E_RandPercent
scoreboard players operation @s E_ModifiedBase /= c100 Constant
scoreboard players set @s[scores={E_ModifiedBase=..0}] E_ModifiedBase 1
#------------------------------------------#