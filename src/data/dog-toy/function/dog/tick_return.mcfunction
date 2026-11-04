# Re-apply aggro to iron golem (onto player)
execute on passengers as @s[type=iron_golem,tag=dog-toy.golem] run data modify entity @s angry_at set from entity @s data.dog-toy.player

# Check distance
execute positioned as @s if function dog-toy:dog/check_distance_owner run function dog-toy:dog/reached_owner