scoreboard players operation $HealAmount Temp = @s P_Health
scoreboard players operation $HealAmount Temp /= c20 Constant
scoreboard players add $HealAmount Temp 168

scoreboard players add @a[distance=0.5..8] PlayerHP 56
execute as @a[distance=0.5..8] run function stats:calculate/current_effective_health
tellraw @a[distance=0.5..8] ["",{"text":"You were healed by ","color":"green","bold":true},{"selector":"@s","color":"green","bold":true},{"text":" for 56 health!","color":"green","bold":true}]
playsound minecraft:entity.experience_orb.pickup player @a[distance=..8] ~ ~ ~ 1 1.5 1

scoreboard players set @s I_HealMaxCharges 5
scoreboard players add @s I_HealCharges 1
function items:actionbar_text/ability/instant_heal/5_charges_init

function items:item_abilities/right_click/instant_heal/main