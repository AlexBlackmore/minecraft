data modify storage blue:block_helmet HelmetData set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:13b}].tag.Base
data modify storage blue:block_helmet HelmetName set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:13b}].tag.display.Name
data modify storage blue:block_helmet HelmetLore set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:13b}].tag.display.Lore

item replace entity @s[nbt={Inventory:[{id:"minecraft:oak_leaves",Slot:13b,tag:{BlockHelmet:2}}]}] inventory.4 with minecraft:diamond_helmet{BlockHelmetItem:1,CustomModelData:2,Base:{Type:"HELMET",AnvilUses:0,RepairCost:0,Enchantments:[],Rarity:"COMMON",RarityColor:'{"text":"","color":"white"}',Reforge:"",Health:20,BaseHealth:20,Abilities:[{Name:"Energy of the Forest",Activation:"",Type:"Full Set Bonus"}]},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Energy of the Forest","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"While in a Forest zone you","color":"gray","italic":false}]','[{"text":"regain ","color":"gray","italic":false},{"text":"5.0 ","color":"green","italic":false},{"text":"❤ Health ","color":"red","italic":false},{"text":"every","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":"second.","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":""}]'],display:{Name:'[{"text":"Leaflet Helmet","color":"white","italic":false}]',Lore:['[{"text":"Health: ","color":"gray","italic":false},{"text":"+20 HP","color":"green","italic":false}]','[{"text":""}]','[{"text":"Full Set Bonus: ","color":"gold","italic":false},{"text":"Energy of the Forest","color":"gold","italic":false},{"text":" ","color":"yellow","italic":false,"bold":true}]','[{"text":"While in a Forest zone you","color":"gray","italic":false}]','[{"text":"regain ","color":"gray","italic":false},{"text":"5.0 ","color":"green","italic":false},{"text":"❤ Health ","color":"red","italic":false},{"text":"every","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":"second.","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":""}]','[{"text":"This item can be reforged!","color":"dark_gray","italic":false}]','[{"text":"COMMON HELMET","color":"white","italic":false,"bold":true}]']}}

item modify entity @s inventory.4 armor:block_helmet

data remove storage blue:block_helmet HelmetData
data remove storage blue:block_helmet HelmetLore
data remove storage blue:block_helmet HelmetName