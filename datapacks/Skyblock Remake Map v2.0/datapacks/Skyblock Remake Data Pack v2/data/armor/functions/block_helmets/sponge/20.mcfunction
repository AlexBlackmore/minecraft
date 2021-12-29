data modify storage blue:block_helmet HelmetData set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:20b}].tag.Base
data modify storage blue:block_helmet HelmetName set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:20b}].tag.display.Name
data modify storage blue:block_helmet HelmetLore set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:20b}].tag.display.Lore

item replace entity @s[nbt={Inventory:[{id:"minecraft:sponge",Slot:20b,tag:{BlockHelmet:3}}]}] inventory.11 with minecraft:diamond_helmet{BlockHelmetItem:1,CustomModelData:3,Base:{Type:"HELMET",AnvilUses:0,RepairCost:0,Enchantments:[],Rarity:"EPIC",RarityColor:'{"text":"","color":"dark_purple"}',Reforge:"",Defense:80,BaseDefense:80,Abilities:[{Name:"Absorbed",Activation:"",Type:"Full Set Bonus"}]},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Absorbed","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"Doubles ","color":"blue","italic":false},{"text":"your ","color":"gray","italic":false},{"text":"❈Defense ","color":"green","italic":false}]','[{"text":"while in water.","color":"gray","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Sponge Helmet","color":"dark_purple","italic":false}]',Lore:['[{"text":"Defense: ","color":"gray","italic":false},{"text":"+80","color":"green","italic":false}]','[{"text":""}]','[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Absorbed","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"Doubles ","color":"blue","italic":false},{"text":"your ","color":"gray","italic":false},{"text":"❈Defense ","color":"green","italic":false}]','[{"text":"while in water.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"This item can be reforged!","color":"dark_gray","italic":false}]','[{"text":"EPIC HELMET","color":"dark_purple","italic":false,"bold":true}]']}}

item modify entity @s inventory.11 armor:block_helmet

data remove storage blue:block_helmet HelmetData
data remove storage blue:block_helmet HelmetLore
data remove storage blue:block_helmet HelmetName