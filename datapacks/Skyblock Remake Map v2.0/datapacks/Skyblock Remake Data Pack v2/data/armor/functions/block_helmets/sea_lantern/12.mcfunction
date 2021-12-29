data modify storage blue:block_helmet HelmetData set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:12b}].tag.Base
data modify storage blue:block_helmet HelmetName set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:12b}].tag.display.Name
data modify storage blue:block_helmet HelmetLore set from entity @s[nbt={Inventory:[{id:"minecraft:diamond_helmet",Slot:0b}]}] Inventory[{Slot:12b}].tag.display.Lore

item replace entity @s[nbt={Inventory:[{id:"minecraft:sea_lantern",Slot:12b,tag:{BlockHelmet:4}}]}] inventory.3 with minecraft:diamond_helmet{CustomModelData:1,BlockHelmetItem:1,Base:{Type:"HELMET",Rarity:"UNCOMMON",RarityColor:'{"text":"","color":"green"}',Enchantments:[],AnvilUses:0,RepairCost:0,Reforge:""},HideFlags:63,Unbreakable:1b,Description:['[{"text":"Breathe ","color":"gray","italic":false},{"text":"5x ","color":"green","italic":false},{"text":"as long ","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":"underwater when wearing!","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]'],display:{Name:'[{"text":"Sea Lantern Hat","color":"green","italic":false}]',Lore:['[{"text":"Breathe ","color":"gray","italic":false},{"text":"5x ","color":"green","italic":false},{"text":"as long ","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":"underwater when wearing!","color":"gray","bold":false,"strikethrough":false,"underlined":false,"italic":false}]','[{"text":" "}]','[{"text":"This item can be reforged!","color":"dark_gray","italic":false}]','[{"text":"UNCOMMON HELMET","color":"green","italic":false,"bold":true}]']}}

item modify entity @s inventory.3 armor:block_helmet

data remove storage blue:block_helmet HelmetData
data remove storage blue:block_helmet HelmetLore
data remove storage blue:block_helmet HelmetName