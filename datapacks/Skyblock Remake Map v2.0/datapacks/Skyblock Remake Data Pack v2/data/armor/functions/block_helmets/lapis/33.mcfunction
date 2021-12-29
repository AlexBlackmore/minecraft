data modify storage blue:block_helmet HelmetData set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:33b}].tag.Base
data modify storage blue:block_helmet HelmetName set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:33b}].tag.display.Name
data modify storage blue:block_helmet HelmetLore set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:33b}].tag.display.Lore

item replace entity @s[nbt={Inventory:[{id:"minecraft:sea_lantern",Slot:33b,tag:{BlockHelmet:1}}]}] inventory.24 with minecraft:diamond_helmet{BlockHelmetItem:1,CustomModelData:1,Base:{Type:"HELMET",AnvilUses:0,RepairCost:0,Enchantments:[],Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}',Reforge:"",Defense:25,BaseDefense:25,Abilities:[{Name:"Health",Activation:"",Type:"Full Set Bonus"}]},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Each piece of this armour grants ","color":"gray","italic":false}]','[{"text":"50% ","color":"green","italic":false},{"text":"bonus experience when ","color":"gray","italic":false}]','[{"text":"mining ores.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Health","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"Increases the wearers maximum ","color":"gray","italic":false}]','[{"text":"❤ Health ","color":"red","italic":false},{"text":"by ","color":"gray","italic":false},{"text":"60","color":"green","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Lapis Armor Helmet","color":"green","italic":false}]',Lore:['[{"text":"Defense: ","color":"gray","italic":false},{"text":"+25","color":"green","italic":false}]','[{"text":""}]','[{"text":"Each piece of this armour grants ","color":"gray","italic":false}]','[{"text":"50% ","color":"green","italic":false},{"text":"bonus experience when ","color":"gray","italic":false}]','[{"text":"mining ores.","color":"gray","italic":false}]','[{"text":""}]','[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Health","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"Increases the wearers maximum ","color":"gray","italic":false}]','[{"text":"❤ Health ","color":"red","italic":false},{"text":"by ","color":"gray","italic":false},{"text":"60","color":"green","italic":false},{"text":".","color":"gray","italic":false}]','[{"text":""}]','[{"text":"This item can be reforged!","color":"dark_gray","italic":false}]','[{"text":"UNCOMMON HELMET","color":"green","italic":false,"bold":true}]']}}

item modify entity @s inventory.24 armor:block_helmet

data remove storage blue:block_helmet HelmetData
data remove storage blue:block_helmet HelmetLore
data remove storage blue:block_helmet HelmetName