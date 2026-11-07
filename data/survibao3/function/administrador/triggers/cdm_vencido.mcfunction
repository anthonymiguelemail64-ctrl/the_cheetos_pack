execute if score @s bolt_mode matches 1 if score @s bolt_timer matches 0 if items entity @s weapon.mainhand *[custom_data~{vencido:1b}] run scoreboard players set @s bolt_mode 2
execute if score @s bolt_mode matches 1 if score @s bolt_timer matches 0 unless items entity @s weapon.mainhand *[custom_data~{vencido:1b}] run scoreboard players set @s bolt_mode 0
execute if score @s bolt_mode matches 2 if score @s bolt_cooldown matches ..0 run function survibao3:behaviors/bolt
execute if score @s bolt_mode matches 2 if score @s bolt_cooldown matches ..0 run scoreboard players set @s bolt_cooldown 100
execute if score @s bolt_mode matches 2 run scoreboard players set @s bolt_mode 0

execute if score @s bolt_cooldown matches 1 run playsound block.amethyst_block.break ambient @a ~ ~ ~
execute if score @s bolt_cooldown matches 1 run title @s actionbar {"text":"Raio carregado","color":"gold"}



execute if predicate survibao3:rain run scoreboard players add @s head_ray_timer 2
execute if score @s head_ray_timer matches 400 run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.5 0
execute if score @s head_ray_timer matches 400 run particle electric_spark ~ ~ ~ 2 1 2 1 500

execute if score @s head_ray_timer matches 800 run playsound item.trident.thunder ambient @a ~ ~ ~ 1 0.75 0
execute if score @s head_ray_timer matches 800 run particle electric_spark ~ ~ ~ 2 1 2 1 500

execute if score @s head_ray_timer matches 1200 run playsound item.trident.thunder ambient @a ~ ~ ~ 1 1 0
execute if score @s head_ray_timer matches 1200 run particle electric_spark ~ ~ ~ 2 1 2 1 500

execute if score @s head_ray_timer matches 1400 run playsound entity.generic.explode ambient @a ~ ~ ~
execute if score @s head_ray_timer matches 1400 run playsound entity.generic.explode ambient @a ~ ~ ~
execute if score @s head_ray_timer matches 1400 run playsound entity.generic.explode ambient @a ~ ~ ~
execute if score @s head_ray_timer matches 1400 run particle electric_spark ~ ~ ~ 2 1 2 1 500
execute if score @s head_ray_timer matches 1400 run function survibao3:behaviors/headray