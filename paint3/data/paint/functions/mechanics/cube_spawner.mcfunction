execute as @e[tag=cubeA,type=shulker] at @s unless entity @e[tag=spawnerA,distance=..2] if block ~ ~ ~ oak_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeA,type=shulker] at @s unless entity @e[tag=spawnerA,distance=..2] if block ~ ~ ~ oak_button run function paint:box/cube/a
execute as @e[tag=cubeB,type=shulker] at @s unless entity @e[tag=spawnerB,distance=..2] if block ~ ~ ~ spruce_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeB,type=shulker] at @s unless entity @e[tag=spawnerB,distance=..2] if block ~ ~ ~ spruce_button run function paint:box/cube/b
execute as @e[tag=cubeC,type=shulker] at @s unless entity @e[tag=spawnerC,distance=..2] if block ~ ~ ~ birch_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeC,type=shulker] at @s unless entity @e[tag=spawnerC,distance=..2] if block ~ ~ ~ birch_button run function paint:box/cube/c
execute as @e[tag=cubeD,type=shulker] at @s unless entity @e[tag=spawnerD,distance=..2] if block ~ ~ ~ jungle_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeD,type=shulker] at @s unless entity @e[tag=spawnerD,distance=..2] if block ~ ~ ~ jungle_button run function paint:box/cube/d
execute as @e[tag=cubeE,type=shulker] at @s unless entity @e[tag=spawnerE,distance=..2] if block ~ ~ ~ acacia_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeE,type=shulker] at @s unless entity @e[tag=spawnerE,distance=..2] if block ~ ~ ~ acacia_button run function paint:box/cube/e
execute as @e[tag=cubeF,type=shulker] at @s unless entity @e[tag=spawnerF,distance=..2] if block ~ ~ ~ dark_oak_button run playsound minecraft:cube.happy master @a
execute as @e[tag=cubeF,type=shulker] at @s unless entity @e[tag=spawnerF,distance=..2] if block ~ ~ ~ dark_oak_button run function paint:box/cube/f


execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerA] at @s unless entity @e[tag=valve_cubeA] unless entity @e[tag=cubeA] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeA"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerB] at @s unless entity @e[tag=valve_cubeB] unless entity @e[tag=cubeB] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeB"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerC] at @s unless entity @e[tag=valve_cubeC] unless entity @e[tag=cubeC] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeC"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerD] at @s unless entity @e[tag=valve_cubeD] unless entity @e[tag=cubeD] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeD"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerE] at @s unless entity @e[tag=valve_cubeE] unless entity @e[tag=cubeE] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeE"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @r at @s as @e[sort=nearest,limit=1,type=armor_stand,tag=spawnerF] at @s unless entity @e[tag=valve_cubeF] unless entity @e[tag=cubeF] align xyz run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","cubeF"],NoGravity:1b,Invulnerable:0,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

#manual respawn
execute as @e[tag=spawnerA,tag=!cuberespawned] at @s if block ~ ~ ~ oak_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeA,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeA]
execute as @e[tag=spawnerB,tag=!cuberespawned] at @s if block ~ ~ ~ spruce_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeB,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeB]
execute as @e[tag=spawnerC,tag=!cuberespawned] at @s if block ~ ~ ~ birch_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeC,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeC]
execute as @e[tag=spawnerD,tag=!cuberespawned] at @s if block ~ ~ ~ jungle_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeD,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeD]
execute as @e[tag=spawnerE,tag=!cuberespawned] at @s if block ~ ~ ~ acacia_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeE,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeE]
execute as @e[tag=spawnerF,tag=!cuberespawned] at @s if block ~ ~ ~ dark_oak_button[powered=true] unless entity @e[type=!player,tag=cube,tag=cubeF,distance=..2] run kill @e[type=!player,tag=cube,tag=cubeF]

execute as @e[tag=cube_spawner,tag=!cuberespawned] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] run playsound minecraft:cube.meh master @a
execute as @e[tag=cube_spawner,tag=!cuberespawned] at @s if block ~ ~ ~ #minecraft:buttons[powered=true] run tag @s add cuberespawned

execute as @e[tag=cube_spawner,tag=cuberespawned] at @s unless block ~ ~ ~ #minecraft:buttons[powered=true] run tag @s remove cuberespawned

#correct colors
execute as @e[tag=cube_spawner,tag=spawnerA] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 0.7 1 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerB] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 1 0.2 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerC] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.8 0 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerD] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 1 0 0.5 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerE] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0.8 0 1 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3
execute as @e[tag=cube_spawner,tag=spawnerF] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 0 0 0.5 ~ ~ ~ 0.25 0.25 0.25 1 3

#correct colors
execute as @e[type=shulker,tag=cube,tag=cubeA] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 0.7 1 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
execute as @e[type=shulker,tag=cube,tag=cubeB] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 1 0.2 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
execute as @e[type=shulker,tag=cube,tag=cubeC] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 1 0.8 0 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
execute as @e[type=shulker,tag=cube,tag=cubeD] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 1 0 0.5 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
execute as @e[type=shulker,tag=cube,tag=cubeE] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0.8 0 1 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
execute as @e[type=shulker,tag=cube,tag=cubeF] at @s positioned ~ ~0.5 ~ run particle minecraft:dust 0 0 0 0.5 ~ ~ ~ 0.35 0.35 0.35 1 3
