execute at @p[advancements={skyblock:commands/instant/bat_swarm=true}] run execute at @e[type=!player,distance=0..16,limit=2,sort=random] run summon bat ~ ~ ~ {ActiveEffects:[{Id:24,Amplifier:0,Duration:80}],Passengers:[{id:"minecraft:tnt",Fuse:80}]}
effect give @p hunger 5
function skyblock:abilities/reset_instant
