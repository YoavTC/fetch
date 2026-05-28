data modify entity @s item set from entity @s data.item
$execute positioned as @s run particle minecraft:item{item:"$(id)"} ~ ~.2 ~ 0.1 0.2 0.1 .05 10 force @a