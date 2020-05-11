# Byron Dynamics Black Facility Story #1

execute if entity @a[tag=tutorial_story_event_01] run scoreboard players add event eventtimer 1


#Start & Reset
#execute if score event eventtimer matches 1 run playsound black_story03 ambient @a ~ ~ ~ 1000 1
execute if score event eventtimer matches 1 run playsound minecraft:blip ambient @a ~ ~ ~ 1000 1

execute as @a[tag=tutorial_story_event_01] if score event eventtimer matches 1..299 run title @s actionbar {"text":"Current VoiceLine Test!","color":"gray","italic":"true"}

#Reset
execute if score event eventtimer matches 300.. run tag @a remove tutorial_story_event_01
execute if score event eventtimer matches 300.. run scoreboard players set event eventtimer 0
