# Byron Dynamics Black Facility Story #1

#Kill

#function paint:kill/all
#function paint:kill/buckets
#function paint:kill/cleaner
#function paint:kill/cubes
#function paint:kill/cubespawners
#function paint:kill/detectors
function paint:kill/doorlocks
function paint:kill/doors
#function paint:kill/iris
#function paint:kill/obsolete
function paint:kill/decorational


#Level Selector
scoreboard players set @a[x=-43,y=49,z=-212,dx=22,dy=25,dz=14] currentlevel 7

#Trigger VoiceLine & Robot
tag @a[x=-43,y=49,z=-212,dx=22,dy=25,dz=14] add black_story_event_04

#doors
execute positioned -32 50 -197 align xyz run function paint:box/door/z_locked_black
execute positioned -32 50 -213 align xyz run function paint:box/door/z_black
execute positioned -32 50 -245 align xyz run function paint:box/door/z_locked_black
execute positioned -28 50 -217 align xyz run function paint:box/door/x_black
execute positioned -28 50 -233 align xyz run function paint:box/door/x_black
execute positioned -28 50 -249 align xyz run function paint:box/door/x_locked_black
execute positioned 28 50 -217 align xyz run function paint:box/door/x_black
execute positioned 28 50 -233 align xyz run function paint:box/door/x_black
execute positioned 28 50 -249 align xyz run function paint:box/door/x_locked_black
execute positioned 31 50 -253 align xyz run function paint:box/door/z_black

#Train Entry
kill @e[tag=train_entry]
execute positioned 19.001 49 -228.001 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["train_entry"],DisabledSlots:4144959}
execute positioned 19.001 49 -221.001 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["train_entry"],DisabledSlots:4144959}

tag @a[x=-43,y=49,z=-212,dx=22,dy=25,dz=14] remove spawnpath
kill @e[tag=helperbot]
execute positioned -32 49 -199 run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["helperbot","pt"],DisabledSlots:4144959}

#decorational
execute positioned -25.5 50.5 -209.5 align xyz run summon armor_stand ~0.5 ~0.15 ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"feather",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["radio"],Rotation:[45F,0F]}
execute positioned -24.5 49.5 -208.5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["armchair"],Rotation:[0F,0F]}
execute positioned -22.5 49.5 -207.5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"paper",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["folding_chair"],Rotation:[45F,0F]}
execute positioned -22.5 49.5 -200.5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"paper",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["folding_chair"],Rotation:[135F,0F]}
execute positioned -24.5 49.5 -199.5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"paper",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["folding_chair"],Rotation:[180F,0F]}
execute positioned -30.5 49.5 -217.5 align xyz run summon armor_stand ~0.5 ~ ~0.5 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"brick",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["wet_floor"],Rotation:[45F,0F]}
