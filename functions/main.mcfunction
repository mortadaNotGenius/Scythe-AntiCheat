# Prevents disabler hacks from possibly disabling the anticheat
gamerule randomtickspeed 1

# Run all the checks
function checks/angle
function checks/cbe
function checks/illegalitems
function checks/others

# Specific criteria checks
execute as @s[type=player,tag=isBanned] run function checks/ban

# Optional checks
execute as @s[type=player,tag=!op,m=a,scores={gma=1..}] run function checks/optional/gamemodeA
execute as @s[type=player,tag=!op,m=c,scores={gmc=1..}] run function checks/optional/gamemodeC
execute as @s[type=player,tag=!op,m=s,scores={gmc=1..}] run function checks/optional/gamemodeS
execute as @s[scores={commandblocks=1..}] run function checks/optional/nocommandblocks
execute as @s[scores={cmds=1..}] run function checks/optional/overridecommandblocksenabled