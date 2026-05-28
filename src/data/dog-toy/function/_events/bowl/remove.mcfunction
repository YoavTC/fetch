advancement revoke @s only dog-toy:_events/bowl/on_remove

execute positioned as @s rotated as @s anchored eyes positioned ^ ^ ^2 as @n[type=interaction,tag=bowl.interaction,nbt={interaction:{}}] on vehicle positioned as @s on passengers as @s[type=item_display,tag=bowl.item] run function dog-toy:bowl/remove