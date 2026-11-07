summon armor_stand ^ ^ ^2 {CustomName:'Esmeralda',CustomNameVisible:1b,Tags:['esmeralda', 'survb_work'],NoGravity:1b, Invisible:1b}
rotate @n[tag=esmeralda] facing entity @s feet
particle composter ~ ~ ~ 1 2 1 1 30
scoreboard players set @s emerald_loop 0
playsound entity.vex.charge ambient @a ~ ~ ~
playsound entity.warden.attack_impact ambient @a ~ ~ ~