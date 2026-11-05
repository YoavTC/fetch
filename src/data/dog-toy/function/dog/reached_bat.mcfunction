tag @s add dog-toy.reached_bat
scoreboard players reset @s dog-toy.timeout
effect clear @s speed
effect give @s speed infinite 0 true
kill @n[type=item,tag=dog-toy.item]

function dog-toy:fx/reach_ball