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


##### Decoration #####
#### Hocker ####
#Left
summon armor_stand -24 49 -180 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -181 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -182 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}

#Middle
summon armor_stand -24 49 -184 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -185 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -186 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}

#Right
summon armor_stand -24 49 -188 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -189 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}
summon armor_stand -24 49 -190 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"flint",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["stool"],Rotation:[180F,0F]}

### Turrets ###
summon armor_stand 8 48 -203 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ink_sac",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["heavy_machine_gun"],Rotation:[-45F,0F]}
summon armor_stand 0 48 -203 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ink_sac",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["heavy_machine_gun"],Rotation:[0F,0F]}
summon armor_stand -8 48 -203 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ink_sac",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["heavy_machine_gun"],Rotation:[0F,0F]}
summon armor_stand -16 48 -203 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"ink_sac",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["heavy_machine_gun"],Rotation:[0F,0F]}

### Monitor ###
summon armor_stand 12 51 -207 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen"],Rotation:[-135F,0F]}
summon armor_stand 12 51 -209 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen"],Rotation:[-90F,0F]}
summon armor_stand 18 51 -212 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen"],Rotation:[45F,0F]}
summon armor_stand 19 51 -202 {Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"wheat_seeds",Count:1b}],HandItems:[{},{}],DisabledSlots:2039583,Tags:["screen"],Rotation:[90F,0F]}

#Level Selector
scoreboard players set @a[x=-17,y=49,z=-181,dx=4,dy=4,dz=1] currentlevel 4
