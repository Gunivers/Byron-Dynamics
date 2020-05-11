#facing nearest player
execute as @e[tag=turret,scores={online=1..}] at @s facing entity @p[gamemode=!spectator,gamemode=!creative,distance=..50] eyes run tp ^ ^ ^

#x
execute as @e[tag=turret,scores={online=1..}] store result score @s turretx run data get entity @s Rotation[0]
execute as @e[tag=turretmodel] at @s if entity @e[tag=turret,scores={online=1..},distance=..1] store result score @s turretx run data get entity @s Rotation[0]
execute as @e[] if score @s turretx matches ..1 run scoreboard players operation @s turretx *= -1 turretx
execute as @e[tag=turret,scores={online=1..}] at @s run scoreboard players operation @s turretx -= @e[tag=turretmodel,limit=1,sort=nearest] turretx

#y
execute as @e[tag=turretmodel] at @s if entity @e[tag=turret,scores={online=1..},distance=..1] run scoreboard players set @s turrety 0
execute as @e[tag=turret,scores={online=1..}] store result score @s turrety run data get entity @s Rotation[1]
execute as @e[tag=turretmodel] if entity @e[tag=turret,scores={online=1..},distance=..1] at @s run scoreboard players operation @s turrety -= @e[tag=turret,limit=1,sort=nearest] turrety
