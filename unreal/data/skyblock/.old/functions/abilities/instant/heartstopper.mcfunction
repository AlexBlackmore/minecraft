effect give @p[tag=ability] instant_health 1 2
tellraw @p[tag=ability] {"text":"[Scorpion Foil: +Instant Health III]","italic":true,"color":"gray"}
effect give @p[tag=ability] hunger 5

tag @p[tag=ability,predicate=skyblock:random_chance25] add heartstopper
attribute @p[tag=heartstopper] minecraft:generic.attack_damage modifier add 33-22-41-31-5 "Heartstopper" 2.5 multiply
playsound minecraft:entity.player.levelup player @p[tag=heartstopper]
playsound minecraft:ui.button.click player @p[tag=ability,tag=!heartstopper]
tellraw @p[tag=heartstopper] ["",{"text":"HEARTSTOPPER! ","bold":true,"color":"gold"},{"text":"+250% Attack Damage ","italic":false,"color":"blue"},{"text":"for your next attack.","italic":false,"color":"white"}]
effect give @p[tag=heartstopper] hunger 20