#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------ADD XP EARNED TO XP NEEDED---------#
# TIER 4 ---------------------------
scoreboard players operation @p 4TempTDps = Tier4TDps S_WInfos
scoreboard players operation base_number Temp = Tier4TDps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier4TDpsComma4 S_WInfos = after_comma_4 Temp
scoreboard players operation Tier4TDpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier4TDpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 4TDTempBefComma = Tier4TDpsBefComma S_WInfos
scoreboard players operation @p 4TDTempComma = Tier4TDpsComma S_WInfos
scoreboard players operation @p 4TDTempComma4 = Tier4TDpsComma4 S_WInfos

scoreboard players operation @p 4TempXPReward = Tier4XPReward S_WInfos
scoreboard players operation base_number Temp = Tier4XPReward S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier4XPRewardComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier4XPRewardComma S_WInfos = after_comma Temp
scoreboard players operation Tier4XPRewardBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 4TempBeforeComma = Tier4XPRewardBefComma S_WInfos
scoreboard players operation @p 4TempComma = Tier4XPRewardComma S_WInfos
scoreboard players operation @p 4TempComma2 = Tier4XPRewardComma2 S_WInfos

scoreboard players operation @p 4TempHealth = Tier4Health S_WInfos
scoreboard players operation base_number Temp = Tier4Health S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier4HealthComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier4HealthComma S_WInfos = after_comma Temp
scoreboard players operation Tier4HealthBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 4HTempBefComma = Tier4HealthBefComma S_WInfos
scoreboard players operation @p 4HTempComma = Tier4HealthComma S_WInfos
scoreboard players operation @p 4HTempComma2 = Tier4HealthComma2 S_WInfos

scoreboard players operation @p 4TempDps = Tier4Dps S_WInfos
scoreboard players operation base_number Temp = Tier4Dps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier4DpsComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier4DpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier4DpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 4DTempBefComma = Tier4DpsBefComma S_WInfos
scoreboard players operation @p 4DTempComma = Tier4DpsComma S_WInfos
scoreboard players operation @p 4DTempComma2 = Tier4DpsComma2 S_WInfos

scoreboard players operation @p 4TempCost = Tier4Cost S_WInfos
scoreboard players operation base_number Temp = Tier4Cost S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier4CostComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier4CostComma S_WInfos = after_comma Temp
scoreboard players operation Tier4CostBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 4CTempBefComma = Tier4CostBefComma S_WInfos
scoreboard players operation @p 4CTempComma = Tier4CostComma S_WInfos
scoreboard players operation @p 4CTempComma2 = Tier4CostComma2 S_WInfos

# TIER 3 ---------------------------
scoreboard players operation @p 3TempTDps = Tier3TDps S_WInfos
scoreboard players operation base_number Temp = Tier3TDps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier3TDpsComma3 S_WInfos = after_comma_3 Temp
scoreboard players operation Tier3TDpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier3TDpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 3TDTempBefComma = Tier3TDpsBefComma S_WInfos
scoreboard players operation @p 3TDTempComma = Tier3TDpsComma S_WInfos
scoreboard players operation @p 3TDTempComma3 = Tier3TDpsComma3 S_WInfos

scoreboard players operation @p 3TempXPReward = Tier3XPReward S_WInfos
scoreboard players operation base_number Temp = Tier3XPReward S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier3XPRewardComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier3XPRewardComma S_WInfos = after_comma Temp
scoreboard players operation Tier3XPRewardBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 3TempBeforeComma = Tier3XPRewardBefComma S_WInfos
scoreboard players operation @p 3TempComma = Tier3XPRewardComma S_WInfos
scoreboard players operation @p 3TempComma2 = Tier3XPRewardComma2 S_WInfos

scoreboard players operation @p 3TempHealth = Tier3Health S_WInfos
scoreboard players operation base_number Temp = Tier3Health S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier3HealthComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier3HealthComma S_WInfos = after_comma Temp
scoreboard players operation Tier3HealthBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 3HTempBefComma = Tier3HealthBefComma S_WInfos
scoreboard players operation @p 3HTempComma = Tier3HealthComma S_WInfos
scoreboard players operation @p 3HTempComma2 = Tier3HealthComma2 S_WInfos

scoreboard players operation @p 3TempDps = Tier3Dps S_WInfos
scoreboard players operation base_number Temp = Tier3Dps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier3DpsComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier3DpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier3DpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 3DTempBefComma = Tier3DpsBefComma S_WInfos
scoreboard players operation @p 3DTempComma = Tier3DpsComma S_WInfos
scoreboard players operation @p 3DTempComma2 = Tier3DpsComma2 S_WInfos

scoreboard players operation @p 3TempCost = Tier3Cost S_WInfos
scoreboard players operation base_number Temp = Tier3Cost S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier3CostComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier3CostComma S_WInfos = after_comma Temp
scoreboard players operation Tier3CostBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 3CTempBefComma = Tier3CostBefComma S_WInfos
scoreboard players operation @p 3CTempComma = Tier3CostComma S_WInfos
scoreboard players operation @p 3CTempComma2 = Tier3CostComma2 S_WInfos

