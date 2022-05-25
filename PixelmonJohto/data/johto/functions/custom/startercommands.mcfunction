#Sets Gamerules
gamerule doDaylightCycle true
difficulty peaceful
team add default
gamerule doFireTick false
gamerule commandBlockOutput false
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list
gamemode adventure @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,gamemode=survival]
gamemode adventure @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,gamemode=creative]
gamemode adventure @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,gamemode=spectator]

#tps player to lobby if they have a Deaths score and initial values (and thus glitched back into the spawn)
tellraw @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,scores={Deaths=1..},tag=InitialTags] {"text":"Death detected, not clearing data or giving initial scores...","italic":true,"color":"gray"}
tp @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,scores={Deaths=1..},tag=InitialTags] -977 66 -365.0 -91 21
scoreboard players set @a[scores={Deaths=1..},tag=InitialTags] Deaths 0


tellraw @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ["",{"text":"Starting adventure...","italic":true,"color":"gray"}]

#Gives starting items
execute as @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] run givemoney @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] 2000
execute as @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] run completeallquests @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6]
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] written_book{pages:["{\"text\":\"Welcome to Pixelmon Johto!\\n\\nThis map contains the Johto and Kanto regions, and follows the story of Pokemon Gold, Silver, and Crystal, with events and elements from HeartGold/ SoulSilver and Let's Go Eevee/Pikachu.\"}","{\"text\":\"Throughout the regions, there are 16 gyms to fight and collect the badges of. \\n\\nWhen you have the eight badges from the Johto region, you can challenge the Elite Four and gain access to Kanto afterwards.\"}","{\"text\":\"After collecting all the badges from Kanto, the player gains access to Mt. Silver, with a trainer named Red being the final boss of the map.\"}","{\"text\":\"Items, trainers, and events are scattered around the regions to collect and battle, based off the main games.\\n\\nSearch every corner of the map, you never know what you might find!\"}"],title:"Pixelmon Johto",author:Jond,display:{Lore:["Info about the map!"]}}
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] minecraft:carrot_on_a_stick{display:{Name:"Radio",Lore:["A device that plays music for the user.","To listen, select in your hotbar. Each","slot is a different station to listen to.","","Station 2 or Off-Hand: Location-specific tunes.","Station 4: Lucky Number Show.","Station 5: Mysterious Transmission.","Station 6: Buena's Password.","Station 7: Pokémon Music.","Station 8: Poké Flute.","","Right click to end current song.","","1   2   3   4   5   6   7   8   9"]}}
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] pixelmon:old_Running_Boots


#Sets Spawnpoint
spawnpoint @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] -723 69 -485


#Removes event-based tags
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Red
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove HoennStarters
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SinnohLegend
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove EXPNCard
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove RadioCard
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove GuideTour


#Removes Mega Stone objectives if present, to be unlocked by Oak later
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Beedrillite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Pidgeotite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Slowbronite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Alakazite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Gengarite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Kangaskhanite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Pinsirite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Gyaradosite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Aerodactylite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Mewtwonite_X
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Mewtwonite_Y
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Steelixite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Ampharosite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Scizorite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Heracronite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Houndoominite
scoreboard players reset @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Tyranitarite



#Removes Gym Leader win Tags
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove JohtoBadges
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove AllGyms
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Falkner
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Bugsy
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Whitney
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Morty
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Chuck
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Jasmine
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Pryce
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Clair
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Brock
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Misty
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Surge
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Sabrina
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Erika
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Janine
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Blaine
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Blue



#Sets default scores for players
team join default @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6]

scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] DialogueTrigger 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] TalkTime 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] KantoStarters 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] TallGrass 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Air 0


#World Events
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Battle_Streak 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BattlePoints 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BattleTower 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Boss 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BugContest 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Cooldown 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] DogEncounter 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EscapeRope 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Flash 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Fly 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] HOFTrigger 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MapHold 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MegaStones 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MomState 1
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MusicCooldown 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MusicState 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] OddEgg 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] rng 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Sleeping 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SSState 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] TownDisplay 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] click 0



#Pokemon
#Pokemon 0 = Pokemon not yet encountered
#PokemonCD = If Pokemon is killed value counts down until hits 0 and resets encounter status

scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Arceus 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ArceusCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Articuno 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ArticunoCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Celebi 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] DialgaCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Entei 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EnteiCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EonEncounter 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Farfetchd 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] GiratinaCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] GroudonCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Gyarados 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] HoohCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] KarpCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] KyogreCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Latias 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] LatiasCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Latios 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] LatiosCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] LugiaCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Mew 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MewCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Mewtwo 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MewtwoCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Moltres 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MoltresCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] PalkiaCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Raikou 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RaikouCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RayquazaCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Suicune 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SuicuneCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Zapdos 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ZapdosCD 0


