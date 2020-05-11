#stacking on other cubes/lasers
tag @e[tag=block,type=shulker] remove blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid positioned ^ ^ ^1 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid positioned ^ ^ ^2 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid if block ^ ^ ^3 #paint:nonsolid positioned ^ ^ ^3 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @a[scores={shoot=1..},tag=cube] at @s anchored eyes if block ^ ^ ^1 #paint:nonsolid if block ^ ^ ^2 #paint:nonsolid if block ^ ^ ^3 #paint:nonsolid if block ^ ^ ^4 #paint:nonsolid positioned ^ ^ ^4 align xyz run tag @e[type=shulker,dx=0,dy=0,dz=0,limit=1,sort=nearest] add blockplace
execute as @e[type=shulker] at @s align xyz positioned ~0.5 ~-1 ~0.5 run tag @e[type=shulker,limit=1,distance=..0.5,tag=blockplace] remove blockplace

#break painter
tag @a[scores={pick=1..}] add break_painter

execute at @a[scores={pick=1..}] run scoreboard players set @e[tag=turret,distance=..20,tag=!off] online 200

#picking
execute as @a[tag=!cube,scores={pick=1..}] at @s as @e[type=shulker,nbt={HurtTime:10s},limit=1,sort=nearest,distance=..8] at @s run tag @e[tag=cube,type=shulker,limit=1,sort=nearest,distance=..1] add picked

execute as @a[scores={pick=1..},tag=!cube] at @s if entity @e[tag=cube,tag=picked,distance=..8] run playsound cube.pickup block @a ~ ~ ~ 2 1.2

execute as @e[type=shulker,tag=picked,tag=cubeA] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeA
execute as @e[type=shulker,tag=picked,tag=cubeB] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeB
execute as @e[type=shulker,tag=picked,tag=cubeC] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeC
execute as @e[type=shulker,tag=picked,tag=cubeD] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeD
execute as @e[type=shulker,tag=picked,tag=cubeE] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeE
execute as @e[type=shulker,tag=picked,tag=cubeF] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cubeF
execute as @e[type=shulker,tag=picked] at @s run tag @p[distance=..8,scores={pick=1..},tag=!cube] add cube
execute as @e[type=shulker,tag=picked] at @s run scoreboard players set @p[scores={shoot=1..}] shoot 0

teleport @e[tag=picked,type=!player] ~ 0 ~
execute as @e[tag=picked,type=!player] at @s run data merge entity @s {DeathLootTable:"minecraft:empty"}
kill @e[tag=picked,type=!player]



scoreboard players reset @a[scores={pick=1..}] pick

