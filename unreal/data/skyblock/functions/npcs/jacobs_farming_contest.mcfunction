tellraw @s {"text":"<Jacob> Howdy!! Let me count these crops eh?"}
tellraw @s {"text":"<Jacob> Here is your reward!"}

item modify entity @s weapon.mainhand skyblock:subtract_item
loot give @s loot skyblock:jacobs_farming_contest
playsound minecraft:entity.villager.celebrate player @s

advancement revoke @s only skyblock:commands/npcs/jacobs_farming_contest