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
#execute positioned 0 46 -157 align xyz run setblock ~ ~ ~ air

#Animation Activator
tag @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] add black_story_event_02

#Level Selector
scoreboard players set @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] currentlevel 3