# TIER 2 ---------------------------
scoreboard players operation @p 2TempXPReward = Tier2XPReward S_WInfos
scoreboard players operation base_number Temp = Tier2XPReward S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier2XPRewardComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier2XPRewardComma S_WInfos = after_comma Temp
scoreboard players operation Tier2XPRewardBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 2TempBeforeComma = Tier2XPRewardBefComma S_WInfos
scoreboard players operation @p 2TempComma = Tier2XPRewardComma S_WInfos
scoreboard players operation @p 2TempComma2 = Tier2XPRewardComma2 S_WInfos

scoreboard players operation @p 2TempHealth = Tier2Health S_WInfos
scoreboard players operation base_number Temp = Tier2Health S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier2HealthComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier2HealthComma S_WInfos = after_comma Temp
scoreboard players operation Tier2HealthBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 2HTempBefComma = Tier2HealthBefComma S_WInfos
scoreboard players operation @p 2HTempComma = Tier2HealthComma S_WInfos
scoreboard players operation @p 2HTempComma2 = Tier2HealthComma2 S_WInfos

scoreboard players operation @p 2TempDps = Tier2Dps S_WInfos
scoreboard players operation base_number Temp = Tier2Dps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier2DpsComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier2DpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier2DpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 2DTempBefComma = Tier2DpsBefComma S_WInfos
scoreboard players operation @p 2DTempComma = Tier2DpsComma S_WInfos
scoreboard players operation @p 2DTempComma2 = Tier2DpsComma2 S_WInfos

scoreboard players operation @p 2TempCost = Tier2Cost S_WInfos
scoreboard players operation base_number Temp = Tier2Cost S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier2CostComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier2CostComma S_WInfos = after_comma Temp
scoreboard players operation Tier2CostBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 2CTempBefComma = Tier2CostBefComma S_WInfos
scoreboard players operation @p 2CTempComma = Tier2CostComma S_WInfos
scoreboard players operation @p 2CTempComma2 = Tier2CostComma2 S_WInfos

scoreboard players operation @p 2TempTDps = Tier2TDps S_WInfos
scoreboard players operation base_number Temp = Tier2TDps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier2TDpsComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier2TDpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier2TDpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 2TDTempBefComma = Tier2TDpsBefComma S_WInfos
scoreboard players operation @p 2TDTempComma = Tier2TDpsComma S_WInfos
scoreboard players operation @p 2TDTempComma2 = Tier2TDpsComma2 S_WInfos

# TIER 1 ---------------------------
scoreboard players operation @p 1TempXPReward = Tier1XPReward S_WInfos
scoreboard players operation base_number Temp = Tier1XPReward S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier1XPRewardComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier1XPRewardComma S_WInfos = after_comma Temp
scoreboard players operation Tier1XPRewardBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 1TempBeforeComma = Tier1XPRewardBefComma S_WInfos
scoreboard players operation @p 1TempComma = Tier1XPRewardComma S_WInfos
scoreboard players operation @p 1TempComma2 = Tier1XPRewardComma2 S_WInfos

scoreboard players operation @p 1TempHealth = Tier1Health S_WInfos
scoreboard players operation base_number Temp = Tier1Health S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier1HealthComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier1HealthComma S_WInfos = after_comma Temp
scoreboard players operation Tier1HealthBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 1HTempBefComma = Tier1HealthBefComma S_WInfos
scoreboard players operation @p 1HTempComma = Tier1HealthComma S_WInfos
scoreboard players operation @p 1HTempComma2 = Tier1HealthComma2 S_WInfos

scoreboard players operation @p 1TempDps = Tier1Dps S_WInfos
scoreboard players operation base_number Temp = Tier1Dps S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier1DpsComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier1DpsComma S_WInfos = after_comma Temp
scoreboard players operation Tier1DpsBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 1DTempBefComma = Tier1DpsBefComma S_WInfos
scoreboard players operation @p 1DTempComma = Tier1DpsComma S_WInfos
scoreboard players operation @p 1DTempComma2 = Tier1DpsComma2 S_WInfos

scoreboard players operation @p 1TempCost = Tier1Cost S_WInfos
scoreboard players operation base_number Temp = Tier1Cost S_WInfos
function skyblock:split_comma_numbers/begin
scoreboard players operation Tier1CostComma2 S_WInfos = after_comma_2 Temp
scoreboard players operation Tier1CostComma S_WInfos = after_comma Temp
scoreboard players operation Tier1CostBefComma S_WInfos = before_comma Temp
scoreboard players operation @p 1CTempBefComma = Tier1CostBefComma S_WInfos
scoreboard players operation @p 1CTempComma = Tier1CostComma S_WInfos
scoreboard players operation @p 1CTempComma2 = Tier1CostComma2 S_WInfos