tp @s[type=player,tag=!noBadAngle] as facing @s
scoreboard players add @s[type=player,tag=!noBadAngle] anglevl 1
execute as @s[type=player,tag=!noBadAngle] run tellraw @a[tag=notify] {"rawtext":[{"text":"§r§6[§aScythe§6]§r "},{"selector":"@s"},{"text":" §1has failed §7(Player) §4BadPackets[1]. VL= "},{"score":{"name":"@s","objective":"anglevl"}}]}