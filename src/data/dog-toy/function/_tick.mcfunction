# Clean up golem/bat left behind when their wolf is gone
execute as @e[type=iron_golem,tag=ball.ig] run function dog-toy:orphan/check_golem with entity @s data
