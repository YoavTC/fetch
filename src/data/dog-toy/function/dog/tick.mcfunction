particle heart ~ ~2 ~

# Check golem exists (somehow golem got killed)
execute unless data entity @s Passengers[{id:"minecraft:iron_golem",Tags:["dog-toy.golem"]}] run return run function dog-toy:dog/unload

# Check owner exists (player left the game)
function dog-toy:dog/check_owner_exists with entity @s
execute if data storage dog-toy:temp {owner_exists:false} run return run function dog-toy:dog/unload

# If distance was checked and dog is close enough to bat
execute if entity @s[tag=dog-toy.reached_bat] run return run function dog-toy:dog/tick_return

# Check bat exists (ball picked up/destroyed)
function dog-toy:dog/check_bat_exists with entity @s data.dog-toy
execute if data storage dog-toy:temp {bat_exists:false} run return run function dog-toy:dog/unload

# Re-apply aggro to iron golem & check distance from bat
execute on passengers as @s[type=iron_golem,tag=dog-toy.golem] run data modify entity @s angry_at set from entity @s data.dog-toy.bat
function dog-toy:dog/check_distance with entity @s data.dog-toy