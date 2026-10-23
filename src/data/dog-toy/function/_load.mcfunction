# Ball config
scoreboard objectives add dog-toy.fetch_ball dummy
scoreboard players reset * dog-toy.fetch_ball

scoreboard players set $seek_timeout dog-toy.fetch_ball 50
scoreboard players set $return_timeout dog-toy.fetch_ball 100

# Clear any old iron golems or bats
execute as @e[type=wolf,tag=ball.active] positioned as @s run function dog-toy:ball/unload with entity @s