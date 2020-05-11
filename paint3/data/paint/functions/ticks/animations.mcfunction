#Blocken Clock Animation
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 1 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:1} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 20 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:2} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 40 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:1} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 60 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:2} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 80 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:1} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 100 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:3} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 120 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:1} 1
execute as @e[tag=broken_clock] at @s if score brokenclock modeldata matches 140 run replaceitem entity @s armor.head minecraft:gray_dye{CustomModelData:2} 1

#Creating the timer in a new world.
execute if score brokenclock modeldata matches 0 run scoreboard players set brokenclock modeldata 1


#resetting the timer if it hits the end of the animation.
execute if score brokenclock modeldata matches 160.. run scoreboard players set brokenclock modeldata 0


#Adding 1 score per tick to every animation. (20 ticks = 1 second)
scoreboard players add brokenclock modeldata 1
