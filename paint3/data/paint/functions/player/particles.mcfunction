tag @a[nbt={OnGround:1b}] remove jump
tag @a[nbt={ActiveEffects:[{Id:8b}]}] add jump
tag @a[nbt={ActiveEffects:[{Id:25b}]}] add jump

execute as @a[tag=jump] at @s anchored eyes rotated ~ 0 run particle minecraft:dust 0 1 0.2 1.2 ^ ^-1.8 ^ 0.1 0.1 0.1 0 2 normal

tag @a remove speed
tag @a[nbt={ActiveEffects:[{Id:1b}]}] add speed

execute as @a[tag=speed] at @s anchored eyes rotated ~ 0 run particle minecraft:dust 1 0.8 0.3 0.8 ^0.4 ^-0.9 ^ 0.06 0.1 0.06 0 1 normal
execute as @a[tag=speed] at @s anchored eyes rotated ~ 0 run particle minecraft:dust 1 0.8 0.3 0.8 ^-0.4 ^-0.9 ^ 0.06 0.1 0.06 0 1 normal

tag @a[tag=jumpbossbar] remove jumpbossbar
tag @a[nbt={ActiveEffects:[{Id:8b}]}] add jumpbossbar
tag @a[nbt={ActiveEffects:[{Id:25b}]}] add jumpbossbar


bossbar set minecraft:jump players @a[tag=jumpbossbar]
