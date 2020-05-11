#setup
scoreboard players set @e[tag=painter,tag=!reg] alive 0

execute as @e[type=armor_stand,tag=!reg,tag=painter] at @s if block ~ ~ ~ #paint:painter_dark run tag @s add dark
execute as @e[type=armor_stand,tag=!reg,tag=painter] at @s if block ~ ~ ~ #paint:painter_gray run tag @s add gray



tag @e[type=armor_stand,tag=painter,tag=!reg] add reg
execute as @e[type=armor_stand,tag=reg,tag=painter] at @s if block ~ ~ ~ minecraft:air run kill @s

execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=cube,distance=..1.2] run tag @s remove activated
#activation through spreaders
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
execute as @e[tag=painter,tag=activated] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=!activated,tag=painter,distance=..1.75] add activated
#activation through cubes
execute as @e[tag=input,tag=cube] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=cube] at @s align xyz positioned ~0.5 ~ ~0.5 run tag @e[tag=painter,distance=..1.2] add activated



execute as @e[tag=input,tag=speedblock] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=xminus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~-1 ~ ~ run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=xplus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~1 ~ ~ run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=yminus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~-1 ~ run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=yplus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~1 ~ run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=zminus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~-1 run tag @e[tag=painter,distance=..1.2] add activated
execute as @e[tag=input,tag=zplus] at @s align xyz positioned ~0.5 ~0.5 ~0.5 positioned ~ ~ ~1 run tag @e[tag=painter,distance=..1.2] add activated

#activation through detectors/receivers
execute as @e[tag=painter,tag=!activated] at @s if block ~-1 ~ ~ redstone_block run tag @s add activated
execute as @e[tag=painter,tag=!activated] at @s if block ~1 ~ ~ redstone_block run tag @s add activated
execute as @e[tag=painter,tag=!activated] at @s if block ~ ~1 ~ redstone_block run tag @s add activated
execute as @e[tag=painter,tag=!activated] at @s if block ~ ~-1 ~ redstone_block run tag @s add activated
execute as @e[tag=painter,tag=!activated] at @s if block ~ ~ ~1 redstone_block run tag @s add activated
execute as @e[tag=painter,tag=!activated] at @s if block ~ ~ ~-1 redstone_block run tag @s add activated

#painter off
scoreboard players add @e[tag=painter,tag=activated,scores={alive=..7}] alive 1
scoreboard players remove @e[tag=painter,tag=!activated,scores={alive=1..}] alive 1

#activate
execute as @e[tag=painter,tag=activated,scores={alive=2}] at @s unless entity @e[tag=painter,scores={alive=3..},distance=..3] run playsound minecraft:activate master @a ~ ~ ~ 1 2

execute as @e[tag=!dark,tag=!gray,tag=painter,tag=activated,scores={alive=2},tag=blue] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","blue","spread","spread_start"],Duration:7s}
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=activated,scores={alive=2},tag=green] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","green","spread","spread_start"],Duration:7s}
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=activated,scores={alive=2},tag=orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","yellow","spread","spread_start"],Duration:7s}
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=activated,scores={alive=2},tag=red] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","red","spread","spread_start"],Duration:7s}
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=activated,scores={alive=2},tag=purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","purple","spread","spread_start"],Duration:7s}

execute as @e[tag=dark,tag=painter,tag=activated,scores={alive=2},tag=blue] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","blue","spread","spread_start"],Duration:7s}
execute as @e[tag=dark,tag=painter,tag=activated,scores={alive=2},tag=green] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","green","spread","spread_start"],Duration:7s}
execute as @e[tag=dark,tag=painter,tag=activated,scores={alive=2},tag=orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","yellow","spread","spread_start"],Duration:7s}
execute as @e[tag=dark,tag=painter,tag=activated,scores={alive=2},tag=red] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","red","spread","spread_start"],Duration:7s}
execute as @e[tag=dark,tag=painter,tag=activated,scores={alive=2},tag=purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","purple","spread","spread_start"],Duration:7s}

execute as @e[tag=gray,tag=painter,tag=activated,scores={alive=2},tag=blue] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","blue","spread","spread_start"],Duration:7s}
execute as @e[tag=gray,tag=painter,tag=activated,scores={alive=2},tag=green] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","green","spread","spread_start"],Duration:7s}
execute as @e[tag=gray,tag=painter,tag=activated,scores={alive=2},tag=orange] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","yellow","spread","spread_start"],Duration:7s}
execute as @e[tag=gray,tag=painter,tag=activated,scores={alive=2},tag=red] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","red","spread","spread_start"],Duration:7s}
execute as @e[tag=gray,tag=painter,tag=activated,scores={alive=2},tag=purple] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","purple","spread","spread_start"],Duration:7s}

#deactivate
execute as @e[tag=painter,tag=!activated,scores={alive=1}] at @s run playsound minecraft:deactivate master @a ~ ~ ~ 1 2
execute as @e[tag=!dark,tag=!gray,tag=painter,tag=!activated,scores={alive=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_light","white","spread"],Duration:7s}
execute as @e[tag=dark,tag=painter,tag=!activated,scores={alive=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_dark","white","spread"],Duration:7s}
execute as @e[tag=gray,tag=painter,tag=!activated,scores={alive=1}] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["solid_gray","white","spread"],Duration:7s}

kill @e[tag=!activated,scores={alive=0},tag=painter]

#if two painters are on at the same time
execute as @e[tag=painter,tag=!activated,scores={alive=7}] at @s if entity @a[tag=break_painter,distance=..9] run scoreboard players set @e[tag=painter,scores={alive=8},limit=1,sort=nearest] alive 1

execute as @a[tag=break_painter] at @s run scoreboard players set @e[tag=painter,tag=!activated,distance=..9,limit=1,sort=nearest] alive 2

tag @a[tag=break_painter] remove break_painter
