# Blocks invalid viewing angles

tag @s[tag=noBadAngle] remove noBadAngle

tag @s[rxm=-90,rx=90,rym=-180,ry=180] add noBadAngle

execute as @s[tag=!noBadAngle] run function checks/alerts/anglenotif
