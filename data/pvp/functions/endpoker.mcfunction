# TP all tagged player to poker
execute at @e[type=armor_stand,tag=return_point,limit=1] run tp @a[tag=pvpPlayer] ~ ~ ~

# setting position as spawnpoint
execute as @a[tag=pvpPlayer] at @s run spawnpoint @s ~ ~ ~

# untag all players
tag @a[tag=pvpPlayer] remove pvpPlayer