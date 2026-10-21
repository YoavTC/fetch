# Re-execute the function as the wolf entity
execute unless entity @s[type=wolf] as @e[type=wolf,tag=ball.active,tag=ball.tick_return] positioned as @s run return run function dog-toy:ball/tick/return_tick

execute if entity @p[distance=..2] run return run function dog-toy:ball/ball_returned

# Re-apply aggro to iron golem (target the thrower)
function dog-toy:ball/tick/return_tick/set_aggro

scoreboard players add @s dog-toy.fetch_ball 1
execute if score @s dog-toy.fetch_ball >= $return_timeout dog-toy.fetch_ball run return run function dog-toy:ball/ball_timeout

# Lower delay = wolf has higher accuracy when chasing player to return ball
schedule function dog-toy:ball/tick/return_tick 5t