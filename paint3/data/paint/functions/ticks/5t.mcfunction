execute as @a[tag=spawnpath] at @e[tag=helperbot] run playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 0.1 1
execute as @a[tag=spawnpath] at @e[tag=helperbot] run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 1.5 1.6
execute as @a[tag=spawnpath] at @e[tag=helperstill] run playsound minecraft:block.conduit.ambient.short ambient @a ~ ~ ~ 0.1 1
execute as @a[tag=spawnpath] at @e[tag=helperstill] run playsound minecraft:block.conduit.ambient ambient @a ~ ~ ~ 1.5 1.6


schedule function paint:ticks/5t 5t
