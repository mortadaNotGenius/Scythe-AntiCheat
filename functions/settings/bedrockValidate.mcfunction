# make sure they are allowed to use this command
tellraw @s[type=player,tag=!op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r §4§lHey! §rYou must be Scythe-Opped to use this function!"}]}
execute as @s[tag=!op] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has tried to toggle BedrockValidate without perms!"}]}

# allow
execute as @s[type=player,tag=op,scores={bedrock=..0,gametestapi=1..}] run scoreboard players set scythe:config bedrock 1
execute as @s[type=player,tag=op,scores={bedrock=..0,gametestapi=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has enabled §aBedrockValidate!"}]}

# deny
execute as @s[type=player,tag=op,scores={bedrock=1..,gametestapi=1..}] run scoreboard players set scythe:config bedrock 0
execute as @s[type=player,tag=op,scores={bedrock=1..,gametestapi=1..}] run tellraw @a[tag=op] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" has disabled §4BedrockValidate!"}]}

# gametest not enabled
tellraw @s[type=player,tag=op,scores={gametestapi=..0}] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"text":"Error: GameTest framework is required for this function."}]}

scoreboard players operation @a bedrock = scythe:config bedrock
