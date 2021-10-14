#For the different radio stations besides the world music stations

#Runs Function:
#scoreboard players tag @a[score_MusicCooldown=0] add RadioSelect {SelectedItem:{id:"minecraft:carrot_on_a_stick"}}
#function custom:radiostations if @a[score_MusicCooldown=0,tag=RadioSelect]
#scoreboard players tag @a[score_MusicCooldown=0,tag=RadioSelect] remove RadioSelect


#Assigns RadioSelect score based on which slot player has selected

scoreboard players set @a RadioSelect 1 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:0b}],SelectedItemSlot:0}
#World Music
scoreboard players set @a RadioSelect 3 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:2b}],SelectedItemSlot:2}
scoreboard players set @a RadioSelect 4 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:3b}],SelectedItemSlot:3}
scoreboard players set @a RadioSelect 5 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:4b}],SelectedItemSlot:4}
scoreboard players set @a RadioSelect 6 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:5b}],SelectedItemSlot:5}
scoreboard players set @a RadioSelect 7 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:6b}],SelectedItemSlot:6}
scoreboard players set @a RadioSelect 8 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:7b}],SelectedItemSlot:7}
scoreboard players set @a RadioSelect 9 {Inventory:[{tag:{display:{Name:"Radio"}},Slot:8b}],SelectedItemSlot:8}





#Executes radio station effects:


#Overwrites stations when Team Rocket has taken over
#Between Dialogue64-Dialogue72

execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ playsound rockettakeover record @s ~ ~ ~ 1000 1 1
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s MusicCooldown 1740
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s[tag=!Dialogue224] DialogueTrigger 224
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s RadioSelect 0

execute @a[score_RadioSelect_min=6,score_RadioSelect=7,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ playsound rockettakeover record @s ~ ~ ~ 1000 1 1
execute @a[score_RadioSelect_min=6,score_RadioSelect=7,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s MusicCooldown 1740
execute @a[score_RadioSelect_min=6,score_RadioSelect=7,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s[tag=!Dialogue224] DialogueTrigger 224
execute @a[score_RadioSelect_min=6,score_RadioSelect=7,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ scoreboard players set @s RadioSelect 0








#Slot 1 - Unown Station, Ruins of Alph only
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=1,score_RadioSelect=1] ~ ~ ~ playsound unownstation record @s[score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=1,score_RadioSelect=1] ~ ~ ~ title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=1,score_RadioSelect=1] ~ ~ ~ scoreboard players set @s[score_MusicCooldown=0] MusicCooldown 560



#Slot 2 - World Music



#Slot 3 - Unown Station, Ruins of Alph only
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=3,score_RadioSelect=3] ~ ~ ~ playsound unownstation record @s[score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=3,score_RadioSelect=3] ~ ~ ~ title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=3,score_RadioSelect=3] ~ ~ ~ scoreboard players set @s[score_MusicCooldown=0] MusicCooldown 560



#Slot 4 - Lucky Number Show
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Lucky Number Show"}
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!LuckyNumberTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Lucky Number Show] ","color":"aqua"},{"text":"<DJ Reed> "},{"text":"Yeehaw! How y'all doin' now? Whether you're up or way down low, don't you miss the LUCKY NUMBER SHOW! Come check with us at the Goldenrod Radio Tower to see if your Pokemon is a winner! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add LuckyNumberTalk
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=RadioCard] ~ ~ ~ playsound gamecorner record @s ~ ~ ~ 1000 1 1
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 2520

#Without
execute @a[score_RadioSelect_min=4,score_RadioSelect=4,tag=!RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}



#Slot 5 - Unown Station, Ruins of Alph only
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=5,score_RadioSelect=5] ~ ~ ~ playsound unownstation record @s ~ ~ ~ 1000 1 1
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=5,score_RadioSelect=5] ~ ~ ~ title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=5,score_RadioSelect=5] ~ ~ ~ scoreboard players set @s MusicCooldown 560





#Slot 6 - Buena's Password
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!BuenasPasswordTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Buena's Password] ","color":"aqua"},{"text":"<DJ Buena> "},{"text":"Buena here! Today's password! Let me think... Here it is! Don't forget it! I'm in Goldenrod's Radio Tower! \u266a\u266b\u266c","italic":true}]
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add BuenasPasswordTalk
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add BuenasPasswordDaily
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ playsound buenaspassword record @s ~ ~ ~ 1000 1 1
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1520
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Buena's Password Show"}


