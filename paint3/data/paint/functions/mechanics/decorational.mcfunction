execute as @e[type=armor_stand,tag=decoration,tag=!setup] run data merge entity @s {NoBasePlate:1,Pose:[]}

replaceitem entity @e[type=armor_stand,tag=!setup,tag=drawers] armor.head minecraft:glowstone_dust
replaceitem entity @e[type=armor_stand,tag=!setup,tag=beamer] armor.head minecraft:yellow_dye
replaceitem entity @e[type=armor_stand,tag=!setup,tag=office_chair] armor.head minecraft:book
replaceitem entity @e[type=armor_stand,tag=!setup,tag=folding_chair] armor.head minecraft:paper
replaceitem entity @e[type=armor_stand,tag=!setup,tag=armchair] armor.head minecraft:wheat
replaceitem entity @e[type=armor_stand,tag=!setup,tag=stool] armor.head minecraft:flint
replaceitem entity @e[type=armor_stand,tag=!setup,tag=wet_floor] armor.head minecraft:brick
replaceitem entity @e[type=armor_stand,tag=!setup,tag=heavy_machine_gun] armor.head minecraft:ink_sac
