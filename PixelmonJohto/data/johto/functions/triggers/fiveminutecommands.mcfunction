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



#Runs the chance for Mom to buy the player an item

#Rolls for a number
execute as @a[tag=!MomCooldown,scores={MomState=1}] run scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2] rng 0
execute as @a[tag=!MomCooldown,scores={MomState=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 1
execute as @a[tag=!MomCooldown,scores={MomState=1}] run scoreboard players add @e[x=-867,y=69,z=-207,dy=4,dz=2,sort=random,limit=1] rng 2

execute as @a[tag=!MomCooldown,scores={MomState=1}] run scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng

execute as @a[tag=!MomCooldown,scores={MomState=1,rng=3}] run function johto:triggers/momitems/momitems
