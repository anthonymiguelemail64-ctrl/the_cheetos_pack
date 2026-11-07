function survibao3:operations/ray

execute as @n[tag=ray] at @s if score @p[tag=ray_exe] ray_result matches 1 if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~
execute as @n[tag=ray] at @s if score @p[tag=ray_exe] ray_result matches 1 if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~
execute as @n[tag=ray] at @s if score @p[tag=ray_exe] ray_result matches 1 if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~

execute as @n[tag=ray] at @s if score @p[tag=ray_exe] bolt_mode matches 1 run function survibao3:behaviors/spark

function survibao3:operations/ray_close