replaceitem entity @a[tag=cube] weapon.offhand minecraft:chicken_spawn_egg{CanPlaceOn:["dead_brain_coral","dead_bubble_coral","air","stone","granite","polished_granite","diorite","polished_diorite","andesite","polished_andesite","grass_block","dirt","coarse_dirt","podzol","cobblestone","oak_planks","spruce_planks","birch_planks","jungle_planks","acacia_planks","dark_oak_planks","oak_sapling","spruce_sapling","birch_sapling","jungle_sapling","acacia_sapling","dark_oak_sapling","bedrock","flowing_water","water","flowing_lava","lava","sand","red_sand","gravel","gold_ore","iron_ore","coal_ore","oak_log","spruce_log","birch_log","jungle_log","acacia_log","dark_oak_log","stripped_spruce_log","stripped_birch_log","stripped_jungle_log","stripped_acacia_log","stripped_dark_oak_log","stripped_oak_log","oak_bark","spruce_bark","birch_bark","jungle_bark","acacia_bark","dark_oak_bark","oak_leaves","spruce_leaves","birch_leaves","jungle_leaves","acacia_leaves","dark_oak_leaves","sponge","wet_sponge","glass","lapis_ore","lapis_block","dispenser","sandstone","chiseled_sandstone","cut_sandstone","note_block","white_bed","orange_bed","magenta_bed","light_blue_bed","yellow_bed","lime_bed","pink_bed","gray_bed","light_gray_bed","cyan_bed","purple_bed","blue_bed","brown_bed","green_bed","red_bed","black_bed","powered_rail","detector_rail","sticky_piston","cobweb","grass","fern","dead_bush","sea_grass","tall_sea_grass","piston","piston_head","white_wool","orange_wool","magenta_wool","light_blue_wool","yellow_wool","lime_wool","pink_wool","gray_wool","light_gray_wool","cyan_wool","purple_wool","blue_wool","brown_wool","green_wool","red_wool","black_wool","moving_piston","dandelion","poppy","blue_orchid","allium","azure_bluet","red_tulip","orange_tulip","white_tulip","pink_tulip","oxeye_daisy","brown_mushroom","red_mushroom","gold_block","iron_block","bricks","tnt","bookshelf","mossy_cobblestone","obsidian","torch","wall_torch","fire","mob_spawner","oak_stairs","chest","redstone_wire","diamond_ore","diamond_block","crafting_table","wheat","farmland","furnace","sign","oak_door","ladder","rail","cobblestone_stairs","wall_sign","lever","stone_pressure_plate","iron_door","oak_pressure_plate","spruce_pressure_plate","birch_pressure_plate","jungle_pressure_plate","acacia_pressure_plate","dark_oak_pressure_plate","redstone_ore","redstone_torch","redstone_wall_torch","stone_button","snow","ice","snow_block","cactus","clay","sugar_cane","jukebox","oak_fence","pumpkin","netherrack","soul_sand","glowstone","portal","carved_pumpkin","jack_o_lantern","cake","repeater","white_stained_glass","orange_stained_glass","magenta_stained_glass","light_blue_stained_glass","yellow_stained_glass","lime_stained_glass","pink_stained_glass","gray_stained_glass","light_gray_stained_glass","cyan_stained_glass","purple_stained_glass","blue_stained_glass","brown_stained_glass","green_stained_glass","red_stained_glass","black_stained_glass","oak_trapdoor","spruce_trapdoor","birch_trapdoor","jungle_trapdoor","acacia_trapdoor","dark_oak_trapdoor","infested_stone","infested_cobblestone","infested_stone_bricks","infested_mossy_stone_bricks","infested_cracked_stone_bricks","infested_chiseled_stone_bricks","stone_bricks","mossy_stone_bricks","cracked_stone_bricks","chiseled_stone_bricks","brown_mushroom_block","red_mushroom_block","mushroom_stem","iron_bars","glass_pane","melon_block","attached_pumpkin_stem","attached_melon_stem","pumpkin_stem","melon_stem","vine","oak_fence_gate","brick_stairs","stone_brick_stairs","mycelium","lily_pad","nether_bricks","nether_brick_fence","nether_brick_stairs","nether_wart","enchanting_table","brewing_stand","cauldron","end_portal","end_portal_frame","end_stone","dragon_egg","redstone_lamp","cocoa","sandstone_stairs","emerald_ore","ender_chest","tripwire_hook","tripwire","emerald_block","spruce_stairs","birch_stairs","jungle_stairs","command_block","beacon","cobblestone_wall","mossy_cobblestone_wall","flower_pot","potted_oak_sapling","potted_spruce_sapling","potted_birch_sapling","potted_jungle_sapling","potted_acacia_sapling","potted_dark_oak_sapling","potted_fern","potted_dandelion","potted_poppy","potted_blue_orchid","potted_allium","potted_azure_bluet","potted_red_tulip","potted_orange_tulip","potted_white_tulip","potted_pink_tulip","potted_oxeye_daisy","potted_red_mushroom","potted_brown_mushroom","potted_dead_bush","potted_cactus","carrots","potatoes","oak_button","spruce_button","birch_button","jungle_button","acacia_button","dark_oak_button","skeleton_wall_skull","skeleton_skull","wither_skeleton_wall_skull","wither_skeleton_skull","zombie_wall_head","zombie_head","player_wall_head","player_head","creeper_wall_head","creeper_head","dragon_wall_head","dragon_head","anvil","chipped_anvil","damaged_anvil","trapped_chest","light_weighted_pressure_plate","heavy_weighted_pressure_plate","comparator","daylight_detector","redstone_block","nether_quartz_ore","hopper","quartz_block","chiseled_quartz_block","quartz_pillar","quartz_stairs","activator_rail","dropper","white_terracotta","orange_terracotta","magenta_terracotta","light_blue_terracotta","yellow_terracotta","lime_terracotta","pink_terracotta","gray_terracotta","light_gray_terracotta","cyan_terracotta","purple_terracotta","blue_terracotta","brown_terracotta","green_terracotta","red_terracotta","black_terracotta","white_stained_glass_pane","orange_stained_glass_pane","magenta_stained_glass_pane","light_blue_stained_glass_pane","yellow_stained_glass_pane","lime_stained_glass_pane","pink_stained_glass_pane","gray_stained_glass_pane","light_gray_stained_glass_pane","cyan_stained_glass_pane","purple_stained_glass_pane","blue_stained_glass_pane","brown_stained_glass_pane","green_stained_glass_pane","red_stained_glass_pane","black_stained_glass_pane","acacia_stairs","dark_oak_stairs","slime_block","barrier","iron_trapdoor","prismarine","prismarine_bricks","dark_prismarine","prismarine_stairs","prismarine_bricks_stairs","dark_prismarine_stairs","prismarine_slab","prismarine_bricks_slab","dark_prismarine_slab","sea_lantern","hay_block","white_carpet","orange_carpet","magenta_carpet","light_blue_carpet","yellow_carpet","lime_carpet","pink_carpet","gray_carpet","light_gray_carpet","cyan_carpet","purple_carpet","blue_carpet","brown_carpet","green_carpet","red_carpet","black_carpet","terracotta","coal_block","packed_ice","sunflower","lilac","rose_bush","peony","tall_grass","large_fern","white_banner","orange_banner","magenta_banner","light_blue_banner","yellow_banner","lime_banner","pink_banner","gray_banner","light_gray_banner","cyan_banner","purple_banner","blue_banner","brown_banner","green_banner","red_banner","black_banner","white_wall_banner","orange_wall_banner","magenta_wall_banner","light_blue_wall_banner","yellow_wall_banner","lime_wall_banner","pink_wall_banner","gray_wall_banner","light_gray_wall_banner","cyan_wall_banner","purple_wall_banner","blue_wall_banner","brown_wall_banner","green_wall_banner","red_wall_banner","black_wall_banner","red_sandstone","chiseled_red_sandstone","cut_red_sandstone","red_sandstone_stairs","oak_slab","spruce_slab","birch_slab","jungle_slab","acacia_slab","dark_oak_slab","stone_slab","sandstone_slab","petrified_oak_slab","cobblestone_slab","brick_slab","stone_brick_slab","nether_brick_slab","quartz_slab","red_sandstone_slab","purpur_slab","smooth_stone","smooth_sandstone","smooth_quartz","smooth_red_sandstone","spruce_fence_gate","birch_fence_gate","jungle_fence_gate","acacia_fence_gate","dark_oak_fence_gate","spruce_fence","birch_fence","jungle_fence","acacia_fence","dark_oak_fence","spruce_door","birch_door","jungle_door","acacia_door","dark_oak_door","end_rod","chorus_plant","chorus_flower","purpur_block","purpur_pillar","purpur_stairs","end_stone_bricks","beetroots","grass_path","end_gateway","repeating_command_block","chain_command_block","frosted_ice","magma_block","nether_wart_block","red_nether_bricks","bone_block","structure_void","observer","white_shulker_box","orange_shulker_box","magenta_shulker_box","light_blue_shulker_box","yellow_shulker_box","lime_shulker_box","pink_shulker_box","gray_shulker_box","light_gray_shulker_box","cyan_shulker_box","purple_shulker_box","blue_shulker_box","brown_shulker_box","green_shulker_box","red_shulker_box","black_shulker_box","white_glazed_terracotta","orange_glazed_terracotta","magenta_glazed_terracotta","light_blue_glazed_terracotta","yellow_glazed_terracotta","lime_glazed_terracotta","pink_glazed_terracotta","gray_glazed_terracotta","light_gray_glazed_terracotta","cyan_glazed_terracotta","purple_glazed_terracotta","blue_glazed_terracotta","brown_glazed_terracotta","green_glazed_terracotta","red_glazed_terracotta","black_glazed_terracotta","white_concrete","orange_concrete","magenta_concrete","light_blue_concrete","yellow_concrete","lime_concrete","pink_concrete","gray_concrete","light_gray_concrete","cyan_concrete","purple_concrete","blue_concrete","brown_concrete","green_concrete","red_concrete","black_concrete","white_concrete_powder","orange_concrete_powder","magenta_concrete_powder","light_blue_concrete_powder","yellow_concrete_powder","lime_concrete_powder","pink_concrete_powder","gray_concrete_powder","light_gray_concrete_powder","cyan_concrete_powder","purple_concrete_powder","blue_concrete_powder","brown_concrete_powder","green_concrete_powder","red_concrete_powder","black_concrete_powder","kelp","kelp_top","dried_kelp_block","turtle_egg","void_air","cave_air","bubble_column","structure_block"],EntityTag:{id:"minecraft:chicken",Tags:["cubespawn"],Silent:1b,NoAI:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:2000000,ShowParticles:0b}]}}

