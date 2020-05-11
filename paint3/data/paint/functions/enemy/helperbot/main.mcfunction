execute as @e[type=armor_stand,tag=helperbot,limit=1,scores={pathnumber=1..},tag=angry] at @s if entity @p[tag=spawnpath,distance=2..,tag=!stopfollow] run function paint:enemy/helperbot/chase
execute as @e[type=armor_stand,tag=helperbot] at @s run function paint:enemy/helperbot/sounds
#walking
execute as @e[tag=helperbot,tag=triggered] at @s run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=!detectedrail] at @s if block ~ ~-10.5 ~ minecraft:observer[facing=south] run tag @s add botsouth
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=!detectedrail] at @s if block ~ ~-10.5 ~ minecraft:observer[facing=north] run tag @s add botnorth
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=!detectedrail] at @s if block ~ ~-10.5 ~ minecraft:observer[facing=east] run tag @s add boteast
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=!detectedrail] at @s if block ~ ~-10.5 ~ minecraft:observer[facing=west] run tag @s add botwest
execute as @e[tag=helperbot,tag=!triggered,tag=!angry] at @s if block ~ ~-10.5 ~ minecraft:observer run tag @s add detectedrail

execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botsouth] at @s run tp @s ~ ~ ~ 180 0
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botnorth] at @s run tp @s ~ ~ ~ 0 0
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=boteast] at @s run tp @s ~ ~ ~ 90 0
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botwest] at @s run tp @s ~ ~ ~ -90 0
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=detectedrail] at @s if block ^ ^-10.5 ^0.5 minecraft:observer if entity @p[distance=..12] run tp @s ^ ^ ^0.2
execute as @e[tag=helperbot,tag=!angry,tag=!triggered] at @s if block ~ ~-10.99 ~ minecraft:observer[facing=down] run tp @s ~ ~0.25 ~
execute as @e[tag=helperbot,tag=!angry,tag=!triggered] at @s if block ~ ~-10.5 ~ minecraft:observer[facing=up] run tp @s ~ ~-0.25 ~

execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botsouth] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=south] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove detectedrail
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botsouth] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=south] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove botsouth
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botnorth] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=north] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove detectedrail
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botnorth] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=north] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove botnorth
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=boteast] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=east] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove detectedrail
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=boteast] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=east] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove boteast
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botwest] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=west] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove detectedrail
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=botwest] at @s unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=west] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=up] unless block ^ ^-10.5 ^-0.4 minecraft:observer[facing=down] run tag @s remove botwest

#player-distance

execute as @e[tag=helperbot] at @s unless entity @a[distance=4..6,tag=spawnpath] run tag @s remove triggered
execute as @e[tag=helperbot] at @s if entity @a[distance=4..6,tag=spawnpath] run tag @s add triggered
execute as @e[tag=helperbot] at @s if entity @a[distance=..4,tag=spawnpath] run tag @s remove angry
execute as @e[tag=helperbot,tag=triggered] at @s run tp @s ~ ~ ~ ~ 0
execute as @e[tag=helperbot] at @s if entity @a[distance=6..,tag=spawnpath] run tag @s add angry

#animations
scoreboard players add helperbot modeldata 1
execute if score helperbot modeldata matches 12.. run scoreboard players set helperbot modeldata 0
execute if score helperbot modeldata matches 0 run replaceitem entity @e[tag=helperbot,tag=!triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:1} 1
execute if score helperbot modeldata matches 3 run replaceitem entity @e[tag=helperbot,tag=!triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:2} 1
execute if score helperbot modeldata matches 6 run replaceitem entity @e[tag=helperbot,tag=!triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:3} 1
execute if score helperbot modeldata matches 9 run replaceitem entity @e[tag=helperbot,tag=!triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:4} 1
execute if score helperbot modeldata matches 0 run replaceitem entity @e[tag=helperbot,tag=triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:5} 1
execute if score helperbot modeldata matches 3 run replaceitem entity @e[tag=helperbot,tag=triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:6} 1
execute if score helperbot modeldata matches 6 run replaceitem entity @e[tag=helperbot,tag=triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:7} 1
execute if score helperbot modeldata matches 9 run replaceitem entity @e[tag=helperbot,tag=triggered,tag=!angry] armor.head minecraft:red_dye{CustomModelData:8} 1
execute if score helperbot modeldata matches 0 run replaceitem entity @e[tag=helperbot,tag=angry] armor.head minecraft:red_dye{CustomModelData:9} 1
execute if score helperbot modeldata matches 3 run replaceitem entity @e[tag=helperbot,tag=angry] armor.head minecraft:red_dye{CustomModelData:10} 1
execute if score helperbot modeldata matches 6 run replaceitem entity @e[tag=helperbot,tag=angry] armor.head minecraft:red_dye{CustomModelData:11} 1
execute if score helperbot modeldata matches 9 run replaceitem entity @e[tag=helperbot,tag=angry] armor.head minecraft:red_dye{CustomModelData:12} 1

