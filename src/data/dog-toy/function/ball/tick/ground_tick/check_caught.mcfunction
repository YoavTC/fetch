execute store success storage dog-toy:temp check_caught byte 1 run function dog-toy:ball/tick/ground_tick/check_caught/check with entity @s data

execute if data storage dog-toy:temp {check_caught:1b} run return 1
execute if data storage dog-toy:temp {check_caught:0b} run return fail