#Without
execute @a[score_RadioSelect_min=6,score_RadioSelect=6,tag=!RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}



#Slot 7 - Pokemon Music

#Monday - Pokemon March
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound pokemonmarch record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1000
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Monday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s[tag=SinnohSounds] remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s[tag=HoennSounds] remove HoennSounds

#Friday - Pokemon March
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound pokemonmarch record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1000
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Friday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s[tag=SinnohSounds] remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s[tag=HoennSounds] remove HoennSounds

#Sunday - Pokemon March
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound pokemonmarch record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1000
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Pokemon March"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Sunday, so chill out to Pokemon March! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove HoennSounds


#Tuesday - Pokemon Lullaby
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound pokemonlullaby record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Pokemon Lullaby"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1260
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Tuesday, so chill out to Pokemon Lullaby! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s[tag=!PokemonMusicTalk] add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove HoennSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add RepelEffect

#Saturday - Pokemon Lullaby
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound pokemonlullaby record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Pokemon Lullaby"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1260
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Saturday, so chill out to Pokemon Lullaby! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove HoennSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add RepelEffect



#Wednesday - Hoenn Sounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound hoennsound record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Hoenn Sounds"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1185
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Wednesday, so chill out to Hoenn Sounds! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add HoennSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @a remove Dialogue156
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s[score_TalkTime=0,score_DialogueTrigger=0,tag=!HoennSoundsCD] DialogueTrigger 156


#Thursday - Sinnoh Sounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ playsound sinnohsound record @s ~ ~ ~ 1000 1 1
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: Pokemon Music - Sinnoh Sounds"}
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s MusicCooldown 720
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ tellraw @s[tag=!PokemonMusicTalk] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<DJ Ben> It's me, DJ Ben! Today's Thursday, so chill out to Sinnoh Sounds! ","italic":true},{"text":"\u266a\u266b\u266c"}]
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add PokemonMusicTalk
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s add SinnohSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @s remove HoennSounds
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players tag @a remove Dialogue157
execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=RadioCard] ~ ~ ~ scoreboard players set @s[score_TalkTime=0,score_DialogueTrigger=0,tag=!SinnohSoundsCD] DialogueTrigger 157


#Without
execute @a[score_RadioSelect_min=7,score_RadioSelect=7,tag=!RadioCard] ~ ~ ~ title @s actionbar {"text":"Radio: This station requires a Radio Card from Goldenrod to listen"}









#Slot 8 - Poke Flute, with EXPNCard tag
execute @a[score_RadioSelect_min=8,score_RadioSelect=8,tag=EXPNCard] ~ ~ ~ playsound pokeflute record @s ~ ~ ~ 1000 1 1
execute @a[score_RadioSelect_min=8,score_RadioSelect=8,tag=EXPNCard] ~ ~ ~ scoreboard players set @s MusicCooldown 1400
execute @a[score_RadioSelect_min=8,score_RadioSelect=8,tag=EXPNCard] ~ ~ ~ execute @s[x=-2893,y=64,z=-53,r=25,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue142] DialogueTrigger 142
execute @a[score_RadioSelect_min=8,score_RadioSelect=8,tag=EXPNCard] ~ ~ ~ title @s actionbar {"text":"Radio: Poké Flute"}

#Without
execute @a[score_RadioSelect_min=8,score_RadioSelect=8,tag=!EXPNCard] ~ ~ ~ title @s actionbar {"text":"Radio: This station requires an EXPN Card from Lavendar to listen"}




#Slot 9 - Unown Station, Ruins of Alph only
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=9,score_RadioSelect=9] ~ ~ ~ playsound unownstation record @s[score_MusicCooldown=0] ~ ~ ~ 1000 1 1
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=9,score_RadioSelect=9] ~ ~ ~ title @s actionbar ["",{"text":"Radio: "},{"text":"Unown Station","obfuscated":true}]
execute @a[x=160,y=0,z=-295,dx=121,dy=240,dz=205,score_RadioSelect_min=9,score_RadioSelect=9] ~ ~ ~ scoreboard players set @s[score_MusicCooldown=0] MusicCooldown 560












#Deselects RadioSelect
scoreboard players set @a[score_RadioSelect_min=1] RadioSelect 0
