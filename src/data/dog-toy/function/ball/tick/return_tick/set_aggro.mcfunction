data remove storage dog-toy:temp thrower
execute on owner run data modify storage dog-toy:temp thrower set from entity @s UUID
execute on passengers as @s[type=iron_golem] run data modify entity @s angry_at set from storage dog-toy:temp thrower
