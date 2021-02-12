#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-----------------ACTIONBAR----------------#
data modify storage blue:item Actionbar set from entity @s SelectedItem.tag.Base
execute if data storage blue:item {Actionbar:{Abilities:[{Name:"Instant Heal"}]}} unless data storage blue:item {Actionbar:{BaseDamage:110}} unless data storage blue:item {Actionbar:[{BaseDamage:150}]} run function items:actionbar_text/ability/instant_heal/4_charges
execute if data storage blue:item {Actionbar:{Abilities:[{Name:"Instant Heal"}]}} if data storage blue:item {Actionbar:{BaseDamage:110}} run function items:actionbar_text/ability/instant_heal/5_charges
execute if data storage blue:item {Actionbar:{Abilities:[{Name:"Instant Heal"}]}} if data storage blue:item {Actionbar:{BaseDamage:150}} run function items:actionbar_text/ability/instant_heal/5_charges
#------------------------------------------#