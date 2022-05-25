#For the different radio stations besides the world music stations

#Runs Function:
#tag @a[score_MusicCooldown=0] add RadioSelect {SelectedItem:{id:"minecraft:carrot_on_a_stick"}}
#function custom:radiostations if @a[score_MusicCooldown=0,tag=RadioSelect]
#tag @a[score_MusicCooldown=0,tag=RadioSelect] remove RadioSelect


#Assigns RadioSelect score based on which slot player has selected

scoreboard players set @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 0
scoreboard players set @s[nbt={Inventory:[{Slot:0b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 1
#World Music
scoreboard players set @s[nbt={Inventory:[{Slot:2b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 3
scoreboard players set @s[nbt={Inventory:[{Slot:3b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 4
scoreboard players set @s[nbt={Inventory:[{Slot:4b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 5
scoreboard players set @s[nbt={Inventory:[{Slot:5b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 6
scoreboard players set @s[nbt={Inventory:[{Slot:6b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 7
scoreboard players set @s[nbt={Inventory:[{Slot:7b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 8
scoreboard players set @s[nbt={Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] RadioSelect 9





#Executes radio station effects:


#Overwrites stations when Team Rocket has taken over
#Between Dialogue64-Dialogue72

execute as @s[scores={RadioSelect=4},tag=Dialogue64,tag=!Dialogue72] run playsound rockettakeover record @s ~ ~ ~ 1 1 1
execute as @s[scores={RadioSelect=4},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s MusicCooldown 122
execute as @s[scores={RadioSelect=4},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s[tag=!Dialogue224] DialogueTrigger 224
execute as @s[scores={RadioSelect=4},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s RadioSelect 0

execute as @s[scores={RadioSelect=6..7},tag=Dialogue64,tag=!Dialogue72] run playsound rockettakeover record @s ~ ~ ~ 1 1 1
execute as @s[scores={RadioSelect=6..7},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s MusicCooldown 122
execute as @s[scores={RadioSelect=6..7},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s[tag=!Dialogue224] DialogueTrigger 224
execute as @s[scores={RadioSelect=6..7},tag=Dialogue64,tag=!Dialogue72] run scoreboard players set @s RadioSelect 0








#Slot 1 - Unown Station, Ruins of Alph only
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=1}] run playsound unownstation record @s[scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=1}] run title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=1}] run scoreboard players set @s[scores={MusicCooldown=0}] MusicCooldown 39



#Slot 2 - World Music



#Slot 3 - Unown Station, Ruins of Alph only
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=3}] run playsound unownstation record @s[scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=3}] run title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=3}] run scoreboard players set @s[scores={MusicCooldown=0}] MusicCooldown 39



#Slot 4 - Lucky Number Show
execute as @s[scores={RadioSelect=4},tag=RadioCard] run title @s actionbar {"text":"Radio: Lucky Number Show"}
execute as @s[scores={RadioSelect=4},tag=RadioCard] run tellraw @s[tag=!LuckyNumberTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Lucky Number Show] ","color":"aqua"},{"text":"<DJ Reed> "},{"text":"Yeehaw! How y'all doin' now? Whether you're up or way down low, don't you miss the LUCKY NUMBER SHOW! Come check with us at the Goldenrod Radio Tower to see if your Pokemon is a winner! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @s[scores={RadioSelect=4},tag=RadioCard] run tag @s add LuckyNumberTalk
execute as @s[scores={RadioSelect=4},tag=RadioCard] run playsound gamecorner record @s ~ ~ ~ 1 1 1
execute as @s[scores={RadioSelect=4},tag=RadioCard] run scoreboard players set @s MusicCooldown 176

#Without
execute as @s[scores={RadioSelect=4},tag=!RadioCard] run title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}



#Slot 5 - Unown Station, Ruins of Alph only
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=5}] run playsound unownstation record @s ~ ~ ~ 1 1 1
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=5}] run title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=5}] run scoreboard players set @s MusicCooldown 39





#Slot 6 - Buena's Password
execute as @s[scores={RadioSelect=6},tag=RadioCard] run tellraw @s[tag=!BuenasPasswordTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Buena's Password] ","color":"aqua"},{"text":"<DJ Buena> "},{"text":"Buena here! Today's password! Let me think... Here it is! Don't forget it! I'm in Goldenrod's Radio Tower! \u266a\u266b\u266c","italic":true}]
execute as @s[scores={RadioSelect=6},tag=RadioCard] run tag @s add BuenasPasswordTalk
execute as @s[scores={RadioSelect=6},tag=RadioCard] run tag @s add BuenasPasswordDaily
execute as @s[scores={RadioSelect=6},tag=RadioCard] run playsound buenaspassword record @s ~ ~ ~ 1 1 1
execute as @s[scores={RadioSelect=6},tag=RadioCard] run scoreboard players set @s MusicCooldown 106
execute as @s[scores={RadioSelect=6},tag=RadioCard] run title @s actionbar {"text":"Radio: Buena's Password Show"}


#Without
execute as @s[scores={RadioSelect=6},tag=!RadioCard] run title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}



#Slot 7 - Pokemon Music

#Monday - Pokemon March
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound pokemonmarch record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 70
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Monday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s[tag=SinnohSounds] remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=1}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s[tag=HoennSounds] remove HoennSounds

#Friday - Pokemon March
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound pokemonmarch record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 70
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Friday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s[tag=SinnohSounds] remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=5}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s[tag=HoennSounds] remove HoennSounds

#Sunday - Pokemon March
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound pokemonmarch record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 70
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Sunday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=7}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove HoennSounds


#Tuesday - Pokemon Lullaby
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound pokemonlullaby record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Pokemon Lullaby"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 88
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Tuesday, so chill out to Pokemon Lullaby! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s[tag=!PokemonMusicTalk] add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove HoennSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=2}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add RepelEffect

#Saturday - Pokemon Lullaby
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound pokemonlullaby record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Pokemon Lullaby"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 88
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Saturday, so chill out to Pokemon Lullaby! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove HoennSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=6}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add RepelEffect



#Wednesday - Hoenn Sounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound hoennsound record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Hoenn Sounds"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 83
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Wednesday, so chill out to Hoenn Sounds! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add HoennSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @a remove Dialogue156
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=3}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s[scores={TalkTime=0,DialogueTrigger=0},tag=!HoennSoundsCD] DialogueTrigger 156


#Thursday - Sinnoh Sounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run playsound sinnohsound record @s ~ ~ ~ 1 1 1
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run title @s actionbar {"text":"Radio: Pokemon Music - Sinnoh Sounds"}
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s MusicCooldown 50
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Thursday, so chill out to Sinnoh Sounds! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add PokemonMusicTalk
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s add SinnohSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @s remove HoennSounds
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run tag @a remove Dialogue157
execute as @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,scores={WeekdayTrack=4}] run execute as @a[scores={RadioSelect=7},tag=RadioCard] run scoreboard players set @s[scores={TalkTime=0,DialogueTrigger=0},tag=!SinnohSoundsCD] DialogueTrigger 157


#Without
execute as @a[scores={RadioSelect=7},tag=!RadioCard] run title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}









#Slot 8 - Poke Flute, with EXPNCard tag
execute as @s[scores={RadioSelect=8},tag=EXPNCard] run playsound pokeflute record @s ~ ~ ~ 1 1 1
execute as @s[scores={RadioSelect=8},tag=EXPNCard] run scoreboard players set @s MusicCooldown 1400
execute as @s[scores={RadioSelect=8,TalkTime=0},tag=EXPNCard,x=-2893,y=64,z=-53,distance=..25] run scoreboard players set @s[tag=!Dialogue142] DialogueTrigger 142
execute as @s[scores={RadioSelect=8},tag=EXPNCard] run title @s actionbar {"text":"Radio: Poké Flute"}

#Without
execute as @s[scores={RadioSelect=8},tag=!EXPNCard] run title @s actionbar {"text":"Radio: This station requires an EXPN Card from Lavendar to listen"}




#Slot 9 - Unown Station, Ruins of Alph only
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=9}] run playsound unownstation record @s[scores={MusicCooldown=0}] ~ ~ ~ 1 1 1
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=9}] run title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute as @s[x=160,y=0,z=-295,dx=121,dy=240,dz=205,scores={RadioSelect=9}] run scoreboard players set @s[scores={MusicCooldown=0}] MusicCooldown 39












#Deselects RadioSelect
scoreboard players set @a[scores={RadioSelect=1}] RadioSelect 0
