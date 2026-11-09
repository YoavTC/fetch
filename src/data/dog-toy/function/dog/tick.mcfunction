
# Check golem exists (somehow golem got killed)
execute unless data entity @s Passengers[{id:"minecraft:iron_golem",Tags:["fetch.golem"]}] run return run function fetch:dog/unload

# Check owner exists (player left the game)
function fetch:dog/check_owner_exists with entity @s
execute if data storage fetch:temp {owner_exists:false} run return run function fetch:dog/unload

# If distance was checked and dog is close enough to bat
execute if entity @s[tag=fetch.reached_bat] run return run function fetch:dog/tick_return

# Timeout
scoreboard players add @s fetch.timeout 1
execute if score @s fetch.timeout >= $fetch fetch.timeout run return run function fetch:dog/timeout

# Check bat exists (ball picked up/destroyed)
function fetch:dog/check_bat_exists with entity @s data.fetch
execute if data storage fetch:temp {bat_exists:false} run return run function fetch:dog/unload

# Re-apply aggro to iron golem & check distance from bat
execute on passengers as @s[type=iron_golem,tag=fetch.golem] run data modify entity @s angry_at set from entity @s data.fetch.bat
function fetch:dog/check_distance with entity @s data.fetch