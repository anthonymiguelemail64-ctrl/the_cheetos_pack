#Decrementos
execute unless score @s mod_delay001 matches ..0 run scoreboard players remove @s mod_delay001 1
execute unless score @s mod_delay002 matches ..0 run scoreboard players remove @s mod_delay002 1
execute unless score @s bolt_timer matches ..0 run scoreboard players remove @s bolt_timer 1
execute unless score @s fart_timer matches ..0 run scoreboard players remove @s fart_timer 1
execute unless score @s agressionc_timer matches ..0 run scoreboard players remove @s agressionc_timer 1
execute unless score @s torn_timer matches ..0 run scoreboard players remove @s torn_timer 1
execute unless score @s solidfy_timer matches ..0 run scoreboard players remove @s solidfy_timer 1
execute unless score dummy copykill matches ..0 run scoreboard players remove @s copykill 1
execute unless score @s hearttimer matches ..0 run scoreboard players remove @s hearttimer 1
execute unless score @s head_ray_timer matches ..0 run scoreboard players remove @s head_ray_timer 1
execute unless score @s imposto matches ..0 run scoreboard players remove @s imposto 1
execute unless score @s bolt_cooldown matches ..0 run scoreboard players remove @s bolt_cooldown 1

#Corretores
execute if score @s bolt_timer matches ..-1 run scoreboard players set @s bolt_timer 0
execute if score @s agressionc_timer matches ..-1 run scoreboard players set @s agressionc_timer 0
execute if score @s fart_timer matches ..-1 run scoreboard players set @s fart_timer 0
execute if score @s torn_timer matches ..-1 run scoreboard players set @s torn_timer 0
execute if score @s mod_delay001 matches ..-1 run scoreboard players set @s mod_delay001 0
execute if score @s mod_delay002 matches ..-1 run scoreboard players set @s mod_delay002 0
execute if score @s solidfy_timer matches ..-1 run scoreboard players set @s solidfy_timer 0
execute if score dummy copykill matches ..-1 run scoreboard players set @s copykill 0
execute if score @s head_ray_timer matches ..-1 run scoreboard players set @s head_ray_timer 0
execute if score @s imposto matches ..-1 run scoreboard players set @s imposto 0
execute if score @s bolt_cooldown matches ..-1 run scoreboard players set @s bolt_cooldown 0
