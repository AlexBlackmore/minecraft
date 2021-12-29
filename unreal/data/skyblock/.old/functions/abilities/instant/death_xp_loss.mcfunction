tag @p[advancements={skyblock:commands/instant/death_xp_loss=true}] add xp_loss

tag @p[tag=xp_loss,tag=booster_cookie] remove xp_loss
tag @p[tag=xp_loss,advancements={skyblock:accessories/piggy_bank=true}] remove xp_loss
execute if entity @p[advancements={skyblock:accessories/piggy_bank=true}] run function skyblock:abilities/instant/piggy_bank_crack

tag @p[tag=xp_loss,advancements={skyblock:accessories/cracked_piggy_bank=true}] add cracked_piggy_bank
execute if entity @p[tag=xp_loss,advancements={skyblock:accessories/cracked_piggy_bank=true}] run function skyblock:abilities/instant/piggy_bank_break

scoreboard objectives add xp_target dummy "XP Target" 
execute store result score @p[tag=xp_loss] xp_level run xp query @p[tag=xp_loss] levels
scoreboard players operation @p[tag=xp_loss] xp_target = @p[tag=xp_loss] xp_level

scoreboard players set @p[tag=xp_loss,tag=!cracked_piggy_bank] dummy 2
scoreboard players operation @p[tag=xp_loss,tag=!cracked_piggy_bank] xp_target /= @p dummy 

scoreboard players set @p[tag=xp_loss,tag=cracked_piggy_bank] dummy 3
scoreboard players operation @p[tag=xp_loss,tag=cracked_piggy_bank] xp_target *= @p dummy 
scoreboard players set @p[tag=xp_loss,tag=cracked_piggy_bank] dummy 4
scoreboard players operation @p[tag=xp_loss,tag=cracked_piggy_bank] xp_target /= @p dummy 

execute unless score @p[tag=xp_loss] xp_level = @p[tag=xp_loss] xp_target run function skyblock:xp_target

tag @p[tag=xp_loss] remove xp_loss
tag @p[tag=cracked_piggy_bank] remove cracked_piggy_bank
scoreboard objectives remove xp_target

function skyblock:abilities/reset_instant
