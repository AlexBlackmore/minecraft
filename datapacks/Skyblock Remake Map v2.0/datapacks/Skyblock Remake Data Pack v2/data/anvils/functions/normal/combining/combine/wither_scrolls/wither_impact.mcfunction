#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------ADD SCROLL IF NOT ON ITEM 1-------#
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run tag @s add ScrollSuccess
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data remove storage blue:anvil ResultItem.tag.Base.Abilities
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Base.Abilities append value {Type:"Item Ability",Name:"Wither Impact",Mana: 250,Cooldown:10,Activation:"RIGHT CLICK"}

execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data remove storage blue:anvil ResultItem.tag.Description
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description set from storage blue:anvil ResultItem.tag.BaseDescription

execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Item Ability: Wither Impact","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Teleport","color":"gray","italic":false},{"text":" 10 ","color":"green","italic":false},{"text":"blocks ahead of","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"you. Then implode dealing","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"15,000","color":"red","italic":false},{"text":" damage to nearby","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"ennemies.","color":"gray","italic":false},{"text":" Also applies the wither","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"shield scroll ability reducing","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"damage taken and granting an","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"absorption shield for","color":"gray","italic":false},{"text":" 5","color":"yellow","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"seconds.","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Mana Cost:","color":"dark_gray","italic":false},{"text":" 250","color":"dark_aqua","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":" ","color":"gray","italic":false}]'

execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Impact"]} run data modify storage blue:anvil ResultItem.tag.Base.AppliedScrolls append value "Wither Impact"
