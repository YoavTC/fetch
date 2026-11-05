execute if entity @s[tag=dog-toy.unclaimed_bat] run function dog-toy:item/drop_item

execute on vehicle run kill @s[type=interaction,tag=dog-toy.interaction]
tp @s ~ ~-1000 ~