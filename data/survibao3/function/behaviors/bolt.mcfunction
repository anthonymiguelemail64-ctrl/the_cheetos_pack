scoreboard players set @s ray_dist 10
function survibao3:operations/ray

execute as @n[tag=ray] at @s if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~
execute as @n[tag=ray] at @s if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~
execute as @n[tag=ray] at @s if score @p[tag=ray_exe] bolt_mode matches 2 run summon lightning_bolt ~ ~ ~

execute as @n[tag=ray] at @s if score @p[tag=ray_exe] bolt_mode matches 1 run function survibao3:behaviors/spark

function survibao3:operations/ray_close

execute unless score @s bolt_cooldown matches 0 run title @s actionbar {"text":"Em cooldown","color":"dark_red"}