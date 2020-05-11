execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~ ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~ ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^1 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^2 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^3 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}
execute as @a[scores={valve=1..}] at @s anchored eyes positioned ^ ^ ^4 if block ~ ~-1 ~ note_block align xyz unless entity @e[tag=valve,distance=..9,tag=!setup] run summon armor_stand ~0.5 ~-1 ~0.5 {Tags:["valve"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b}

execute as @e[tag=valve,tag=!setup] at @s run tag @p[tag=!cube,scores={valve=1..}] add valve_travel
execute as @e[tag=valve,tag=!setup] at @s run tag @p[tag=!cube,gamemode=creative,scores={valve=1..},tag=valve_travel] add was_creative
execute as @e[tag=valve,tag=!setup] at @s run playsound minecraft:tube_travel master @p[tag=valve_travel,scores={valve=1..}] ~ ~ ~ 10 1
execute as @e[tag=valve,tag=!setup] at @s run playsound minecraft:tube_enter master @p[tag=valve_travel,scores={valve=1..}] ~ ~ ~ 1 1

execute as @e[tag=valve,tag=!setup] at @s run gamemode spectator @p[tag=!cube,scores={valve=1..},tag=valve_travel]

#player puts cube in valve
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeA,scores={valve=1..},distance=..7] run tag @s add valve_cubeA
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeB,scores={valve=1..},distance=..7] run tag @s add valve_cubeB
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeC,scores={valve=1..},distance=..7] run tag @s add valve_cubeC
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeD,scores={valve=1..},distance=..7] run tag @s add valve_cubeD
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeE,scores={valve=1..},distance=..7] run tag @s add valve_cubeE
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeF,scores={valve=1..},distance=..7] run tag @s add valve_cubeF
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cube,scores={valve=1..},distance=..7] run tag @s add valve_cube

execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeA,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeA
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeB,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeB
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeC,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeC
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeD,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeD
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeE,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeE
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cubeF,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cubeF
execute as @e[tag=valve,tag=!setup] at @s if entity @p[tag=cube,scores={valve=1..},distance=..7] run tag @p[distance=..7,scores={valve=1..},tag=cube] remove cube
execute as @e[tag=valve,tag=!setup,tag=valve_cube] at @s run playsound minecraft:tube_enter master @a ~ ~ ~ 1 1

replaceitem entity @e[tag=valve_cube,type=armor_stand,tag=!setup] armor.head minecraft:golden_axe

#summon cube
execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s unless block ~ ~ ~ #paint:tubes unless entity @e[tag=valve,tag=cubespawn_valve,distance=..2] align xyz run summon armor_stand ^ ^ ^ {Tags:["cubespawn_valve"]}

execute as @e[tag=cubespawn_valve] at @s unless block ~ ~ ~ #paint:nonsolid run tp @s ~ ~1 ~

execute as @e[tag=cubespawn_valve] at @s align xyz if block ~ ~ ~ #paint:nonsolid run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup"],NoGravity:1b,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoAI:1b,Invulnerable:0b,NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @e[type=armor_stand,tag=valve,tag=valve_cubeA] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeA
execute as @e[type=armor_stand,tag=valve,tag=valve_cubeB] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeB
execute as @e[type=armor_stand,tag=valve,tag=valve_cubeC] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeC
execute as @e[type=armor_stand,tag=valve,tag=valve_cubeD] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeD
execute as @e[type=armor_stand,tag=valve,tag=valve_cubeE] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeE
execute as @e[type=armor_stand,tag=valve,tag=valve_cubeF] at @s if block ~ ~ ~ #paint:nonsolid run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeF

kill @e[tag=cubespawn_valve]
execute as @e[type=armor_stand,tag=valve] at @s unless block ~ ~ ~ #paint:tubes run kill @s

