execute as @e[type=wolf,tag=dog-toy.active_dog] positioned as @s run function dog-toy:dog/tick

execute if entity @n[type=wolf,tag=dog-toy.active_dog] run schedule function dog-toy:tick_dogs 3t