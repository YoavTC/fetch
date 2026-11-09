# Bat (if exists)
function fetch:dog/unload_bat with entity @s data.fetch

# Golem
execute on passengers as @s[type=iron_golem,tag=fetch.golem] run tp @s ~ ~-1000 ~

# If held item, drop it
execute if entity @s[tag=fetch.reached_bat] run function fetch:item/drop_item with entity @s data.fetch

tag @s remove fetch.active_dog
tag @s remove fetch.reached_bat
data remove entity @s data.fetch
scoreboard players reset @s fetch.timeout
effect clear @s speed