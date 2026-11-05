execute as @e[type=bat,tag=dog-toy.bat] on vehicle unless predicate dog-toy:is_passenger on passengers positioned as @s positioned ~ ~-1.5 ~ run function dog-toy:bat/tick

execute if entity @n[type=bat,tag=dog-toy.bat] run schedule function dog-toy:tick_bats 3t