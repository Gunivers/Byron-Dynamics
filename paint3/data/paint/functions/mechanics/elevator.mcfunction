#First Spawning
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~0.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e1"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~1.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e2"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~1.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e3"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~0.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e4"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~-0.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e5"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~-0.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e6"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~-0.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e7"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~0.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e8"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s align xz positioned ~1.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:100b,Tags:["elevatorshulker","elevator","e9"]}
#execute as @e[type=shulker,tag=elevatorshulker,x=-10,y=-1,z=-10,dx=20,dy=1,dz=20] run kill @s

########################################################
#Teleport the Main Armor_stands up
execute as @e[type=armor_stand,tag=elevatorplayer] at @s if score elevator modeldata matches 0 if entity @e[type=shulker,tag=elevatorshulker,distance=..2] run tp ~ ~1 ~
execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s if score elevator modeldata matches 0 if entity @e[type=shulker,tag=elevatorshulker,distance=..2] run tp ~ ~1 ~
execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s if score elevator modeldata matches 0 if entity @e[type=shulker,tag=elevatorshulker,distance=..2] run tag @s add spawnelevator


########################################################
#Spawning Mechanism
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~0.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e1"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~1.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e2"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~1.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e3"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~0.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e4"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~-0.5 ~-1 ~1.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e5"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~-0.5 ~-1 ~0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e6"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~-0.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e7"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~0.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e8"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=elevatormain] at @s align xz positioned ~1.5 ~-1 ~-0.5 run summon minecraft:shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:999f,AttachFace:0b,Color:1b,Peek:0b,Tags:["elevatorshulker","elevator","e9"]}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] at @s positioned ~ ~1 ~ run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["elevatorplayer","elevator"],DisabledSlots:4144959}
execute as @e[type=armor_stand,tag=spawnelevator,tag=!elevatormain] run tag @s add elevatormain
execute as @e[type=armor_stand,tag=spawnelevator] run tag @s remove spawnelevator


########################################################
#Drop-through Test
execute as @e[tag=elevatormain,tag=up] at @s if entity @p[distance=..1,tag=!elevatordriving] run tag @p[distance=..1,tag=!elevatordriving] add elevatordriving
execute as @e[tag=elevatormain,tag=!up,tag=!down] at @s if entity @p[distance=..3,tag=elevatordriving] run tag @p[distance=..3,tag=elevatordriving] remove elevatordriving
#Giving the tags to the missing pair.
execute as @a[tag=elevatordriving] at @s unless entity @e[type=armor_stand,tag=elevatorplayer,sort=nearest,distance=..5] run tag @s add elevatorteleport
execute as @e[type=armor_stand,tag=elevatorplayer] at @s unless entity @p[tag=elevatordriving,distance=..5] run tag @s add elevatorteleport
#Teleport player to armor_stand
execute as @a[tag=elevatordriving,tag=elevatorteleport] at @s run tp @e[type=armor_stand,tag=elevatorplayer,tag=elevatorteleport,sort=nearest,limit=1]
execute as @e[tag=elevatorteleport] run tag @s remove elevatorteleport

#Player Position (Stores your Rotation before you droppped through.)
execute as @e[tag=elevatormain,tag=up] at @s if entity @p[distance=..2,tag=elevatordriving] as @p[distance=..1,tag=elevatordriving] at @s run tp @e[type=armor_stand,tag=elevatorplayer,sort=nearest,distance=..2] @s
execute as @e[tag=elevatormain,tag=up] at @s if entity @p[distance=..1,tag=elevatordriving] as @e[type=armor_stand,tag=elevatorplayer,sort=nearest,distance=..2] at @s run tp ~ ~1.5 ~


########################################################

execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s if score elevator modeldata matches 0 positioned ~ ~-1 ~ as @e[type=shulker,tag=elevatorshulker,distance=..2,nbt={Peek:100b}] at @s run tp 0 -1 0

execute as @e[type=shulker,tag=elevatorshulker] at @s unless entity @e[type=armor_stand,tag=elevatormain,distance=..3] run kill @s
execute as @e[type=armor_stand,tag=elevatormain,tag=spawnelevator] at @s unless entity @e[type=shulker,tag=elevatorshulker,distance=..4] run kill @s

execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s if score elevator modeldata matches 0 as @e[type=shulker,tag=elevatorshulker,distance=..2,nbt={Peek:0b}] at @s run data merge entity @s {Peek:100b}
execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s if score elevator modeldata matches 0 as @a[distance=..3] at @s run tp ~ ~0.2 ~


execute if score elevator modeldata matches ..0 run scoreboard players set elevator modeldata 17
scoreboard players remove elevator modeldata 1


#execute as @e[type=armor_stand,tag=elevatormain,tag=elevatorteleport] at @s as @e[type=armor_stand,tag=elevatorshulker,distance=..2] at @s run tp ~ ~0.2 ~
















#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:90b}] at @s run data merge entity @s {Peek:100b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:80b}] at @s run data merge entity @s {Peek:90b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:70b}] at @s run data merge entity @s {Peek:80b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:60b}] at @s run data merge entity @s {Peek:70b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:50b}] at @s run data merge entity @s {Peek:60b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:40b}] at @s run data merge entity @s {Peek:50b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:30b}] at @s run data merge entity @s {Peek:40b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:20b}] at @s run data merge entity @s {Peek:30b}
#execute as @e[type=armor_stand,tag=up,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:10b}] at @s run data merge entity @s {Peek:20b}

#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s if entity @e[type=shulker,distance=..2,nbt={Peek:0b}] run tp ~ ~-1 ~
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s if entity @e[type=shulker,distance=..2,nbt={Peek:0b}] run tag @s add spawnelevator
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s positioned ~ ~1 ~ as @e[type=shulker,distance=..2,nbt={Peek:0b}] at @s run tp ~ ~-230 ~
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:10b}] at @s run data merge entity @s {Peek:0b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:20b}] at @s run data merge entity @s {Peek:10b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:30b}] at @s run data merge entity @s {Peek:20b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:40b}] at @s run data merge entity @s {Peek:30b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:50b}] at @s run data merge entity @s {Peek:40b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:60b}] at @s run data merge entity @s {Peek:50b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:70b}] at @s run data merge entity @s {Peek:60b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:80b}] at @s run data merge entity @s {Peek:70b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:90b}] at @s run data merge entity @s {Peek:80b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:100b}] at @s run data merge entity @s {Peek:90b}
#execute as @e[type=armor_stand,tag=down,tag=elevatormain] at @s as @e[type=shulker,distance=..2,nbt={Peek:0b}] at @s run data merge entity @s {Peek:100b}
