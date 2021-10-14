#Sets Gamerules
gamerule doDaylightCycle true
difficulty 0
scoreboard teams add default
gamerule doFireTick false
gamerule commandBlockOutput false
scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay list

#tps player to lobby if they have a Deaths score (and thus glitched back into the spawn)
tellraw @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,score_Deaths_min=1] {"text":"Death detected, not clearing data or giving initial scores...","italic":true,"color":"gray"}
tp @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,score_Deaths_min=1] -977 66 -365.0 -91 21
scoreboard players set @a[score_Deaths_min=1] Deaths 0


tellraw @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] ["",{"text":"Starting adventure...","italic":true,"color":"gray"}]

#Gives starting items
execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ givemoney @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] 2000
execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ completeallquests @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6]
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] written_book 1 0 {pages:["{\"text\":\"Welcome to Pixelmon Johto!\\n\\nThis map contains the Johto and Kanto regions, and follows the story of Pokemon Gold, Silver, and Crystal, with events and elements from HeartGold/ SoulSilver and Let's Go Eevee/Pikachu.\"}","{\"text\":\"Throughout the regions, there are 16 gyms to fight and collect the badges of. \\n\\nWhen you have the eight badges from the Johto region, you can challenge the Elite Four and gain access to Kanto afterwards.\"}","{\"text\":\"After collecting all the badges from Kanto, the player gains access to Mt. Silver, with a trainer named Red being the final boss of the map.\"}","{\"text\":\"Items, trainers, and events are scattered around the regions to collect and battle, based off the main games.\\n\\nSearch every corner of the map, you never know what you might find!\"}"],title:"Pixelmon Johto",author:Jond,display:{Lore:["Info about the map!"]}}
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] minecraft:carrot_on_a_stick 1 0 {display:{Name:"Radio",Lore:["A device that plays music for the user.","To listen, select in your hotbar. Each","slot is a different station to listen to.","","Station 2 or Off-Hand: Location-specific tunes.","Station 4: Lucky Number Show.","Station 5: Mysterious Transmission.","Station 6: Buena's Password.","Station 7: Pokémon Music.","Station 8: Poké Flute.","","Right click to end current song.","","1   2   3   4   5   6   7   8   9"]}}
give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] pixelmon:old_Running_Boots 1


#Sets Spawnpoint
spawnpoint @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] -723 69 -485


#Removes event-based tags
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Red
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove HoennStarters
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SinnohLegend
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove EXPNCard
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove RadioCard
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove GuideTour


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
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove JohtoBadges
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove AllGyms
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Falkner
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Bugsy
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Whitney
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Morty
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Chuck
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Jasmine
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Pryce
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Clair
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Brock
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Misty
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Surge
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Sabrina
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Erika
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Janine
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Blaine
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Blue



#Sets default scores for players
scoreboard teams join default @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6]

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
scoreboard players set @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] click 0
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


scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SilverOlivine
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove MortyBadge
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove HoennSoundsCD
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove SinnohSoundsCD
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove ChuckBadge
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove StarterAch
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove RocketMug
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove OakWelcome
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove TMCase
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove PoliceTalk

recipe give @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] *





#Removes existing Dialogue tags
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue1
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue2
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue3
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue4
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue5
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue6
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue7
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue8
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue9
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue10
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue11
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue12
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue13
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue14
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue15
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue16
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue17
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue18
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue19
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue20
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue21
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue22
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue23
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue24
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue25
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue26
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue27
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue28
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue29
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue30
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue31
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue32
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue33
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue34
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue35
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue36
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue37
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue38
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue39
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue40
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue41
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue42
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue43
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue44
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue45
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue46
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue47
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue48
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue49
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue50
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue51
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue52
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue53
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue54
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue55
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue56
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue57
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue58
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue59
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue60
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue61
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue62
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue63
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue64
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue65
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue66
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue67
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue68
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue69
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue70
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue71
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue72
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue73
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue74
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue75
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue76
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue77
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue78
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue79
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue80
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue81
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue82
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue83
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue84
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue85
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue86
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue87
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue88
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue89
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue90
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue91
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue92
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue93
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue94
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue95
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue96
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue97
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue98
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue99
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue100
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue101
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue102
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue103
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue104
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue105
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue106
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue107
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue108
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue109
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue110
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue111
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue112
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue113
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue114
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue115
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue116
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue117
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue118
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue119
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue120
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue121
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue122
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue123
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue124
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue125
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue126
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue127
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue128
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue129
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue130
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue131
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue132
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue133
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue134
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue135
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue136
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue137
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue138
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue139
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue140
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue141
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue142
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue143
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue144
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue145
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue146
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue147
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue148
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue149
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue150
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue151
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue152
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue153
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue154
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue155
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue156
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue157
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue158
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue159
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue160
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue161
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue162
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue163
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue164
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue165
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue166
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue167
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue168
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue169
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue170
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue171
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue172
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue173
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue174
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue175
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue176
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue177
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue178
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue179
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue180
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue181
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue182
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue183
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue184
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue185
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue186
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue187
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue188
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue189
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue190
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue191
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue192
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue193
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue194
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue195
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue196
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue197
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue198
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue199
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue200
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue201
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue202
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue203
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue204
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue205
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue206
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue207
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue208
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue209
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue210
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue211
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue212
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue213
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue214
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue215
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue216
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue217
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue218
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue219
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue220
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue221
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue222
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue223
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue224
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue225
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue226
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue227
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue228
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue229
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue230
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue231
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue232
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue233
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue234
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue235
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue236
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue237
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue238
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue239
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue240
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue241
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue242
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue243
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue244
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue245
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue246
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue247
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue248
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue249
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] remove Dialogue250


#Gives InitialTags score to check for later in case of an issue
scoreboard players tag @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6] add InitialTags


#TPs to lobby
tp @a[x=-783,y=63,z=-248,dx=5,dy=5,dz=6,tag=InitialTags] -977 66 -365.0 -91 21
