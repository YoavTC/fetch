execute as @e[type=bat,tag=dog-toy.bat] unless predicate dog-toy:is_passenger positioned as @s run function dog-toy:bat/tick

execute if entity @n[type=bat,tag=dog-toy.bat] run schedule function dog-toy:tick_bats 3t