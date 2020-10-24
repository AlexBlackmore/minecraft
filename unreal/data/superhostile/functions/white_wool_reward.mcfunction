execute as @a[nbt={SelectedItem:{id:"minecraft:white_wool"}}] run function superhostile:white_wool_reward

setblock ~ ~-1 ~ white_wool
data merge block ~ ~ ~ {Text1:'{"text":""}',Text2:'{"text":"White Wool","color":"green"}'}
summon firework_rocket ~ ~1 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;3887386,2437522],FadeColors:[I;4312372]}],Flight:1}}}}
replaceitem entity @p weapon.mainhand air
