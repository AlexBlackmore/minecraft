summon armor_stand ~ ~1.7 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["NPC","PlayerNPC"],DisabledSlots:4144959,CustomName:'{"text":"CLICK","bold":true,"color":"yellow"}'}
summon armor_stand ~ ~1.95 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["NPC","NPCName"],DisabledSlots:4144959,CustomName:'{"text":"Change Name","color":"gold"}'}

#SET THE NPC SKIN SCORE TO CHANGE THE APPEARANCE OF YOUR NPC (STARTING AT 2 FOR ADVENTURER)
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 2
