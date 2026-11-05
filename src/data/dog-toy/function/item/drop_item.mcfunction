summon item ~ ~ ~ {Item:{id:"snowball"},Tags:["dog-toy.item_temp"],Motion:[0,0.2,0],PickupDelay:20}
execute as @n[type=item,tag=dog-toy.item_temp] run function dog-toy:item/apply_components
data modify entity @n[type=item,tag=dog-toy.item_temp] Item.components.minecraft:item_model set from entity @s data.dog-toy.model