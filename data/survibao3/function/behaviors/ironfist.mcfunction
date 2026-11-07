playsound minecraft:block.anvil.land ambient @a ~ ~ ~ 1 0.7
playsound minecraft:entity.generic.explode ambient @a ~ ~ ~ 1 2
execute as @n[tag=hited_bp] run effect give @s blindness 10
execute as @n[tag=hited_bp] at @s run particle minecraft:damage_indicator ~ ~ ~ 0 0 0 2 50
function survibao3:administrador/state_maneger/agresion_signal_clear