tag @s remove ball.tick_ground
tag @s add ball.tick_return

kill @n[type=item]
scoreboard players reset @s dog-toy.fetch_ball

effect give @n[type=wolf] speed infinite 1
playsound minecraft:entity.fox.bite neutral @a ~ ~ ~ 1 .5
playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 .5

function dog-toy:ball/tick/return_tick