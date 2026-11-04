execute if entity @s[tag=dog-toy.unclaimed_bat] run loot spawn ~ ~-1 ~ loot dog-toy:ball

execute on vehicle run kill @s[type=interaction,tag=dog-toy.interaction]
tp @s ~ ~-1000 ~