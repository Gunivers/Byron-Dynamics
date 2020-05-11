# Byron Dynamics Black Facility Story #1

#Kill

function paint:kill/all
#function paint:kill/buckets
#function paint:kill/cleaner
#function paint:kill/cubes
#function paint:kill/cubespawners
#function paint:kill/detectors
#function paint:kill/doorlocks
#function paint:kill/doors
#function paint:kill/iris
#function paint:kill/obsolete
#function paint:kill/painters
#function paint:kill/platforms
#function paint:kill/wireless
function paint:kill/decorational

scoreboard players set event eventtimer 0 

# Doors 1-5
execute positioned 0 51 -157 align xyz run function paint:box/door/z_locked_black
execute positioned 12 50 -177 align xyz run function paint:box/door/x_locked_black
execute positioned 15 57 -177 align xyz run function paint:box/door/x_locked_black
execute positioned -12 50 -185 align xyz run function paint:box/door/x_locked_black
execute positioned -20 50 -177 align xyz run function paint:box/door/x_black
execute positioned -20 50 -193 align xyz run function paint:box/door/x_locked_black

#Doorlocks 1-5
execute positioned 0 47 -157 align xyz run function paint:box/doorlock
execute positioned 12 46 -177 align xyz run function paint:box/doorlock
execute positioned 15 53 -177 align xyz run function paint:box/doorlock
execute positioned -12 46 -185 align xyz run function paint:box/doorlock
execute positioned -20 46 -193 align xyz run function paint:box/doorlock

#Animation Activator
tag @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] add black_story_event_01

#Level Selector
scoreboard players set @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] currentlevel 2

#Resets
execute positioned 0 46 -157 align xyz run setblock ~ ~ ~ air
execute positioned -12 45 -185 align xyz run setblock ~ ~ ~ air
execute positioned -20 45 -193 align xyz run setblock ~ ~ ~ air
