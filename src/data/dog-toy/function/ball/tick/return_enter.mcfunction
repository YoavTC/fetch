tag @s remove ball.tick_ground
tag @s add ball.tick_return

kill @n[type=item]
effect give @n[type=wolf] speed infinite 1
scoreboard players reset @s dog-toy.fetch_ball

function dog-toy:ball/tick/return_tick