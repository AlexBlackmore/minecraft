tag @p[tag=ability] add soulcry

item modify entity @p[tag=soulcry] weapon.offhand skyblock:subtract_item
xp add @p[tag=soulcry] -200 points
playsound minecraft:entity.enderman.scream player @p[tag=soulcry]
effect give @p[tag=heartstopper] hunger 4

tellraw @p[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}}}] ["",{"text":"SOULCRY! ","bold":true,"color":"gold"},{"text":"+200% Attack Damage","italic":false,"color":"blue"},{"text":" against Enderman for the next ","italic":false,"color":"white"},{"text":"4","italic":false,"color":"green"},{"text":" seconds.","italic":false,"color":"white"}]
tellraw @p[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}}}] ["",{"text":"SOULCRY! ","bold":true,"color":"gold"},{"text":"+300% Attack Damage","italic":false,"color":"blue"},{"text":" against Enderman for the next ","italic":false,"color":"white"},{"text":"4","italic":false,"color":"green"},{"text":" seconds.","italic":false,"color":"white"}]
tellraw @p[tag=soulcry,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}}}] ["",{"text":"SOULCRY! ","bold":true,"color":"gold"},{"text":"+300% Attack Damage","italic":false,"color":"blue"},{"text":" against Enderman for the next ","italic":false,"color":"white"},{"text":"4","italic":false,"color":"green"},{"text":" seconds.","italic":false,"color":"white"}]

schedule function skyblock:abilities/instant/soulcry_end 4s replace