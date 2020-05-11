#ran to setup a train that has visible stands
execute as @e[type=minecraft:armor_stand,distance=..3,tag=!train,tag=!mono_track,limit=1,sort=nearest] at @s run function kruthers:train/build
execute as @e[type=minecraft:armor_stand,distance=..3,tag=!train,tag=!mono_track,limit=1,sort=nearest] run function kruthers:train/setup
