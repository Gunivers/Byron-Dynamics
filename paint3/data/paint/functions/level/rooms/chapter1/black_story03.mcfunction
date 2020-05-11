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
execute positioned -12 45 -185 align xyz run setblock ~ ~ ~ air

#Animation Activator
tag @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] add black_story_event_03

#Level Selector
scoreboard players set @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] currentlevel 5
