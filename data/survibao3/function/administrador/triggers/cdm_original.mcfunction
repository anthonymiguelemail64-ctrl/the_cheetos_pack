execute if score dummy copykill matches 1 run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 0.7
execute if score dummy copykill matches 1 run playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 0.8
execute if score dummy copykill matches 1 run playsound minecraft:block.anvil.place ambient @a ~ ~ ~ 1 0.5
execute if score dummy copykill matches 1 run title @s actionbar {"text":"As cópias expiraram","color":"cyan"}