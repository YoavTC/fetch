particle angry_villager ~ ~.5 ~ 0 0 0 0 1 force
playsound minecraft:entity.wolf_puglin.whine neutral @a ~ ~ ~

# If wolf was retrieving ball back, spawn ball item
execute if entity @s[tag=ball.tick_return] run function dog-toy:ball/item/spawn

function dog-toy:ball/unload with entity @s