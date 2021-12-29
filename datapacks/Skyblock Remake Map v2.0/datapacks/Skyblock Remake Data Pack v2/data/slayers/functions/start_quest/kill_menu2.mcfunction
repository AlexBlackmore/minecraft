execute at @a[tag=Killmenu] as @e[tag=NPCMenu,distance=..2.5,sort=nearest,limit=1] at @s run function menu:kill
tag @a remove Killmenu