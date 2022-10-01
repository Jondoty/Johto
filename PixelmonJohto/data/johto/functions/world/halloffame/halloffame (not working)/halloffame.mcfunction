#Pokescan for a specific Pokemon, if found, apply a tag and reset score to 0
#Use tag to apply a PokeDex number based on the Pokemon to first of six armor stands
#Repeat for each species per slot number
#Test for shiny tag at the end
#Test for form differences at the end if specific species scores are found via the armor stand's Pokedex value

#/scoreboard objectives add Pokedex dummy
#/scoreboard objectives add PokeHave dummy

#execute store result score @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={Pokedex=0,PokeHave=0}] PokemonHave run poketest @a[scores={DialogueTrigger=98,TalkTime=60..70}] 1 species:Bulbasaur
#execute if entity @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={PokeHave=1}] scoreboard players set @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={PokeHave=1}] Pokedex 1
#scoreboard players set @e[x=-867,y=69,z=-181,dy=3,type=armor_stand] PokeHave 0
#
#execute store result score @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={Pokedex=0,PokeHave=0}] PokemonHave run poketest @a[scores={DialogueTrigger=98,TalkTime=60..70}] 1 species:Ivysaur
#execute if entity @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={PokeHave=1}] scoreboard players set @e[x=-867,y=69,z=-181,dy=3,type=armor_stand,scores={PokeHave=1}] Pokedex 2
#scoreboard players set @e[x=-867,y=69,z=-181,dy=3,type=armor_stand] PokeHave 0

#Scans the player's party
function johto:world/halloffame/partyscan

#Runs extra variables such as shiny, forms
function johto:world/halloffame/extrascan

#Scores should now be assigned




























#
