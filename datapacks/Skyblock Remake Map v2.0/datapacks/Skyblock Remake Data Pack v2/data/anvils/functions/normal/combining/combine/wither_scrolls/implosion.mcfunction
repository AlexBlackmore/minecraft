#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------ADD SCROLL IF NOT ON ITEM 1-------#
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run tag @s add ScrollSuccess
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Base.Abilities append value {Type:"Item Ability",Name:"Implosion",Mana: 300,Cooldown:10,Activation:"RIGHT CLICK"}
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.BaseDescription set from storage blue:anvil ResultItem.tag.Description
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Scroll Abilities:","color":"green","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Item Ability: Implosion","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Deals ","color":"gray","italic":false},{"text":"15,000 ","color":"red","italic":false},{"text":"damage to","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"nearby ennemies.","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":" "}]'


execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Base.AppliedScrolls append value "Implosion"
execute if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run function anvils:normal/combining/combine/wither_scrolls/wither_impact

