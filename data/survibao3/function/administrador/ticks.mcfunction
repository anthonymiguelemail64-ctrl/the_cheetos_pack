execute if score dummy mod_delay001 matches ..0 run scoreboard players set dummy mod_delay001 5
execute unless score dummy mod_delay001 matches ..0 run scoreboard players remove dummy mod_delay001 1

# Agression signal cut
execute as @a at @s run function survibao3:administrador/state_maneger/agr_timer_sync

# Timer
execute as @a at @s run function survibao3:administrador/state_maneger/timer_maneger

# Posse
execute as @a at @s run function survibao3:administrador/state_maneger/poss_maneger_timer

# Triggers
execute as @a at @s run function survibao3:administrador/triggers/call_all

# Effect sync
execute as @a at @s run function survibao3:administrador/state_maneger/sync_effcts

# Copy kill
execute as @a at @s run function survibao3:administrador/state_maneger/kill_copies

# Heart sync
execute as @a at @s run function survibao3:administrador/state_maneger/heartsync