# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle Gamemode 0 without perms!"}]}

# allow
execute as @s[type=player,tag=op,scores={gms=..0}] run scoreboard players set scythe:config gms 1
execute as @s[type=player,tag=op,scores={gms=..0}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has disallowed §4gamemode 0§r to be used!"}]}

# deny
execute as @s[type=player,tag=op,scores={gms=1..}] run scoreboard players set scythe:config gms 0
execute as @s[type=player,tag=op,scores={gms=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has allowed §agamemode 0§r to be used!"}]}

scoreboard players operation @a gms = scythe:config gms