tag @p[advancements={skyblock:commands/use_ability=true}] add ability

#ARMOR
execute as @p[tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Farm Suit Boots"}},{Slot:101b,tag:{Name:"Farm Suit Leggings"}},{Slot:102b,tag:{Name:"Farm Suit Chestplate"}},{Slot:103b,tag:{Name:"Farm Suit Helmet"}}]}] run function skyblock:abilities/instant/farmer_aura

execute as @p[tag=ability,level=3..,predicate=skyblock:in_water,nbt={Inventory:[{Slot:100b,tag:{Name:"Salmon Boots"}},{Slot:101b,tag:{Name:"Salmon Leggings"}},{Slot:102b,tag:{Name:"Salmon Chestplate"}},{Slot:103b,tag:{Name:"Salmon Helmet"}}]}] run function skyblock:abilities/instant/water_burst


#HELMETS
execute as @p[tag=ability,nbt={Inventory:[{Slot:103b,tag:{Name:"Chicken Head"}}]}] run function skyblock:abilities/instant/chicken_head

execute as @p[level=2..,tag=ability,nbt={Inventory:[{Slot:103b,tag:{Name:"Fish Hat"}}]}] run function skyblock:abilities/instant/splash

execute as @p[tag=ability,nbt={Inventory:[{Slot:103b,tag:{Name:"Golem Hat"}}]}] run function skyblock:abilities/instant/golem_hat


#BOOTS
execute as @p[level=14..,tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Spirit Boots"}}]}] run function skyblock:abilities/instant/spirit_glide

execute as @p[level=5..,tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Spider's Boots"}}]}] run function skyblock:abilities/instant/double_jump
execute as @p[level=4..,tag=ability,nbt={Inventory:[{Slot:100b,tag:{Name:"Tarantula Boots"}}]}] run function skyblock:abilities/instant/double_jump


#SWORDS
execute as @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Midas' Sword"}},Inventory:[{Slot:-106b,tag:{Name:"Rare Enchanted Emerald"}}]}] run function skyblock:abilities/instant/greed

execute as @p[tag=ability,level=5..,nbt={SelectedItem:{tag:{Name:"Rogue Sword"}}}] run function skyblock:abilities/instant/speed_boost

execute as @p[tag=ability,level=6..,nbt={SelectedItem:{tag:{Name:"Golem Sword"}}}] run function skyblock:abilities/instant/iron_punch

execute as @p[tag=ability,level=5..,nbt={SelectedItem:{tag:{Name:"Aspect of the End"}}}] run function skyblock:abilities/instant/instant_transmission
execute as @p[tag=ability,level=5..,nbt={SelectedItem:{tag:{Name:"Aspect of the Void"}}}] run function skyblock:abilities/instant/instant_transmission

execute as @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Aspect of the Jerry"}}}] run function skyblock:abilities/instant/parley

execute as @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Scorpion Foil"}}}] run function skyblock:abilities/instant/heartstopper

execute as @p[tag=ability,level=12..,nbt={SelectedItem:{tag:{Name:"Voidedge Katana"}},Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Enchanted Ender Pearl\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run function skyblock:abilities/instant/soulcry
execute as @p[tag=ability,level=12..,nbt={SelectedItem:{tag:{Name:"Vorpal Katana"}},Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Enchanted Ender Pearl\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run function skyblock:abilities/instant/soulcry
execute as @p[tag=ability,level=12..,nbt={SelectedItem:{tag:{Name:"Atomsplit Katana"}},Inventory:[{Slot:-106b,tag:{display:{Name:"{\"text\":\"Enchanted Ender Pearl\",\"italic\":false,\"color\":\"yellow\"}"}}}]}] run function skyblock:abilities/instant/soulcry

execute as @p[tag=ability,level=4..,nbt={SelectedItem:{tag:{Name:"Dreadlord Sword"}}}] run function skyblock:abilities/instant/dreadlord

execute as @p[tag=ability,level=8..,nbt={SelectedItem:{tag:{Name:"Edible Mace"}}}] run function skyblock:abilities/instant/me_smash_head


execute as @p[tag=ability,level=5..,nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] run function skyblock:abilities/shoot_projectile
execute if entity @p[tag=ability,level=5..,nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] run function skyblock:abilities/instant/ice_bolt
xp add @p[level=5..,tag=ability,nbt={SelectedItem:{tag:{Name:"Frozen Scythe"}}}] -50 points

tag @p[level=10..,tag=ability,nbt={SelectedItem:{tag:{Name:"Ember Rod"}}}] add fire_blast
execute as @p[tag=fire_blast] run schedule function skyblock:abilities/shoot_projectile 1t append
execute as @p[tag=fire_blast] run schedule function skyblock:abilities/shoot_projectile 5t append
execute as @p[tag=fire_blast] run schedule function skyblock:abilities/shoot_projectile 9t append
execute as @p[tag=fire_blast] run schedule function skyblock:abilities/instant/fire_blast_end 10t append
effect give @p[tag=fire_blast] hunger 30
xp add @p[tag=fire_blast] -150 points

execute as @p[tag=ability,level=6..,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] run function skyblock:abilities/shoot_projectile
execute if entity @p[tag=ability,level=6..,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] run function skyblock:abilities/instant/ink_bomb
effect give @p[level=6..,tag=ability,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] hunger 30
xp add @p[level=6..,tag=ability,nbt={SelectedItem:{tag:{Name:"Ink Wand"}}}] -60 points

execute as @p[tag=ability,level=8..,nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] run function skyblock:abilities/shoot_projectile
execute if entity @p[tag=ability,level=8..,nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] run function skyblock:abilities/instant/showtime
xp add @p[level=8..,tag=ability,nbt={SelectedItem:{tag:{Name:"Bonzo's Staff"}}}] -100 points

execute as @p[tag=ability,level=14..,nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] run function skyblock:abilities/shoot_projectile
execute if entity @p[tag=ability,level=14..,nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] run function skyblock:abilities/instant/guided_bat
xp add @p[level=14..,tag=ability,nbt={SelectedItem:{tag:{Name:"Spirit Sceptre"}}}] -250 points

#WANDS
execute as @p[level=6..,tag=ability,nbt={SelectedItem:{tag:{Name:"Celeste Wand"}}}] run function skyblock:abilities/instant/lightning_strike
execute as @p[level=9..,tag=ability,nbt={SelectedItem:{tag:{Name:"Starlight Wand"}}}] run function skyblock:abilities/instant/starfall
execute as @p[level=12..,tag=ability,nbt={SelectedItem:{tag:{Name:"Voodoo Doll"}}}] run function skyblock:abilities/instant/acupuncture

execute as @p[level=6..,tag=ability,nbt={SelectedItem:{tag:{Name:"Wand of Healing"}}}] run function skyblock:abilities/instant/small_heal
execute as @p[level=8..,tag=ability,nbt={SelectedItem:{tag:{Name:"Wand of Mending"}}}] run function skyblock:abilities/instant/medium_heal
execute as @p[level=12..,tag=ability,nbt={SelectedItem:{tag:{Name:"Wand of Restoration"}}}] run function skyblock:abilities/instant/big_heal
execute as @p[level=13..,tag=ability,nbt={SelectedItem:{tag:{Name:"Wand of Atonement"}}}] run function skyblock:abilities/instant/huge_heal


execute as @p[tag=ability,nbt={SelectedItem:{tag:{Name:"Grappling Hook"}}}] run function skyblock:abilities/instant/grappling_hook


effect give @p[tag=ability] hunger 1
advancement revoke @p[tag=ability] only skyblock:commands/use_ability
tag @p[tag=ability] remove ability 