tp @s ^ ^ ^0.5
execute as @p[tag=ray_exe] run scoreboard players add @s ray_step 1

execute as @s at @s unless block ^ ^ ^0.5 air run scoreboard players set @p[tag=ray_exe] ray_result 1
execute as @s at @s unless score @p[tag=ray_exe] ray_step < @p[tag=ray_exe] ray_dist run scoreboard players set @p[tag=ray_exe] ray_result 2

execute as @s at @s if block ^ ^ ^0.5 air if score @p[tag=ray_exe] ray_step < @p[tag=ray_exe] ray_dist run function survibao3:operations/ray_step