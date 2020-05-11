#Resting Animation
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 1 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:1} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 20 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:2} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 40 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:3} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 60 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:4} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 80 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:5} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 100 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:6} 1
execute as @e[tag=off,tag=turret] at @s if score resting modeldata matches 120 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:7} 1
#####################################
#Offline "Animation"
execute as @e[scores={online=..1},tag=!off,tag=turret] at @s if score offline modeldata matches 1 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:8} 1
#####################################
#Searching Animation
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 1 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:9} 1
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 10 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:10} 1
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 20 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:11} 1
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 30 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:12} 1
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 40 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:13} 1
execute as @e[tag=searching,tag=turret] at @s if score searching modeldata matches 50 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:14} 1
#####################################
#Shooting Animation
execute as @e[tag=shooting,tag=turret] at @s if score shooting modeldata matches 1 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:15} 1
execute as @e[tag=shooting,tag=turret] at @s if score shooting modeldata matches 3 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:16} 1
execute as @e[tag=shooting,tag=turret] at @s if score shooting modeldata matches 4 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:17} 1
execute as @e[tag=shooting,tag=turret] at @s if score shooting modeldata matches 6 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:18} 1
execute as @e[tag=shooting,tag=turret] at @s if score shooting modeldata matches 8 run replaceitem entity @e[tag=turretmodel,distance=..0.3] armor.head minecraft:lapis_lazuli{CustomModelData:19} 1

#Creating the timer in a new world.
execute if score resting modeldata matches 0 run scoreboard players set resting modeldata 1
execute if score offline modeldata matches 0 run scoreboard players set resting modeldata 1
execute if score searching modeldata matches 0 run scoreboard players set resting modeldata 1
execute if score shooting modeldata matches 0 run scoreboard players set resting modeldata 1

#resetting the timer if it hits the end of the animation.
execute if score resting modeldata matches 140 run scoreboard players set resting modeldata 0
execute if score offline modeldata matches 21 run scoreboard players set offline modeldata 0
execute if score searching modeldata matches 60 run scoreboard players set searching modeldata 0
execute if score shooting modeldata matches 10 run scoreboard players set shooting modeldata 0

#Adding 1 score per tick to every animation. (20 ticks = 1 second)
scoreboard players add resting modeldata 1
scoreboard players add offline modeldata 1
scoreboard players add searching modeldata 1
execute as @e[tag=shooting,tag=turret,limit=1] run scoreboard players add shooting modeldata 1
execute unless entity @e[tag=shooting,tag=turret] run scoreboard players set shooting modeldata 1
