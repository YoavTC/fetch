execute as @e[type=wolf,tag=fetch.active_dog] positioned as @s run function fetch:dog/tick

execute if entity @n[type=wolf,tag=fetch.active_dog] run schedule function fetch:tick_dogs 3t