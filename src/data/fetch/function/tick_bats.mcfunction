execute as @e[type=bat,tag=fetch.bat] on vehicle unless predicate fetch:is_passenger on passengers positioned as @s positioned ~ ~-1.5 ~ run function fetch:bat/tick

execute if entity @n[type=bat,tag=fetch.bat] run schedule function fetch:tick_bats 3t