# Byron Dynamics Black Facility Story #1

execute if entity @a[tag=black_story_event_03] run scoreboard players add event eventtimer 1


#Start & Reset
execute if score event eventtimer matches 1 run playsound black_story03 ambient @a[distance=..20] ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 run playsound minecraft:blip ambient @a[distance=..20] ~ ~ ~ 1000 1

execute as @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] if score event eventtimer matches 1..44 run title @s actionbar {"text":"Here you can change your clothes.","color":"gray","italic":"true"}
execute as @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] if score event eventtimer matches 45..159 run title @s actionbar {"text":"Mayby you smell a bit, cause you still sweat in the Cryo-Chamber.","color":"gray","italic":"true"}
execute as @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] if score event eventtimer matches 160..229 run title @s actionbar {"text":"You will be alone, and nobody is going to watch you! ","color":"gray","italic":"true"}
execute as @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] if score event eventtimer matches 230..299 run title @s actionbar {"text":"When you are done, please go on.","color":"gray","italic":"true"}

#Reset
execute if score event eventtimer matches 299 run setblock -20 45 -193 redstone_block
execute if score event eventtimer matches 300.. run tag @a remove black_story_event_03
execute if score event eventtimer matches 300.. run scoreboard players set event eventtimer 0
