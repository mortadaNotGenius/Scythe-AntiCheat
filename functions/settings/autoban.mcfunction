# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle auto-banning without perms!"}]}

# allow
execute as @s[type=player,tag=op,scores={autoban=..0}] run scoreboard players set scythe:config autoban 1
execute as @s[type=player,tag=op,scores={autoban=..0}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has enabled §aauto-banning."}]}

# deny
execute as @s[type=player,tag=op,scores={autoban=1..}] run scoreboard players set scythe:config autoban 0
execute as @s[type=player,tag=op,scores={autoban=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has disabled §4auto-banning."}]}

scoreboard players operation @a autoban = scythe:config autoban