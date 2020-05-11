#in the air because of greenstone
execute at @a[tag=jump,nbt={OnGround:0b}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#speed
execute at @a[scores={speed=1..}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#jumping
execute at @a[scores={jump=1..}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#shooting
execute at @a[scores={shoot=1..}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#placing a cube
execute at @a[scores={place=1..}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#picking a cube in cubes
#sprinting
execute at @a[scores={sprint=1..}] run scoreboard players set @e[tag=turret,tag=!off,distance=..20] online 200
#walk without sneaking
execute as @a[scores={walk=1..}] if score @s sneak matches ..1 at @s run scoreboard players set @e[tag=turret,tag=!off,distance=..5] online 200
