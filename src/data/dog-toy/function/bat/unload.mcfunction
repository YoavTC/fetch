execute if entity @s[tag=fetch.unclaimed_bat] run function fetch:item/drop_item

execute on vehicle run kill @s[type=interaction,tag=fetch.interaction]
tp @s ~ ~-1000 ~