#Kurt villager invisible effect
effect give @e[type=villager,name=Kurt] minecraft:invisibility 10000 1 true

#Invisible villager in Sinjoh Ruins Abra
effect give @e[x=-1073,y=60,z=-216,distance=..2,type=minecraft:villager] minecraft:invisibility 10000 1 true

#SinnohSoundsCD Reset
tag @a[tag=SinnohSoundsCD] remove SinnohSoundsCD

#HoennSoundsCD Reset
tag @a[tag=HoennSoundsCD] remove HoennSoundsCD

#Bike Shop Thanks Cooldown
scoreboard players remove @a[scores={BicycleCD=1}] BicycleCD 1

#Steven Stone Cooldown
scoreboard players remove @a[scores={StevenCD=1}] StevenCD 1

#LuckyNumberTalk Cooldown
tag @a[tag=LuckyNumberTalk] remove LuckyNumberTalk

#PokemonMusicTalk Reset
tag @a[tag=PokemonMusicTalk] remove PokemonMusicTalk

#Removes Radio Tower takeover talk dialogue
tag @a[tag=Dialogue224] remove Dialogue224


#Silver Entity StarterPick Sets
scoreboard players set @e[x=-771,y=84,z=-243,dx=12,dy=2,dz=2] StarterPick 3
scoreboard players set @e[x=-771,y=88,z=-243,dx=12,dy=2,dz=2] StarterPick 2
scoreboard players set @e[x=-771,y=92,z=-243,dx=12,dy=2,dz=2] StarterPick 1


#Legendary Defeat Cooldowns
scoreboard players remove @a[scores={LatiasCD=2..}] LatiasCD 1
scoreboard players remove @a[scores={LatiosCD=2..}] LatiosCD 1
scoreboard players remove @a[scores={RayquazaCD=1..}] RayquazaCD 1
scoreboard players remove @a[scores={RaikouCD=1..}] RaikouCD 1
scoreboard players remove @a[scores={ArceusCD=2..}] ArceusCD 1
scoreboard players remove @a[scores={KyogreCD=1..}] KyogreCD 1
scoreboard players remove @a[scores={GroudonCD=1..}] GroudonCD 1
scoreboard players remove @a[scores={MewtwoCD=1..}] MewtwoCD 1
scoreboard players remove @a[scores={MewCD=1..}] MewCD 1
scoreboard players remove @a[scores={MoltresCD=1..}] MoltresCD 1
scoreboard players remove @a[scores={GiratinaCD=1..}] GiratinaCD 1
scoreboard players remove @a[scores={PalkiaCD=1..}] PalkiaCD 1
scoreboard players remove @a[scores={DialgaCD=1..}] DialgaCD 1
scoreboard players remove @a[scores={ZapdosCD=1..}] ZapdosCD 1
scoreboard players remove @a[scores={ArticunoCD=1..}] ArticunoCD 1
scoreboard players remove @a[scores={HoohCD=1..}] HoohCD 1
scoreboard players remove @a[scores={LugiaCD=1..}] LugiaCD 1
scoreboard players remove @a[scores={SuicuneCD=1..}] SuicuneCD 1
scoreboard players remove @a[scores={EnteiCD=1..}] EnteiCD 1


#Kills vanilla Entities
#kill @e[type=Cow]
#kill @e[type=EntityHorse]
#kill @e[type=Pig]
#kill @e[type=Chicken]
#kill @e[type=Rabbit]
#kill @e[type=Wolf]
#kill @e[type=Bat]
#kill @e[type=Sheep]
