summon item ~ ~ ~ {Item:{id:"snowball"},Tags:["fetch.item_temp"],Motion:[0,0.2,0],PickupDelay:20}
execute as @n[type=item,tag=fetch.item_temp] run function fetch:item/apply_components
data modify entity @n[type=item,tag=fetch.item_temp] Item.components.minecraft:item_model set from entity @s data.fetch.model