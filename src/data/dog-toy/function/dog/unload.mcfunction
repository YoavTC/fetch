# Bat (if exists)
function dog-toy:dog/unload_bat with entity @s data.dog-toy

# Golem
execute on passengers as @s[type=iron_golem,tag=dog-toy.golem] run tp @s ~ ~-1000 ~

# If held item, drop it
execute if entity @s[tag=dog-toy.reached_bat] run loot spawn ~ ~ ~ loot dog-toy:ball

tag @s remove dog-toy.active_dog
tag @s remove dog-toy.reached_bat
data remove entity @s data.dog-toy
scoreboard players reset @s dog-toy.timeout
effect clear @s speed