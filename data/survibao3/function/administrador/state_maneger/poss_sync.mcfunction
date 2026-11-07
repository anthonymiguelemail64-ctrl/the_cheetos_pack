execute unless entity @s[tag=cdm_13] if predicate survibao3:on_inv/cdm_13 run function survibao3:administrador/graph_events/cdm_13
execute if entity @s[tag=cdm_13] unless predicate survibao3:on_inv/cdm_13 run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_13] if predicate survibao3:on_inv/cdm_13 run tag @s add cdm_13
execute if entity @s[tag=cdm_13] unless predicate survibao3:on_inv/cdm_13 run tag @s remove cdm_13


execute unless entity @s[tag=cdm_mistico] if predicate survibao3:on_inv/cdm_mistico run function survibao3:administrador/graph_events/cdm_mistico
execute if entity @s[tag=cdm_mistico] unless predicate survibao3:on_inv/cdm_mistico run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_mistico] if predicate survibao3:on_inv/cdm_mistico run tag @s add cdm_mistico
execute if entity @s[tag=cdm_mistico] unless predicate survibao3:on_inv/cdm_mistico run tag @s remove cdm_mistico

execute unless entity @s[tag=cdm_original] if predicate survibao3:on_inv/cdm run function survibao3:administrador/graph_events/cdm
execute if entity @s[tag=cdm_original] unless predicate survibao3:on_inv/cdm run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_original] if predicate survibao3:on_inv/cdm run tag @s add cdm_original
execute if entity @s[tag=cdm_original] unless predicate survibao3:on_inv/cdm run tag @s remove cdm_original

execute unless entity @s[tag=cdm_requeijao] if predicate survibao3:on_inv/cdm_req run function survibao3:administrador/graph_events/cdm_requeijao
execute if entity @s[tag=cdm_requeijao] unless predicate survibao3:on_inv/cdm_req run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_requeijao] if predicate survibao3:on_inv/cdm_req run tag @s add cdm_requeijao
execute if entity @s[tag=cdm_requeijao] unless predicate survibao3:on_inv/cdm_req run tag @s remove cdm_requeijao

execute unless entity @s[tag=cdm_torrado] if predicate survibao3:on_inv/cdm_torrado run function survibao3:administrador/graph_events/cdm_torrado
execute if entity @s[tag=cdm_torrado] unless predicate survibao3:on_inv/cdm_torrado run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_torrado] if predicate survibao3:on_inv/cdm_torrado run tag @s add cdm_torrado
execute if entity @s[tag=cdm_torrado] unless predicate survibao3:on_inv/cdm_torrado run tag @s remove cdm_torrado

execute unless entity @s[tag=cdm_vencido] if predicate survibao3:on_inv/cdm_vencido run function survibao3:administrador/graph_events/cdm_vencido
execute if entity @s[tag=cdm_vencido] unless predicate survibao3:on_inv/cdm_vencido run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_vencido] if predicate survibao3:on_inv/cdm_vencido run tag @s add cdm_vencido
execute if entity @s[tag=cdm_vencido] unless predicate survibao3:on_inv/cdm_vencido run tag @s remove cdm_vencido

execute unless entity @s[tag=cdm_ventoso] if predicate survibao3:on_inv/cdm_ventoso run function survibao3:administrador/graph_events/cdm_ventoso
execute if entity @s[tag=cdm_ventoso] unless predicate survibao3:on_inv/cdm_ventoso run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_ventoso] if predicate survibao3:on_inv/cdm_ventoso run tag @s add cdm_ventoso
execute if entity @s[tag=cdm_ventoso] unless predicate survibao3:on_inv/cdm_ventoso run tag @s remove cdm_ventoso

execute unless entity @s[tag=cdm_estragado] if predicate survibao3:on_inv/cdm_estragado run function survibao3:administrador/graph_events/cdm_estragado
execute if entity @s[tag=cdm_estragado] unless predicate survibao3:on_inv/cdm_estragado run function survibao3:administrador/graph_events/cmd_lose
execute unless entity @s[tag=cdm_estragado] if predicate survibao3:on_inv/cdm_estragado run tag @s add cdm_estragado
execute if entity @s[tag=cdm_estragado] unless predicate survibao3:on_inv/cdm_estragado run tag @s remove cdm_estragado
