# Storage
data remove storage fetch:temp bat_exists
data remove storage fetch:temp owner_exists

# Entities
execute as @e[type=wolf,tag=fetch.active_dog] positioned as @s run function fetch:dog/unload
execute as @e[type=interaction,tag=fetch.interaction] on vehicle run function fetch:bat/unload
execute as @e[type=bat,tag=fetch.bat] run function fetch:bat/unload
kill @e[type=snowball,tag=fetch.snowball]

# Temp tags
execute as @a[tag=fetch.throwing_player] run tag @s remove fetch.throwing_player
execute as @e[type=bat,tag=fetch.bat_temp] run tag @s remove fetch.bat_temp
execute as @e[type=wolf,tag=fetch.dog_temp] run tag @s remove fetch.dog_temp
execute as @e[type=item,tag=fetch.item_temp] run tag @s remove fetch.item_temp

# Scoreboards
scoreboard objectives add fetch.timeout dummy
scoreboard players reset * fetch.timeout
scoreboard players set $fetch fetch.timeout 60
scoreboard players set $return fetch.timeout 80

# Welcome message (runs once)
execute if data storage fetch:const {"shown_welcome_message":true} run return 1
data modify storage fetch:const shown_welcome_message set value true
tellraw @a {text:""}
tellraw @a [{text:"Fetch!",color:yellow,bold:true,italic:true},{text:" datapack installed!",color:red,bold:false,italic:false}]
tellraw @a [{text:"Created by Yoav TC ",color:yellow},{"text":"(",color:"gray"},{text:"yoavtc.work",color:"aqua",underlined:true,hover_event:{action:"show_text",value:{text:"Click to check out my website!"}},click_event:{action:"open_url",url:"https://yoavtc.work/"}},{"text":")",color:"gray"}]
tellraw @a {text:"Play fetch with your dog! Have fun!",color:yellow}
tellraw @a {text:""}
tellraw @a {text:"- only works in survival",color:"gray"}
tellraw @a {text:"- this message will only run once!",color:"gray"}
tellraw @a {text:""}