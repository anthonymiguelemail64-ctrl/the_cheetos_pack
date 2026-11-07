execute as @n[tag=fart] at @s run function survibao3:behaviors/dragonfart_loop

execute if predicate survibao3:rain run effect give @s poison 11 1
execute if block ~ ~ ~ water run effect give @s poison 11 1