#cube gets sucked in void valve
execute as @e[type=shulker,tag=cube] at @s if block ~1 ~ ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~1.5 ~.5 ~.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}
execute as @e[type=shulker,tag=cube] at @s if block ~-1 ~ ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~-.5 ~.5 ~.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~1 polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~.5 ~1.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~-1 polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~.5 ~-.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~1 ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~1.5 ~.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}
execute as @e[type=shulker,tag=cube] at @s if block ~ ~-1 ~ polished_andesite unless entity @e[tag=valve_cube,distance=..2.5] align xyz run summon armor_stand ~.5 ~-.5 ~.5 {Tags:["valve","valve_cube"],NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_axe",Count:1}]}


execute as @e[type=shulker,tag=cube,tag=!cube_into_valve] at @s unless entity @e[tag=valve_into_cube,distance=..2.5] if entity @e[type=armor_stand,tag=valve_cube,tag=!setup,distance=..2.5] run tag @s add cube_into_valve

execute as @e[type=shulker,tag=cube_into_valve,tag=cubeA] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeA
execute as @e[type=shulker,tag=cube_into_valve,tag=cubeB] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeB
execute as @e[type=shulker,tag=cube_into_valve,tag=cubeC] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeC
execute as @e[type=shulker,tag=cube_into_valve,tag=cubeD] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeD
execute as @e[type=shulker,tag=cube_into_valve,tag=cubeE] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeE
execute as @e[type=shulker,tag=cube_into_valve,tag=cubeF] at @s run tag @e[tag=valve_cube,limit=1,sort=nearest] add valve_cubeF

kill @e[type=shulker,tag=cube_into_valve]

#setup
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~1 ~ #paint:tubes run tp @s ~ ~ ~ ~ -90
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~-1 ~ #paint:tubes run tp @s ~ ~ ~ ~ 90
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~1 ~ ~ #paint:tubes run tp @s ~ ~ ~ -90 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~-1 ~ ~ #paint:tubes run tp @s ~ ~ ~ 90 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~ ~1 #paint:tubes run tp @s ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=valve,tag=!setup] at @s if block ~ ~ ~-1 #paint:tubes run tp @s ~ ~ ~ 180 0

execute as @e[type=armor_stand,tag=valve,tag=valve_cube,tag=!setup] at @s run playsound minecraft:tube_enter master @a ~ ~ ~ 0.5 2
tag @e[type=armor_stand,tag=valve,tag=!setup] add setup

execute as @e[type=armor_stand,tag=valve] at @s run particle minecraft:dust 0.8 0 1 0.5 ~ ~0.5 ~ 0.3 0.3 0.3 0 30 force

execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s if block ~ ~ ~ #paint:valvecorner run playsound minecraft:tube_exit master @a ~ ~ ~ 0.5 2
execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner align xyz run tp @s ~0.5 ~ ~0.5

#neck break
execute as @e[type=armor_stand,tag=valve,x_rotation=90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^-1 ^ #paint:tubes run tp @s ~ ~ ~ ~90 ~-90
execute as @e[type=armor_stand,tag=valve,x_rotation=-90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^1 ^ #paint:tubes run tp @s ~ ~ ~ ~90 ~90

execute as @e[type=armor_stand,tag=valve,x_rotation=0..90] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^1 ^ #paint:tubes run tp @s ~ ~ ~ ~ ~-90
execute as @e[type=armor_stand,tag=valve,x_rotation=-90..0] at @s if block ~ ~ ~ #paint:valvecorner if block ^ ^-1 ^ #paint:tubes run tp @s ~ ~ ~ ~ ~90


execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner if block ^1 ^ ^ #paint:tubes run tp @s ~ ~ ~ ~-90 0
execute as @e[type=armor_stand,tag=valve] at @s if block ~ ~ ~ #paint:valvecorner if block ^-1 ^ ^ #paint:tubes run tp @s ~ ~ ~ ~90 0



execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s if block ~ ~ ~ #paint:valvecorner run tp @s ^ ^ ^1
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:valvecorner run tp @s ^ ^ ^0.5

execute as @e[type=armor_stand,tag=valve,tag=valve_cube] at @s run tp @s ^ ^ ^1


execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s run tp @p[gamemode=spectator,tag=valve_travel] @s
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s run tp @p[gamemode=spectator,tag=valve_travel] ~ ~-1 ~
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run tp @p[gamemode=spectator,tag=valve_travel] ^ ^ ^
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run gamemode adventure @p[gamemode=spectator,tag=valve_travel,tag=!was_creative]
execute as @e[type=armor_stand,tag=valve,tag=!valve_cube] at @s unless block ~ ~ ~ #paint:tubes run gamemode creative @p[gamemode=spectator,tag=valve_travel,tag=was_creative]
stopsound @a[tag=!valve_travel] master minecraft:tube_travel
execute as @e[type=armor_stand,tag=valve] at @s unless block ~ ~ ~ #paint:tubes run playsound minecraft:tube_exit master @a[tag=valve_travel] ~ ~ ~ 1 1 1



tag @a[gamemode=!spectator] remove valve_travel
tag @a[gamemode=!spectator] remove was_creative

scoreboard players reset @a[scores={valve=1..}] valve
