#If the player doesn't have Rock Smash
tellraw @s[tag=!Dialogue155] {"text":"It's a cracked boulder. A Pokémon may be able to break it.","italic":true,"color":"gray"}

#If the player has obtained the Rock Smash TM after clearing SUdowoodo
tag @s[tag=Dialogue155] add RockSmashUse
execute as @s[tag=Dialogue155] run function johto:world/rocksmash



advancement revoke @s only johto:click/rocksmashuse
