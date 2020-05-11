execute as @r[tag=story1perm,x=-32,y=56,z=-89,dx=0,dy=1,dz=0] at @s unless entity @a[scores={currentlevel=1..}] run tag @s add start
execute as @a[tag=start,x=-32,y=56,z=-89,dx=0,dy=3,dz=0,scores={time=1..},team=done] run function paint:permissions/server/subtractmyscore
execute unless entity @e[tag=playing] run kill @e[tag=cryoPlayer]
execute as @e[tag=start] positioned -32 56 -89 run function paint:permissions/playerstatue
execute as @r[tag=start] at @s run tag @s add playing
execute as @r[tag=start] at @s run team join P1 @s
execute as @r[tag=start] at @s run tag @s add p1
execute as @r[tag=start] at @s run tp 8 51 -142
execute as @r[tag=start] at @s unless entity @a[scores={currentlevel=1..}] run function paint:level/rooms/chapter1/black_story01
execute as @r[tag=start] at @s if entity @a[scores={currentlevel=1..}] run tag @s remove start


########## Only 1 person allowed ##########
execute as @a[tag=story1perm,x=-32,y=56,z=-89,dx=6,dy=6,dz=6] at @s if entity @a[scores={currentlevel=1..}] run title @s actionbar {"text":"Only 1 person can play the story. Please wait until the person is finished!","color":"blue"}
execute as @a[tag=story1perm,x=-32,y=56,z=-89,dx=0,dy=1,dz=0] at @s if entity @a[scores={currentlevel=1..}] run tp @s -30 55 -89

#Water in Cryo Chamber
execute if entity @a[scores={currentlevel=1..}] run setblock -32 59 -89 minecraft:water
execute if entity @a[scores={currentlevel=1..}] run setblock -32 59 -89 minecraft:nether_brick_slab[waterlogged=true,type=top]
execute unless entity @a[scores={currentlevel=1..}] run setblock -32 59 -89 minecraft:nether_brick_slab[type=top]
#Door
execute if entity @a[scores={currentlevel=1..}] run fill -31 56 -89 -31 58 -89 minecraft:lime_stained_glass_pane[north=true,south=true]
execute unless entity @a[scores={currentlevel=1..}] run fill -30 58 -90 -30 56 -90 minecraft:lime_stained_glass_pane[west=true]
#Water
execute unless entity @a[scores={currentlevel=1..}] run fill -31 56 -89 -31 58 -89 air
execute if entity @a[scores={currentlevel=1..}] run fill -30 58 -90 -30 56 -90 air


########## DEMO VERSION PERMISSIONS ##########
tag @a[tag=!story1perm] add story1perm
tag @a[tag=!story2perm] add story2perm



#Lobby Systeme
execute unless entity @a[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] if entity @e[type=armor_stand,tag=lobbystand] run kill @e[type=armor_stand,tag=lobbystand]
execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbytext1] run summon minecraft:armor_stand -21 57 -89 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:0b,PersistenceRequired:1b,Tags:["lobbystand","lobbytext1"],DisabledSlots:4144959,CustomName:'{"text":"Welcome at Byron Dynamics","color":"gray","bold":true}'}
execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbytext2] run summon minecraft:armor_stand -21 56.5 -89 {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:0b,PersistenceRequired:1b,Tags:["lobbystand","lobbytext2"],DisabledSlots:4144959,CustomName:'{"text":"Map Version: Open Alpha V1.2","color":"blue","bold":true}'}

execute positioned -17 54 -89 run data merge block ~ ~ ~ {Text1:'{"text":"-=+=-","clickEvent":{"action":"run_command","value":"trigger help set 5000"},"color":"gray"}',Text2:'{"text":"Welcome at","bold":true,"color":"dark_gray"}',Text3:'{"text":"Byron Dynamics","color":"dark_gray"}',Text4:'{"selector":"@p","color":"blue"}'}

fill -12 54 -82 -12 54 -80 minecraft:dark_oak_trapdoor[half=bottom,open=false,facing=north]
fill -12 54 -98 -12 54 -96 minecraft:dark_oak_trapdoor[half=bottom,open=false,facing=north]

#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco1] positioned -14 50 -90 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen","lobbystand","lobbydeco1"],Rotation:[45F,0F]}
#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco2] positioned -14 50 -89 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen","lobbystand","lobbydeco2"],Rotation:[90F,0F]}
#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco3] positioned -14 50 -86 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen","lobbystand","lobbydeco3"],Rotation:[135F,0F]}
#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco4] positioned -14 49 -90 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"glowstone_dust",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["drawers","lobbystand","lobbydeco4"],Rotation:[90F,0F]}
#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco5] positioned -15 49 -87 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"book",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["office_chair","lobbystand","lobbydeco5"],Rotation:[-90F,0F]}
#execute if entity @r[x=-68,y=10,z=-117,dx=136,dy=88,dz=58] unless entity @e[type=armor_stand,tag=lobbystand,tag=lobbydeco6] positioned -16 49 -89 run summon armor_stand ~-1 ~ ~-1 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"book",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["office_chair","lobbystand","lobbydeco6"],Rotation:[45F,0F]}
