execute as @s[tag=agressor] unless items entity @s weapon.mainhand * unless score @s solidfy_timer matches 0 run function survibao3:behaviors/ironfist
execute if score @s solidfy_timer matches 1 run playsound minecraft:block.grindstone.use ambient @a ~ ~ ~ 1 0.7
execute if score @s solidfy_timer matches 1 run playsound minecraft:block.respawn_anchor.deplete ambient @a ~ ~ ~ 1 0.8
execute if score @s solidfy_timer matches 1 run playsound minecraft:block.anvil.place ambient @a ~ ~ ~ 1 0.5
execute if score @s solidfy_timer matches 1 run title @s actionbar {"text":"Fim do Iron Boost","color":"gray"}

execute as @s[tag=agressor] if items entity @s weapon.mainhand * unless score @s solidfy_timer matches 0 run function survibao3:administrador/state_maneger/agresion_signal_clear

