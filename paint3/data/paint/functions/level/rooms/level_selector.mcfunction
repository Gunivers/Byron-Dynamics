#Byron Dynamics 2 Level Selector


#Level Selector
execute as @a[x=-27,y=49,z=-156,dx=54,dy=19,dz=14] if score @s currentlevel matches 1 run function paint:level/rooms/chapter1/black_story01
execute as @a[x=-8,y=49,z=-184,dx=17,dy=5,dz=16] if score @s currentlevel matches 2 run function paint:level/rooms/chapter1/black_story02
execute as @a[x=-17,y=49,z=-181,dx=4,dy=4,dz=1] if score @s currentlevel matches 3 run function paint:level/rooms/chapter1/black_story03_deco
execute as @a[x=-25,y=49,z=-192,dx=4,dy=4,dz=19] if score @s currentlevel matches 4 run function paint:level/rooms/chapter1/black_story03
execute as @a[x=-13,y=49,z=-196,dx=24,dy=5,dz=6] if score @s currentlevel matches 5 run function paint:level/rooms/chapter1/black_story03_passageway
execute as @a[x=-43,y=49,z=-212,dx=22,dy=25,dz=14] if score @s currentlevel matches 6 run function paint:level/rooms/chapter1/black_story04

#Tutorial
execute as @a[x=36,y=47,z=21,dx=30,dy=29,dz=30] if score @s currentlevel matches 7 run function paint:level/rooms/chapter2/tutorial_story01
execute as @a[x=-8,y=49,z=-8,dx=16,dy=21,dz=16] if score @s currentlevel matches 8 run function paint:level/rooms/chapter2/tutorial_story02
