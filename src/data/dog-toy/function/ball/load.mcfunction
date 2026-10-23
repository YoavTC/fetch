# # Remove tag from owner
execute on owner run tag @s remove ball.threw

# Check if closest pet wolf is already fetching a ball
execute as @s[nbt={Passengers:[{id:"minecraft:iron_golem"}]}] run return run function dog-toy:ball/cancel_throw

# Remove earier throw instance cache
execute as @s[tag=ball.active] positioned as @s run function dog-toy:ball/unload with entity @s

# Remember if the wolf already had speed, so we don't override/clear it
execute if data entity @s active_effects[{id:"minecraft:speed"}] run tag @s add ball.had_speed

# Bind this throw's snowball to the wolf
data modify entity @s data.snowball set from entity @n[type=snowball,nbt={Item:{components:{"minecraft:custom_data":{ball:1b}}}}] UUID

# Setup iron golem (wolf AI) & store wolf's UUID in it's data
summon iron_golem ~ ~ ~ {Tags:[ball.unset_ig],Silent:1b,attributes:[{id:scale,base:0.0625},{id:"attack_damage", base:0}],Invulnerable:true,Health:1,active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}
ride @n[type=iron_golem,tag=ball.unset_ig] mount @s

data modify entity @n[type=iron_golem,tag=ball.unset_ig] data.wolf set from entity @s UUID
data modify entity @s data.ig set from entity @n[type=iron_golem,tag=ball.unset_ig] UUID

tag @n[type=iron_golem,tag=ball.unset_ig] add ball.ig
tag @n[type=iron_golem,tag=ball.unset_ig,tag=ball.ig] remove ball.unset_ig

# Setup bat (iron golem's target) & store wolf's UUID in it's data
summon bat ~ ~ ~ {Tags:[ball.unset_bat],Silent:1b,NoAI:1b,Health:200f,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b},{id:"minecraft:instant_health",amplifier:50,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:200},{id:"minecraft:scale",base:0.0625}]}

data modify entity @n[type=bat,tag=ball.unset_bat] data.wolf set from entity @s UUID
data modify entity @s data.bat set from entity @n[type=bat,tag=ball.unset_bat] UUID

tag @n[type=bat,tag=ball.unset_bat] add ball.bat
tag @n[type=bat,tag=ball.unset_bat,tag=ball.bat] remove ball.unset_bat

tag @s add ball.active

# Give wolf speed
execute unless entity @s[tag=ball.had_speed] run effect give @s speed infinite 0 true

function dog-toy:ball/tick/air_enter