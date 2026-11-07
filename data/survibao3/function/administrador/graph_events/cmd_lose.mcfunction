playsound minecraft:entity.item.break ambient @a ~ ~ ~ 1 1 0
playsound minecraft:item.goat_horn.sound.5 ambient @a ~ ~ ~ 1 1 0

title @s actionbar {"text":"Você perdeu a posse do seu cheetos de marte","color":"red"}
tellraw @a [{"text":"O jogador ","color":"red","bold":true,"italic":false}, {"selector":"@p","color":"red","bold":true,"italic":false}, {"text":" perdeu a posse de seu cheetos de marte","color":"red","bold":true,"italic":false}]
