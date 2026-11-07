execute if entity @s[tag=cdm_13] run function survibao3:administrador/state_maneger/funcs/cdm_13
execute if entity @s[tag=cdm_mistico] run function survibao3:administrador/state_maneger/funcs/cdm_mistico

execute if entity @s[tag=cdm_original] if score @s player_distant matches 1 run function survibao3:administrador/state_maneger/funcs/cdm
execute if entity @s[tag=cdm_original] if score @s player_distant matches 0 run function survibao3:administrador/state_maneger/funcs/cdm2

execute if entity @s[tag=cdm_requeijao] run function survibao3:administrador/state_maneger/funcs/cdm_requeijao
execute if entity @s[tag=cdm_requeijao] if score @s solidfy_timer matches 0 run effect give @s slowness 11 0 true
execute if entity @s[tag=cdm_requeijao] unless score @s solidfy_timer matches 0 unless items entity @s weapon.mainhand * run function survibao3:administrador/state_maneger/funcs/cdm_requeijao2

execute if entity @s[tag=cdm_torrado] run function survibao3:administrador/state_maneger/funcs/cdm_torrado
execute if entity @s[tag=cdm_vencido] run function survibao3:administrador/state_maneger/funcs/cdm_vencido
execute if entity @s[tag=cdm_ventoso] run function survibao3:administrador/state_maneger/funcs/cdm_ventoso
execute if entity @s[tag=cdm_estragado] run function survibao3:administrador/state_maneger/funcs/cdm_estragado