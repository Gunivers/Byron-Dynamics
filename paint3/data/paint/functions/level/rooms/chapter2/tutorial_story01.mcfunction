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
function paint:kill/decorational

kill @e[tag=train_entry]

#Level Selector
scoreboard players set @a[x=36,y=47,z=21,dx=30,dy=29,dz=30] currentlevel 8

#Trigger VoiceLine & Robot
tag @a[x=36,y=47,z=21,dx=30,dy=29,dz=30] add tutorial_story_event_01

#doors
execute positioned 35 50 24 align xyz run function paint:box/door/x_black
execute positioned 35 50 40 align xyz run function paint:box/door/x_black
execute positioned 67 50 24 align xyz run function paint:box/door/x_black
execute positioned 67 50 40 align xyz run function paint:box/door/x_black
execute positioned 0 50 9 align xyz run function paint:box/door/z_black
execute positioned -37 44 19 align xyz run function paint:box/door/z_locked_black
execute positioned -37 44 45 align xyz run function paint:box/door/z_locked_black

execute positioned 0 45 9 align xyz run setblock ~ ~ ~ air




kill @e[tag=helperstill]
kill @e[tag=helperbot]
execute positioned 51 49 40 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["helperbot","pt"],DisabledSlots:4144959}
