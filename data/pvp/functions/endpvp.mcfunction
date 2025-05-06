scoreboard players set global verrouillage 0
function pvp:remove-world-border
gamemode creative @a[tag=pvpPlayer]
clear @a[tag=pvpPlayer]
gamerule doImmediateRespawn false
gamerule keepInventory false

function pvp:startpoker