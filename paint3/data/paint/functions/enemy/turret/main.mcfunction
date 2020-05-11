#Calling the animations function 20 times per second.
function paint:enemy/turret/animations

#Resets the lenght score from the laser raycast
scoreboard players reset @e[tag=turret,scores={online=1..}] raycastlength
execute as @e[tag=turretshow] at @s if entity @e[tag=turret,scores={online=1..},distance=..1] run scoreboard players reset @s raycastlength

#The "track" score in the "modeldata" scoreboard defines how often the turrets shoots a player.
scoreboard players add track modeldata 1

#This function tests if the player is inside the field of view.
execute as @e[tag=turret,scores={online=1..}] at @s if score track modeldata matches 10 if score @s turretx <= max turretx if score @s turretx >= min turretx if score @s turrety <= max turrety if score @s turrety >= min turrety if entity @p[gamemode=!spectator,gamemode=!creative,distance=..50] run function paint:enemy/turret/raycast

#Edit the number "data matches [10].." to change the shooting speed of the turret.
execute if score track modeldata matches 10.. run scoreboard players set track modeldata 0

scoreboard players reset @e[tag=turret,scores={online=1..}] raycastlength
#If the raycast function proved, the player is inside the field of view, then the shoot function gets called.
execute as @e[scores={firecd=20,online=1..},tag=turret] at @s if entity @p[gamemode=!spectator,gamemode=!creative,distance=..50] run function paint:enemy/turret/shoot
execute as @e[tag=turret,scores={firecd=1..,online=1..}] at @s run tp @e[tag=turretmodel,distance=..1] ~ ~ ~ ~ 0
execute as @e[tag=turret,scores={firecd=1..,online=1..}] at @s run tp @e[tag=turretshow,distance=..1] ~ ~ ~ ~ 0

#When the turret goes back into searching mode it resets its field of view to the location it missed the player.
execute as @e[tag=turret,scores={firecd=1..,online=1..}] at @s run scoreboard players operation @e[tag=turretshow,distance=..1] rotation = degree/2 rotation

#"firecd" or 'fire cooldown' defines the time, after the turret goes back into searching mode.
scoreboard players remove @e[tag=turret,scores={firecd=1..,online=1..}] firecd 1

#Kill Mechanism
scoreboard players add @e[tag=hit] hit 1
effect give @a[tag=hit] instant_damage 1 0 true
execute as @a[tag=hit] at @s run playsound minecraft:cleaner.clean ambient @a ~ ~ ~ 10 0.7
tag @a remove hit
execute as @a[scores={hit=1..}] if score @s hit >= maxhits hit run tag @s add purple_respawn
execute as @a[scores={hit=1..}] if score @s hit >= maxhits hit run worldborder set 10000000
execute as @a[scores={hit=1..}] if score @s hit >= maxhits hit run scoreboard players set @s hit 0
execute as @a[scores={hit=1..}] if score @s hit >= maxhits/2 hit run effect give @s slowness 1 1 true
execute as @a[scores={hit=1..}] if score @s hit >= maxhits/2 hit run worldborder set 1
execute unless score @a[scores={hit=1..},limit=1] hit >= maxhits/2 hit run worldborder set 10000000
execute unless entity @a[scores={hit=1..}] run worldborder set 10000000
execute as @a[scores={hit=1..}] if score searching modeldata matches 59 run scoreboard players remove @a[scores={hit=1..}] hit 1

#The "rotate" function creates the needed data for the field of view.
execute as @e[tag=turret,scores={online=1..}] at @s if entity @p[gamemode=!spectator,gamemode=!creative,distance=..50] run function paint:enemy/turret/rotate
#Calling the "raycastshow" function creates the Red Laser.
execute unless entity @e[scores={firecd=1..}] as @e[tag=turretshow] at @s at @s if entity @e[tag=turret,scores={online=1..},distance=..1] run function paint:enemy/turret/raycastshow

#Red Show Laser Degree Tester
#This fixes the red "searching" laser into a certian degree in which he can swing from left to right and right to left.
execute as @e[tag=turretshow] at @s if entity @e[tag=turret,scores={online=1..},distance=..1] run scoreboard players add @s rotation 1
execute as @e[tag=turretshow] at @s if score @s rotation >= degree2x rotation if entity @e[tag=turret,scores={online=1..},distance=..1] run scoreboard players reset @s
execute as @e[tag=turretshow] at @s if score @s rotation <= degree rotation if entity @e[tag=turret,scores={online=1..},distance=..1] run tp @s ~ ~ ~ ~1 ~
execute as @e[tag=turretshow] at @s if score @s rotation >= degree rotation if entity @e[tag=turret,scores={online=1..},distance=..1] run tp @s ~ ~ ~ ~-1 ~

#manage turret status
scoreboard players remove @e[scores={online=1..}] online 1


#Animations Trigger
tag @e[tag=turret,tag=searching] remove searching
tag @e[tag=turret,tag=shooting] remove shooting
tag @e[tag=turret,scores={online=1..,firecd=..1},tag=!searching] add searching
tag @e[tag=turret,scores={online=1..,firecd=1..},tag=!shooting] add shooting

#Red Show Laser Degree Calculator
#Calculator for Red Show Laser based on the min and max value in the "turretx" scoreboard.
#Add yourself the "calculateturretdegree" tag to start calculating.
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players set 2 rotation 2
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players set -1 rotation -1
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players operation degree/2 rotation = max turretx
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players operation degree rotation = max turretx
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players operation degree rotation *= 2 rotation
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players operation degree2x rotation = degree rotation
execute as @a[tag=calculateturretdegree,limit=1] run scoreboard players operation degree2x rotation *= 2 rotation
execute as @a[tag=calculateturretdegree,limit=1] run tag @a remove calculateturretdegree

scoreboard players operation maxhits/2 hit = maxhits hit
scoreboard players operation maxhits/2 hit /= 2 rotation

#health bossbar
execute as @a[team=P1] store result bossbar paint:health value run scoreboard players get @s hit
execute as @a[team=P2] store result bossbar paint:health2 value run scoreboard players get @s hit
execute as @a[team=P3] store result bossbar paint:health3 value run scoreboard players get @s hit
execute as @a[team=P4] store result bossbar paint:health4 value run scoreboard players get @s hit

bossbar set paint:health players @a[team=P1,scores={hit=1..}]
bossbar set paint:health2 players @a[team=P2,scores={hit=1..}]
bossbar set paint:health3 players @a[team=P3,scores={hit=1..}]
bossbar set paint:health4 players @a[team=P4,scores={hit=1..}]

execute store result bossbar paint:health max run scoreboard players get maxhits hit
execute store result bossbar paint:health2 max run scoreboard players get maxhits hit
execute store result bossbar paint:health3 max run scoreboard players get maxhits hit
execute store result bossbar paint:health4 max run scoreboard players get maxhits hit

#turret-locks
tag @e[tag=turret] remove off
execute at @e[tag=turretlock] if block ~ ~ ~ redstone_lamp[lit=true] run tag @e[tag=turret,limit=1,sort=nearest] add off
scoreboard players set @e[tag=turret,tag=off] online 0
execute at @e[tag=turret,tag=off] run particle minecraft:crit ~ ~ ~ 0.1 0.1 0.1 0.2 2
