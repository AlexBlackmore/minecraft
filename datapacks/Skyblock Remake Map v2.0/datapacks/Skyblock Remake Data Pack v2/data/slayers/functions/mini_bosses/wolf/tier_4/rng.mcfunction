scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 100
function skyblock:random/range_lcg

execute if score out RandMath matches 8..28 at @e[tag=DamageDealt,sort=nearest,limit=1] positioned ~ ~-.8 ~ run function mobs:summon/slayers/mini_bosses/wolf/sven_follower
execute if score out RandMath matches ..7 at @e[tag=DamageDealt,sort=nearest,limit=1] positioned ~ ~-.8 ~ run function mobs:summon/slayers/mini_bosses/wolf/sven_alpha