scoreboard players add helperstill modeldata 1
execute if score helperstill modeldata matches 12.. run scoreboard players set helperstill modeldata 0
execute if score helperstill modeldata matches 0 run replaceitem entity @e[tag=helperstill] armor.head minecraft:red_dye{CustomModelData:1} 1
execute if score helperstill modeldata matches 3 run replaceitem entity @e[tag=helperstill] armor.head minecraft:red_dye{CustomModelData:2} 1
execute if score helperstill modeldata matches 6 run replaceitem entity @e[tag=helperstill] armor.head minecraft:red_dye{CustomModelData:3} 1
execute if score helperstill modeldata matches 9 run replaceitem entity @e[tag=helperstill] armor.head minecraft:red_dye{CustomModelData:4} 1
scoreboard players operation @e[tag=helperbot] modeldata = helperbot modeldata

execute at @e[tag=helperbot] if entity @a[distance=..4,tag=spawnpath] unless block ~ ~-10.5 ~ minecraft:observer run function paint:enemy/helperbot/gridsnap

execute as @a[limit=1,tag=spawnpath] at @s unless entity @e[tag=path,distance=..0.5] store success score path success positioned ~ ~-0.3 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["path","pt"],Duration:2000000,PersistenceRequired:1b}
execute if score path success matches 1 run scoreboard players add @e[tag=pt] pathnumber 1
scoreboard players set path success 0
execute unless entity @e[tag=triggered] unless entity @e[tag=angry] run kill @e[tag=path]
execute as @e[tag=path] run data merge entity @s {Duration:2000}


execute as @e[tag=helperbot,tag=!triggered,tag=angry] at @s unless block ~ ~-10 ~ minecraft:observer if entity @e[tag=path,sort=nearest,distance=..6] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Dont walk away!!","color":"red","bold":true,"underlined":true}'}
execute as @e[tag=helperbot,tag=angry] at @s unless entity @e[tag=path,sort=nearest,distance=..6] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Where are you?! COME BACK!","color":"red","bold":true,"underlined":true}'}

execute as @e[tag=helperbot,tag=!triggered,tag=!angry] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Follow Me!","color":"blue","bold":true}'}
execute as @e[tag=helperbot,tag=triggered,tag=!angry] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Please! Follow Me!","color":"gold","bold":true,"underlined":true}'}
execute as @e[tag=helperbot,tag=!triggered,tag=!angry,tag=!detectedrail] at @s unless block ~ ~-11 ~ minecraft:observer run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Please walk back on the line!","color":"red","bold":true,"underlined":true}'}



execute as @e[tag=helperbot,tag=triggered,tag=!angry,tag=!detectedrail,scores={modeldata=0..3}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Searching for lines","color":"red","bold":true,"underlined":true}'}
execute as @e[tag=helperbot,tag=triggered,tag=!angry,tag=!detectedrail,scores={modeldata=3..6}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Searching for lines.","color":"red","bold":true,"underlined":true}'}
execute as @e[tag=helperbot,tag=triggered,tag=!angry,tag=!detectedrail,scores={modeldata=6..9}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Searching for lines..","color":"red","bold":true,"underlined":true}'}
execute as @e[tag=helperbot,tag=triggered,tag=!angry,tag=!detectedrail,scores={modeldata=9..12}] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"Searching for lines...","color":"red","bold":true,"underlined":true}'}

#tag @e[tag=helperbot] remove detectedrail
execute as @e[tag=helperstill] at @s run tp @s ~ ~ ~ facing entity @p
