#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ISLANDS------------------#
setblock ~ ~ ~ minecraft:end_portal_frame[eye=false]
scoreboard players reset @e[tag=End_EyeStand,sort=nearest,limit=1] End_EyeID
item replace entity @s weapon.mainhand with minecraft:warped_fungus_on_a_stick{CustomModelData:33,Base:{Type:"",Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}'},HideFlags:63,Unbreakable:1b,display:{Name:'[{"text":"Summoning Eye","color":"dark_purple","italic":false}]',Lore:['[{"text":"Use this at the ","color":"gray","italic":false},{"text":"Ender Altar","color":"dark_purple","italic":false},{"text":" ","color":"gray","italic":false}]','[{"text":"in the ","color":"gray","italic":false},{"text":"Dragon\'s Nest","color":"dark_purple","italic":false},{"text":" ","color":"gray","italic":false}]','[{"text":"to summon ","color":"gray","italic":false},{"text":"Ender Dragons!","color":"gray","italic":false}]','[{"text":""}]','[{"text":"EPIC","color":"dark_purple","italic":false,"bold":true}]']}}
scoreboard players remove Global End_EyeCount 1
scoreboard players remove @s End_EyeCount 1
scoreboard players set @s End_EyeCool 300
tellraw @s ["",{"text":"You recovered a Summoning Eye!","color":"dark_purple"}]
function public_islands:the_end/summoning_eye/eyewait
#------------------------------------------#