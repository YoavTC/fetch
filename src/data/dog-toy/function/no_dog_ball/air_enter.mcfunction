execute unless entity @s[type=marker,tag=ball.temp] run return run execute as @n[type=marker,tag=ball.temp] positioned as @s run function dog-toy:no_dog_ball/air_enter

execute unless entity @n[type=snowball] run kill @s
execute unless entity @n[type=snowball] run return run loot spawn ~ ~.5 ~ loot dog-toy:ball

tp @s @n[type=snowball]
schedule function dog-toy:no_dog_ball/air_enter 1t