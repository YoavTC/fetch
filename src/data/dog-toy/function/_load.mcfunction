# Storage
data remove storage dog-toy:temp bat_exists
data remove storage dog-toy:temp owner_exists

# Entities
execute as @e[type=wolf,tag=dog-toy.active_dog] positioned as @s run function dog-toy:dog/unload
execute as @e[type=interaction,tag=dog-toy.interaction] on vehicle run function dog-toy:bat/unload
execute as @e[type=bat,tag=dog-toy.bat] run function dog-toy:bat/unload
kill @e[type=snowball,tag=dog-toy.snowball]

# Temp tags
execute as @a[tag=dog-toy.throwing_player] run tag @s remove dog-toy.throwing_player
execute as @e[type=bat,tag=dog-toy.bat_temp] run tag @s remove dog-toy.bat_temp
execute as @e[type=wolf,tag=dog-toy.dog_temp] run tag @s remove dog-toy.dog_temp
execute as @e[type=item,tag=dog-toy.item_temp] run tag @s remove dog-toy.item_temp

# Scoreboards
scoreboard objectives add dog-toy.timeout dummy
scoreboard players reset * dog-toy.timeout
scoreboard players set $fetch dog-toy.timeout 60
scoreboard players set $return dog-toy.timeout 80