#TODO
#laser blocks pushing other cubes
execute as @e[type=shulker,tag=laser] at @s align xyz if entity @e[type=shulker,tag=cube,dx=0,dy=0,dz=0] as @e[type=shulker,tag=cube,dx=0,dy=10,dz=0] at @s run tp @s ~ ~1 ~
execute as @e[type=shulker,tag=cube] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=shulker,tag=cube,distance=..0.40] as @e[type=shulker,tag=cube,dx=0,dy=10,dz=0] at @s run tp @s ~ ~1 ~

#gravity
execute as @e[type=shulker,tag=cube,tag=!blue,tag=!green,tag=!red,tag=!yellow,tag=!gray] at @s unless block ~ ~ ~ iron_trapdoor unless block ~ ~1 ~ #paint:painter_all unless block ~ ~-1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~ ~-1 ~ iron_trapdoor[half=top] positioned ~ ~-1 ~ unless entity @e[type=shulker,tag=laser,distance=..0.5] unless entity @e[type=shulker,tag=cube,distance=..0.5] if block ~ ~ ~ #paint:cubegravity run teleport @s ~ ~ ~


#placing cubes on other cubes or lasers
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run scoreboard players set @p[scores={shoot=1..},tag=cube] place 1
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run kill @e[tag=cubespawn,distance=..5]
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,NoGravity:1b,Tags:["cubespawn"]}
execute as @a[scores={shoot=1..},tag=cube] at @s as @e[type=shulker,tag=blockplace,distance=..5,limit=1,sort=nearest] at @s positioned ~ ~1 ~ align xyz run tag @p[scores={shoot=1..},tag=cube] remove cube

execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~2 ~ iron_trapdoor[open=false] run tp @s ~ ~2 ~
execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~1 ~ iron_trapdoor[open=false] run tp @s ~ ~1 ~

execute as @e[type=chicken,tag=cubespawn] at @s if block ~1 ~ ~ iron_trapdoor[open=true,facing=west] run tp @s ~1 ~ ~
execute as @e[type=chicken,tag=cubespawn] at @s if block ~-1 ~ ~ iron_trapdoor[open=true,facing=east] run tp @s ~-1 ~ ~
execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~ ~1 iron_trapdoor[open=true,facing=north] run tp @s ~ ~ ~1
execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~ ~-1 iron_trapdoor[open=true,facing=south] run tp @s ~ ~ ~-1

execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~ ~ grass_path run tp @s ~ ~1 ~
execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~-1 ~ #paint:cubegravity unless block ~ ~ ~ iron_trapdoor unless block ~ ~-1 ~ iron_trapdoor[half=top] unless block ~ ~1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~1 ~ ~ minecraft:polished_andesite unless block ~-1 ~ ~ minecraft:polished_andesite unless block ~ ~ ~1 polished_andesite unless block ~ ~ ~-1 polished_andesite unless block ~ ~1 ~ polished_andesite positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.2] run tp @s ~ ~ ~
execute as @e[type=chicken,tag=cubespawn] at @s if block ~ ~-1 ~ #paint:cubegravity unless block ~ ~ ~ iron_trapdoor unless block ~ ~-1 ~ iron_trapdoor[half=top] unless block ~ ~1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all unless block ~1 ~ ~ minecraft:polished_andesite unless block ~-1 ~ ~ minecraft:polished_andesite unless block ~ ~ ~1 polished_andesite unless block ~ ~ ~-1 polished_andesite unless block ~ ~1 ~ polished_andesite positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.2] run tp @s ~ ~ ~


