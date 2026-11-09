# Timeout
scoreboard players add @s fetch.timeout 1
execute if score @s fetch.timeout >= $return fetch.timeout run return run function fetch:dog/timeout

# Re-apply aggro to iron golem (onto player)
execute on passengers as @s[type=iron_golem,tag=fetch.golem] run data modify entity @s angry_at set from entity @s data.fetch.player

# Check distance
execute positioned as @s if function fetch:dog/check_distance_owner run function fetch:dog/reached_owner