# Byron Dynamics Black Facility Story #1

execute if entity @a[tag=black_story_event_02] if score story_02_test activate matches 0..1 run scoreboard players add event eventtimer 1

##### circle #####

#Start & Reset
execute if score event eventtimer matches 1 run playsound black_story02_1 ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 run playsound minecraft:blip ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 positioned -12 45 -185 align xyz run setblock ~ ~ ~ nether_bricks
execute if score event eventtimer matches 1 run scoreboard players set story_02_test activate 0
execute if score event eventtimer matches 1 run scoreboard players set story_02_test_end activate 0

#Look Up Test
execute if score story_02_test activate matches 0 if score event eventtimer matches 240 run scoreboard players set story_02_test activate 2
execute if score story_02_test activate matches 2 if score event eventtimer matches 240 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6,x_rotation=-90..-80] run scoreboard players set story_02_test activate 0
execute if score story_02_test activate matches 2 if score event eventtimer matches 240 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Look up!","color":"white"}
execute if score story_02_test activate matches 2 if score event eventtimer matches 240 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6,x_rotation=80..90] run title @s actionbar {"text":"No! Opposite direction!","color":"gray"}


#Nächste VoiceLine
execute if score event eventtimer matches 250 run playsound black_story02_2 ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 249 run playsound minecraft:blip ambient @a[distance=..20] ~ ~ ~ 1000 1

#Look Down Test
execute if score story_02_test activate matches 0 if score event eventtimer matches 330 run scoreboard players set story_02_test activate 3
execute if score story_02_test activate matches 3 if score event eventtimer matches 330 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6,x_rotation=80..90] run scoreboard players set story_02_test activate 0
execute if score story_02_test activate matches 3 if score event eventtimer matches 330 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Look down!","color":"white"}
execute if score story_02_test activate matches 3 if score event eventtimer matches 330 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6,x_rotation=-90..-80] run title @s actionbar {"text":"Look down! NOT UP!!!","color":"gray"}

#Nächste VoiceLine
execute if score event eventtimer matches 340 run playsound black_story02_3 ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 339 run playsound minecraft:blip ambient @a[distance=..20] ~ ~ ~ 1000 1

execute if score event eventtimer matches 459 run scoreboard players set @a jumpdetection 0
execute if score story_02_test activate matches 0 if score event eventtimer matches 460 run scoreboard players set story_02_test activate 4
#Jump Resets, wenn man aus dem Kreis läuft
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-5,y=49,z=-182,dx=1,dy=6,dz=6] if score @s jumpdetection matches 1.. run scoreboard players set @a jumpdetection 0
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-5,y=49,z=-182,dx=10,dy=6,dz=1] if score @s jumpdetection matches 1.. run scoreboard players set @a jumpdetection 0
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=4,y=49,z=-182,dx=1,dy=6,dz=6] if score @s jumpdetection matches 1.. run scoreboard players set @a jumpdetection 0
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-3,y=49,z=-173,dx=6,dy=6,dz=1] if score @s jumpdetection matches 1.. run scoreboard players set @a jumpdetection 0
#Jump Test
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] if score @s jumpdetection matches 2.. run scoreboard players set story_02_test_end activate 1
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] if score @s jumpdetection matches 2.. run scoreboard players set story_02_test activate 0
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] if score @s jumpdetection matches 0 run title @s actionbar {"text":"Jump!","color":"white"}
execute if score story_02_test activate matches 4 if score event eventtimer matches 460 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] if score @s jumpdetection matches 1 run title @s actionbar {"text":"Jump once more!","color":"white"}

execute if score event eventtimer matches 470 run playsound black_story02_4 ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 469 run playsound minecraft:blip ambient @a[distance=..20] ~ ~ ~ 1000 1

#Musik
#execute if score event eventtimer matches 570 run function paint:music/ready

#Setze den Kreis wieder in die weiße Farbe
#execute if score event eventtimer matches 470 run clone -8 49 114 -4 49 118 -2 48 -179
#Öffne die Tür
execute if score event eventtimer matches 650 positioned -12 45 -185 align xyz run setblock ~ ~ ~ redstone_block
#Reset
execute if score event eventtimer matches 651.. run scoreboard players set story_02_test activate 0
execute if score event eventtimer matches 651.. run tag @a remove black_story_event_02
execute if score event eventtimer matches 651.. run scoreboard players set event eventtimer 0

#Go back in Circle Message
execute if score story_02_test_end activate matches 0 as @a[x=-11,y=49,z=-188,dx=22,dy=6,dz=7] run title @s actionbar {"text":"Please step into the circle.","color":"gold","italic":"true"}
execute if score story_02_test_end activate matches 0 as @a[x=-11,y=49,z=-180,dx=7,dy=6,dz=6] run title @s actionbar {"text":"Please step into the circle.","color":"gold","italic":"true"}
execute if score story_02_test_end activate matches 0 as @a[x=4,y=49,z=-180,dx=7,dy=6,dz=6] run title @s actionbar {"text":"Please step into the circle.","color":"gold","italic":"true"}
execute if score story_02_test_end activate matches 0 as @a[x=-3,y=49,z=-173,dx=6,dy=6,dz=16] run title @s actionbar {"text":"Please step into the circle.","color":"gold","italic":"true"}

#Circle Color Effect
#execute if score story_02_test_end activate matches 0 as @a[x=-11,y=49,z=-188,dx=22,dy=6,dz=7] run clone -8 49 114 -4 49 118 -2 48 -179
#execute if score story_02_test_end activate matches 0 as @a[x=-11,y=49,z=-180,dx=7,dy=6,dz=6] run clone -8 49 114 -4 49 118 -2 48 -179
#execute if score story_02_test_end activate matches 0 as @a[x=4,y=49,z=-180,dx=7,dy=6,dz=6] run clone -8 49 114 -4 49 118 -2 48 -179
#execute if score story_02_test_end activate matches 0 as @a[x=-3,y=49,z=-173,dx=6,dy=6,dz=16] run clone -8 49 114 -4 49 118 -2 48 -179
#execute if score story_02_test_end activate matches 0 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run clone -14 49 114 -10 49 118 -2 48 -179

#Untertitel
execute if score event eventtimer matches 1..60 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"This is an automated Mental Health Test.","color":"gray","italic":"true"}
execute if score event eventtimer matches 61..140 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Please follow every instruction in correct execution.","color":"gray","italic":"true"}
execute if score event eventtimer matches 141..230 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"First: Look up at the ceiling.","color":"gray","italic":"true"}
execute if score event eventtimer matches 250..329 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Now: Please look down at the floor.","color":"gray","italic":"true"}
execute if score event eventtimer matches 340..380 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Perfect.","color":"gray","italic":"true"}
execute if score event eventtimer matches 381..458 as @a[x=-3,y=49,z=-180,dx=6,dy=6,dz=6] run title @s actionbar {"text":"Please say ''Hello'' to confirm you are alright.","color":"gray","italic":"true"}
execute if score event eventtimer matches 470..510 as @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] run title @s actionbar {"text":"Fantastic!","color":"gray","italic":"true"}
execute if score event eventtimer matches 511..590 as @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] run title @s actionbar {"text":"You confirmed that you are in excellent health!","color":"gray","italic":"true"}
execute if score event eventtimer matches 591..650 as @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] run title @s actionbar {"text":"Please step forward to the locker room.","color":"gray","italic":"true"}
