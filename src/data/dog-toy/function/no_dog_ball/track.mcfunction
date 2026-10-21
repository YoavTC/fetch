# Runs as a temp marker: follow its own snowball, or drop the ball item once it's gone
scoreboard players operation #id dog-toy.fetch_ball = @s dog-toy.fetch_ball
scoreboard players set #found dog-toy.fetch_ball 0
tag @s add ball.active
execute as @e[type=snowball] if score @s dog-toy.fetch_ball = #id dog-toy.fetch_ball run function dog-toy:no_dog_ball/follow
tag @s remove ball.active

execute if score #found dog-toy.fetch_ball matches 0 run loot spawn ~ ~.5 ~ loot dog-toy:ball
execute if score #found dog-toy.fetch_ball matches 0 run kill @s
