#Byron Dynamics 2 Level Reset!



#Back to Lobby
#tp @s -7 54.2 -89

#function paint:kill/all
#function paint:kill/decorational
#kill @e[tag=helperbot]
#kill @e[tag=helperstill]
tag @s remove spawnpath
tag @s remove activate01


#Reset
scoreboard players set @s currentlevel 0
scoreboard players set event eventtimer 0
stopsound @a

#Chapter1
tag @s remove black_story_event_01
tag @s remove black_story_event_02
tag @s remove black_story_event_03
tag @s remove black_story_event_03_passageway
tag @s remove black_story_event_04

#Chapter2
tag @s remove tutorial_story_event_01
tag @s remove tutorial_story_event_02
#Chapter3

#Chapter4

#Chapter5

#Chapter6
