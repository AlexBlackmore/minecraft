scoreboard players operation $ChargesTimer Temp = @s I_HealChargesT
scoreboard players operation $ChargesTimer Temp /= c20 Constant
scoreboard players operation $Seconds Temp = $ChargesTimer Temp

tellraw @s ["",{"text":"Not enough charges! Next one in ","color":"red"},{"score":{"name":"$Seconds","objective": "Temp"},"color":"yellow"},{"text":" seconds!","color":"red"}]
playsound entity.zombie.hurt player @s ~ ~ ~ 1 1.5 1

scoreboard players operation @s PlayerMana += $ManaCost Temp
scoreboard players reset @s I_ActionbarTimer
function stats:actionbar