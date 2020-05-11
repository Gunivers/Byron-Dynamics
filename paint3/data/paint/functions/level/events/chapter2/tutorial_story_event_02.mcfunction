# Byron Dynamics Black Facility Story #1

execute if entity @a[tag=tutorial_story_event_02,tag=!activate01] run scoreboard players add event eventtimer 1


#Start & Reset
#execute if score event eventtimer matches 1 run playsound black_story03 ambient @a ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 run playsound minecraft:blip ambient @a ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 run tag @s remove activate01

execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 1..603 run title @s actionbar {"text":"Current VoiceLine Test!","color":"gray","italic":"true"}
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 100 run setblock 4 50 -7 minecraft:stone_button[facing=south,face=wall,powered=false] destroy
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 100 run playsound minecraft:block.stone.place ambient @a 4 50 -7 1 1 1
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 100 run tag @s add activate01
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 100 run scoreboard players set event eventtimer 101

execute as @a[tag=tutorial_story_event_02] at @s if score event eventtimer matches 101 if block 4 50 -7 minecraft:stone_button[facing=south,face=wall,powered=true] run tag @s remove activate01
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 120 run setblock 4 50 -7 air destroy
execute if score event eventtimer matches 120 positioned 0 45 9 align xyz run function paint:box/doorlock

#Open pit
execute if score event eventtimer matches 300.. positioned -1 48 -1 run fill ~ ~ ~ ~2 ~ ~2 air
execute if score event eventtimer matches 300 positioned -1 48 -1 run playsound minecraft:ambient.hatchdoor2 ambient @a ~ ~ ~ 10 0.7 1
execute if score event eventtimer matches 340.. positioned -1 47 -1 run clone 1 43 4 -1 43 6 ~ ~ ~
execute if score event eventtimer matches 340 positioned -1 48 -1 run playsound minecraft:ambient.hatchdoor1 ambient @a ~ ~ ~ 10 0.9 1
execute if score event eventtimer matches 360.. positioned -1 47 -1 run clone 1 44 4 -1 44 6 ~ ~ ~
execute if score event eventtimer matches 360 positioned -1 48 -1 run playsound minecraft:ambient.hatchdoor1 ambient @a ~ ~ ~ 10 0.9 1
execute if score event eventtimer matches 380.. positioned -1 47 -1 run clone 1 45 4 -1 45 6 ~ ~ ~
execute if score event eventtimer matches 380 positioned -1 48 -1 run playsound minecraft:ambient.hatchdoor1 ambient @a ~ ~ ~ 10 0.9 1
execute as @a[tag=tutorial_story_event_02] if score event eventtimer matches 601 run tag @s add activate01



#Reset
execute if score event eventtimer matches 603.. run tag @a remove tutorial_story_event_02
execute if score event eventtimer matches 603.. run scoreboard players set event eventtimer 0


execute positioned 5 49 -5 as @e[tag=helperbot,distance=..0.5] run tp @s ~ ~ ~
execute positioned 5 49 -5 as @e[tag=helperbot,distance=..0.5] run tag @s add helperstill
execute positioned 5 49 -5 as @e[tag=helperbot,distance=..0.5,tag=helperstill] run tag @s remove helperbot
execute as @e[tag=helperstill] if score event eventtimer matches 1..100 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Please read our test terms.","color":"blue","bold":true,"underlined":true}'}
execute as @e[tag=helperstill] if score event eventtimer matches 101 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Click the button to start!","color":"blue","bold":true,"underlined":true}'}
execute as @e[tag=helperstill] if score event eventtimer matches 120..300 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Thanks for volunteering!","color":"blue","bold":true,"underlined":true}'}
execute as @e[tag=helperstill] if score event eventtimer matches 400 run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Please jump into the pit.","color":"blue","bold":true,"underlined":true}'}
