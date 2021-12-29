#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#----------------PLAY SOUND----------------#
playsound entity.ender_dragon.flap hostile @s
#--------------STARTING_FUNCTION---------------#
execute anchored eyes positioned ~ ~1 ~ run summon bat ^ ^ ^.3 {NoAI:1b,NoGravity:1b,Invulnerable:1b,Tags:["HasHealthDisplay","NewGuidedBat","GuidedBat","Timeout","10SecTimeout"]}
execute store result score $AbilityDamageOutput Temp run data get entity @s SelectedItem.tag.Base.Abilities[{Activation:"RIGHT CLICK"}].Damage
scoreboard players operation @e[tag=NewGuidedBat,sort=nearest,limit=1] I_AbilDmgStore = $AbilityDamageOutput Temp
scoreboard players operation @e[tag=NewGuidedBat,sort=nearest,limit=1] PlayerID = @s PlayerID
tag @e remove NewGuidedBat
#------------------------------------------#