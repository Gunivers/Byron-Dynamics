# Byron Dynamics Black Facility Story #1

execute if entity @a[tag=black_story_event_01] run scoreboard players add event eventtimer 1

##### Tank #####
#Reset
execute if score event eventtimer matches 1 run stopsound @a
execute if score event eventtimer matches 1 as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14,limit=1] at @s positioned 8 38 -142 run playsound minecraft:boot ambient @a[distance=..20] ~ ~ ~ 0.1 1 0.1
execute if score event eventtimer matches 1 run fill 7 51 -144 7 53 -144 minecraft:air
execute if score event eventtimer matches 1 run fill 8 51 -143 8 53 -143 minecraft:lime_stained_glass_pane[west=true,east=true]
execute if score event eventtimer matches 1 run setblock 8 54 -142 nether_brick_slab[waterlogged=true,type=top]
execute if score event eventtimer matches 1 run setblock 8 53 -142 water
execute if score event eventtimer matches 1 positioned 0 46 -157 align xyz run setblock ~ ~ ~ nether_bricks
execute if score event eventtimer matches 1 positioned 8 52 -143 align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["TankAnimation"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b}
execute if score event eventtimer matches 1 positioned 8 51 -143 align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["TankAnimation"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b}
execute if score event eventtimer matches 1 positioned 8 53 -143 align xyz run summon minecraft:shulker ~ ~ ~ {Tags:["TankAnimation"],NoAI:1b,NoGravity:1b,Color:0,Silent:1b,Invulnerable:0b}
#execute if score event eventtimer matches 510 run function paint:music/focus

execute if score event eventtimer matches 160 positioned 8 54 -142 align xyz run playsound minecraft:black_story01 ambient @a[distance=..20] ~ ~ ~ 1000 1 1

#Clear Chamber
execute if score event eventtimer matches 240 run setblock 8 53 -142 air
execute if score event eventtimer matches 240 run setblock 8 54 -142 nether_brick_slab[waterlogged=false,type=top]
execute if score event eventtimer matches 240 run playsound minecraft:item.bucket.empty ambient @a[distance=..20] ~ ~ ~ 1000 1

#Open Chamb40
execute if score event eventtimer matches 400 run kill @e[type=shulker,tag=TankAnimation]
execute if score event eventtimer matches 420 run fill 7 51 -144 7 53 -144 minecraft:lime_stained_glass_pane[south=true]
execute if score event eventtimer matches 420 run fill 8 51 -143 8 53 -143 minecraft:air destroy
execute if score event eventtimer matches 420 run playsound minecraft:ui.toast.in master @a ~ ~ ~ 1000 1

#Unlock Door
execute if score event eventtimer matches 680 positioned 0 46 -157 align xyz run setblock ~ ~ ~ redstone_block

#Reset
execute if score event eventtimer matches 681.. run tag @a remove black_story_event_01
execute if score event eventtimer matches 681.. run scoreboard players set event eventtimer 0

#Untertitel
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 160..260 run title @s actionbar {"text":"Welcome Testsubject 7,231!","color":"gray","italic":"true"}
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 261..340 run title @s actionbar {"text":"You are in the Byron Dynamics Relaxation-Vault.","color":"gray","italic":"true"}
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 341..420 run title @s actionbar {"text":"You spent 70 Days in our Cryo-Chamber.","color":"gray","italic":"true"}
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 421..520 run title @s actionbar {"text":"Please step out of your chamber and head to the Mental Health Test.","color":"gray","italic":"true"}
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 521..620 run title @s actionbar {"text":"If you are not able to walk anymore, please inform your Supervisor.","color":"gray","italic":"true"}
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score event eventtimer matches 621..680 run title @s actionbar {"text":"Thank you.","color":"gray","italic":"true"}
