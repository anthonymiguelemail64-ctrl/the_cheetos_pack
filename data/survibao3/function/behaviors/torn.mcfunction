summon armor_stand ^ ^ ^2 {CustomName:'Tornado',CustomNameVisible:1b,Tags:['tornado', 'survb_work'],NoGravity:1b, Invisible:1b}
rotate @n[tag=tornado] facing entity @s feet
scoreboard players set @s torn_timer 200
playsound minecraft:entity.breeze.charge ambient @a ~ ~ ~ 1 1
playsound entity.wither.ambient ambient @a ~ ~ ~ 1 1