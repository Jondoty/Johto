#Kurt villager invisible effect
effect @e[type=villager,name=Kurt] minecraft:invisibility 10000 1 true

#Invisible villager in Sinjoh Ruins Abra
effect @e[x=-1073,y=60,z=-216,r=2,type=Villager] minecraft:invisibility 10000 1 true

#SinnohSoundsCD Reset
scoreboard players tag @a[tag=SinnohSoundsCD] remove SinnohSoundsCD

#HoennSoundsCD Reset
scoreboard players tag @a[tag=HoennSoundsCD] remove HoennSoundsCD

#Bike Shop Thanks Cooldown
scoreboard players remove @a[score_BicycleCD_min=1] BicycleCD 1

#Steven Stone Cooldown
scoreboard players remove @a[score_StevenCD_min=1] StevenCD 1

#LuckyNumberTalk Cooldown
scoreboard players tag @a[tag=LuckyNumberTalk] remove LuckyNumberTalk

#PokemonMusicTalk Reset
scoreboard players tag @a[tag=PokemonMusicTalk] remove PokemonMusicTalk

#Removes Radio Tower takeover talk dialogue
scoreboard players tag @a[tag=Dialogue224] remove Dialogue224


#Silver Entity StarterPick Sets
scoreboard players set @e[x=-771,y=84,z=-243,dx=12,dy=2,dz=2] StarterPick 3
scoreboard players set @e[x=-771,y=88,z=-243,dx=12,dy=2,dz=2] StarterPick 2
scoreboard players set @e[x=-771,y=92,z=-243,dx=12,dy=2,dz=2] StarterPick 1

#Karp Cooldown
scoreboard players remove @a[score_KarpCD_min=1] KarpCD 1

#Legendary Defeat Cooldowns
scoreboard players remove @a[score_LatiasCD_min=2] LatiasCD 1
scoreboard players remove @a[score_LatiosCD_min=2] LatiosCD 1
scoreboard players remove @a[score_RayquazaCD_min=1] RayquazaCD 1
scoreboard players remove @a[score_RaikouCD_min=1] RaikouCD 1
scoreboard players remove @a[score_ArceusCD_min=2] ArceusCD 1
scoreboard players remove @a[score_KyogreCD_min=1] KyogreCD 1
scoreboard players remove @a[score_GroudonCD_min=1] GroudonCD 1
scoreboard players remove @a[score_MewtwoCD_min=1] MewtwoCD 1
scoreboard players remove @a[score_MewCD_min=1] MewCD 1
scoreboard players remove @a[score_MoltresCD_min=1] MoltresCD 1
scoreboard players remove @a[score_GiratinaCD_min=1] GiratinaCD 1
scoreboard players remove @a[score_PalkiaCD_min=1] PalkiaCD 1
scoreboard players remove @a[score_DialgaCD_min=1] DialgaCD 1
scoreboard players remove @a[score_ZapdosCD_min=1] ZapdosCD 1
scoreboard players remove @a[score_ArticunoCD_min=1] ArticunoCD 1
scoreboard players remove @a[score_HoohCD_min=1] HoohCD 1
scoreboard players remove @a[score_LugiaCD_min=1] LugiaCD 1
scoreboard players remove @a[score_SuicuneCD_min=1] SuicuneCD 1
scoreboard players remove @a[score_EnteiCD_min=1] EnteiCD 1


#Kills vanilla Entities
kill @e[type=Cow]
kill @e[type=EntityHorse]
kill @e[type=Pig]
kill @e[type=Chicken]
kill @e[type=Rabbit]
kill @e[type=Wolf]
kill @e[type=Bat]
kill @e[type=Sheep]
