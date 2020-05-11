# Byron Dynamics Black Facility Story #1

#Kill

#function paint:kill/all
#function paint:kill/buckets
#function paint:kill/cleaner
#function paint:kill/cubes
#function paint:kill/cubespawners
#function paint:kill/detectors
#function paint:kill/doorlocks
#function paint:kill/doors
#function paint:kill/iris
#function paint:kill/obsolete

#DeactivateDoor
execute positioned -20 45 -193 align xyz run setblock ~ ~ ~ air

#Trigger VoiceLine
tag @a[x=-13,y=49,z=-196,dx=24,dy=5,dz=6] add black_story_event_03_passageway

#Level Selector
scoreboard players set @a[x=-13,y=49,z=-196,dx=24,dy=5,dz=6] currentlevel 6
