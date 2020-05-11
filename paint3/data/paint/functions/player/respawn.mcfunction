#player
execute as @a at @s if block ~ ~ ~ blue_carpet run scoreboard players set @s IPUUID 1
execute as @a at @s if block ~ ~ ~ green_carpet run scoreboard players set @s IPUUID 2
execute as @a at @s if block ~ ~ ~ red_carpet run scoreboard players set @s IPUUID 3
execute as @a at @s if block ~ ~ ~ yellow_carpet run scoreboard players set @s IPUUID 4
execute as @a at @s if block ~ ~ ~ light_blue_carpet run scoreboard players set @s IPUUID 1
execute as @a at @s if block ~ ~ ~ lime_carpet run scoreboard players set @s IPUUID 2
execute as @a at @s if block ~ ~ ~ pink_carpet run scoreboard players set @s IPUUID 3
execute as @a at @s if block ~ ~ ~ white_carpet run scoreboard players set @s IPUUID 4

execute as @a at @s if block ~ ~ ~ blue_carpet run team join P1
execute as @a at @s if block ~ ~ ~ green_carpet run team join P2
execute as @a at @s if block ~ ~ ~ red_carpet run team join P3
execute as @a at @s if block ~ ~ ~ yellow_carpet run team join P4
execute as @a at @s if block ~ ~ ~ light_blue_carpet run team join P1
execute as @a at @s if block ~ ~ ~ lime_carpet run team join P2
execute as @a at @s if block ~ ~ ~ pink_carpet run team join P3
execute as @a at @s if block ~ ~ ~ white_carpet run team join P4

#reset
tag @a[scores={respawn=1..},tag=mode1] remove mode1
tag @a[scores={respawn=1..},tag=mode2] remove mode2
tag @a[scores={respawn=1..},tag=mode3] remove mode3
tag @a[scores={respawn=1..},tag=mode4] remove mode4
tag @a[scores={respawn=1..},tag=mode5] remove mode5
#player1
execute as @a[team=P1] at @s unless entity @e[type=armor_stand,tag=p1,tag=respawn] run kill @e[type=armor_stand,tag=p1,tag=respawn]
execute as @a[team=P1] at @s unless entity @e[type=armor_stand,tag=p1,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,PersistanceRequired:1b,Tags:["respawn","p1"]}

execute as @a[scores={respawn=1..},team=P1] at @s run scoreboard players operation @s mode = @e[type=armor_stand,tag=respawn,tag=p1] mode
execute as @a[scores={respawn=1..},team=P1] at @s if entity @e[type=armor_stand,tag=respawn,tag=p1,tag=mode1] at @s run tag @s add mode1
execute as @a[scores={respawn=1..},team=P1] at @s if entity @e[type=armor_stand,tag=respawn,tag=p1,tag=mode2] at @s run tag @s add mode2
execute as @a[scores={respawn=1..},team=P1] at @s if entity @e[type=armor_stand,tag=respawn,tag=p1,tag=mode3] at @s run tag @s add mode3
execute as @a[scores={respawn=1..},team=P1] at @s if entity @e[type=armor_stand,tag=respawn,tag=p1,tag=mode4] at @s run tag @s add mode4

execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate align xyz positioned ~0.5 ~ ~0.5 run tp @e[type=armor_stand,tag=respawn,tag=p1] ~ ~ ~
execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p1,limit=1] {Tags:["p1","respawn"]}
execute as @a[team=P1,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode1
execute as @a[team=P1,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode2
execute as @a[team=P1,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode3
execute as @a[team=P1,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p1] add mode4
execute as @a[team=P1] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p1] mode = @s mode


#player2
execute as @a[team=P2] at @s unless entity @e[type=armor_stand,tag=p2,tag=respawn] run kill @e[type=armor_stand,tag=p2,tag=respawn]
execute as @a[team=P2] at @s unless entity @e[type=armor_stand,tag=p2,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,PersistanceRequired:1b,Tags:["respawn","p2"]}

execute as @a[scores={respawn=1..},team=P2] at @s run scoreboard players operation @s mode = @e[type=armor_stand,tag=respawn,tag=p2] mode
execute as @a[scores={respawn=1..},team=P2] at @s if entity @e[type=armor_stand,tag=respawn,tag=p2,tag=mode1] at @s run tag @s add mode1
execute as @a[scores={respawn=1..},team=P2] at @s if entity @e[type=armor_stand,tag=respawn,tag=p2,tag=mode2] at @s run tag @s add mode2
execute as @a[scores={respawn=1..},team=P2] at @s if entity @e[type=armor_stand,tag=respawn,tag=p2,tag=mode3] at @s run tag @s add mode3
execute as @a[scores={respawn=1..},team=P2] at @s if entity @e[type=armor_stand,tag=respawn,tag=p2,tag=mode4] at @s run tag @s add mode4

execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate align xyz positioned ~0.5 ~ ~0.5 run tp @e[type=armor_stand,tag=respawn,tag=p2] ~ ~ ~
execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p2,limit=1] {Tags:["p2","respawn"]}
execute as @a[team=P2,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode1
execute as @a[team=P2,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode2
execute as @a[team=P2,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode3
execute as @a[team=P2,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p2] add mode4
execute as @a[team=P2] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p2] mode = @s mode


#player3
execute as @a[team=P3] at @s unless entity @e[type=armor_stand,tag=p3,tag=respawn] run kill @e[type=armor_stand,tag=p3,tag=respawn]
execute as @a[team=P3] at @s unless entity @e[type=armor_stand,tag=p3,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,PersistanceRequired:1b,Tags:["respawn","p3"]}

execute as @a[scores={respawn=1..},team=P3] at @s run scoreboard players operation @s mode = @e[type=armor_stand,tag=respawn,tag=p3] mode
execute as @a[scores={respawn=1..},team=P3] at @s if entity @e[type=armor_stand,tag=respawn,tag=p3,tag=mode1] at @s run tag @s add mode1
execute as @a[scores={respawn=1..},team=P3] at @s if entity @e[type=armor_stand,tag=respawn,tag=p3,tag=mode2] at @s run tag @s add mode2
execute as @a[scores={respawn=1..},team=P3] at @s if entity @e[type=armor_stand,tag=respawn,tag=p3,tag=mode3] at @s run tag @s add mode3
execute as @a[scores={respawn=1..},team=P3] at @s if entity @e[type=armor_stand,tag=respawn,tag=p3,tag=mode4] at @s run tag @s add mode4

execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate align xyz positioned ~0.5 ~ ~0.5 run tp @e[type=armor_stand,tag=respawn,tag=p3] ~ ~ ~
execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p3,limit=1] {Tags:["p3","respawn"]}
execute as @a[team=P3,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode1
execute as @a[team=P3,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode2
execute as @a[team=P3,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode3
execute as @a[team=P3,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p3] add mode4
execute as @a[team=P3] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p3] mode = @s mode


#player4
execute as @a[team=P4] at @s unless entity @e[type=armor_stand,tag=p4,tag=respawn] run kill @e[type=armor_stand,tag=p4,tag=respawn]
execute as @a[team=P4] at @s unless entity @e[type=armor_stand,tag=p4,tag=respawn] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,PersistanceRequired:1b,Tags:["respawn","p4"]}

execute as @a[scores={respawn=1..},team=P4] at @s run scoreboard players operation @s mode = @e[type=armor_stand,tag=respawn,tag=p4] mode
execute as @a[scores={respawn=1..},team=P4] at @s if entity @e[type=armor_stand,tag=respawn,tag=p4,tag=mode1] at @s run tag @s add mode1
execute as @a[scores={respawn=1..},team=P4] at @s if entity @e[type=armor_stand,tag=respawn,tag=p4,tag=mode2] at @s run tag @s add mode2
execute as @a[scores={respawn=1..},team=P4] at @s if entity @e[type=armor_stand,tag=respawn,tag=p4,tag=mode3] at @s run tag @s add mode3
execute as @a[scores={respawn=1..},team=P4] at @s if entity @e[type=armor_stand,tag=respawn,tag=p4,tag=mode4] at @s run tag @s add mode4

execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate align xyz positioned ~0.5 ~ ~0.5 run tp @e[type=armor_stand,tag=respawn,tag=p4] ~ ~ ~
execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate run data merge entity @e[tag=respawn,tag=p4,limit=1] {Tags:["p4","respawn"]}
execute as @a[team=P4,tag=mode1] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode1
execute as @a[team=P4,tag=mode2] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode2
execute as @a[team=P4,tag=mode3] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode3
execute as @a[team=P4,tag=mode4] at @s if block ~ ~ ~ dark_oak_pressure_plate run tag @e[type=armor_stand,tag=respawn,tag=p4] add mode4
execute as @a[team=P4] at @s if block ~ ~ ~ dark_oak_pressure_plate run scoreboard players operation @e[type=armor_stand,tag=respawn,tag=p4] mode = @s mode

#Respawn Mechanism
scoreboard players set @a[scores={respawn=1..}] respawn 0

#Respawn Blocks (Red Solid & Red Paintable)
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~-1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1.2 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~-0.5 ~ ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~0.5 ~ ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~ ~-0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~0.5 ~1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~-0.5 ~1 ~ #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1 ~-0.5 #paint:respawn run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure] at @s if block ~ ~1 ~0.5 #paint:respawn run scoreboard players set @s respawn 1

#Respawn Spikes
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run playsound respawn.spike master @a ~ ~ ~ 1 1 1
execute as @a[gamemode=adventure,nbt={OnGround:1b}] at @s if block ~ ~ ~ dead_bubble_coral run scoreboard players set @s respawn 4

#Water
execute as @a[gamemode=adventure,scores={currentlevel=8..}] at @s if block ~ ~ ~ water run scoreboard players set @s respawn 1
execute as @a[gamemode=adventure,scores={currentlevel=8..},x=28,y=49,z=-11,dx=22,dy=1,dz=30] at @s run scoreboard players set @s respawn 1

#Respawn Purple (Shoot with Purple a Red Block)
scoreboard players set @a[tag=purple_respawn] respawn 1
tag @a[tag=purple_respawn] remove purple_respawn

tp @a[scores={respawn=1..},team=P1] @e[type=armor_stand,tag=respawn,tag=p1,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P2] @e[type=armor_stand,tag=respawn,tag=p2,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P3] @e[type=armor_stand,tag=respawn,tag=p3,limit=1,sort=nearest]
tp @a[scores={respawn=1..},team=P4] @e[type=armor_stand,tag=respawn,tag=p4,limit=1,sort=nearest]

execute as @a[scores={respawn=1..}] at @s run playsound respawn master @a ~ ~ ~ 1 1
