# --- OPERATIONS ---

# Parametros do ray
scoreboard objectives add ray_dist dummy
scoreboard objectives add ray_step dummy
scoreboard objectives add ray_result dummy

# Trigonometria
scoreboard objectives add trgiy dummy
scoreboard objectives add trgip dummy
scoreboard objectives add trgx dummy
scoreboard objectives add trgy dummy
scoreboard objectives add trgz dummy
scoreboard objectives add trgx2 dummy
scoreboard objectives add trgy2 dummy
scoreboard objectives add trgz2 dummy

# --- BEHAVIORS ---

# Posse
scoreboard objectives add possuir dummy

# Raio
scoreboard objectives add bolt_mode dummy
scoreboard objectives add bolt_timer dummy
scoreboard objectives add head_ray_timer dummy
scoreboard objectives add bolt_cooldown dummy

# Tornado
scoreboard objectives add torn_timer dummy

# Tempo da névoa mística
scoreboard objectives add fart_timer dummy

# Tempo da solidificaçao
scoreboard objectives add solidfy_timer dummy

# Esmeralda
scoreboard objectives add emerald_loop dummy
scoreboard objectives add imposto dummy

# Generic slot
scoreboard objectives add gs1 dummy
scoreboard objectives add gs2 dummy
scoreboard objectives add gs3 dummy

# --- ADMINISTRADOR ---
scoreboard objectives add mod_delay001 dummy
scoreboard objectives add mod_delay002 dummy
scoreboard objectives add intro dummy
scoreboard objectives add agressionc_timer dummy
scoreboard objectives add conf dummy
scoreboard objectives add player_distant dummy
scoreboard objectives add ptimer dummy
scoreboard objectives add gm dummy
scoreboard objectives add copykill dummy
scoreboard objectives add hearttimer dummy

#scoreboard objectives add pry dummy
#scoreboard objectives add prp dummy
#scoreboard objectives add px dummy
#scoreboard objectives add py dummy
#scoreboard objectives add pz dummy

scoreboard objectives add t001 dummy
scoreboard objectives add t002 dummy
scoreboard objectives add t003 dummy

scoreboard objectives add greturn dummy

scoreboard objectives add venc_raio dummy

# Cheetos místico debuff
# Cheetos vencido debuff (raio)
# Cheetos estragado 8 hearts e imposto
# Cheetos ventoso 6 hearts

# TAGS

# cdm_13
# cdm_mistico
# cdm_original
# cdm_requeijao
# cdm_torrado
# cdm_vencido
# cdm_ventoso
# cdm_13

# --- Timer initialization ---
execute as @a run scoreboard players set @s ptimer 0
execute as @a run scoreboard players set @s hearttimer 0
execute run scoreboard players set dummy copykill 0

# --- SAUDAÇÃO ---

say O datapack do survibão 3 foi carregado
say Seja bem vindos ao survibão 3, o servidor foi recém aberto, desfrutem.
execute as @a at @s if score dummy intro matches 1 run function survibao3:administrador/graph_events/intro
