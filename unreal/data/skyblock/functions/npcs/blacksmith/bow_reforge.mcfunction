execute unless data entity @s SelectedItem.tag.Name run function skyblock:set_default_items
execute unless data entity @s SelectedItem.tag.Reforge run function skyblock:reforging/set_default_attributes

execute at @s run summon armor_stand ~ ~ ~ {Tags:["anvil"]}
item replace entity @e[type=minecraft:armor_stand,tag=anvil] weapon.mainhand from entity @s weapon.mainhand

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Max Health"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Knockback Resistance"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Movement Speed"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Armor Toughness"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Knockback"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Speed"}].Amount set value 0.0f
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Luck"}].Amount set value 0.0f

data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 0
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 0
data modify entity @e[tag=anvil,limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 0


scoreboard objectives add dummy dummy "Dummy"
scoreboard objectives add random dummy "Random"
execute at @e[tag=anvil] run summon minecraft:area_effect_cloud ~ 256 ~ {Duration:1,Tags:["rng"]}
execute as @e[tag=anvil,limit=1,sort=nearest] run execute store result score @s random run data get entity @e[tag=rng,limit=1,sort=nearest] UUID[0]
scoreboard players set @e[tag=anvil,limit=1,sort=nearest] dummy 9
execute as @e[tag=anvil,limit=1,sort=nearest] run scoreboard players operation @s random %= @s dummy
#tellraw @p ["",{"text":"[RNG: ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=anvil,limit=1,sort=nearest]","objective":"random"},"italic":true,"color":"gray"},{"text":"]","italic":true,"color":"gray"}]


#DEADLY
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 10
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 5

data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 13
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 10

data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 16
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 18

data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 19
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 32

data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 22
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 50

data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 25
data modify entity @e[tag=anvil,scores={random=0},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 78
data modify entity @e[tag=anvil,scores={random=0},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Deadly"


#FINE
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 5
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 2

data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 7
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 4

data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.4f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 9
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 7

data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.6f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 12
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 10

data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 5.0f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 15
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 15

data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 6.6f
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 18
data modify entity @e[tag=anvil,scores={random=1},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 20
data modify entity @e[tag=anvil,scores={random=1},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Fine"


#GRAND
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 5.0f
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 6.4f
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 8.0f
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 10.0f
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 12.0f
data modify entity @e[tag=anvil,scores={random=2},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 15.0f
data modify entity @e[tag=anvil,scores={random=2},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Grand"


#HASTY
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 20

data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.0f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 25

data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 30

data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.0f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 40

data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.0f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 50

data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 4.0f
data modify entity @e[tag=anvil,scores={random=3},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 75
data modify entity @e[tag=anvil,scores={random=3},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Hasty"


#NEAT
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 10
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 4
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 3

data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 12
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 8
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 6

data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 14
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 14
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 10

data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 17
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 20
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 15

data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 20
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 30
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 20

data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 25
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 40
data modify entity @e[tag=anvil,scores={random=4},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 25
data modify entity @e[tag=anvil,scores={random=4},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Neat"


#RAPID
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.4f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 35

data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 45

data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.8f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 55

data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 65

data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.0f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 75

data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.0f
data modify entity @e[tag=anvil,scores={random=5},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 90
data modify entity @e[tag=anvil,scores={random=5},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Rapid"


#UNREAL
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 8
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 5

data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 9
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 10

data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.4f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 10
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 18

data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.6f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 11
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 32

data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 5.0f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 13
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 50

data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 6.8f
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 15
data modify entity @e[tag=anvil,scores={random=6},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 70
data modify entity @e[tag=anvil,scores={random=6},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Unreal"


#AWKWARD
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 10
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 5
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -5

data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 12
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 10
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -10

data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 15
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 15
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -18

data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 20
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 22
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -32

data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 25
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 30
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -50

data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 30
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 35
data modify entity @e[tag=anvil,scores={random=7},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value -72
data modify entity @e[tag=anvil,scores={random=7},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Awkward"


#RICH
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.4f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 10
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 1
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 20

data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.6f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 12
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 2
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 25

data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 0.8f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 14
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 4
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 30

data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 1.4f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 17
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 7
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 40

data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 2.0f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 20
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 10
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 50

data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.AttributeModifiers[{Name:"Reforge Attack Damage"}].Amount set value 3.0f
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Chance set value 25
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Crit_Damage set value 15
data modify entity @e[tag=anvil,scores={random=8},nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] HandItems[0].tag.Reforge_Intelligence set value 60
data modify entity @e[tag=anvil,scores={random=8},limit=1,sort=nearest] HandItems[0].tag.Reforge set value "Rich"


execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:0}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_common
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:1}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_uncommon
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:2}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_rare
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:3}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_epic
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:4}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_legendary
execute as @e[tag=anvil,nbt={HandItems:[{tag:{Rarity:5}}]},limit=1,sort=nearest] run item modify entity @s weapon.mainhand skyblock:reforging/set_name_special

tellraw @s ["",{"text":"You reforged your ","color":"white"},{"nbt":"SelectedItem.tag.display.Name","interpret":true,"entity":"@s"},{"text":" into a "},{"nbt":"HandItems[0].tag.display.Name","interpret":true,"entity":"@e[tag=anvil,limit=1,sort=nearest]"},{"text":"!","color":"white"}]
item replace entity @s weapon.mainhand from entity @e[tag=anvil,limit=1,sort=nearest] weapon.mainhand
kill @e[type=armor_stand,tag=anvil]

xp add @s[nbt={SelectedItem:{tag:{Rarity:0}}}] -250 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:1}}}] -500 points
xp add @s[nbt={SelectedItem:{tag:{Rarity:2}}}] -1000 points

playsound minecraft:block.anvil.use player @s

advancement revoke @s only skyblock:commands/npcs/blacksmith

scoreboard objectives remove random