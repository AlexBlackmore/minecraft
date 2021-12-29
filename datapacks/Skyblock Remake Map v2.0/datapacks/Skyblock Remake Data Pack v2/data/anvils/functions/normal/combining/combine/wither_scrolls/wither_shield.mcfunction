#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------ADD SCROLL IF NOT ON ITEM 1-------#
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run tag @s add ScrollSuccess


execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Base.Abilities append value {Type:"Item Ability",Name:"Wither Shield",Mana: 300,Cooldown:10,Activation:"RIGHT CLICK"}
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.BaseDescription set from storage blue:anvil ResultItem.tag.Description
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Scroll Abilities:","color":"green","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Item Ability: Wither Shield","color":"gold","italic":false},{"text":" RIGHT CLICK","color":"yellow","italic":false,"bold":true}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"Reduces the damage taken by","color":"gray","italic":false},{"text":" 30%","color":"red","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"for ","color":"gray","italic":false},{"text":"5","color":"yellow","italic":false},{"text":" seconds. Also grants","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"an absorption shield that gives","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"200%","color":"blue","italic":false},{"text":" of your Critical Damage","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"as health, after","color":"gray","italic":false},{"text":" 5 ","color":"yellow","italic":false},{"text":"seconds,","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"50%","color":"green","italic":false},{"text":" of the shield is","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":"converted into healing.","color":"gray","italic":false}]'
execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Description append value '[{"text":" ","color":"gray","italic":false}]'

execute unless data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} run data modify storage blue:anvil ResultItem.tag.Base.AppliedScrolls append value "Wither Shield"
execute if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Wither Shield"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Shadow Warp"]} if data storage blue:anvil ResultItem.tag.Base{AppliedScrolls:["Implosion"]} run function anvils:normal/combining/combine/wither_scrolls/wither_impact
