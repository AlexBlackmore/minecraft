#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------DURING DRAG SEQUENCE-----------#
summon minecraft:end_crystal ~ ~ ~ {Tags:["EndCrystal","EndCrystalInit"],Invulnerable:1b}
execute in skyblock:the_end run summon minecraft:slime 0 1 0 {Silent:1b,Tags:["HasHealthDisplay","EndCrystalHitBox","EndCrystalHitBoxInit"],Team:"nocol",NoAI:1b,NoGravity:1b,DeathLootTable:"",Size:3,Attributes:[{Name:generic.armor_toughness,Base:10000000}],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
schedule function public_islands:the_end/main_sequence/init_crystal 1t
#------------------------------------------#