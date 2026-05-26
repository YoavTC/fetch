execute as @n[type=wolf] positioned as @s if entity @p[distance=..2] run return run function dog-toy:ball/ball_returned

# Move armor stand to player position
tp @n[type=bat] @p

execute as @n[type=wolf] run scoreboard players add @s dog-toy.fetch_ball 1
execute as @n[type=wolf] if score @s dog-toy.fetch_ball >= $return_timeout dog-toy.fetch_ball positioned as @s run return run function dog-toy:ball/ball_timeout

schedule function dog-toy:ball/tick/return_tick 3t