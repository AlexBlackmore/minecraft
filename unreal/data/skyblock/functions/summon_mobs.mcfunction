#Hub Island
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Graveyard,predicate=skyblock:time/night] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/hub_island/graveyard
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Crypts] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/hub_island/crypts
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Ruins] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/hub_island/ruins
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=HighLevel,predicate=skyblock:time/night] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/hub_island/skeleton


#Gold Mine
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=GoldMine] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/gold_mine


#Deep Caverns
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=GunpowderMines] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/gunpowder_mines
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=LapisQuarry] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/lapis_quarry
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=PigmensDen] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/pigmens_den
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Slimehill] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/slimehill
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=DiamondReserve] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/diamond_reserve
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=ObsidianSanctuary] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/deep_caverns/obsidian_sanctuary


#The Park
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=HowlingSpirit] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/the_park/howling_spirit
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=PackSpirit] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/the_park/pack_spirit
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=SoulOfTheAlpha] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/the_park/soul_of_the_alpha



#Dwarven Mines
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=GreatIceWall] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/dwarven_mines/ice_walker
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=GoblinBurrows] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/dwarven_mines/goblin_burrows
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=UpperMines] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/dwarven_mines/treasure_hoarder
execute at @e[type=minecraft:pig,tag=Spawner] as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=TheMist] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/dwarven_mines/ghost



#Blazing Fortress
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Pigman] run execute at @e[type=minecraft:pig,tag=Spawner] run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/blazing_fortress/pigman
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=MagmaCube] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/blazing_fortress/magma_cube
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=Blaze] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/blazing_fortress/blaze
#execute at @s as @e[type=minecraft:armor_stand,tag=Spawner,limit=1,sort=nearest] if entity @s[tag=WitherSkeleton] run execute as @e[type=minecraft:pig,tag=Spawner] at @s run loot spawn ~ ~ ~ loot skyblock:gameplay/spawn_eggs/blazing_fortress/wither_skeleton


tp @e[type=minecraft:pig,tag=Spawner] ~ ~-256 ~
execute if entity @e[type=item,nbt={Item:{id:"minecraft:zombie_spawn_egg"}}] run function skyblock:sea_creatures