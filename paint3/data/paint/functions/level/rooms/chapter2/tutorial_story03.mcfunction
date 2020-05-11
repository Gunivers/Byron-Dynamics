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
function paint:kill/decorational

#Level Selector
scoreboard players set @a[x=-8,y=49,z=-8,dx=16,dy=21,dz=16] currentlevel 9

#Trigger Animation
tag @a[x=-8,y=49,z=-8,dx=16,dy=21,dz=16] add tutorial_story_event_02

tag @a[x=-8,y=49,z=-8,dx=16,dy=21,dz=16] remove spawnpath
execute positioned -1 47 -1 run clone 1 42 4 -1 42 6 ~ ~ ~
execute positioned -1 48 -1 run clone 1 42 4 -1 42 6 ~ ~ ~
