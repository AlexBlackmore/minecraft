scoreboard players operation .search pcompact.cartid = @s pcompact.cartid
execute as @e[type=armor_stand,tag=PCompactMove,sort=nearest] if score @s pcompact.cartid = .search pcompact.cartid positioned ^ ^ ^ run function personal_compactors:holding/locked_slots/main