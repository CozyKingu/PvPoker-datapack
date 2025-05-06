scoreboard players set global verrouillage 1

# Initaliser scoreboard
scoreboard objectives add kills playerKillCount
scoreboard players set @a[tag=pvpPlayer,scores={kills=1..}] kills 0

execute as @e[type=armor_stand,tag=pvp_zone,limit=1] at @s run worldborder center ~ ~
worldborder set 100
execute as @a[tag=pvpPlayer] at @e[type=armor_stand,tag=pvp_zone,limit=1] run spreadplayers ~ ~ 25 50 false @s

# Setting spaw point
execute as @a[tag=pvpPlayer] at @s run spawnpoint @s ~ ~ ~

gamerule doImmediateRespawn true
gamemode survival @a[tag=pvpPlayer] 
clear @a[tag=pvpPlayer]
give @a[tag=pvpPlayer] minecraft:crossbow{Enchantments:[{id:"piercing",lvl:32767},{id:"unbreaking",lvl:1},{id:"mending",lvl:1}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b,Unbreakable:1b} 1
give @a[tag=pvpPlayer] minecraft:arrow 64

# récompense kill
schedule function pvp:endpvp 120s