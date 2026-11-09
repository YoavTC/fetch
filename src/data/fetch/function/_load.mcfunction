# Storage
data remove storage fetch:temp bat_exists
data remove storage fetch:temp owner_exists

# Entities
execute as @e[type=wolf,tag=fetch.active_dog] positioned as @s run function fetch:dog/unload
execute as @e[type=interaction,tag=fetch.interaction] on vehicle run function fetch:bat/unload
execute as @e[type=bat,tag=fetch.bat] run function fetch:bat/unload
kill @e[type=snowball,tag=fetch.snowball]

# Temp tags
execute as @a[tag=fetch.throwing_player] run tag @s remove fetch.throwing_player
execute as @e[type=bat,tag=fetch.bat_temp] run tag @s remove fetch.bat_temp
execute as @e[type=wolf,tag=fetch.dog_temp] run tag @s remove fetch.dog_temp
execute as @e[type=item,tag=fetch.item_temp] run tag @s remove fetch.item_temp

# Scoreboards
scoreboard objectives add fetch.timeout dummy
scoreboard players reset * fetch.timeout
scoreboard players set $fetch fetch.timeout 60
scoreboard players set $return fetch.timeout 80