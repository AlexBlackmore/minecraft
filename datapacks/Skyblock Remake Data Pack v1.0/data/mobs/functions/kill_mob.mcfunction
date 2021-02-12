playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1
execute if entity @s[tag=Held_Telekinesis] run function enchanting:enchants/telekinesis/items_and_xp
advancement revoke @s only mobs:kill_mob