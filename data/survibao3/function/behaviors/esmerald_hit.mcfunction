playsound item.trident.thunder
particle composter ~ ~ ~ 1 1 1 1 10
damage @s 6

effect give @s slowness 6 2
effect give @s glowing 6

execute unless items entity @s container.* emerald[!custom_data] run particle crit ~ ~ ~ 1 0 1 1 50
execute unless items entity @s container.* emerald[!custom_data] run playsound entity.player.attack.crit ambient @a ~ ~ ~ 1 1
execute unless items entity @s container.* emerald[!custom_data] run damage @s 4

execute if items entity @s container.* emerald[!custom_data] run playsound block.amethyst_block.hit ambient @a ~ ~ ~ 1 1
execute if items entity @s container.* emerald[!custom_data] run playsound block.amethyst_block.hit ambient @a ~ ~ ~ 1 0.8
execute if items entity @s container.* emerald[!custom_data] run playsound block.amethyst_block.hit ambient @a ~ ~ ~ 1 0.6
execute if items entity @s container.* emerald[!custom_data] run summon item ^1.5 ^ ^2 {Item:{id:"minecraft:emerald",Count:1b}}
execute if items entity @s container.* emerald[!custom_data] run summon item ^ ^ ^2 {Item:{id:"minecraft:emerald",Count:1b}}
execute if items entity @s container.* emerald[!custom_data] run summon item ^-1.5 ^ ^2 {Item:{id:"minecraft:emerald",Count:1b}}
execute if items entity @s container.* emerald[!custom_data] run clear @s emerald 3