execute as @e[tag=cubespawn,tag=!levelsetup] at @s align xyz if block ~ ~ ~ #paint:cubewhitelist run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup"],NoGravity:1b,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoAI:1b,Invulnerable:0b,NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}
execute as @e[tag=cubespawn,tag=levelsetup] at @s align xyz if block ~ ~ ~ #paint:cubewhitelist run summon shulker ~0.5 ~ ~0.5 {Tags:["cube","cubesetup","levelsetup"],NoGravity:1b,PersistenceRequired:1,NoAI:1,Silent:1,Team:"knockback",Passengers:[{id:"armor_stand",Tags:["cube","cubestand"],NoAI:1b,Invulnerable:0b,NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:wooden_hoe",Count:1}]}]}

execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run scoreboard players set @e place 0
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run tag @p add cube
execute as @e[tag=cubespawn] at @s unless block ~ ~ ~ #paint:cubewhitelist run kill @s

execute as @a[tag=cubeA,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeA
execute as @a[tag=cubeB,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeB
execute as @a[tag=cubeC,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeC
execute as @a[tag=cubeD,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeD
execute as @a[tag=cubeE,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeE
execute as @a[tag=cubeF,scores={place=1..}] at @s run tag @e[type=shulker,tag=cubesetup,limit=1,sort=nearest] add cubeF

execute as @e[tag=cubeA,tag=cubesetup,type=shulker] at @s run team join cube_a @e[type=armor_stand,tag=cube,limit=1,sort=nearest]
execute as @e[tag=cubeB,tag=cubesetup,type=shulker] at @s run team join cube_b @e[type=armor_stand,tag=cube,limit=1,sort=nearest]
execute as @e[tag=cubeC,tag=cubesetup,type=shulker] at @s run team join cube_c @e[type=armor_stand,tag=cube,limit=1,sort=nearest]
execute as @e[tag=cubeD,tag=cubesetup,type=shulker] at @s run team join cube_d @e[type=armor_stand,tag=cube,limit=1,sort=nearest]
execute as @e[tag=cubeE,tag=cubesetup,type=shulker] at @s run team join cube_e @e[type=armor_stand,tag=cube,limit=1,sort=nearest]
execute as @e[tag=cubeF,tag=cubesetup,type=shulker] at @s run team join cube_f @e[type=armor_stand,tag=cube,limit=1,sort=nearest]

execute as @e[tag=cubeA,tag=cubesetup,type=shulker] at @s run team join cube_a @s
execute as @e[tag=cubeB,tag=cubesetup,type=shulker] at @s run team join cube_b @s
execute as @e[tag=cubeC,tag=cubesetup,type=shulker] at @s run team join cube_c @s
execute as @e[tag=cubeD,tag=cubesetup,type=shulker] at @s run team join cube_d @s
execute as @e[tag=cubeE,tag=cubesetup,type=shulker] at @s run team join cube_e @s
execute as @e[tag=cubeF,tag=cubesetup,type=shulker] at @s run team join cube_f @s

tag @e[type=shulker,tag=cubesetup] remove cubesetup

scoreboard players set @e[tag=cube,tag=cubespawn] cd 0
teleport @e[tag=cubespawn] ~ 0 ~
kill @e[tag=cubespawn]
teleport @e[type=chicken] ~ 0 ~
kill @e[type=chicken]

execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:tripwire run particle witch ~ ~1 ~ 0.4 0.4 0.4 0.1 30
execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:tripwire run scoreboard players set @s place 1
execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:tripwire run playsound cube.complain master @a ~ ~ ~ 10 1 1

execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:water run particle witch ~ ~1 ~ 0.4 0.4 0.4 0.1 3
execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:water run scoreboard players set @s place 1
execute as @a[tag=cube] at @s if block ~ ~ ~ minecraft:water run playsound cube.complain master @a ~ ~ ~ 10 1 1

#placing a cube
tag @a[scores={place=1..}] remove cube
tag @a[scores={place=1..}] remove cube0
tag @a[scores={place=1..}] remove cubeA
tag @a[scores={place=1..}] remove cubeB
tag @a[scores={place=1..}] remove cubeC
tag @a[scores={place=1..}] remove cubeD
tag @a[scores={place=1..}] remove cubeE
tag @a[scores={place=1..}] remove cubeF

execute as @a[scores={place=1..}] at @s run playsound cube.place block @a ~ ~ ~ 1 1
clear @a[scores={place=1..}] minecraft:chicken_spawn_egg
clear @a[tag=!cube,gamemode=adventure] minecraft:chicken_spawn_egg

#muss ich noch mal ändern lohl
execute as @e[type=shulker,tag=cube,tag=!fallen,tag=!green,tag=!yellow,tag=!red,tag=!blue,tag=!gray] at @s unless block ~ ~ ~ iron_trapdoor if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air unless block ~ ~1 ~ #paint:painter_all unless block ~1 ~ ~ #paint:painter_all unless block ~-1 ~ ~ #paint:painter_all unless block ~ ~ ~1 #paint:painter_all unless block ~ ~ ~-1 #paint:painter_all positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.2] positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.2] positioned ~ ~-1 ~ unless entity @e[type=shulker,distance=..0.2] run playsound cube.fall master @a
execute as @e[type=shulker,tag=cube] at @s if block ~ ~-1 ~ air if block ~ ~-2 ~ air if block ~ ~-3 ~ air if block ~ ~-4 ~ air run tag @s add fallen

#whitelist of blocks that the cube can be in
execute as @e[type=shulker,tag=cube] at @s unless block ~ ~ ~ #paint:cubewhitelist run tag @s add cubehurt
execute as @e[type=shulker,tag=cube] at @s if block ~ ~ ~ minecraft:dead_brain_coral run tag @s add cubehurt

#cube death
execute as @e[type=shulker,tag=cubehurt] at @s run playsound cube.death master @a ~ ~ ~ 10 1 1
execute as @e[type=shulker,tag=cubehurt] at @s run particle witch ~ ~0.5 ~ 0.5 0.5 0.5 0.1 100
execute as @e[type=shulker,tag=cubehurt] at @s run kill @e[limit=2,sort=nearest,tag=cube]

execute as @e[type=armor_stand,tag=detector,tag=!setup] at @s run setblock ~ ~ ~ minecraft:diamond_ore
execute as @e[type=armor_stand,tag=detector,tag=setup] at @s if block ~ ~ ~ air run kill @s

#detector
tag @e[type=armor_stand,tag=detector,tag=!setup] add setup
tag @e[type=armor_stand,tag=detector,tag=active] remove active
execute as @e[type=shulker,tag=input] at @s run tag @e[tag=detector,distance=..1.2] add active

#detecor block extension
execute as @e[type=shulker,tag=input] at @s if block ~ ~-1 ~ #paint:detector_extender positioned ~ ~-1 ~ run tag @e[tag=detector,distance=..1.2] add active
execute as @e[type=shulker,tag=input] at @s if block ~ ~1 ~ #paint:detector_extender positioned ~ ~1 ~ run tag @e[tag=detector,distance=..1.2] add active
execute as @e[type=shulker,tag=input] at @s if block ~1 ~ ~ #paint:detector_extender positioned ~1 ~ ~ run tag @e[tag=detector,distance=..1.2] add active
execute as @e[type=shulker,tag=input] at @s if block ~-1 ~ ~ #paint:detector_extender positioned ~-1 ~ ~ run tag @e[tag=detector,distance=..1.2] add active
execute as @e[type=shulker,tag=input] at @s if block ~ ~ ~1 #paint:detector_extender positioned ~ ~ ~1 run tag @e[tag=detector,distance=..1.2] add active
execute as @e[type=shulker,tag=input] at @s if block ~ ~ ~-1 #paint:detector_extender positioned ~ ~ ~-1 run tag @e[tag=detector,distance=..1.2] add active

execute as @e[type=armor_stand,tag=detector,tag=!active] at @s if block ~ ~ ~ minecraft:redstone_block run playsound deactivate master @a ~ ~ ~ 0.5 1 1
execute as @e[type=armor_stand,tag=detector,tag=!active] at @s unless block ~ ~ ~ diamond_ore run fill ~ ~ ~ ~ ~ ~ minecraft:diamond_ore
execute as @e[type=armor_stand,tag=detector,tag=active] at @s if block ~ ~ ~ minecraft:diamond_ore run playsound activate master @a ~ ~ ~ 0.5 1 1
execute as @e[type=armor_stand,tag=detector,tag=active] at @s unless block ~ ~ ~ redstone_block run fill ~ ~ ~ ~ ~ ~ minecraft:redstone_block

effect give @e[tag=cube] minecraft:instant_health 1 5 true


execute as @e[type=armor_stand,tag=cube] at @s unless entity @e[type=shulker,tag=cube,distance=..2,limit=1] run kill @s
