#If the player doesn't have Rock Smash
tellraw @s[tag=!RockSmash] {"text":"It's a cracked boulder. A Pokémon may be able to break it.","italic":true,"color":"gray"}

#If the player has obtained the Rock Smash TM after clearing SUdowoodo
tag @s[tag=RockSmash] add RockSmashUse
execute as @s[tag=RockSmash] run function johto:world/rocksmash



advancement revoke @s only johto:click/rocksmashuse
