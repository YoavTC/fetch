$execute as @n[type=bat,nbt={UUID:$(bat)}] at @s if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{ball:1b}}}},distance=..7] run return 1
return fail
