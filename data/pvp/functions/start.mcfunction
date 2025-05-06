execute if score global verrouillage matches 1 run tellraw @a {"text":"Une instance existe déjà.","color":"red"}
execute if score global verrouillage matches 1 run return

# Summon pvp area
# untag command block
execute unless score global verrouillage matches 1 run kill @e[type=armor_stand,tag=return_point]
execute unless score global verrouillage matches 1 run summon armor_stand ~ ~ ~ {Tags:["return_point"],Invisible:1b,NoGravity:1b,Invulnerable:1b}
execute unless score global verrouillage matches 1 run kill @e[type=armor_stand,tag=pvp_zone]
execute unless score global verrouillage matches 1 run summon armor_stand ~10 ~ ~ {Tags:["pvp_zone"],NoGravity:1b,Invulnerable:1b}

# Spread for random location
execute unless score global verrouillage matches 1 run spreadplayers ~ ~ 5 250 false @e[type=armor_stand,tag=pvp_zone,limit=1]

execute unless score global verrouillage matches 1 run tag @a[distance=..10] add pvpPlayer
execute unless score global verrouillage matches 1 run title @a[tag=pvpPlayer] title {"text":"Le PVP va commencer dans 5 secondes","color":"red","bold":true,"font":"minecraft:default","extra":[{"text":" !","color":"dark_red"}]}
execute unless score global verrouillage matches 1 run schedule function pvp:startpvp 5s