tag @p[tag=ability] add spirit_glide
xp add @p[tag=spirit_glide] -250 points
effect give @p[tag=spirit_glide] hunger 60
effect give @p[tag=spirit_glide] levitation 5
gamemode spectator @p[tag=spirit_glide]

tag @p[tag=spirit_glide,nbt={SelectedItem:{tag:{Name:"Spirit Sword"}}}] add spirit_sword
effect give @p[tag=spirit_sword] hunger 70
execute if entity @p[tag=spirit_sword] run function skyblock:abilities/instant/spirit_bomb

schedule function skyblock:abilities/instant/spirit_glide_end 5s replace