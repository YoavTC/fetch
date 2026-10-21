# execute on origin run loot give @s loot dog-toy:ball
# loot spawn ~ ~ ~ loot dog-toy:ball
# kill @s

summon marker ~ ~ ~ {Tags:[ball.temp]}

execute as @n[type=marker,tag=ball.temp] positioned as @s run function dog-toy:no_dog_ball/air_enter