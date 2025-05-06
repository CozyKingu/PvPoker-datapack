scoreboard players set global verrouillage 0
function pvp:remove-world-border
gamemode creative @a[tag=pvpPlayer]

function pvp:startpoker

clear @a[tag=pvpPlayer]
kill @e[type=armor_stand,tag=pvp_zone]

gamerule doImmediateRespawn false