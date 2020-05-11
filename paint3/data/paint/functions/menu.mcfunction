execute unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:nether_bricks"}]}] run replaceitem entity @s inventory.0 minecraft:nether_bricks
execute unless entity @s[nbt={Inventory:[{Slot:10b,id:"minecraft:red_concrete"}]}] run replaceitem entity @s inventory.1 minecraft:red_concrete
execute unless entity @s[nbt={Inventory:[{Slot:11b,id:"minecraft:note_block"}]}] run replaceitem entity @s inventory.2 minecraft:note_block
execute unless entity @s[nbt={Inventory:[{Slot:12b,id:"minecraft:redstone_lamp"}]}] run replaceitem entity @s inventory.3 minecraft:redstone_lamp
execute unless entity @s[nbt={Inventory:[{Slot:13b,id:"minecraft:diamond_ore"}]}] run replaceitem entity @s inventory.4 minecraft:diamond_ore{display:{Name:"{\"text\":\"Detector\",\"color\":\"aqua\",\"italic\":\"false\"}"}}
execute unless entity @s[nbt={Inventory:[{Slot:14b,id:"minecraft:brick"}]}] run replaceitem entity @s inventory.5 minecraft:brick
execute unless entity @s[nbt={Inventory:[{Slot:15b,id:"minecraft:oak_leaves"}]}] run replaceitem entity @s inventory.6 minecraft:oak_leaves
execute unless entity @s[nbt={Inventory:[{Slot:16b,id:"minecraft:iron_block"}]}] run replaceitem entity @s inventory.7 minecraft:iron_block
execute unless entity @s[nbt={Inventory:[{Slot:17b,id:"minecraft:birch_door"}]}] run replaceitem entity @s inventory.8 minecraft:birch_door
execute unless entity @s[nbt={Inventory:[{Slot:18b,id:"minecraft:pink_glazed_terracotta"}]}] run replaceitem entity @s inventory.9 minecraft:pink_glazed_terracotta
execute unless entity @s[nbt={Inventory:[{Slot:19b,id:"minecraft:stripped_oak_log"}]}] run replaceitem entity @s inventory.10 minecraft:stripped_oak_log
execute unless entity @s[nbt={Inventory:[{Slot:20b,id:"minecraft:oak_wood"}]}] run replaceitem entity @s inventory.11 minecraft:oak_wood
execute unless entity @s[nbt={Inventory:[{Slot:21b,id:"minecraft:wooden_hoe"}]}] run replaceitem entity @s inventory.12 minecraft:wooden_hoe
execute unless entity @s[nbt={Inventory:[{Slot:22b,id:"minecraft:mossy_cobblestone"}]}] run replaceitem entity @s inventory.13 minecraft:mossy_cobblestone
execute unless entity @s[nbt={Inventory:[{Slot:23b,id:"minecraft:red_dye"}]}] run replaceitem entity @s inventory.14 minecraft:red_dye
execute unless entity @s[nbt={Inventory:[{Slot:24b,id:"minecraft:tall_grass"}]}] run replaceitem entity @s inventory.15 minecraft:tall_grass
execute unless entity @s[nbt={Inventory:[{Slot:25b,id:"minecraft:stone"}]}] run replaceitem entity @s inventory.16 minecraft:stone
execute unless entity @s[nbt={Inventory:[{Slot:26b,id:"minecraft:string"}]}] run replaceitem entity @s inventory.17 minecraft:string
execute unless entity @s[nbt={Inventory:[{Slot:27b,id:"minecraft:oak_slab"}]}] run replaceitem entity @s inventory.18 minecraft:oak_slab
execute unless entity @s[nbt={Inventory:[{Slot:28b,id:"minecraft:lime_wool"}]}] run replaceitem entity @s inventory.19 minecraft:lime_wool
execute unless entity @s[nbt={Inventory:[{Slot:29b,id:"minecraft:acacia_fence"}]}] run replaceitem entity @s inventory.20 minecraft:acacia_fence

#execute unless entity @s[nbt={Inventory:[{Slot:30b,id:"minecraft:air"}]}] run replaceitem entity @s inventory.21 minecraft:air

execute unless entity @s[nbt={Inventory:[{Slot:31b,id:"minecraft:oak_button"}]}] run replaceitem entity @s inventory.22 minecraft:oak_button
execute unless entity @s[nbt={Inventory:[{Slot:32b,id:"minecraft:blue_carpet"}]}] run replaceitem entity @s inventory.23 minecraft:blue_carpet
execute unless entity @s[nbt={Inventory:[{Slot:33b,id:"minecraft:grass"}]}] run replaceitem entity @s inventory.24 minecraft:grass
execute unless entity @s[nbt={Inventory:[{Slot:34b,id:"minecraft:oak_pressure_plate"}]}] run replaceitem entity @s inventory.25 minecraft:oak_pressure_plate
execute unless entity @s[nbt={Inventory:[{Slot:35b,id:"minecraft:light_gray_stained_glass"}]}] run replaceitem entity @s inventory.26 minecraft:light_gray_stained_glass

execute as @e[tag=killstand] at @s run particle minecraft:dragon_breath ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player] at @s run setblock ~ ~ ~ air destroy
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=door] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace light_blue_stained_glass_pane
execute as @e[tag=killstand] at @s as @e[distance=..3,type=!player,tag=fizzlerdoor] at @s run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace tripwire
execute as @e[tag=killstand] at @s run kill @e[distance=..3,type=!player]

execute unless entity @s[nbt={Inventory:[{Slot:30b,id:"minecraft:player_head",tag:{EntityTag:{Tags:["Portal1"]}}}]}] run replaceitem entity @s inventory.21 minecraft:player_head{display:{Name:"{\"text\":\"GlaDOS\",\"color\":\"gold\"}"},EntityTag:{Tags:["Portal1"]},SkullOwner:{Id:"99c1735b-8593-495e-93b7-4468c54a6dd4",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOGJlZGZkYWQ5NGMyMzAzZTQ2ZjZjN2IyM2Q0OGU4YTNjNWNjMDM0NTI5ZGVmMWYzNTJmNzNkODgxNDZmMjgifX19"}]}}}