#Fly Map
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyAzalea 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyBlackthorn 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCeladon 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCeladon 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCerulean 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCherrygrove 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCianwood 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyCinnabar 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyEcruteak 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyFuchsia 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyGoldenrod 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyIndigo 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyLake 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyLavender 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyMahogany 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyOlivine 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyPallet 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyPewter 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlySafari 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlySaffron 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlySilver 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyVermilion 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyVictory 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyViolet 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] FlyViridian 0





#Should be legacy but kept in case needed
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BallBreak 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Bicycle 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BillGP 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BugContestCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] BugContestJudge 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Bulbasaur 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] CelebiTimeTravel 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Charmander 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Clair 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Copycat 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] DarkCave 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] E4 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EggHatch 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EggState 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EggSteps 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] EggStepsSprint 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ElmTalk 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ER 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ForceAdventure 1
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] GRUnderground 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] GuideGent 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] IP 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Jasmine 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Kurt 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] LegendaryCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Marowak 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MegaState 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Mom 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MomTalk 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MrPokemon 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] MusicChangeCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] OrbGet 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] OrbLine 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RadioCard 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Red 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Repel 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RepelSteps 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RepelStepsSprint 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] RocketHQ 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SafariDel 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SafariGen 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SafariState 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SafariTalk 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Silver 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Sinjoh 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Snorlax 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SpawnStatue 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SpawnUnown 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Squirtle 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] SSTime 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] StarterPick 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Steven 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] StevenCD 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Sw 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] TeamRocket 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] Trainer 0
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] VillagerClick 0


tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SilverOlivine
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove MortyBadge
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove HoennSoundsCD
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SinnohSoundsCD
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove ChuckBadge
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove StarterAch
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove RocketMug
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove OakWelcome
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove TMCase
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove PoliceTalk

recipe give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] *





#Removes existing Dialogue tags
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue1
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue2
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue3
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue4
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue5
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue6
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue7
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue8
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue9
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue10
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue11
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue12
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue13
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue14
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue15
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue16
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue17
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue18
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue19
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue20
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue21
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue22
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue23
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue24
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue25
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue26
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue27
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue28
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue29
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue30
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue31
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue32
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue33
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue34
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue35
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue36
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue37
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue38
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue39
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue40
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue41
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue42
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue43
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue44
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue45
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue46
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue47
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue48
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue49
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue50
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue51
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue52
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue53
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue54
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue55
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue56
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue57
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue58
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue59
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue60
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue61
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue62
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue63
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue64
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue65
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue66
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue67
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue68
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue69
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue70
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue71
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue72
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue73
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue74
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue75
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue76
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue77
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue78
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue79
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue80
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue81
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue82
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue83
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue84
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue85
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue86
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue87
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue88
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue89
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue90
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue91
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue92
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue93
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue94
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue95
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue96
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue97
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue98
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue99
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue100
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue101
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue102
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue103
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue104
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue105
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue106
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue107
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue108
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue109
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue110
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue111
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue112
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue113
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue114
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue115
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue116
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue117
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue118
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue119
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue120
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue121
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue122
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue123
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue124
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue125
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue126
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue127
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue128
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue129
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue130
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue131
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue132
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue133
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue134
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue135
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue136
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue137
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue138
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue139
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue140
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue141
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue142
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue143
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue144
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue145
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue146
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue147
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue148
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue149
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue150
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue151
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue152
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue153
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue154
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue155
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue156
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue157
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue158
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue159
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue160
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue161
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue162
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue163
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue164
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue165
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue166
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue167
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue168
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue169
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue170
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue171
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue172
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue173
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue174
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue175
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue176
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue177
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue178
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue179
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue180
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue181
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue182
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue183
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue184
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue185
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue186
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue187
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue188
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue189
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue190
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue191
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue192
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue193
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue194
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue195
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue196
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue197
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue198
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue199
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue200
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue201
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue202
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue203
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue204
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue205
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue206
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue207
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue208
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue209
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue210
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue211
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue212
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue213
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue214
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue215
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue216
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue217
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue218
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue219
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue220
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue221
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue222
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue223
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue224
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue225
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue226
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue227
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue228
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue229
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue230
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue231
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue232
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue233
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue234
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue235
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue236
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue237
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue238
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue239
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue240
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue241
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue242
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue243
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue244
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue245
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue246
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue247
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue248
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue249
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue250


#Gives InitialTags score to check for later in case of an issue
tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] add InitialTags


#TPs to lobby
tp @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,tag=InitialTags] -977 66 -365.0 -91 21
