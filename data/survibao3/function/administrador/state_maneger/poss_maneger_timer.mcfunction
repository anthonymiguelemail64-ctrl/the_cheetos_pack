execute if score @s ptimer matches 1.. run scoreboard players remove @s ptimer 1
execute if score @s ptimer matches ..-1 run scoreboard players set @s ptimer 0

execute unless entity @s[tag=cdm_13] if predicate survibao3:on_inv/cdm_13 run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_mistico] if predicate survibao3:on_inv/cdm_mistico run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_original] if predicate survibao3:on_inv/cdm run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_requeijao] if predicate survibao3:on_inv/cdm_req run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_torrado] if predicate survibao3:on_inv/cdm_torrado run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_vencido] if predicate survibao3:on_inv/cdm_vencido run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_ventoso] if predicate survibao3:on_inv/cdm_ventoso run scoreboard players add @s ptimer 2
execute unless entity @s[tag=cdm_estragado] if predicate survibao3:on_inv/cdm_estragado run scoreboard players add @s ptimer 2

execute if entity @s[tag=cdm_13] unless predicate survibao3:on_inv/cdm_13 run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_mistico] unless predicate survibao3:on_inv/cdm_mistico run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_original] unless predicate survibao3:on_inv/cdm run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_requeijao] unless predicate survibao3:on_inv/cdm_req run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_torrado] unless predicate survibao3:on_inv/cdm_torrado run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_vencido] unless predicate survibao3:on_inv/cdm_vencido run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_ventoso] unless predicate survibao3:on_inv/cdm_ventoso run scoreboard players add @s ptimer 2
execute if entity @s[tag=cdm_estragado] unless predicate survibao3:on_inv/cdm_estragado run scoreboard players add @s ptimer 2

execute at @s if score @s ptimer matches 40 run playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.5 0
execute at @s if score @s ptimer matches 80 run playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 0.75 0
execute at @s if score @s ptimer matches 120 run playsound minecraft:block.respawn_anchor.charge ambient @a ~ ~ ~ 1 1 0
execute at @s if score @s ptimer matches 160.. run function survibao3:administrador/state_maneger/poss_sync
execute if score @s ptimer matches 160.. run scoreboard players set @s ptimer 0