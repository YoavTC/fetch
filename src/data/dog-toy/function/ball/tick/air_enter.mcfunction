# Setup iron golem (wolf AI)
summon iron_golem ~ ~ ~ {attributes:[{id:"attack_damage", base:0}],Invulnerable:true,Health:1,active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}
ride @n[type=iron_golem] mount @n[type=wolf]

# Setup armor stand
summon bat ~ ~ ~ {NoAI:true,Silent:true,active_effects:[{id:"invisibility",duration:-1,show_particles:false}]}

function dog-toy:ball/tick/air_tick