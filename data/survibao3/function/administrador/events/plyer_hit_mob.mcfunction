advancement revoke @s only survibao3:hit_sens

tag @s add agressor
execute as @e[distance=..5, nbt={HurtTime:10s}, tag=!agressor] run tag @s add hited_bp

scoreboard players set @s agressionc_timer 40