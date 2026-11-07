playsound minecraft:entity.breeze.idle_ground ambient @a ~ ~ ~ 10
summon armor_stand ^ ^ ^2.5 {CustomName:'Tornado',CustomNameVisible:1b,Tags:['tornado2', 'survb_work'],NoGravity:1b, Invisible:1b}
particle minecraft:cloud ~ ~ ~ 5 0 5 0.5 25
execute as @e[distance=..5, tag=!cdm_ventoso] at @s run function survibao3:behaviors/torn_eff
tp @s ^ ^ ^-1
execute if score @p[tag=cdm_ventoso] torn_timer matches ..0 run playsound entity.wind_charge.wind_burst ambient @a ~ ~ ~ 5
execute if score @p[tag=cdm_ventoso] torn_timer matches ..0 run kill @s