# Remove possible cache issues
data remove storage dog-toy:temp player_item
data remove storage dog-toy:temp bowl_item
data remove storage dog-toy:temp player_item_copy
data remove storage dog-toy:temp compare

# Store player item (set count to 1)
execute on passengers as @s[type=interaction,tag=bowl.interaction] on target run data modify storage dog-toy:temp player_item set from entity @s SelectedItem
data modify storage dog-toy:temp player_item.count set value 1

# Store bowl item (set count to 1)
execute on passengers as @s[type=item_display,tag=bowl.item] run data modify storage dog-toy:temp bowl_item set from entity @s data.item
data modify storage dog-toy:temp bowl_item.count set value 1

# Compare
data modify storage dog-toy:temp player_item_copy set from storage dog-toy:temp player_item
execute store result storage dog-toy:temp compare byte 1 run data modify storage dog-toy:temp player_item_copy set from storage dog-toy:temp bowl_item
execute on passengers as @s[type=item_display,tag=bowl.item] unless entity @s[nbt={data:{item:{id:"air"}}}] if data storage dog-toy:temp {compare:0b} run return run say already has that same item!

swing @p

# If old item exists, drop it
execute on passengers as @s[type=item_display,tag=bowl.item] unless entity @s[nbt={data:{item:"air"}}] run function dog-toy:bowl/drop_food with entity @s data

data modify entity @n[type=item_display] data.item set from storage dog-toy:temp player_item

# Remove item from player's inventory
execute on passengers as @s[type=interaction] on target run item modify entity @s weapon.mainhand dog-toy:discard

# Display new item
execute on passengers as @s[type=item_display,tag=bowl.item] run function dog-toy:bowl/model/update_item with entity @s data.item

# Clear interaction & temp item data
data remove storage dog-toy:temp bowl_item
execute on passengers as @s[type=interaction] run data remove entity @s interaction
data remove storage dog-toy:temp player_item
data remove storage dog-toy:temp bowl_item
data remove storage dog-toy:temp player_item_copy
data remove storage dog-toy:temp compare