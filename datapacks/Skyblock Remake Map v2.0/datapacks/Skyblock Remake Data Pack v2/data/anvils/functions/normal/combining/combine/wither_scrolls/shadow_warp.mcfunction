#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------ADD SCROLL IF NOT ON ITEM 1-------#
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run tag @s add ScrollSuccess
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Base.Abilities append value {Type:"Item Ability",Name:"Shadow Warp",Mana: 300,Cooldown:10,Activation:"RIGHT CLICK"}
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.BaseDescription set from storage blue:anvil ResultItem.tag.Description
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Scroll Abilities:","color":"green","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Item Ability: Shadow Warp","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Creates a spacial distorsion ","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"10 ","color":"yellow","italic":false},{"text":"blocks ahead of you that","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"sucks all ennemies around it.","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Using this ability again within","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"5 ","color":"yellow","italic":false},{"text":"seconds will detonate the","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"warp and deal damage to ennemies","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"around it.","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":" ","color":"gray","italic":false}]'

execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} run data modify storage blue:anvil ResultItem.tag.Base.AppliedScrolls append value "Shadow Warp"
execute if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run function anvils:normal/combining/combine/wither_scrolls/wither_impact
