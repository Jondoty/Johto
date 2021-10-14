#Triggered by DialogueTrigger X score and !DialogueX tag

#Reference Dialogue:
#https://gamefaqs.gamespot.com/gbc/375087-Pokémon-crystal-version/faqs/49457

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





#Example Dialogue and explanations:

#1.
#Command that runs:
#scoreboard players set @a[x=-958,y=66,z=-366,dy=2,dz=1,score_TalkTime=0,tag=!Dialogue1] DialogueTrigger 1
#         Sets a DialogueTrigger score, usually by visiting a location, having a certain item, having an item in a location, or triggered when player accepts a quest.
#         These are triggered externally from this function from the pink wool sections of the spawn chunks.
#         A score_TalkTime=0 selector is used as to ensure player is not in a current dialogue, as changing DialogueTrigger values mid-dialogue would cause skips in effects and outcomes.
#         tag=!Dialogue1 used to ensure player hasn't heard this dialogue before, and won't repeat unless tag specifically removed. All dialogues have a unique number.




#2.
#scoreboard players add @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1] TalkTime 1
#       Adds a score of 1 every time function is ran, counting up and used as a timing device for commands following it.
#       Timings are added at the pace of two hoppers feeding one item into each other, and having one hopper's signal read using a comparator.


#3.
#tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> Hello! Sorry to keep you waiting!"}
#       Example of a Tellraw command that will occur at timing value 1
#       Translations will likely just want to modify the tellraw speech between the {} and [] brackets of the tellraw data. Timing changes may also be necessary if language is more or less dense with information per character.

#Example translation:
#tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> ¡Bienvenido al mundo de Pokémon!"}


#3b.
#tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=8,score_TalkTime=8] {"text":"<...> Welcome to the world of Pokémon!"}
#       Difference in TalkTime values between commands determines how much of a delay there is. A difference of 7 is about my minimum gap between short sentences.
#       A hopper clock that is two hoppers going back and forth, comparator out of one end, runs at about 100 TalkTime additions per 70 realtime seconds.


#4.
#execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ give @s pixelmon:rare_candy
#execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ /tp @e[x=-744,y=74,z=-242,dy=3,type=pixelmon:statue] -964.5 66 -406.0
#       Executes commands as the player, sometimes on the world (npcs tping in or out, particles, etc). Commands other than the execute can use the @s selector for only the player with this dialogue at this specific time.



#5.
#scoreboard players tag @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,score_TalkTime_min=22,tag=!Dialogue1] add Dialogue1
#scoreboard players set @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,score_TalkTime_min=22,tag=Dialogue1] TalkTime 0
#scoreboard players set @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=Dialogue1] DialogueTrigger 0
#       Ends the dialogue, and adds a tag as to not repeat.
#       Target selector of score_TalkTime_min=X is what will determine the ending time. This should be equal to or greater than the final command in the series.







#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Oak's Welcome speech
#scoreboard players set @a[x=-958,y=66,z=-366,dy=2,dz=1,tag=!Dialogue1] DialogueTrigger 1
#scoreboard players set @a[x=-972,y=64,z=-410,dx=10,dy=7,dz=10,score_TalkTime=0,tag=!Dialogue1] DialogueTrigger 1

scoreboard players add @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1] TalkTime 1

execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute entitydata @e[x=-972,y=63,z=-410,dx=10,dy=10,dz=10,type=pixelmon:npc_chatting] {Rotation:[90f,0.0f]}
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> Hello! Sorry to keep you waiting!"}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=8,score_TalkTime=8] {"text":"<...> Welcome to the world of Pokémon!"}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Professor Oak> My name is Oak. People call me the Pokémon Prof."}

#tp in Pokémon
#Pokémon spawn sound
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ /particle cloud -964.5 66 -406.0 1 1 1 1 100
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ /tp @e[x=-744,y=74,z=-242,dy=3,type=pixelmon:statue] -964.5 66 -406.0

tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Professor Oak> This world is inhabited by creatures that we call Pokémon."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Professor Oak> People and Pokémon live together by supporting each other."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Professor Oak> Some people play with Pokémon, some battle with them."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Professor Oak> But we don't know everything about Pokémon yet."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=57,score_TalkTime=57] {"text":"<Professor Oak> There are still many mysteries to solve. That's why I study Pokémon every day."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=66,score_TalkTime=66] ["",{"text":"<Professor Oak> "},{"selector":"@p[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=66,score_TalkTime=66]"},{"text":", are you ready?"}]
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=72,score_TalkTime=72] {"text":"<Professor Oak> Your very own Pokémon story is about to unfold."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=80,score_TalkTime=80] {"text":"<Professor Oak> You'll face fun times and tough challenges."}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=87,score_TalkTime=87] {"text":"<Professor Oak> A world of dreams and adventures with Pokémon awaits!"}
tellraw @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=95,score_TalkTime=95] {"text":"<Professor Oak> Let's go! I'll be seeing you later!"}

#Tp return statue
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=102,score_TalkTime=102] ~ ~ ~ /tp @e[x=-965,y=65,z=-407,dy=2,dz=1,type=pixelmon:statue] -744 75 -242

#tp player to New Bark Town
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ /tp @s -724 69 -491
execute @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=!Dialogue1,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,score_TalkTime_min=103,tag=!Dialogue1] add Dialogue1
scoreboard players set @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,score_TalkTime_min=103,tag=Dialogue1] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=1,score_DialogueTrigger=1,tag=Dialogue1] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mom's opening dialogue when you walk downstairs
#scoreboard players set @a[x=-736,y=64,z=-491,dx=10,dy=3,dz=6,tag=!Dialogue2,score_TalkTime=0] DialogueTrigger 2

scoreboard players add @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=!Dialogue2] TalkTime 1
tellraw @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=!Dialogue2,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"<Mom> Oh, "},{"selector":"@p[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=!Dialogue2,score_TalkTime_min=2,score_TalkTime=2]"},{"text":"...!"}]
tellraw @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=!Dialogue2,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Mom> Our neighbor, Professor Elm, was looking for you."}
tellraw @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=!Dialogue2,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Mom> He said he wanted you to do something for him."}

scoreboard players tag @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,score_TalkTime_min=17,tag=!Dialogue2] add Dialogue2
scoreboard players set @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,score_TalkTime_min=17,tag=Dialogue2] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=2,score_DialogueTrigger=2,tag=Dialogue2] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Elm's first Dialogue
#scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,tag=!Dialogue3,score_TalkTime=0] DialogueTrigger 3

scoreboard players add @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3] TalkTime 1

execute @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"<Professor Elm> "},{"selector":"@p[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=2,score_TalkTime=2]"},{"text":"! There you are!"}]
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Professor Elm> I needed to ask you a favor."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Professor Elm> I have an acquaintance called Mr. Pokémon."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Professor Elm> He keeps finding weird things and raving about his discoveries."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Professor Elm> Anyway, I just got an e-mail from him saying that this time it's real."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Professor Elm> It is intriguing, but we're busy with our Pokémon research."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Professor Elm> Could you look into it for us?"}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Professor Elm> I'll give you a Pokémon for a partner. They're all rare Pokémon that we just found."}
tellraw @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Professor Elm> Go on. Pick one!"}
execute @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=!Dialogue3,score_TalkTime_min=66,score_TalkTime=66] ~ ~ ~ /clone -686 62 -487 -690 62 -487 -689 65 -479

scoreboard players tag @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,score_TalkTime_min=66,tag=!Dialogue3] add Dialogue3
scoreboard players set @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,score_TalkTime_min=66,tag=Dialogue3] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=3,score_DialogueTrigger=3,tag=Dialogue3] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Elm post-Starters
#scoreboard players set @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,tag=!Dialogue4,score_TalkTime=0,score_StarterPick_min=1] DialogueTrigger 4

scoreboard players add @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4] TalkTime 1
execute @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ advancement grant @s only johto:root

tellraw @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=5,score_TalkTime=5] {"text":"<Professor Elm> Mr. Pokémon lives near Cherrygrove, the next city."}
tellraw @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Professor Elm> It's almost a direct route to there."}
tellraw @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Professor Elm> If your Pokémon is hurt, you should heal it with this machine."}
tellraw @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=31,score_TalkTime=31] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> "},{"selector":"@p[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=31,score_TalkTime=31]"},{"text":", I want you to have this for your errand."}]
execute @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ give @s pixelmon:potion 5
tellraw @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=!Dialogue4,score_TalkTime_min=40,score_TalkTime=40] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> There are only two of us, so we're always busy."}]

scoreboard players tag @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,score_TalkTime_min=40,tag=!Dialogue4] add Dialogue4
scoreboard players set @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,score_TalkTime_min=40,tag=Dialogue4] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=4,score_DialogueTrigger=4,tag=Dialogue4] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/HQEaaIuyKAM?t=943
#Mr Pokémon and Oak, Mystery Egg
#scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,tag=!Dialogue5,score_TalkTime=0] DialogueTrigger 5

#Turns Professor Oak invisible after Dialogue
#execute @p[x=-252,y=63,z=-196,r=30,tag=Dialogue5] ~ ~ ~ effect @e[x=-252,y=63,z=-196,dy=3,type=pixelmon:npc_chatting] minecraft:invisibility 10 10 true

scoreboard players add @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5] TalkTime 1

tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> Hello, hello! You must be "},{"selector":"@p[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> Professor Elm said that you would visit."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=15,score_TalkTime=15] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> This is what I want Professor Elm to examine."}]

#Gives Mystery Egg item
execute @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ give @s minecraft:record_wait 1 0 {display:{Name:"Mystery Egg",Lore:["An egg found at the daycare.","I wonder what could be inside?"]},HideFlags:36}

tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=23,score_TalkTime=23] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> I know a couple who run a Pokémon Daycare service."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=30,score_TalkTime=30] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> They gave me that egg. I was intrigued, so I sent mail to Professor Elm."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=40,score_TalkTime=40] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> For Pokémon evolution, Professor Elm is the authority."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=47,score_TalkTime=47] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> Even Professor Oak here recognizes that."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=54,score_TalkTime=54] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> If my assumption is correct, Professor Elm will know it."}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=62,score_TalkTime=62] ["",{"text":"<Professor Oak> Aha! So you're "},{"selector":"@p[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=62,score_TalkTime=62]"},{"text":"! I'm Oak!"}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=69,score_TalkTime=69] {"text":"<Professor Oak> A Pokémon researcher. I was just visitng my old friend Mr. Pokémon."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=77,score_TalkTime=77] {"text":"<Professor Oak> I heard you were running an errand for Professor Elm, so I waited here."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=86,score_TalkTime=86] {"text":"<Professor Oak> Oh! What's this? A rare Pokémon! Let's see... Hmm, I see!"}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=95,score_TalkTime=95] {"text":"<Professor Oak> I understand why Professor Elm gave you a Pokémon for this errand."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=104,score_TalkTime=104] {"text":"<Professor Oak> To researchers like Professor Elm and I, Pokémon are our friends."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=113,score_TalkTime=113] {"text":"<Professor Oak> He saw that you would treat your Pokémon with love and care."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=122,score_TalkTime=122] {"text":"<Professor Oak> ...Ah! You seem to be dependable. How would you like to help me out?"}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=130,score_TalkTime=130] {"text":"<Professor Oak> See? This is the latest version of Pokédex."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=137,score_TalkTime=137] {"text":"<Professor Oak> It automatically records data on Pokémon you've seen or caught."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=146,score_TalkTime=146] {"text":"<Professor Oak> It's a hi-tech encyclopedia!"}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=153,score_TalkTime=153] {"text":"<Professor Oak> Go meet many kinds of Pokémon and complete that Pokédex!"}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=160,score_TalkTime=160] {"text":"<Professor Oak> But I've stayed too long. I have to get to Goldenrod for my usual radio show."}
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=169,score_TalkTime=169] ["",{"text":"<Professor Oak> "},{"selector":"@p[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=169,score_TalkTime=169]"},{"text":", I'm counting on you!"}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=176,score_TalkTime=176] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> You are returning to Professor Elm?"}]
tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=183,score_TalkTime=183] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> Here. Your Pokémon should have some rest."}]

#Healer sound
execute @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=186,score_TalkTime=186] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=186,score_TalkTime=186] ~ ~ ~ pokeheal @s
execute @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=186,score_TalkTime=186] ~ ~ ~ playsound pixelmon:pixelmon.block.healeractivate ambient @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=190,score_TalkTime=190] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=!Dialogue5,score_TalkTime_min=190,score_TalkTime=190] ["",{"text":"<"},{"text":"Mr. Pokémon","color":"gray"},{"text":"> I'm depending on you!"}]

scoreboard players tag @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,score_TalkTime_min=190,tag=!Dialogue5] add Dialogue5
scoreboard players set @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,score_TalkTime_min=190,tag=Dialogue5] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=5,score_DialogueTrigger=5,tag=Dialogue5] DialogueTrigger 0
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#
#Silver Cherrygrove first battle pre-battle
#scoreboard players set @a[x=-300,y=64,z=-509,r=20,tag=Dialogue5,score_TalkTime=0] DialogueTrigger 6

scoreboard players add @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6] TalkTime 1

#tp Silver in
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -300 64 -509
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -300 64 -509
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -300 64 -509
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -300 64 -509 1 1 1 0.15 300

tellraw @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=4,score_TalkTime=4] {"text":"< . . . > You got a Pokémon at the Lab. What a waste."}
tellraw @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=12,score_TalkTime=12] {"text":"< . . . > That's a Pokémon that's too good for a wimp like you."}
tellraw @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=20,score_TalkTime=20] {"text":"< . . . > Don't you get what I'm saying? Well, I too have a good Pokémon. I'll show you what I mean!"}
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,score_TalkTime_min=30,tag=!Dialogue6] add Dialogue6
scoreboard players set @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,score_TalkTime_min=30,tag=Dialogue6] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=Dialogue6] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver Cherrygrove first battle post-battle
#scoreboard players set @a[x=-300,y=64,z=-509,r=25,score_TalkTime=0] DialogueTrigger 7 {Inventory:[{id:"minecraft:netherbrick"}]}
#execute @a[x=-300,y=64,z=-509,r=10,tag=Dialogue6,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=!Dialogue7] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -300 64 -509
#execute @a[x=-300,y=64,z=-509,r=10,tag=Dialogue6,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=!Dialogue7] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -300 64 -509
#execute @a[x=-300,y=64,z=-509,r=10,tag=Dialogue6,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=!Dialogue7] ~ ~ ~ tp @e[x=-760,y=84,z=-242,dy=10,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -300 64 -509

scoreboard players add @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7] TalkTime 1

execute @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=2,score_TalkTime=2] {"text":"< . . . > \u2026Humph! That was a waste of time."}
tellraw @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=9,score_TalkTime=9] {"text":"< . . . > \u2026Do you want to know who I am? I'm going to be the world's greatest Pokémon Trainer."}

execute @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ particle cloud -300 64 -509 1 1 1 0.15 300
execute @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ tp @e[x=-300,y=64,z=-509,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -760 93 -242
execute @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ tp @e[x=-300,y=64,z=-509,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -760 89 -242
execute @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=!Dialogue7,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ tp @e[x=-300,y=64,z=-509,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -760 85 -242
execute @a[score_DialogueTrigger_min=6,score_DialogueTrigger=6,tag=!Dialogue6,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,score_TalkTime_min=17,tag=!Dialogue7] add Dialogue7
scoreboard players set @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,score_TalkTime_min=17,tag=Dialogue7] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=7,score_DialogueTrigger=7,tag=Dialogue7] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elm after visiting Mr. Pokémon
#execute @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,tag=!Dialogue8,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=Dialogue5] DialogueTrigger 8

scoreboard players add @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8] TalkTime 1

#tp Officer in
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-716,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] -682 64 -481
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -682 64 -481 1 1 1 0.15 100

execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=4,score_TalkTime=4] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> There was a loud noise outside... When we went to look, someone stole a Pokémon."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=14,score_TalkTime=14] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> It's unbelievable that anyone would do that!"}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=22,score_TalkTime=22] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> ...sigh... That stolen Pokémon. I wonder how it's doing."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=30,score_TalkTime=30] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> They say a Pokémon raised by a bad person turns bad itself."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=38,score_TalkTime=38] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> I heard a Pokémon was stolen here..."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=45,score_TalkTime=45] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> I was just getting some information from Professor Elm."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=52,score_TalkTime=52] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> Apparently, it was a young male with long, red hair..."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=60,score_TalkTime=60] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> What? You battled a trainer like that? Did you happen to get his name?"}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=69,score_TalkTime=69] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> ... ... ..."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=74,score_TalkTime=74] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> So Silver was his name. Thanks for helping my investigation!"}]

#tp Police officer out
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ tp @e[x=-682,y=63,z=-481,dy=3,type=pixelmon:npc_chatting] -716 91 -242
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ particle cloud -682 64 -481 1 1 1 0.15 100

tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=83,score_TalkTime=83] ["",{"text":"<Professor Elm> "},{"selector":"@p[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=83,score_TalkTime=83]"},{"text":", this is terrible..."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=90,score_TalkTime=90] {"text":"<Professor Elm> Oh, yes, what was Mr. Pokémon's big discovery?"}

#Clears Mystery Egg item
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=95,score_TalkTime=95] ~ ~ ~ clear @s minecraft:record_wait

tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=97,score_TalkTime=97] {"text":"<Professor Elm> This? But... It is a Pokémon Egg?"}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=104,score_TalkTime=104] {"text":"<Professor Elm> If it is, it is a great discovery!"}
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=104,score_TalkTime=104] ~ ~ ~ advancement grant @s only johto:mysteryegg
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=111,score_TalkTime=111] {"text":"<Professor Elm>  What?!? Professor Oak gave you a Pokédex?"}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=118,score_TalkTime=118] ["",{"text":"<Professor Elm> "},{"selector":"@p[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=118,score_TalkTime=118]"},{"text":", is that true? Th-that's incredible!"}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=126,score_TalkTime=126] {"text":"<Professor Elm> He is superb at seeing the potential of people as trainers."}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=134,score_TalkTime=134] ["",{"text":"<Professor Elm> Wow, "},{"selector":"@p[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=134,score_TalkTime=134]"},{"text":". You may have what it takes to become the Champion."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=142,score_TalkTime=142] {"text":"<Professor Elm> You seem to be getting on great with Pokémon too."}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=149,score_TalkTime=149] {"text":"<Professor Elm> You should take the Pokémon Gym challenge."}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=156,score_TalkTime=156] {"text":"<Professor Elm> The closest Gym would be the one in Violet City."}
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=163,score_TalkTime=163] ["",{"text":"<Professor Elm> ..."},{"selector":"@p[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=163,score_TalkTime=163]"},{"text":". The road to the championship will be a long one."}]
#tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=172,score_TalkTime=172] {"text":"<Professor Elm> Before you leave, make sure that you talk to your mom."}


tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=172,score_TalkTime=172] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> "},{"selector":"@p[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=172,score_TalkTime=172]"},{"text":"! Use these on your Pokédex quest!"}]
execute @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=174,score_TalkTime=174] ~ ~ ~ give @s pixelmon:poke_ball 5
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=178,score_TalkTime=178] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> To add to your Pokédex, you have to catch Pokémon."}]
tellraw @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=!Dialogue8,score_TalkTime_min=186,score_TalkTime=186] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> Throw Poké Balls at wild Pokémon to get them."}]

scoreboard players tag @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,score_TalkTime_min=186,tag=!Dialogue8] add Dialogue8
scoreboard players set @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,score_TalkTime_min=186,tag=Dialogue8] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=8,score_DialogueTrigger=8,tag=Dialogue8] DialogueTrigger 0

#Starter Invisibility post-Silver
#execute @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ /effect @e[x=-685,y=64,z=-478,dy=2,dz=2,type=pixelmon:statue] minecraft:invisibility 10 1 true
#execute @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ /effect @e[x=-689,y=64,z=-478,dy=2,dz=2,type=pixelmon:statue] minecraft:invisibility 10 1 true
#execute @a[x=-693,y=63,z=-490,dx=19,dy=5,dz=19,tag=Dialogue5,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ /effect @e[x=-687,y=64,z=-478,dy=2,dz=2,type=pixelmon:statue] minecraft:invisibility 10 1 true

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver in Bellsprout Tower pre-battle
#scoreboard players set @a[x=54,y=103,z=22,dx=12,dy=5,dz=10,tag=!Dialogue9,score_TalkTime=0] DialogueTrigger 9

scoreboard players add @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9] TalkTime 1

#tp Silver in
execute @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-758,y=88,z=-242,dy=2,name=Silver] 57 104 29
execute @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Elder Li> You are indeed skilled as a trainer. As promised, here is your HM."}
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Elder Li> But let me say this: You should treat your Pokémon better."}
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Elder Li> The way you battle is far too harsh. Pokémon are not tools of war..."}
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=31,score_TalkTime=31] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ... ...Humph! He claims to be the Elder but he's weak. It stands to reason."}]
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=40,score_TalkTime=40] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'd never lose to fools who babble about being nice to Pokémon."}]
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=48,score_TalkTime=48] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I only care about strong Pokémon that can win."}]
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=56,score_TalkTime=56] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I really couldn't care less about weak Pokémon."}]
tellraw @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=64,score_TalkTime=64] {"text":"Silver used an Escape Rope!","italic":true,"color":"gray"}

#Silver tps off
execute @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=64,score_TalkTime=64] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=64,score_TalkTime=64] ~ ~ ~ particle cloud 57 104 29 1 1 1 0.15 100
execute @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=!Dialogue9,score_TalkTime_min=64,score_TalkTime=64] ~ ~ ~ tp @e[x=57,y=103,z=29,dy=3,type=pixelmon:npc_chatting] -758 89 -242


scoreboard players tag @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,score_TalkTime_min=64,tag=!Dialogue9] add Dialogue9
scoreboard players set @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,score_TalkTime_min=64,tag=Dialogue9] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=9,score_DialogueTrigger=9,tag=Dialogue9] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elder Li post-battle
#scoreboard players set @a[x=56,y=103,z=33,r=25,score_TalkTime=0,tag=!Dialogue10] DialogueTrigger 10 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10] TalkTime 1
execute @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Elder Li> You and your Pokémon should have no problem using this move."}
tellraw @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Elder Li> Take this Flash HM."}

execute @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ give @s minecraft:fireworks 16 0 {display:{Name:"HM05: Flash",Lore:["Illuminates the user's vision for","fifteen minutes, and gets rid of","a player's blindness."]},ench:[{id:"2",lvl:"1"}],HideFlags:1}
execute @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:70}

tellraw @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Elder Li> Flash illuminates even the darkest of all places."}
tellraw @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=!Dialogue10,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Elder Li> I hope you learn and grow from your journey."}

scoreboard players tag @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,score_TalkTime_min=25,tag=!Dialogue10] add Dialogue10
scoreboard players set @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,score_TalkTime_min=25,tag=Dialogue10] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=10,score_DialogueTrigger=10,tag=Dialogue10] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Falkner Pre-battle
#scoreboard players set @a[x=-791,y=64,z=595,r=20,score_TalkTime=0,tag=!Dialogue11] DialogueTrigger 11

scoreboard players add @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11] TalkTime 1
tellraw @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Falkner> I'm Falker, the Violet Pokémon Gym leader!"}
tellraw @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Falkner> People say you can clip flying-type Pokémon's wings with a jolt of electricity..."}
tellraw @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Falkner> I won't allow such insults to bird Pokémon!"}
tellraw @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Falkner> I'll show you the real power of the magnificent bird Pokémon!"}
execute @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=!Dialogue11,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,score_TalkTime_min=26,tag=!Dialogue11] add Dialogue11
scoreboard players set @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,score_TalkTime_min=26,tag=Dialogue11] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=11,score_DialogueTrigger=11,tag=Dialogue11] DialogueTrigger 0



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Falkner Win
#scoreboard players set @a[x=-791,y=64,z=595,r=20,score_TalkTime=0,tag=!Dialogue12] DialogueTrigger 12 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12] TalkTime 1
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Falkner
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12] ~ ~ ~ clear @s minecraft:netherbrick

tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Falkner> ...Darn! My Dad's cherished bird Pokémon..."}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Falkner> All right. Take this."}

#gives ZepbyrBadge
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:Zephyr_Badge 1
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ advancement grant @s only johto:badge1

tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Falkner> It's the official Pokémon League Zephyrbadge."}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Falkner> Here--take this too."}
execute @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=29,score_TalkTime=29] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:51}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Falkner> By using a TM, a Pokémon will instantly learn a new move."}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Falkner> You can even use them more than once!"}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Falkner> TM51 contains Roost. It restores half the max HP."}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=55,score_TalkTime=55] {"text":"<Falkner> There are Pokémon Gyms in cities and towns ahead. Make good use of them!"}
tellraw @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=!Dialogue12,score_TalkTime_min=64,score_TalkTime=64] {"text":"<Falkner> As for your next move... I would suggest Azalea Town."}

scoreboard players tag @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,score_TalkTime_min=64,tag=!Dialogue12] add Dialogue12
scoreboard players set @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,score_TalkTime_min=64,tag=Dialogue12] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=12,score_DialogueTrigger=12,tag=Dialogue12] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elm's Aide giving Togepi Egg after Falkner
#execute @a[x=11,y=64,z=-100,r=7,score_TalkTime=0,tag=!Dialogue13] ~ ~ ~ scoreboard players set @s[tag=Falkner] DialogueTrigger 13

scoreboard players add @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13] TalkTime 1

#tp Aide in
execute @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=64,z=-240,dy=3,type=pixelmon:npc_chatting] 11 64 -100
execute @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 11 64 -100 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=4,score_TalkTime=4] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> "},{"selector":"@p[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=4,score_TalkTime=4]"},{"text":", long time, no see. Professor Elm asked me to find you."}]
tellraw @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=14,score_TalkTime=14] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> He has another favor to ask. Would you take the Pokémon Egg?"}]
execute @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ pokegive @s Togepi lvl:1 egg
tellraw @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> We discovered that a Pokémon will not hatch until it grows in the Egg."}]
tellraw @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=34,score_TalkTime=34] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> It also has to be with other active Pokémon to hatch."}]
tellraw @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=42,score_TalkTime=42] ["",{"text":"<"},{"text":"Elm's Aide","color":"gray"},{"text":"> "},{"selector":"@p[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=42,score_TalkTime=42]"},{"text":", you're the only person we can rely on."}]

#tp Aide back
execute @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ tp @e[x=11,y=63,z=-100,dy=3,type=pixelmon:npc_chatting] -815 65 -240
execute @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=!Dialogue13,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ particle cloud 11 64 -100 1 1 1 1 100

scoreboard players tag @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,score_TalkTime_min=50,tag=!Dialogue13] add Dialogue13
scoreboard players set @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,score_TalkTime_min=50,tag=Dialogue13] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=13,score_DialogueTrigger=13,tag=Dialogue13] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Kurt first encounter in his house
#scoreboard players set @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,tag=!Dialogue14] DialogueTrigger 14

scoreboard players add @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14] TalkTime 1

#tp Kurt in if not here
execute @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=371,y=63,z=-698,dy=3,type=pixelmon:npc_chatting] 371 64 -698

tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=2,score_TalkTime=2] {"text":"<Kurt> Hm? Who are you?"}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<Kurt> "},{"selector":"@p[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=8,score_TalkTime=8]"},{"text":", eh? You want me to make some Balls?"}]
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Kurt> Sorry, but that'll have to wait. Do you know Team Rocket?"}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Kurt> Ah, don't worry. I'll tell you anyhow."}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Kurt> Team Rocket's an evil gang that uses Pokémon for their dirty work."}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=39,score_TalkTime=39] {"text":"<Kurt> They're supposed to have disbanded three years ago."}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=46,score_TalkTime=46] {"text":"<Kurt> Anyway, they're at the Well, cutting off Slowpoketails for sale!"}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=54,score_TalkTime=54] {"text":"<Kurt> So I'm going to go give them a lesson in pain!"}
tellraw @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=61,score_TalkTime=61] {"text":"<Kurt> Hang on, Slowpoke! Old Kurt is on his way!"}

#Kurt TPs out
execute @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=68,score_TalkTime=68] ~ ~ ~ tp @e[x=371,y=63,z=-698,dy=3,type=pixelmon:npc_chatting] -726 91 -242
execute @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=!Dialogue14,score_TalkTime_min=68,score_TalkTime=68] ~ ~ ~ particle cloud 371 64 -698 1 1 1 1 100

scoreboard players tag @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_TalkTime_min=68,tag=!Dialogue14] add Dialogue14
scoreboard players set @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,score_TalkTime_min=68,tag=Dialogue14] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=14,score_DialogueTrigger=14,tag=Dialogue14] DialogueTrigger 0

#tps out Kurt trader villagers if player hasn't completed the Well quest
#execute @p[x=371,y=64,z=-698,r=25,tag=!Dialogue16] ~ ~ ~ /tp @e[x=-726,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 371 64 -698
#execute @p[x=371,y=64,z=-698,r=25,tag=!Dialogue16] ~ ~ ~ /tp @e[x=370,y=64,z=-699,dx=1,dy=3,dz=1,type=villager,c=1] -724 91 -242
#execute @p[x=371,y=64,z=-698,r=25,tag=!Dialogue16] ~ ~ ~ /tp @e[x=370,y=64,z=-699,dx=1,dy=3,dz=1,type=villager,c=1] -722 91 -242

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Kurt in Slowpoke Well
#execute @a[x=244,y=39,z=-708,r=7,tag=Dialogue14] ~ ~ ~ scoreboard players set @s[tag=!Dialogue15] DialogueTrigger 15

#tps in Kurt separately
#execute @a[x=244,y=56,z=-714,r=20,tag=!Dialogue15] ~ ~ ~ tp @e[x=-728,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 244 39 -708

scoreboard players add @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15] TalkTime 1

#tps in Team Rocket grunts
execute @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ tp @e[x=-748,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 251 39 -691
execute @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ tp @e[x=-746,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 262 43 -671
execute @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ tp @e[x=-744,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 291 39 -679
execute @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ tp @e[x=-742,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 289 39 -661

#Kurt in the Well
tellraw @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"<Kurt> Hey there, "},{"selector":"@p[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=2,score_TalkTime=2]"},{"text":"! The guards up top took off when I shouted at them."}]
tellraw @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Kurt> But then I took a tumble down the Well."}
tellraw @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Kurt> I slammed down hard on my back, so I can't move. Rats!"}
tellraw @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Kurt> If I were fit, my Pokémon would've punished them..."}
tellraw @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=34,score_TalkTime=34] ["",{"text":"<Kurt> Ah, it can't be helped. "},{"selector":"@p[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=!Dialogue15,score_TalkTime_min=34,score_TalkTime=34]"},{"text":", show them how gutsy you are in my place!"}]


scoreboard players tag @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,score_TalkTime_min=34,tag=!Dialogue15] add Dialogue15
scoreboard players set @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,score_TalkTime_min=34,tag=Dialogue15] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=15,score_DialogueTrigger=15,tag=Dialogue15] DialogueTrigger 0

#Exterior guard tp in
#execute @p[x=244,y=56,z=-714,r=25,tag=!Dialogue14] ~ ~ ~ tp @e[x=-750,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 247 54 -714

#Exterior Guard tp out
#execute @p[x=244,y=56,z=-714,r=25,tag=Dialogue14] ~ ~ ~ tp @e[x=247,y=53,z=-714,dy=3,type=pixelmon:npc_chatting] -750 91 -242

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#After defeating Proton
#scoreboard players set @a[x=289,y=38,z=-665,r=20,score_TalkTime=0,tag=!Dialogue16] DialogueTrigger 16 {Inventory:[{id:"minecraft:netherbrick"}]}
#execute @a[x=289,y=38,z=-665,r=10,tag=Dialogue15,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue16] ~ ~ ~ tp @e[x=-742,y=90,z=-242,dy=3,type=pixelmon:npc_trainer] 289 39 -661

scoreboard players add @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16] TalkTime 1
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"<"},{"text":"Team Rocket Proton","color":"green"},{"text":"> Yeah, Team Rocket was broken up three years ago."}]
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=9,score_TalkTime=9] ["",{"text":"<"},{"text":"Team Rocket Proton","color":"green"},{"text":"> But we continued our activities underground."}]
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=16,score_TalkTime=16] ["",{"text":"<"},{"text":"Team Rocket Proton","color":"green"},{"text":"> Now you can have fun watching us stir up trouble!"}]

#tp Team Rocket out
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ particle cloud 289 39 -661 1 1 1 1 100
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=251,y=38,z=-691,dy=3,type=pixelmon:npc_trainer] -748 91 -242
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=262,y=42,z=-671,dy=3,type=pixelmon:npc_trainer] -746 91 -242
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=289,y=38,z=-661,dy=3,type=pixelmon:npc_trainer] -742 91 -242
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=291,y=38,z=-679,dy=3,type=pixelmon:npc_trainer] -744 91 -242

#Kurt tps near where the Slowpoke are
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ particle cloud 286 39 -667 1 1 1 1 100
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ tp @e[x=-815,y=69,z=-240,dy=3,type=pixelmon:npc_chatting] 286 39 -667

#tp the Kurt standing at the entrance of the Well out
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ tp @e[x=244,y=38,z=-708,dy=3,type=pixelmon:npc_chatting] -728 91 -242

tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=29,score_TalkTime=29] ["",{"text":"<Kurt> Way to go, "},{"selector":"@p[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=29,score_TalkTime=29]"},{"text":"!"}]
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Kurt> Team Tocket has taken off. My back's better too."}
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=43,score_TalkTime=43] {"text":"<Kurt> Let's get out of here."}

#blinds player
#tps Kurt out
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=49,score_TalkTime=49] ~ ~ ~ /effect @s minecraft:blindness 5 1 true
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ tp @e[x=286,y=38,z=-667,dy=3,type=pixelmon:npc_chatting] -815 70 -240

#tps house Kurt in
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ tp @e[x=-726,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 371 64 -698

#tps player to Kurt's House
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=52,score_TalkTime=52] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=52,score_TalkTime=52] ~ ~ ~ tp @s 366 64 -703 -30 13
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=52,score_TalkTime=52] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=55,score_TalkTime=55] {"text":"<Kurt> You handled yourself like a real hero at the Well."}
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=62,score_TalkTime=62] {"text":"<Kurt> I like your style! I would be honored to make Balls for a trainer like you."}
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Kurt> This is all I have now, but take it."}
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=74,score_TalkTime=74] ~ ~ ~ /give @s pixelmon:fast_ball 1 0 {display:{Lore:["A Poké Ball that makes it easier","to catch fast Pokémon."]}}
execute @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=74,score_TalkTime=74] ~ ~ ~ /advancement grant @s only johto:rocket1
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=78,score_TalkTime=78] {"text":"<Kurt> I make Balls from Apricorns."}
tellraw @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=!Dialogue16,score_TalkTime_min=83,score_TalkTime=83] {"text":"<Kurt> Collect them from trees and bring 'em to me. I'll make Balls out of them."}

scoreboard players tag @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,score_TalkTime_min=83,tag=!Dialogue16] add Dialogue16
scoreboard players set @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,score_TalkTime_min=83,tag=Dialogue16] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=16,score_DialogueTrigger=16,tag=Dialogue16] DialogueTrigger 0

#tp villager traders in
#execute @p[x=371,y=64,z=-698,r=25,tag=Dialogue16,score_TalkTime=0] ~ ~ ~ tp @e[x=-724,y=90,z=-242,dy=3,type=villager,name=Kurt,c=1] 371.0 64 -698
#execute @p[x=371,y=64,z=-698,r=25,tag=Dialogue16,score_TalkTime=0] ~ ~ ~ tp @e[x=-722,y=90,z=-242,dy=3,type=villager,name=Kurt,c=1] 371.5 64 -698.0
#execute @p[x=371,y=64,z=-698,r=25,tag=Dialogue16,score_TalkTime=0] ~ ~ ~ tp @e[x=-726,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 371 64 -698

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bugsy Pre-battle Dialogue
#scoreboard players set @a[x=-860,y=64,z=582,dx=11,dy=5,dz=15,score_TalkTime=0,tag=!Dialogue17] DialogueTrigger 17

scoreboard players add @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=!Dialogue17] TalkTime 1

tellraw @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=!Dialogue17,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Bugsy> I'm Bugsy! I never lose when it comes to bug Pokémon."}
tellraw @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=!Dialogue17,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Bugsy> My research is going to make me the authority on bug Pokémon!"}
tellraw @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=!Dialogue17,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Bugsy> Let me demonstrate what I've learned from my studies."}
execute @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=!Dialogue17,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,score_TalkTime_min=27,tag=!Dialogue17] add Dialogue17
scoreboard players set @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,score_TalkTime_min=27,tag=Dialogue17] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=17,score_DialogueTrigger=17,tag=Dialogue17] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bugsy Post-battle Dialogue
#scoreboard players set @a[x=-884,y=0,z=522,dx=57,dy=240,dz=86,score_TalkTime=0,tag=!Dialogue18] DialogueTrigger 18 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18] TalkTime 1
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Bugsy
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18] ~ ~ ~ clear @s minecraft:netherbrick

#gives Badge
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ give @s pixelmon:hive_Badge 1
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ advancement grant @s only johto:badge2

tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=6,score_TalkTime=6] {"text":"<Bugsy> Do you know the benefits of Hivebadge?"}
tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Bugsy> If you have it, you can use the HM Cut outside of battle."}
tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Bugsy> Here, I also want you to have this."}

execute @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:89}

tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Bugsy> TM89 contains U-turn."}
tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Bugsy> It lets your Pokémon attack, then switch with the next Pokémon in your party."}"}
tellraw @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=!Dialogue18,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Bugsy> Isn't that great?"}

scoreboard players tag @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,score_TalkTime_min=47,tag=!Dialogue18] add Dialogue18
scoreboard players set @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,score_TalkTime_min=47,tag=Dialogue18] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=18,score_DialogueTrigger=18,tag=Dialogue18] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Azalea Town Silver pre-battle
#execute @a[x=402,y=64,z=-734,r=15,tag=!Dialogue19] ~ ~ ~ /scoreboard players set @s[tag=Bugsy] DialogueTrigger 19

scoreboard players add @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19] TalkTime 1

#tp in Silver
execute @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 402 64 -734 1 1 1 1 100
execute @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] 402 64 -734
execute @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] 402 64 -734
execute @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] 402 64 -734

tellraw @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=3,score_TalkTime=3] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Tell me something. Is it true that Team Rocket has returned?"}]
tellraw @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=11,score_TalkTime=11] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> What? You beat them?"}]
tellraw @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=17,score_TalkTime=17] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Hah! Quit lying."}]
tellraw @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You're not joking? Then let's see how good you are."}]
execute @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=!Dialogue19,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,score_TalkTime_min=25,tag=!Dialogue19] add Dialogue19
scoreboard players set @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,score_TalkTime_min=25,tag=Dialogue19] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=19,score_DialogueTrigger=19,tag=Dialogue19] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Azalea Town Silver post-battle
#scoreboard players set @a[x=402,y=64,z=-734,r=25,score_TalkTime=0,tag=!Dialogue20] DialogueTrigger 20 {Inventory:[{id:"minecraft:netherbrick"}]}

#execute @a[x=402,y=64,z=-734,r=15,tag=Dialogue19,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=!Dialogue20] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] 402 64 -734
#execute @a[x=402,y=64,z=-734,r=15,tag=Dialogue19,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=!Dialogue20] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] 402 64 -734
#execute @a[x=402,y=64,z=-734,r=15,tag=Dialogue19,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=!Dialogue20] ~ ~ ~ tp @e[x=-762,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] 402 64 -734

scoreboard players add @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20] TalkTime 1
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ... Humph! Useless Pokémon!"}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Listen, you. You only won because my Pokémon were weak."}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=15,score_TalkTime=15] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I hate the weak. Pokémon, trainers. It doesn't matter who or what."}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=24,score_TalkTime=24] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm going to be strong and wipe out the weak."}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=32,score_TalkTime=32] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> That goes for Team Rocket too. They act big and tough in a group."}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=41,score_TalkTime=41] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> But get them alone, and they're weak. I hate them all."}]
tellraw @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=49,score_TalkTime=49] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You stay out of my way. A weakling like you is only a distraction."}]

#tp Return Silver
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ particle cloud 402 64 -734 1 1 1 1 100
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=402,y=64,z=-734,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -762 85 -242
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=402,y=64,z=-734,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -762 89 -242
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=402,y=64,z=-734,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -762 93 -242
execute @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=!Dialogue20,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,score_TalkTime_min=57,tag=!Dialogue20] add Dialogue20
scoreboard players set @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,score_TalkTime_min=57,tag=Dialogue20] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=20,score_DialogueTrigger=20,tag=Dialogue20] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ilex Forest HM Merchant before Farfetch'd is found
#Resets if player leaves the forst without finding Farfetch'd
#execute @a[x=623,y=64,z=-714,r=5,tag=Bugsy,score_Farfetchd=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue21] DialogueTrigger 21

scoreboard players add @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,tag=!Dialogue21] TalkTime 1
tellraw @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,tag=!Dialogue21,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Charcoal Apprentice> The Farfetch'd that Cuts trees for charcoal took off on me."}
tellraw @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,tag=!Dialogue21,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Charcoal Apprentice> I can't go looking for it here in the Ilex Forest."}
tellraw @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,tag=!Dialogue21,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Charcoal Apprentice> It's too big, dark and scary for me..."}

scoreboard players tag @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,score_TalkTime_min=17,tag=!Dialogue21] add Dialogue21
scoreboard players set @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,score_TalkTime_min=17,tag=Dialogue21] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=21,score_DialogueTrigger=21,tag=Dialogue21] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/HQEaaIuyKAM?t=6325
#Ilex Forest HM Merchant after finding Farfetch'd
#execute @e[x=622,y=63,z=-714,dy=3,type=pixelmon:statue] ~ ~ ~ scoreboard players set @a[r=6,tag=!Dialogue22,score_Farfetchd_min=1] DialogueTrigger 22

scoreboard players add @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22] TalkTime 1

#tp Charcoal master in
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 625 64 -714 1 1 1 1 100
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=74,z=-240,dy=3,type=pixelmon:npc_chatting] 625 64 -714

tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Charcoal Apprentice> Wow! Thanks a whole bunch!"}
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Charcoal Apprentice> My boss's Pokémon won't obey me because I don't have a Badge."}
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=16,score_TalkTime=16] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> Ah! My Farfetch'd! You found it for us, kid?"}]
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=22,score_TalkTime=22] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> Without it, we wouldn't be able to Cut trees for charcoal."}]
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=30,score_TalkTime=30] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> Thanks, kid! Now, how can I thank you..."}]
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=37,score_TalkTime=37] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> I know! Here, take this."}]
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ give @s diamond_axe 1 0 {display:{Name:"HM01: Cut",Lore:["Enables to user to cut down small","trees that may block their paths."]},Unbreakable:1,HideFlags:32,CanDestroy:["pixelmon:tree"]}
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ give @s pixelmon:hm1
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=47,score_TalkTime=47] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> That's the Cut HM. You can use that to clear small trees."}]
tellraw @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=55,score_TalkTime=55] ["",{"text":"<"},{"text":"Charcoal Master","color":"gray"},{"text":"> Thanks again for your help!"}]

#master tps away
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ particle cloud 625 64 -714 1 1 1 1 100
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ tp @e[x=625,y=63,z=-714,dy=3,type=pixelmon:npc_chatting] -815 75 -240
execute @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=!Dialogue22,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ scoreboard players set @s Farfetchd 2

scoreboard players tag @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=60,tag=!Dialogue22] add Dialogue22
scoreboard players set @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,score_TalkTime_min=60,tag=Dialogue22] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=22,score_DialogueTrigger=22,tag=Dialogue22] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bike Shop Clerk giving player a bicycle
#scoreboard players set @a[x=419,y=63,z=-433,dx=12,dy=7,dz=11,tag=!Dialogue23] DialogueTrigger 23

scoreboard players add @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23] TalkTime 1
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Bicycle Clerk> ...sigh..."}
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=6,score_TalkTime=6] {"text":"<Bicycle Clerk> I moved here, but I can't sell my Bicycles. Why is that?"}
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Bicycle Clerk> Could you ride a Bicycle and advertise for me?"}
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Bicycle Clerk> Really? Great!"}
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=28,score_TalkTime=28] {"text":"<Bicycle Clerk> Give me your name and phone number, and I'll loan you a Bicycle."}
execute @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ give @s pixelmon:mach_bike 1 0 {display:{Name:"Bicycle",Lore:["Color: BLUE","","A folding Bike that enables","a rider to get around much","faster than with Running Shoes."]}}
tellraw @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Bicycle Clerk> My Bicycles are first-rate! You can ride them anywhere."}
execute @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ scoreboard players set @s Bicycle 1
execute @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=!Dialogue23,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ scoreboard players set @s BicycleCD 25

scoreboard players tag @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,score_TalkTime_min=37,tag=!Dialogue23] add Dialogue23
scoreboard players set @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,score_TalkTime_min=37,tag=Dialogue23] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=23,score_DialogueTrigger=23,tag=Dialogue23] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bicycle Follow-up call
#execute @a[score_BicycleCD=0,score_Bicycle_min=1,score_Bicycle=1,tag=Bicycle] ~ ~ ~ scoreboard players set @s[tag=!Dialogue26,score_TalkTime=0] DialogueTrigger 26

scoreboard players add @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26] TalkTime 1
tellraw @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26,score_TalkTime_min=5,score_TalkTime=5] ["",{"text":"<Bicycle Clerk> Hi, "},{"selector":"@p[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26,score_TalkTime_min=5,score_TalkTime=5]"},{"text":"! Our Bicycle sales have gone through the roof!"}]
tellraw @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Bicycle Clerk> We owe it all to your advertising by riding around on our Bicycle."}
tellraw @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Bicycle Clerk> As our way of saying thanks, please keep that Bicycle. Thanks again!"}
execute @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=!Dialogue26,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ scoreboard players set @s Bicycle 2

scoreboard players tag @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,score_TalkTime_min=25,tag=!Dialogue26] add Dialogue26
scoreboard players set @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,score_TalkTime_min=25,tag=Dialogue26] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=26,score_DialogueTrigger=26,tag=Dialogue26] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Charcoal Kiln after player finds Farfetch'd
#execute @a[x=286,y=63,z=-749,dx=20,dy=5,dz=8,score_TalkTime=0,score_Farfetchd_min=2] ~ ~ ~ scoreboard players set @s[tag=!Dialogue24] DialogueTrigger 24

scoreboard players add @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24] TalkTime 1
tellraw @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Charcoal Apprentice> I'm sorry--I forgot to thank you."}
tellraw @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Charcoal Apprentice> This is Charcoal that I made."}
execute @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=11,score_TalkTime=11] ~ ~ ~ give @s pixelmon:charcoal
tellraw @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Charcoal Apprentice> Fire-type Pokémon would be happy to hold that."}
tellraw @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Charcoal Apprentice> The Slowpoke came back, and you even found Farfetch'd"}
tellraw @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=!Dialogue24,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Charcoal Apprentice> You're the coolest, man!"}

scoreboard players tag @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,score_TalkTime_min=31,tag=!Dialogue24] add Dialogue24
scoreboard players set @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,score_TalkTime_min=31,tag=Dialogue24] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=24,score_DialogueTrigger=24,tag=Dialogue24] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/HQEaaIuyKAM?t=7812
#Goldenrod City Radio Tower Lucky Number Show
#Resets when player leaves the building
#execute @a[x=506,y=31,z=-272,r=10,tag=LuckyNumberTalk] ~ ~ ~ scoreboard players set @s DialogueTrigger 25

scoreboard players add @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,tag=!Dialogue25] TalkTime 1
tellraw @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,tag=!Dialogue25,score_TalkTime_min=1,score_TalkTime=1] {"text":"<DJ Reed> Hi, are you here for the Lucky Number Show? Want me to check the ID numbers of your Pokémon?"}
tellraw @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,tag=!Dialogue25,score_TalkTime_min=11,score_TalkTime=11] {"text":"<DJ Reed> If you get lucky, you win a prize."}
tellraw @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,tag=!Dialogue25,score_TalkTime_min=18,score_TalkTime=18] {"text":"<DJ Reed> Throw out a Pokémon, and let see if you have a match."}

scoreboard players tag @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,score_TalkTime_min=18,tag=!Dialogue25] add Dialogue25
scoreboard players set @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,score_TalkTime_min=18,tag=Dialogue25] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=25,score_DialogueTrigger=25,tag=Dialogue25] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Goldenrod City Gym Whitney Opening Dialogue
#scoreboard players set @a[x=-979,y=64,z=589,dx=13,dy=5,dz=15,tag=!Dialogue27] DialogueTrigger 27

scoreboard players add @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27] TalkTime 1
tellraw @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Whitney> Hi! I'm Whitney!"}
tellraw @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Whitney> Everyone was into Pokémon, so I got into it too!"}
tellraw @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Whitney> Pokémon are super-cute! You want to battle?"}
tellraw @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Whitney> I'm warning you--I'm good!"}
execute @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=!Dialogue27,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,score_TalkTime_min=24,tag=!Dialogue27] add Dialogue27
scoreboard players set @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,score_TalkTime_min=24,tag=Dialogue27] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=27,score_DialogueTrigger=27,tag=Dialogue27] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Whitney lose dialogue
#scoreboard players set @a[x=-1011,y=0,z=522,dx=116,dy=240,dz=107,score_TalkTime=0,tag=!Dialogue28] DialogueTrigger 28 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28] TalkTime 1
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28] ~ ~ ~ clear @s minecraft:netherbrick
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=1,score_TalkTime=75] ~ ~ ~ execute @e[x=-972,y=64,z=602,dy=3,type=pixelmon:npc_trainer] ~ ~ ~ /particle dripWater ~-0.15 ~1.55 ~-0.5 0.25 0 0 3 1 normal
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=5,score_TalkTime=5] {"text":"<Whitney> Sob... "}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Whitney> ...Waaaaaaah! "}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Whitney> You're mean! You shouldn't be so serious! "}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Whitney> You...you child, you! Waaaaah! Waaaaah! "}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Whitney> Snivel, hic...You meanie!"}

tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=49,score_TalkTime=49] ["",{"text":"<"},{"text":"Lass Krise","color":"light_purple"},{"text":"> Oh, no. You made Whitney cry."}]
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=56,score_TalkTime=56] ["",{"text":"<"},{"text":"Lass Krise","color":"light_purple"},{"text":"> It's OK. She'll stop soon."}]
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=63,score_TalkTime=63] ["",{"text":"<"},{"text":"Lass Krise","color":"light_purple"},{"text":"> She always cries when she loses."}]

tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=75,score_TalkTime=75] {"text":"<Whitney> ...Sniff... What? What do you want?"}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=83,score_TalkTime=83] {"text":"<Whitney> A badge? Oh, right. I forgot. Here's the Plain Badge."}

#give badge sequence
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ give @s pixelmon:plain_badge 1
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ scoreboard players tag @s add Whitney
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=91,score_TalkTime=91] ~ ~ ~ advancement grant @s only johto:badge3

execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=98,score_TalkTime=98] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=98,score_TalkTime=98] {"text":"<Whitney> Oh, you can have this, too!"}
execute @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=101,score_TalkTime=101] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:45}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=106,score_TalkTime=106] {"text":"<Whitney> It's Attract! It makes full use of a Pokémon's charm."}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=114,score_TalkTime=114] {"text":"<Whitney> Isn't it just perfect for a cutie like me?"}
tellraw @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=!Dialogue28,score_TalkTime_min=123,score_TalkTime=123] {"text":"<Whitney> Ah, that was a good cry! Come for a visit again! Bye-bye!"}

scoreboard players tag @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,score_TalkTime_min=123,tag=!Dialogue28] add Dialogue28
scoreboard players set @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,score_TalkTime_min=123,tag=Dialogue28] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=28,score_DialogueTrigger=28,tag=Dialogue28] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Flower Shop lady after beating Whitney
#execute @a[x=420,y=63,z=-307,dx=8,dy=5,dz=8,tag=Whitney,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue29] DialogueTrigger 29

scoreboard players add @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29] TalkTime 1
tellraw @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Shop Clerk> Oh, you're better than Whitney. Do you now about that moving tree?"}
tellraw @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Shop Clerk> If you wet it with a Squirtbottle, it attacks."}
tellraw @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Shop Clerk> But since you have some Badges, you should be OK."}
execute @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s rabbit_foot 1 0 {display:{Name:Squirtbottle,Lore:["A bottle used for","wattering plants"]}}
tellraw @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=!Dialogue29,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Shop Clerk> Lalala lalalala. Have plenty of water, my lovely!"}

scoreboard players tag @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,score_TalkTime_min=30,tag=!Dialogue29] add Dialogue29
scoreboard players set @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,score_TalkTime_min=30,tag=Dialogue29] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=29,score_DialogueTrigger=29,tag=Dialogue29] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sudowoodo Spawn
#execute @a[x=332,y=64,z=-16,r=10,tag=Dialogue29] ~ ~ ~ scoreboard players set @s[tag=!Dialogue30] DialogueTrigger 30

scoreboard players add @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30] TalkTime 1
tellraw @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=1,score_TalkTime=1] {"text":"It's a weird tree.","italic":true,"color":"gray"}
tellraw @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=7,score_TalkTime=7] ["",{"selector":"@p[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=7,score_TalkTime=7]","italic":true,"color":"gray"},{"text":" used the Squirtbottle.","italic":true,"color":"gray"}]
tellraw @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=15,score_TalkTime=15] {"text":"The weird tree doesn't like the Squirtbottle!","italic":true,"color":"gray"}
tellraw @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=23,score_TalkTime=23] {"text":"The weird tree attacked!","italic":true,"color":"gray"}

execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ execute @e[x=331,y=63,z=-18,dx=3,dy=3,dz=3,type=pixelmon:statue] ~ ~ ~ /particle cloud ~ ~ ~ 1 1 1 1 100
execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ tp @e[x=331,y=63,z=-18,dx=3,dy=3,dz=3,type=pixelmon:statue] -791 80 -244
execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ pokebattle @s Sudowoodo,lvl:20,gr:7
execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ scoreboard players set @s Sw 1
execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ advancement grant @s only johto:weirdtree
execute @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=!Dialogue30,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ playsound pixelmon:pixelmon.mob.sudowoodo hostile @s ~ ~ ~ 100 1 1

scoreboard players tag @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,score_TalkTime_min=25,tag=!Dialogue30] add Dialogue30
scoreboard players set @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,score_TalkTime_min=25,tag=Dialogue30] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=30,score_DialogueTrigger=30,tag=Dialogue30] DialogueTrigger 0

#Sudowoodo Return Statue
#execute @a[x=332,y=64,z=-16,r=30,tag=!Dialogue30,score_TalkTime=0] ~ ~ ~ /tp @e[x=-791,y=79,z=-244,dy=3,type=pixelmon:statue] 333 64 -17

#Road Blocks
#North
#tellraw @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] {"text":"It's a weird tree. Perhaps water may cause it to move.","italic":true,"color":"gray"}
#tp @a[x=331,y=63,z=-23,dx=4,dy=5,dz=9,tag=!Dialogue29] ~ ~ ~-10

#West
#tellraw @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] {"text":"It's a weird tree. Perhaps water may cause it to move.","italic":true,"color":"gray"}
#tp @a[x=327,y=63,z=-19,dx=10,dy=5,dz=5,tag=!Dialogue29] ~-10 ~ ~

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver at the exterior of the Dance Theatre
#scoreboard players set @a[x=343,y=64,z=216,r=3,tag=!Dialogue31,score_TalkTime=0] DialogueTrigger 31

#tp in Silver separately
#execute @a[x=343,y=64,z=216,r=50,tag=!Dialogue31,score_TalkTime=0] ~ ~ ~ /tp @e[x=-758,y=84,z=-242,dy=3,type=pixelmon:npc_chatting] 343 64 216

scoreboard players add @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31] TalkTime 1

execute @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> How? How is this possible? How can I lose to mere Kimono Girls"}]
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=11,score_TalkTime=11] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You were watching me, "},{"selector":"@p[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=11,score_TalkTime=11]"},{"text":"? "}]
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Yeah, that's right! I never thought defeating five Kimono Girls would be so hard!"}]
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=28,score_TalkTime=28] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I got beaten to a pulp... Don't get cocky just because you defeated Team Rocket!"}]
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=38,score_TalkTime=38] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Go ahead! But I'm not going back."}]
tellraw @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=46,score_TalkTime=46] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I don't want to see you win. These Kimono Girls are insanely strong."}]
execute @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ particle cloud 343 64 216 1 1 1 1 100
execute @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ tp @e[x=343,y=63,z=216,dy=3,type=pixelmon:npc_chatting] -758 85 -242
execute @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=!Dialogue31,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,score_TalkTime_min=55,tag=!Dialogue31] add Dialogue31
scoreboard players set @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,score_TalkTime_min=55,tag=Dialogue31] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=31,score_DialogueTrigger=31,tag=Dialogue31] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#HM Surf Guy before battling the Kimono Girls
#scoreboard players set @a[x=333,y=64,z=219,dx=20,dy=5,dz=14,tag=!Dialogue32,score_TalkTime=0] DialogueTrigger 32

scoreboard players add @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,tag=!Dialogue32] TalkTime 1

tellraw @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,tag=!Dialogue32,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> Not only are the Kimono Girls great dancers, they're also skilled at Pokémon."}
tellraw @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,tag=!Dialogue32,score_TalkTime_min=11,score_TalkTime=11] {"text":"<...> I always challenge them, but I've never even left a scratch..."}
tellraw @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,tag=!Dialogue32,score_TalkTime_min=21,score_TalkTime=21] {"text":"<...> Lad! If you can defeat all the Kimono Girls, I'll give you a gift."}


scoreboard players tag @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=21,tag=!Dialogue32] add Dialogue32
scoreboard players set @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,score_TalkTime_min=21,tag=Dialogue32] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=32,score_DialogueTrigger=32,tag=Dialogue32] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#HM Surf Guy after battling the Kimono Girls
#execute @a[x=333,y=64,z=219,dx=20,dy=5,dz=14,score_TalkTime=0,tag=!Dialogue33] ~ ~ ~ scoreboard players set @s[tag=Dialogue32] DialogueTrigger 33 {Inventory:[{id:"minecraft:nether_star",Count:5b}]}

scoreboard players add @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33] TalkTime 1
execute @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33] ~ ~ ~ clear @s minecraft:nether_star

tellraw @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> The way you battled, it was like watching a dance."}
tellraw @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33,score_TalkTime_min=10,score_TalkTime=10] {"text":"<...> It was a rare treat to see! I want you to have this."}
tellraw @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33,score_TalkTime_min=19,score_TalkTime=19] {"text":"<...> Don't worry--take it!"}
execute @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:hm3
tellraw @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=!Dialogue33,score_TalkTime_min=26,score_TalkTime=26] {"text":"<...> That's Surf. It's a move that lets Pokémon swim across water."}

scoreboard players tag @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,score_TalkTime_min=26,tag=!Dialogue33] add Dialogue33
scoreboard players set @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,score_TalkTime_min=26,tag=Dialogue33] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=33,score_DialogueTrigger=33,tag=Dialogue33] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ecruteak Burned Tower Silver pre-battle
#scoreboard players set @a[x=441,y=64,z=312,r=7,tag=!Dialogue34] DialogueTrigger 34

scoreboard players add @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34] TalkTime 1

#tp Silver in
execute @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 441 64 312 1 1 1 1 100
execute @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] 441 64 312
execute @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] 441 64 312
execute @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=1,score_TalkTime=1,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] 441 64 312

tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...... ...... ......"}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=6,score_TalkTime=6] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Oh, it's you."}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=12,score_TalkTime=12] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You wanted to get stronger, so you came for the legendary Pokémon that's supposed to be here."}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=22,score_TalkTime=22] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> That's your story, right? Well, that's not going to happen."}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=31,score_TalkTime=31] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Because I'm going to get it!"}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=39,score_TalkTime=39] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm going to be the world's greatest trainer, so a legendary Pokémon would be perfect for me."}]
tellraw @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=49,score_TalkTime=49] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Well, anyway, I'm getting tired of having a wimp like you always showing up."}]
execute @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=!Dialogue34,score_TalkTime_min=59,score_TalkTime=59] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,score_TalkTime_min=59,tag=!Dialogue34] add Dialogue34
scoreboard players set @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,score_TalkTime_min=59,tag=Dialogue34] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=34,score_DialogueTrigger=34,tag=Dialogue34] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ecruteak Burned Tower Silver post-battle
#scoreboard players set @a[x=441,y=64,z=312,r=20,tag=!Dialogue35,score_TalkTime=0] DialogueTrigger 35 {Inventory:[{id:"minecraft:netherbrick"}]}

#execute @a[x=441,y=64,z=312,r=20,tag=Dialogue34,score_TalkTime=0,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ execute @s[tag=!Dialogue35] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] 441 64 312
#execute @a[x=441,y=64,z=312,r=20,tag=Dialogue34,score_TalkTime=0,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ execute @s[tag=!Dialogue35] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] 441 64 312
#execute @a[x=441,y=64,z=312,r=20,tag=Dialogue34,score_TalkTime=0,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ execute @s[tag=!Dialogue35] ~ ~ ~ tp @e[x=-764,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] 441 64 312

scoreboard players add @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35] TalkTime 1
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Humph! This why I hate battling wimps. There's no challenge in it."}]
tellraw @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=12,score_TalkTime=12] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Aw, whatever. You would never be able to catch a legendary Pokémon anyway."}]

#tp Silver out
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=441,y=64,z=312,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -764 93 -242
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=441,y=64,z=312,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -764 89 -242
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @e[x=441,y=64,z=312,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -764 85 -242
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ particle cloud 441 64 312 1 1 1 1 100
execute @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=!Dialogue35,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,score_TalkTime_min=23,tag=!Dialogue35] add Dialogue35
scoreboard players set @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,score_TalkTime_min=23,tag=Dialogue35] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=35,score_DialogueTrigger=35,tag=Dialogue35] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Legendary Dog statues
#scoreboard players set @a[x=444,y=58,z=328,r=5,tag=!Dialogue36] DialogueTrigger 36

scoreboard players add @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36] TalkTime 1

#Raikou
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ entitydata @e[x=439,y=58,z=328,r=2,type=pixelmon:statue] {statueTexture:0s,Animate:1b}
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ playsound raikou hostile @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ tp @e[x=439,y=58,z=328,r=2,type=pixelmon:statue] -797 80 -244

#Entei
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ entitydata @e[x=446,y=58,z=328,r=2,type=pixelmon:statue] {statueTexture:0s,Animate:1b}
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ playsound entei hostile @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=11,score_TalkTime=11] ~ ~ ~ playsound flee hostile @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=11,score_TalkTime=11] ~ ~ ~ tp @e[x=446,y=58,z=328,r=2,type=pixelmon:statue] -802 80 -244

#Suicune
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ entitydata @e[x=443,y=58,z=328,r=2,type=pixelmon:statue] {statueTexture:0s,Animate:1b}
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ playsound flee hostile @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ tp @e[x=443,y=58,z=328,r=2,type=pixelmon:statue] -807 80 -244


tellraw @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=22,score_TalkTime=22] {"text":"You can now find Entei and Raikou anytime in the wild grass!","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ scoreboard players set @s DogEncounter 1
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ scoreboard players set @s DogSpawn 0
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ advancement grant @s only johto:event3

#entitydata textures back to statues for respawns
execute @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=!Dialogue36,score_TalkTime_min=20,score_TalkTime=22] ~ ~ ~ entitydata @e[x=-809,y=78,z=-246,dx=14,dy=5,dz=4,type=pixelmon:statue] {statueTexture:3s,Animate:0b}

scoreboard players tag @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,score_TalkTime_min=22,tag=!Dialogue36] add Dialogue36
scoreboard players set @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,score_TalkTime_min=22,tag=Dialogue36] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=36,score_DialogueTrigger=36,tag=Dialogue36] DialogueTrigger 0


#Dog Statue Resets
#execute @a[x=444,y=58,z=328,r=20,tag=!Dialogue36,score_TalkTime=0] ~ ~ ~ tp @e[x=-802,y=79,z=-244,dy=3,type=pixelmon:statue] 446 59 328
#execute @a[x=444,y=58,z=328,r=20,tag=!Dialogue36,score_TalkTime=0] ~ ~ ~ tp @e[x=-807,y=79,z=-244,dy=3,type=pixelmon:statue] 443 59 328
#execute @a[x=444,y=58,z=328,r=20,tag=!Dialogue36,score_TalkTime=0] ~ ~ ~ tp @e[x=-797,y=79,z=-244,dy=3,type=pixelmon:statue] 439 59 328

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Eceuteak City Gym Morty pre-battle Dialogue
#scoreboard players set @a[x=-1059,y=64,z=614,r=10,tag=!Dialogue37] DialogueTrigger 37

scoreboard players add @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37] TalkTime 1
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Morty> Good of you to have come. Here, in Ecruteak, Pokémon have been revered."}
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Morty> It's said that a rainbow-colored Pokémon will come down to appear before a truly powerful trainer."}
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Morty> I believed that tale, so I have secretly trained here all my life."}
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Morty> As a result, I can now see what others cannot."}
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Morty> With a little more, I could see a future in which I meet the Pokémon of rainbow colors."}
tellraw @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Morty> You're going to help me reach that level!"}
execute @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=!Dialogue37,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,score_TalkTime_min=50,tag=!Dialogue37] add Dialogue37
scoreboard players set @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,score_TalkTime_min=50,tag=Dialogue37] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=37,score_DialogueTrigger=37,tag=Dialogue37] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Eceuteak City Gym Morty post-battle
#scoreboard players set @a[x=-1059,y=64,z=614,r=20,tag=!Dialogue38,score_TalkTime=0] DialogueTrigger 38 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38] TalkTime 1
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Morty> I'm not good enough yet... All right. This Badge is yours."}
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Morty
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ give @s pixelmon:fog_badge 1
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ advancement grant @s only johto:badge4

tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Morty> I want you to have this too."}
execute @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:30}
tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Morty> It's Shadow Ball. It causes damage and may reduce Spcl. Def."}
tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Morty> Use it if it appeals to you."}
tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Morty> I see... Your journey has taken you to far-away places."}
tellraw @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=!Dialogue38,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Morty> And you have witnessed much more than me. I envy you for that..."}

scoreboard players tag @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,score_TalkTime_min=49,tag=!Dialogue38] add Dialogue38
scoreboard players set @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,score_TalkTime_min=49,tag=Dialogue38] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=38,score_DialogueTrigger=38,tag=Dialogue38] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver outside Olivine City Gym
#scoreboard players set @a[x=809,y=64,z=14,r=5,tag=!Dialogue39,score_TalkTime=0] DialogueTrigger 39

#tp Silver in separately
#execute @a[x=809,y=63,z=14,r=50,tag=!Dialogue39] ~ ~ ~ /tp @e[x=-772,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 809 64 14

scoreboard players add @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39] TalkTime 1
execute @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You again? There's no need to be alert. I don't bother with wimps like you."}]
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Speaking of weaklings, the city's Gym Leader isn't here, and is supposedly taking care of a sick Pokémon at the Lighthouse."}]
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=23,score_TalkTime=23] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Humph! Boo-hoo! Just let sick Pokémon go!"}]
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=30,score_TalkTime=30] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> A Pokémon that can't battle is worthless!"}]
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=37,score_TalkTime=37] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Why don't you go train at the Lighthouse?"}]
tellraw @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=45,score_TalkTime=45] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Who knows? It may make you a bit of a better Trainer!"}]

#tp Silver out
execute @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ particle cloud 809 64 14 1 1 1 1 100
execute @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ tp @e[x=809,y=63,z=14,dy=3,type=pixelmon:npc_chatting] -772 93 -242
execute @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=!Dialogue39,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,score_TalkTime_min=53,tag=!Dialogue39] add Dialogue39
scoreboard players set @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,score_TalkTime_min=53,tag=Dialogue39] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=39,score_DialogueTrigger=39,tag=Dialogue39] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Olivine Lighthouse Ampharos is sick
#scoreboard players set @a[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=!Dialogue40] DialogueTrigger 40

scoreboard players add @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40] TalkTime 1

#resets Jasmine, Sick Amphy and Lighthouse
execute @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-714,y=79,z=-242,r=2,type=pixelmon:npc_chatting] 705 119 -40
execute @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[x=706,y=119,z=-38,r=2,type=pixelmon:statue] {statueTexture:7s,Growth:1b}
execute @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill 722 94 -58 684 94 -23 minecraft:barrier 0 replace beacon
execute @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill 682 80 -60 724 77 -21 minecraft:sandstone 0 replace redstone_block
execute @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill 688 127 -28 717 120 -53 minecraft:sandstone 0 replace redstone_block

tellraw @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Jasmine> This Pokémon always kept the sea lit at night. ...But it suddenly got sick... "}
tellraw @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Jasmine> It's gasping for air..."}
tellraw @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Jasmine> ...I understand that there is a wonderful Pharmacy in Cianwood..."}
tellraw @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Jasmine> But that's across the sea... And I can't leave Amphy unattended..."}
tellraw @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=!Dialogue40,score_TalkTime_min=39,score_TalkTime=39] {"text":"<Jasmine> ...May I ask you to get some medicine for me? Please?"}

scoreboard players tag @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=39,tag=!Dialogue40] add Dialogue40
scoreboard players set @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,score_TalkTime_min=39,tag=Dialogue40] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=40,score_DialogueTrigger=40,tag=Dialogue40] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Cianwood City Medicine Doctor
#Dialogue41
#execute @a[x=1221,y=63,z=-491,dx=19,dy=5,dz=10,tag=Dialogue40] ~ ~ ~ scoreboard players set @s[tag=!Dialogue41] DialogueTrigger 41

scoreboard players add @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41] TalkTime 1

tellraw @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Pharmacy Doctor> Your Pokémon appear to be fine. It something worrying you? ..."}
tellraw @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Pharmacy Doctor> The Lighthouse Pokémon is in trouble?"}
tellraw @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Pharmacy Doctor> I got it! This ought to do the trick."}
execute @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ give @s minecraft:record_11 1 0 {display:{Name:Secretpotion,Lore:["A fantastic medicine dispensed by","the pharmacy in Cianwood City.","It fully heals a Pokémon of","any ailment."]},HideFlags:36}
tellraw @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=!Dialogue41,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Pharmacy Doctor> My Secretpotion is a tad too strong. I only offer it in an emergency."}

scoreboard players tag @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,score_TalkTime_min=27,tag=!Dialogue41] add Dialogue41
scoreboard players set @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,score_TalkTime_min=27,tag=Dialogue41] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=41,score_DialogueTrigger=41,tag=Dialogue41] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Olivine Lighthouse curing Ampharos
#execute @a[x=694,y=119,z=-48,dx=17,dy=10,dz=15,tag=Dialogue40,score_TalkTime=0] ~ ~ ~ execute @s[tag=Dialogue41] ~ ~ ~ scoreboard players set @s[tag=!Dialogue42] DialogueTrigger 42

scoreboard players add @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42] TalkTime 1

execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-714,y=79,z=-242,r=2,type=pixelmon:npc_chatting] 705 119 -40
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[x=706,y=119,z=-38,r=2,type=pixelmon:statue] {statueTexture:7s,Growth:1b}

tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Jasmine> ...That medicine will cure Amphy?"}
tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Jasmine> Um, please don't be offended... ...Amphy will not take anything from anyone but me..."}
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=15,score_TalkTime=15] ~ ~ ~ clear @s minecraft:record_11
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ playsound minecraft:block.portal.travel ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=18,score_TalkTime=30] ~ ~ ~ execute @e[x=694,y=119,z=-48,dx=17,dy=10,dz=15,type=pixelmon:statue] ~ ~ ~ particle fallingdust ~ ~1 ~ 1 1 1 1 10 normal @a 201

tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Jasmine> ... Amphy, how are you feeling?"}

execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ entitydata @e[x=706,y=119,z=-38,r=2,type=pixelmon:statue] {statueTexture:0s,Growth:1b}
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ playsound ampharos ambient @s ~ ~ ~ 100 1 1

#Lights up Lighthouse
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ fill 682 80 -60 724 77 -21 minecraft:redstone_block 0 replace sandstone
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ fill 688 127 -28 717 120 -53 minecraft:redstone_block 0 replace sandstone
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ fill 722 94 -58 684 94 -23 minecraft:beacon 0 replace barrier

tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Jasmine> Oh, I'm so relieved... This is just so wonderful"}
tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Jasmine> Thank you so very, very much."}
tellraw @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=51,score_TalkTime=51] {"text":"<Jasmine> I will return to the Gym"}

#tps Jasmine out
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=59,score_TalkTime=59] ~ ~ ~ particle cloud 705 119 -40 1 1 1 1 100
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=59,score_TalkTime=59] ~ ~ ~ tp @e[x=705,y=119,z=-40,r=2,type=pixelmon:npc_chatting] -714 79 -242
execute @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=!Dialogue42,score_TalkTime_min=59,score_TalkTime=59] ~ ~ ~ advancement grant @s only johto:lighthousepokemon

scoreboard players tag @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=59,tag=!Dialogue42] add Dialogue42
scoreboard players set @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,score_TalkTime_min=59,tag=Dialogue42] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=42,score_DialogueTrigger=42,tag=Dialogue42] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Cianwood Chuck's Wife post-badge
#execute @a[x=1261,y=64,z=-488,r=10,score_TalkTime=0,tag=Chuck] ~ ~ ~ scoreboard players set @s[tag=!Dialogue43] DialogueTrigger 43

scoreboard players add @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43] TalkTime 1

tellraw @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Chuck's Wife> That's Cianwood's Gym Badge! Then you should take this HM."}
execute @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43,score_TalkTime_min=6,score_TalkTime=6] ~ ~ ~ give @s minecraft:spawn_egg 1 1 {HideFlags:26,display:{Name:"HM02: Fly",Lore:["An egg that hatches a bird Pokémon,","who whisks the player away.","The player can fly it to any","city they have previously visited."]},CanPlaceOn:["minecraft:air","minecraft:stone","minecraft:grass","minecraft:dirt","minecraft:cobblestone","minecraft:planks","minecraft:sapling","minecraft:bedrock","minecraft:flowing_water","minecraft:water","minecraft:flowing_lava","minecraft:lava","minecraft:sand","minecraft:gravel","minecraft:gold_ore","minecraft:iron_ore","minecraft:coal_ore","minecraft:log","minecraft:leaves","minecraft:sponge","minecraft:glass","minecraft:lapis_ore","minecraft:lapis_block","minecraft:dispenser","minecraft:sandstone","minecraft:noteblock","minecraft:bed","minecraft:golden_rail","minecraft:detector_rail","minecraft:sticky_piston","minecraft:web","minecraft:tallgrass","minecraft:deadbush","minecraft:piston","minecraft:piston_head","minecraft:wool","minecraft:piston_extension","minecraft:yellow_flower","minecraft:red_flower","minecraft:brown_mushroom","minecraft:red_mushroom","minecraft:gold_block","minecraft:iron_block","minecraft:double_stone_slab","minecraft:stone_slab","minecraft:brick_block","minecraft:tnt","minecraft:bookshelf","minecraft:mossy_cobblestone","minecraft:obsidian","minecraft:torch","minecraft:fire","minecraft:mob_spawner","minecraft:oak_stairs","minecraft:chest","minecraft:redstone_wire","minecraft:diamond_ore","minecraft:diamond_block","minecraft:crafting_table","minecraft:wheat","minecraft:farmland","minecraft:furnace","minecraft:lit_furnace","minecraft:standing_sign","minecraft:wooden_door","minecraft:ladder","minecraft:rail","minecraft:stone_stairs","minecraft:wall_sign","minecraft:lever","minecraft:stone_pressure_plate","minecraft:iron_door","minecraft:wooden_pressure_plate","minecraft:redstone_ore","minecraft:lit_redstone_ore","minecraft:unlit_redstone_torch","minecraft:redstone_torch","minecraft:stone_button","minecraft:snow_layer","minecraft:ice","minecraft:snow","minecraft:cactus","minecraft:clay","minecraft:reeds","minecraft:jukebox","minecraft:fence","minecraft:pumpkin","minecraft:netherrack","minecraft:soul_sand","minecraft:glowstone","minecraft:portal","minecraft:lit_pumpkin","minecraft:cake","minecraft:unpowered_repeater","minecraft:powered_repeater","minecraft:stained_glass","minecraft:trapdoor","minecraft:monster_egg","minecraft:stonebrick","minecraft:brown_mushroom_block","minecraft:red_mushroom_block","minecraft:iron_bars","minecraft:glass_pane","minecraft:melon_block","minecraft:pumpkin_stem","minecraft:melon_stem","minecraft:vine","minecraft:fence_gate","minecraft:brick_stairs","minecraft:stone_brick_stairs","minecraft:mycelium","minecraft:waterlily","minecraft:nether_brick","minecraft:nether_brick_fence","minecraft:nether_brick_stairs","minecraft:nether_wart","minecraft:enchanting_table","minecraft:brewing_stand","minecraft:cauldron","minecraft:end_portal","minecraft:end_portal_frame","minecraft:end_stone","minecraft:dragon_egg","minecraft:redstone_lamp","minecraft:lit_redstone_lamp","minecraft:double_wooden_slab","minecraft:wooden_slab","minecraft:cocoa","minecraft:sandstone_stairs","minecraft:emerald_ore","minecraft:ender_chest","minecraft:tripwire_hook","minecraft:tripwire","minecraft:emerald_block","minecraft:spruce_stairs","minecraft:birch_stairs","minecraft:jungle_stairs","minecraft:command_block","minecraft:beacon","minecraft:cobblestone_wall","minecraft:flower_pot","minecraft:carrots","minecraft:potatoes","minecraft:wooden_button","minecraft:skull","minecraft:anvil","minecraft:trapped_chest","minecraft:light_weighted_pressure_plate","minecraft:heavy_weighted_pressure_plate","minecraft:unpowered_comparator","minecraft:powered_comparator","minecraft:daylight_detector","minecraft:redstone_block","minecraft:quartz_ore","minecraft:hopper","minecraft:quartz_block","minecraft:quartz_stairs","minecraft:activator_rail","minecraft:dropper","minecraft:stained_hardened_clay","minecraft:stained_glass_pane","minecraft:log2","minecraft:acacia_stairs","minecraft:dark_oak_stairs","minecraft:slime","minecraft:barrier","minecraft:iron_trapdoor","minecraft:prismarine","minecraft:sea_lantern","minecraft:hay_block","minecraft:carpet","minecraft:hardened_clay","minecraft:coal_block","minecraft:packed_ice","minecraft:double_plant"]}

tellraw @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Chuck's Wife> You will be able to Fly instantly to anywhere you have visited."}
tellraw @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Chuck's Wife> My husband lost to you, so he needs to train harder."}
tellraw @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=!Dialogue43,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Chuck's Wife> That's good, since he was getting a little chubby."}

scoreboard players tag @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,score_TalkTime_min=29,tag=!Dialogue43] add Dialogue43
scoreboard players set @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,score_TalkTime_min=29,tag=Dialogue43] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=43,score_DialogueTrigger=43,tag=Dialogue43] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Cianwood Chuck pre-battle
#scoreboard players set @a[x=-1187,y=64,z=616,r=20,tag=!Dialogue44,score_TalkTime=0] DialogueTrigger 44

scoreboard players add @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44] TalkTime 1
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Chuck> WAHAHAH! "}
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=6,score_TalkTime=6] {"text":"<Chuck> So you've come this far! Let me tell you, I'm tough!"}
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Chuck> My Pokémon will crush stones and shatter bones! Watch this!"}
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Chuck> Urggh! "}
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Chuck> Oooarrgh! "}

#Destroys Chuck's rocks around him
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ fill -1195 68 618 -1199 68 614 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ fill -1195 67 618 -1199 67 614 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=29,score_TalkTime=29] ~ ~ ~ fill -1195 66 618 -1199 66 614 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ fill -1195 65 618 -1199 65 614 minecraft:air 0 destroy

execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ fill -1184 68 614 -1180 68 618 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=34,score_TalkTime=34] ~ ~ ~ fill -1184 67 614 -1180 67 618 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ fill -1184 66 614 -1180 66 618 minecraft:air 0 destroy
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ fill -1184 65 614 -1180 65 618 minecraft:air 0 destroy

tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Chuck> There! Scared now, are you? "}

tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Chuck> What? It has nothing to do with Pokémon?"}
tellraw @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=54,score_TalkTime=54] {"text":"<Chuck> That's true! Come on. We shall do battle!"}


execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=58,score_TalkTime=59] ~ ~ ~ tp @s[x=-1199,y=65,z=614,dx=4,dy=4,dz=4] ~ ~ ~-7
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=58,score_TalkTime=59] ~ ~ ~ tp @s[x=-1184,y=65,z=614,dx=4,dy=4,dz=4] ~ ~ ~-7
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ clone -721 64 -324 -717 67 -320 -1184 65 614
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ clone -721 64 -324 -717 67 -320 -1199 65 614
execute @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=!Dialogue44,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,score_TalkTime_min=60,tag=!Dialogue44] add Dialogue44
scoreboard players set @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,score_TalkTime_min=60,tag=Dialogue44] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=44,score_DialogueTrigger=44,tag=Dialogue44] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Cianwood Chuck post-battle
#scoreboard players set @a[x=-1221,y=0,z=524,dx=60,dy=240,dz=100,tag=!Dialogue45,score_TalkTime=0] DialogueTrigger 45 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45] TalkTime 1
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45] ~ ~ ~ clear @s minecraft:netherbrick
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Chuck
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Chuck> Wha? Huh? I lost? How about that!"}
tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Chuck> You're worthy of the Storm Badge!"}

#badge give
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:storm_badge 1
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ advancement grant @s only johto:badge5

tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Chuck> Here, take this, too!"}
execute @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:1}
tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Chuck> That is Focus Punch."}
tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Chuck> It doesn't land if the foe you're attacking hits you first, but it's very powerful if it manages to hit!"}
tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Chuck> Wahahah! I enjoyed battling you! But a loss is a loss! "}
tellraw @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=!Dialogue45,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Chuck> From now on, I'm going to train 24 hours a day!"}

scoreboard players tag @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,score_TalkTime_min=52,tag=!Dialogue45] add Dialogue45
scoreboard players set @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,score_TalkTime_min=52,tag=Dialogue45] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=45,score_DialogueTrigger=45,tag=Dialogue45] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Olivine City Jasmine Gym pre-battle
#scoreboard players set @a[x=-1126,y=67,z=595,r=20,score_TalkTime=0,tag=!Dialogue47] DialogueTrigger 46

scoreboard players add @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46] TalkTime 1

tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Jasmine> Thank you for your help at the Lighthouse... But this is different."}
tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Jasmine> Please allow me to introduce myself."}
tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Jasmine> I'm Jasmine, a Gym Leader. I use the steel-type."}
tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Jasmine> ...Do you know about the steel-type?"}
tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Jasmine> It's a type that was only recently discovered. "}
tellraw @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Jasmine> ...Um... May I begin?"}
execute @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=!Dialogue46,score_TalkTime_min=41,score_TalkTime=41] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,score_TalkTime_min=41,tag=!Dialogue46] add Dialogue46
scoreboard players set @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,score_TalkTime_min=41,tag=Dialogue46] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=46,score_DialogueTrigger=46,tag=Dialogue46] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Olivine City Jasmine Gym post-battle
#scoreboard players set @a[x=-1156,y=0,z=522,dx=60,dy=240,dz=93,score_TalkTime=0,tag=!Dialogue47] DialogueTrigger 47 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47] TalkTime 1
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47] ~ ~ ~ clear @s minecraft:netherbrick
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Jasmine
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Jasmine> ...You are a better trainer than me, in both skill and kindness."}
tellraw @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Jasmine> In accordance with League rules, I confer upon you this Badge."}

#give badge
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ give @s pixelmon:mineral_badge 1
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ advancement grant @s only johto:badge6

tellraw @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Jasmine> ...Um, please take this too... "}
execute @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:23}
tellraw @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=!Dialogue47,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Jasmine> You could use that TM to teach Iron Tail."}

scoreboard players tag @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=32,tag=!Dialogue47] add Dialogue47
scoreboard players set @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,score_TalkTime_min=32,tag=Dialogue47] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=47,score_DialogueTrigger=47,tag=Dialogue47] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Team Rocket mugging player
#execute @a[x=-198,y=63,z=343,dx=19,dy=5,dz=19,tag=!Dialogue48] ~ ~ ~ scoreboard players set @s[tag=!Dialogue64] DialogueTrigger 48
#NEEDS TO ADD AN END TAG TO THE @S AND THE COMMANDS BELOW FOR WHEN TEAM ROCKET HQ IS DONE

#Grunts tp'd in separately
#/execute @p[x=-187,y=64,z=352,r=30,tag=!Dialogue64] ~ ~ ~ tp @e[x=-181,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -809 93 -242
#/execute @p[x=-187,y=64,z=352,r=30,tag=!Dialogue64] ~ ~ ~ tp @e[x=-811,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -184 64 352
#/execute @p[x=-187,y=64,z=352,r=30,tag=!Dialogue64] ~ ~ ~ tp @e[x=-813,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -190 64 352

scoreboard players add @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48] TalkTime 1
execute @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=5,score_TalkTime=5] {"text":"<Rocket Grunt> Hold it there, kiddo!"}
tellraw @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Rocket Grunt> The toll is $1000 to go through."}

execute @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Team Rocket"}
execute @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ /givemoney @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=17,score_TalkTime=17] -1000
execute @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=17,score_TalkTime=18] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Pixelmon Johto"}

tellraw @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=!Dialogue48,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Rocket Grunt> Thank you very much!"}

scoreboard players tag @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,score_TalkTime_min=23,tag=!Dialogue48] add Dialogue48
scoreboard players set @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,score_TalkTime_min=23,tag=Dialogue48] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=48,score_DialogueTrigger=48,tag=Dialogue48] DialogueTrigger 0

#Grunts tp away after Rocket HQ is beaten
#/execute @p[x=-187,y=64,z=352,r=30,tag=Dialogue64] ~ ~ ~ tp @e[x=-809,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -181 64 352
#/execute @p[x=-187,y=64,z=352,r=30,tag=Dialogue64] ~ ~ ~ tp @e[x=-190,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -811 93 -242
#/execute @p[x=-187,y=64,z=352,r=30,tag=Dialogue64] ~ ~ ~ tp @e[x=-184,y=63,z=352,dy=3,type=pixelmon:npc_chatting] -813 93 -242

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lake of Rage Shiny Gyarados Encounter
#scoreboard players set @a[x=-169,y=65,z=645,r=30,score_TalkTime=0,tag=!Dialogue49] DialogueTrigger 49

#Statue reset:
#execute @a[x=-169,y=65,z=645,r=100,tag=!Dialogue49,score_TalkTime=0] ~ ~ ~ tp @e[x=-765,y=66,z=-244,dy=3,type=pixelmon:statue] -167 62 632

scoreboard players add @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49] TalkTime 1

execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @a[type=pixelmon:statue,x=-167,y=62,z=632,r=2] ~ ~ ~ particle cloud ~ ~ ~ 3 3 3 1 200
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[type=pixelmon:statue,x=-167,y=62,z=632,r=2] -765 66 -244
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ pokebattle @s Gyarados,s,lvl:30,gr:7
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound gyarados hostile @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ give @s minecraft:record_cat 1 0 {display:{Name:"Red Scale",Lore:["A scale from the red Gyarados.","It glows red like a flame."]},HideFlags:36}
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ playsound shiny hostile @s ~ ~ ~ 1 1 1
execute @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=!Dialogue49,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ advancement grant @s only johto:rocket2

scoreboard players tag @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,score_TalkTime_min=2,tag=!Dialogue49] add Dialogue49
scoreboard players set @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,score_TalkTime_min=2,tag=Dialogue49] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=49,score_DialogueTrigger=49,tag=Dialogue49] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mr. Pokémon asking about the Red Scale if player brings it to him
#scoreboard players set @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,score_DialogueTrigger=0,tag=!Dialogue50] DialogueTrigger 50 {Inventory:[{id:"minecraft:record_cat"}]}

scoreboard players add @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50] TalkTime 1
tellraw @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Mr. Pokémon> Hm? That Scale! What's that?"}
tellraw @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Mr. Pokémon> A red Gyarados? That's rare! I, I want it..."}
tellraw @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=17,score_TalkTime=17] ["",{"text":"<Mr. Pokémon> "},{"selector":"@p[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=17,score_TalkTime=17]"},{"text":", would you care to trade it?"}]
tellraw @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Mr. Pokémon> I can offer this Exp. Share I got from Professor Oak."}
tellraw @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 47"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=!Dialogue50,score_TalkTime_min=24,score_TalkTime=25] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,score_TalkTime_min=25,tag=!Dialogue50] add Dialogue50
scoreboard players set @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,score_TalkTime_min=25,tag=Dialogue50] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=50,score_DialogueTrigger=50,tag=Dialogue50] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance at Lake of Rage post-Gyarados
#execute @a[x=-159,y=63,z=590,r=5,tag=Dialogue49] ~ ~ ~ scoreboard players set @s[tag=!Dialogue51] DialogueTrigger 51

#tp in Lance separately
#execute @a[x=-159,y=64,z=590,r=50,tag=Dialogue49] ~ ~ ~ execute @s[tag=!Dialogue51] ~ ~ ~ tp @e[x=-807,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -159 64 590

scoreboard players add @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51] TalkTime 1
tellraw @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=1,score_TalkTime=1] {"text":"<. . .> Did you come here because of the rumors?"}
tellraw @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=9,score_TalkTime=9] ["",{"text":"<Lance> You're "},{"selector":"@p[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=9,score_TalkTime=9]"},{"text":"? I'm Lance, a trainer like you."}]
tellraw @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Lance> I heard some rumors, so I came to investigate..."}
tellraw @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<Lance> I saw the way you battled earlier, "},{"selector":"@p[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=25,score_TalkTime=25]"},{"text":". I can tell that you're a trainer with considerable skill."}]
tellraw @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=35,score_TalkTime=35] ["",{"text":"<Lance> If you don't mind, could you help me investigate?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 39"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=!Dialogue51,score_TalkTime_min=34,score_TalkTime=35] ~ ~ ~ scoreboard players enable @s TriggerCommand


scoreboard players tag @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,score_TalkTime_min=35,tag=!Dialogue51] add Dialogue51
scoreboard players set @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,score_TalkTime_min=35,tag=Dialogue51] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=51,score_DialogueTrigger=51,tag=Dialogue51] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance at Lake of Rage yes I'll help
#execute @a[score_TriggerCommand_min=39,score_TriggerCommand=39] ~ ~ ~ scoreboard players set @s DialogueTrigger 52

scoreboard players add @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52] TalkTime 1
tellraw @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> Excellent!"}
tellraw @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Lance> It seems that the Lake's Magikarp are being forced to evolve."}
tellraw @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Lance> A mysterious radio broadcast coming from Mahogany is the cause."}
tellraw @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=24,score_TalkTime=24] ["",{"text":"<Lance> I'll be waiting for you, "},{"selector":"@p[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=24,score_TalkTime=24]"},{"text":"."}]
execute @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ particle cloud -159 64 590 1 1 1 1 100
execute @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=!Dialogue52,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ tp @e[x=-159,y=63,z=590,dy=3,type=pixelmon:npc_chatting] -807 93 -242

scoreboard players tag @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,score_TalkTime_min=31,tag=!Dialogue52] add Dialogue52
scoreboard players set @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,score_TalkTime_min=31,tag=Dialogue52] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=52,score_DialogueTrigger=52,tag=Dialogue52] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance in lobby of Mahogany Town house
#execute @a[x=-164,y=63,z=196,dx=19,dy=6,dz=20,tag=Dialogue52] ~ ~ ~ scoreboard players set @s[tag=!Dialogue53] DialogueTrigger 53

#Sets up Mahogany Home
#execute @a[x=-155,y=64,z=208,r=30,tag=Dialogue52,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue53] ~ ~ ~ /tp @e[x=-755,y=78,z=-244,dy=3,type=pixelmon:statue] -156 64 200
#execute @a[x=-155,y=64,z=208,r=30,tag=Dialogue52,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue53] ~ ~ ~ /tp @e[x=-805,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -155 64 202

scoreboard players add @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53] TalkTime 1
tellraw @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> Dragonite, Hyper Beam."}
tellraw @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<Lance> What took you, "},{"selector":"@p[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=8,score_TalkTime=8]"},{"text":"?"}]

#Dragonite returning to Poke Ball sequence
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -715 81 -318 minecraft:redstone_block

tellraw @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Lance> Just as I thought, that strange radio signal is coming from here."}

#Lance walking over
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ fill -715 80 -315 -715 80 -313 minecraft:redstone_block

tellraw @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=28,score_TalkTime=28] {"text":"<Lance> The stairs are right here."}

execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=32,score_TalkTime=32] ~ ~ ~ playsound minecraft:entity.armorstand.break ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=32,score_TalkTime=32] ~ ~ ~ fill -164 63 213 -161 63 216 air
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=32,score_TalkTime=32] ~ ~ ~ fill -160 63 213 -160 63 216 minecraft:stone_brick_stairs 0

tellraw @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=36,score_TalkTime=36] ["",{"text":"<Lance> "},{"selector":"@p[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=36,score_TalkTime=36]"},{"text":", we should split up to check this place. I'll go first."}]

#tp Lance out
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=44,score_TalkTime=44] ~ ~ ~ execute @e[x=-164,y=63,z=196,dx=19,dy=6,dz=20,name=Lance,type=pixelmon:npc_chatting] ~ ~ ~ particle cloud ~ ~ ~ 3 3 3 1 200
execute @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=!Dialogue53,score_TalkTime_min=44,score_TalkTime=44] ~ ~ ~ tp @e[x=-164,y=63,z=196,dx=19,dy=6,dz=20,name=Lance,type=pixelmon:npc_chatting] -805 93 -242


scoreboard players tag @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,score_TalkTime_min=44,tag=!Dialogue53] add Dialogue53
scoreboard players set @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,score_TalkTime_min=44,tag=Dialogue53] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=53,score_DialogueTrigger=53,tag=Dialogue53] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Rocket HQ set up house based on !Dialogue53
#execute @p[x=-155,y=64,z=208,r=30,tag=!Dialogue53,score_TalkTime=0] ~ ~ ~ fill -164 63 216 -160 63 213 minecraft:planks
#execute @p[x=-155,y=64,z=208,r=30,tag=!Dialogue53,score_TalkTime=0] ~ ~ ~ tp @e[x=-152,y=63,z=212,dy=3,type=villager,c=1] -152 72 212
#execute @p[x=-155,y=64,z=208,r=30,tag=!Dialogue53,score_TalkTime=0] ~ ~ ~ tp @e[x=-157,y=63,z=193,dy=3,type=pixelmon:npc_chatting] -159 72 196
#execute @p[x=-155,y=64,z=208,r=30,tag=!Dialogue53,score_TalkTime=0] ~ ~ ~ tp @e[x=-157,y=71,z=196,dy=3,type=villager,c=1] -156 64 206
#execute @p[x=-155,y=64,z=208,r=30,tag=!Dialogue53,score_TalkTime=0] ~ ~ ~ tp @e[x=-155,y=71,z=196,dy=3,type=pixelmon:npc_chatting] -149 64 200


#Sets up HQ top area when Rockets have been defeated
#execute @p[x=-155,y=64,z=208,r=30,tag=Dialogue64,score_TalkTime=0] ~ ~ ~ tp @e[x=-152,y=71,z=212,dy=3,type=villager,c=1] -152 64 212
#execute @p[x=-155,y=64,z=208,r=30,tag=Dialogue64,score_TalkTime=0] ~ ~ ~ tp @e[x=-159,y=71,z=196,dy=3,type=pixelmon:npc_chatting] -157 64 193
#execute @p[x=-155,y=64,z=208,r=30,tag=Dialogue64,score_TalkTime=0] ~ ~ ~ tp @e[x=-156,y=63,z=206,dy=3,type=villager,c=1] -157 72 196
#execute @p[x=-155,y=64,z=208,r=30,tag=Dialogue64,score_TalkTime=0] ~ ~ ~ tp @e[x=-149,y=63,z=200,dy=3,type=pixelmon:npc_chatting] -155 72 196

#Opens stairs if player has seen that dialogue but stairs have been covered back up
#execute @a[x=-164,y=63,z=213,r=15,tag=Dialogue53] ~ ~ ~ fill -164 63 213 -161 63 216 air
#execute @a[x=-164,y=63,z=213,r=15,tag=Dialogue53] ~ ~ ~ fill -160 63 213 -160 63 216 minecraft:stone_brick_stairs 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance in the Rocket HQ healing player
#scoreboard players set @a[x=-83,y=45,z=169,r=5,tag=!Dialogue54] DialogueTrigger 54

#execute @a[x=-83,y=45,z=169,r=20,tag=!Dialogue54,score_TalkTime=0] ~ ~ ~ /tp @e[x=-803,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -83 45 169

scoreboard players add @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54] TalkTime 1

tellraw @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> Are you all right?"}
tellraw @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Lance> Your Pokémon are hurt and tired. Here, give them some of my medicine."}
execute @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ pokeheal @s
tellraw @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"<Lance> "},{"selector":"@p[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=18,score_TalkTime=18]"},{"text":", let's give it our best for Pokémon."}]

#tp Lance out
execute @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ particle cloud -83 45 169 1 1 1 1 100
execute @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=!Dialogue54,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ tp @e[x=-83,y=44,z=169,dy=3,type=pixelmon:npc_chatting] -803 93 -242

scoreboard players tag @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,score_TalkTime_min=26,tag=!Dialogue54] add Dialogue54
scoreboard players set @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,score_TalkTime_min=26,tag=Dialogue54] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=54,score_DialogueTrigger=54,tag=Dialogue54] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance discovering passwords
#scoreboard players set @a[x=-149,y=34,z=165,r=5,tag=!Dialogue55] DialogueTrigger 55

#Lance tp in
#execute @a[x=-149,y=34,z=165,r=25,tag=!Dialogue55,score_TalkTime=0] ~ ~ ~ /tp @e[x=-801,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -149 34 165

scoreboard players add @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55] TalkTime 1
tellraw @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> It takes two passwords to get into the boss's quarters."}
tellraw @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Lance> Those passwords are known only to a few Rockets."}
tellraw @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Lance> That Rocket there very graciously told me so."}
tellraw @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=28,score_TalkTime=28] ["",{"text":"<Lance> "},{"selector":"@p[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=28,score_TalkTime=28]"},{"text":", let's go get the passwords."}]

#tp Lance out
execute @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ particle cloud -149 34 165 1 1 1 1 100
execute @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=!Dialogue55,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ tp @e[x=-149,y=33,z=165,dy=3,type=pixelmon:npc_chatting] -801 93 -242

scoreboard players tag @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,score_TalkTime_min=36,tag=!Dialogue55] add Dialogue55
scoreboard players set @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,score_TalkTime_min=36,tag=Dialogue55] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=55,score_DialogueTrigger=55,tag=Dialogue55] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Password 1
#scoreboard players set @a[x=-145,y=33,z=193,r=25,score_TalkTime=0,tag=!Dialogue56] DialogueTrigger 56 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56,tag=!Dialogue56] TalkTime 1
execute @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56,tag=!Dialogue56,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Rocket Grunt> The password to the boss's room is "},{"text":"Slowpoketail","italic":true},{"text":". But it's useless unless you have two passwords."}]
#scoreboard players tag @s add RocketPW1

scoreboard players tag @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56,score_TalkTime_min=2,tag=!Dialogue56] add Dialogue56
scoreboard players set @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56,score_TalkTime_min=2,tag=Dialogue56] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=56,score_DialogueTrigger=56,tag=Dialogue56] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Password 2
#scoreboard players set @a[x=-80,y=33,z=170,r=25,score_TalkTime=0,tag=!Dialogue57] DialogueTrigger 57 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57,tag=!Dialogue57] TalkTime 1
execute @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57,tag=!Dialogue57,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Rocket Grunt> The password to the boss's room... Uh..., I think it is "},{"text":"Raticate Tail","italic":true},{"text":"."}]
#scoreboard players tag @s add RocketPW2

scoreboard players tag @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57,score_TalkTime_min=2,tag=!Dialogue57] add Dialogue57
scoreboard players set @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57,score_TalkTime_min=2,tag=Dialogue57] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=57,score_DialogueTrigger=57,tag=Dialogue57] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Password 3 (Murkrow post-battle)
#execute @a[x=-91,y=34,z=217,r=5,score_TalkTime=0,tag=Dialogue61] ~ ~ ~ scoreboard players set @s[tag=!Dialogue58] DialogueTrigger 58

scoreboard players add @a[score_DialogueTrigger_min=58,score_DialogueTrigger=58,tag=!Dialogue58] TalkTime 1
tellraw @a[score_DialogueTrigger_min=58,score_DialogueTrigger=58,tag=!Dialogue58,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Murkrow> The password is... "},{"text":"Hail Giovanni","italic":true},{"text":"."}]
#scoreboard players tag @s add RocketPW3

scoreboard players tag @a[score_DialogueTrigger_min=58,score_DialogueTrigger=58,score_TalkTime_min=2,tag=!Dialogue58] add Dialogue58
scoreboard players set @a[score_DialogueTrigger_min=58,score_DialogueTrigger=58,score_TalkTime_min=2,tag=Dialogue58] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=58,score_DialogueTrigger=58,tag=Dialogue58] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver in Team Tocket HQ
#scoreboard players set @a[x=-82,y=34,z=182,r=5,tag=!Dialogue59] DialogueTrigger 59

#tp Silver in separately
#execute @a[x=-82,y=34,z=182,r=20,tag=!Dialogue59,score_TalkTime=0] ~ ~ ~ tp @e[x=-772,y=88,z=-242,dy=3,type=pixelmon:npc_chatting] -82 34 182

scoreboard players add @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59] TalkTime 1
execute @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> So you are messing with them again."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Humph, you must really like Team Rocket so much."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=16,score_TalkTime=16] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Tell me, who was the guy in the cape who used Dragon-type Pokémon?"}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=26,score_TalkTime=26] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> My Pokémon were no match at all."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=33,score_TalkTime=33] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I don't care that I lost. I can beat him by getting stronger Pokémon."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=43,score_TalkTime=43] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> It's what he said that bothers me."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=50,score_TalkTime=50] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> He told me that I don't love and trust my Pokémon enough."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=59,score_TalkTime=59] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm furious that I lost to a bleeding heart like him."}]
tellraw @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=68,score_TalkTime=68] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Humph! I don't have time for the likes of you!"}]

#tp Silver out
execute @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ particle cloud -82 34 182 1 1 1 1 100
execute @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ tp @e[x=-82,y=33,z=182,dy=3,type=pixelmon:npc_chatting] -772 89 -242
execute @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=!Dialogue59,score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,score_TalkTime_min=76,tag=!Dialogue59] add Dialogue59
scoreboard players set @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,score_TalkTime_min=76,tag=Dialogue59] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=59,score_DialogueTrigger=59,tag=Dialogue59] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Executive pre-battle
#scoreboard players set @a[x=-117,y=33,z=189,dx=31,dy=5,dz=31,score_TalkTime=0,tag=!Dialogue60] DialogueTrigger 60

scoreboard players add @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=!Dialogue60] TalkTime 1
tellraw @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=!Dialogue60,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Rocket Executive> What? Who are you? This is the office of our leader, Giovanni."}
tellraw @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=!Dialogue60,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Rocket Executive> Since disbanding Team Rocket three years ago, he has been in training."}
tellraw @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=!Dialogue60,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Rocket Executive> But we're certain he will be back some day to assume command again. That's why we're standing guard."}
tellraw @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=!Dialogue60,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Rocket Executive> I won't let anyone disturb this place!"}

scoreboard players tag @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,score_TalkTime_min=33,tag=!Dialogue60] add Dialogue60
scoreboard players set @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,score_TalkTime_min=33,tag=Dialogue60] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=60,score_DialogueTrigger=60,tag=Dialogue60] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Executive post-battle
#scoreboard players set @a[x=-117,y=33,z=189,dx=31,dy=5,dz=31,score_TalkTime=0,tag=!Dialogue61] DialogueTrigger 61 {Inventory:[{id:"minecraft:netherbrick"}]}

#execute @a[x=-99,y=34,z=205,r=20,score_TalkTime=0,tag=!Dialogue61] ~ ~ ~ tp @e[x=-799,y=92,z=-242,dy=3,type=pixelmon:npc_trainer] -99 34 205


scoreboard players add @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61] TalkTime 1
execute @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61] ~ ~ ~ clear @s minecraft:netherbrick 0 1

tellraw @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Rocket Executive> I... I couldn't do a thing..."}
tellraw @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Rocket Executive> Giovanni, please forgive me..."}
tellraw @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Rocket Executive> No, I can't let this affect me. I have to inform the others..."}

#tp Executive out
execute @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ particle cloud -99 34 205 1 1 1 1 100
execute @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ tp @e[x=-99,y=33,z=205,dy=3,type=pixelmon:npc_trainer] -799 93 -242

tellraw @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=!Dialogue61,score_TalkTime_min=28,score_TalkTime=28] {"text":"Murkrow is looking at you...","italic":true}

scoreboard players tag @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_TalkTime_min=28,tag=!Dialogue61] add Dialogue61
scoreboard players set @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,score_TalkTime_min=28,tag=Dialogue61] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=61,score_DialogueTrigger=61,tag=Dialogue61] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance and Ariana talking, pre-Ariana battle
#execute @a[x=-141,y=44,z=157,dx=16,dy=5,dz=15,tag=Dialogue58] ~ ~ ~ scoreboard players set @s[tag=!Dialogue62] DialogueTrigger 62

#Sets up scene
#execute @a[x=-133,y=45,z=166,r=30,score_TalkTime=0,tag=Dialogue58] ~ ~ ~ execute @s[tag=!Dialogue63] ~ ~ ~ tp @e[x=-797,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -128 45 159
#execute @a[x=-133,y=45,z=166,r=30,score_TalkTime=0,tag=Dialogue58] ~ ~ ~ execute @s[tag=!Dialogue63] ~ ~ ~ tp @e[x=-795,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] -128 45 171
#execute @a[x=-133,y=45,z=166,r=30,score_TalkTime=0,tag=Dialogue58] ~ ~ ~ execute @s[tag=!Dialogue63] ~ ~ ~ tp @e[x=-793,y=92,z=-242,dy=3,type=pixelmon:npc_trainer] -134 45 170
#execute @a[x=-133,y=45,z=166,r=30,score_TalkTime=0,tag=Dialogue58] ~ ~ ~ execute @s[tag=!Dialogue63] ~ ~ ~ tp @e[x=-817,y=86,z=-147,dy=2,type=pixelmon:statue] -128 45 168
#execute @a[x=-133,y=45,z=166,r=30,score_TalkTime=0,tag=Dialogue58] ~ ~ ~ execute @s[tag=!Dialogue63] ~ ~ ~ tp @e[x=-817,y=86,z=-153,dy=2,type=pixelmon:statue] -128 45 164

scoreboard players add @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,tag=!Dialogue62] TalkTime 1

tellraw @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,tag=!Dialogue62,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> Hey! Don't be so selfish. Spread the fun around."}
tellraw @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,tag=!Dialogue62,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Ariana","color":"gray"},{"text":"> What? You had an accomplice? Where is your sense of honor?"}]
tellraw @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,tag=!Dialogue62,score_TalkTime_min=20,score_TalkTime=20] ["",{"text":"<"},{"text":"Ariana","color":"gray"},{"text":"> As the interim boss in place of Giovanni, I'll show you how wrong it is to meddle with Team Rocket!"}]

scoreboard players tag @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,score_TalkTime_min=20,tag=!Dialogue62] add Dialogue62
scoreboard players set @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,score_TalkTime_min=20,tag=Dialogue62] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=62,score_DialogueTrigger=62,tag=Dialogue62] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ariana Lose
#scoreboard players set @a[x=-141,y=44,z=157,dx=16,dy=5,dz=15,score_TalkTime=0,tag=!Dialogue63] DialogueTrigger 63 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63] TalkTime 1
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Ariana> It's too bad. If you were to join Team Rocket, you could become an Executive."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Ariana> ...This hideout is done for... But that's fine."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Ariana> The broadcast experiment was a total success."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Ariana> It doesn't matter what happens to this hideout now."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Ariana> We have much bigger plans."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Ariana> You'll come to appreciate Team Rocket's true power soon enough."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Ariana> Enjoy yourself while you can..."}

#tps Team Rocket out
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ particle cloud -134 45 170 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ particle cloud -128 45 171 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ particle cloud -128 45 168 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ particle cloud -128 45 164 1 1 1 1 100

execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ tp @e[x=-134,y=44,z=170,dy=3,type=pixelmon:npc_trainer] -793 93 -242
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ tp @e[x=-129,y=44,z=163,dx=1,dy=3,dz=1,type=pixelmon:statue] -817 87 -153
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ tp @e[x=-129,y=44,z=168,dx=1,dy=3,dz=1,type=pixelmon:statue] -817 87 -147
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ tp @e[x=-128,y=44,z=171,dy=3,type=pixelmon:npc_chatting] -795 93 -242

tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=58,score_TalkTime=58] {"text":"<Lance> That did it. We defeated all the rockets here."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Lance> But I'm concerned about the young guy I battled in the process..."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=75,score_TalkTime=75] ["",{"text":"<Lance> Sorry, "},{"selector":"@p[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=75,score_TalkTime=75]"},{"text":". I saw how well you were doing, so I just hung back."}]
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=85,score_TalkTime=85] {"text":"<Lance> Now all there is left to do is to turn off that odd radio signal."}

#tp Lance over to the gate
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ particle cloud -128 45 159 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ particle cloud -118 45 173 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ tp @e[x=-128,y=44,z=159,dy=3,type=pixelmon:npc_chatting] -797 93 -242
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ tp @e[x=-815,y=79,z=-240,dy=3,type=pixelmon:npc_chatting] -118 45 173

#tps in Electrode Statues
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ tp @e[x=-817,y=92,z=-157,dx=1,dy=2,dz=1,type=pixelmon:statue] -91.0 46 203.0
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ tp @e[x=-817,y=92,z=-152,dx=1,dy=2,dz=1,type=pixelmon:statue] -91.0 46 195.0
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=93,score_TalkTime=93] ~ ~ ~ tp @e[x=-817,y=92,z=-147,dx=1,dy=2,dz=1,type=pixelmon:statue] -91.0 46 187.0

tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=96,score_TalkTime=96] ["",{"text":"<"},{"selector":"@p[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=96,score_TalkTime=96]"},{"text":"> "},{"text":"Hail Giovanni","italic":true}]

execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=99,score_TalkTime=99] ~ ~ ~ playsound minecraft:entity.irongolem.death ambient @p[x=-118,y=45,z=174,r=30] ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=99,score_TalkTime=99] ~ ~ ~ fill -122 45 175 -114 48 175 air

#tp Lance into generator room
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ particle cloud -118 45 173 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ particle cloud -118 45 181 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ tp @e[x=-815,y=79,z=-238,dy=3,type=pixelmon:npc_chatting] -118 45 181
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ tp @e[x=-118,y=44,z=173,dy=3,type=pixelmon:npc_chatting] -815 80 -240

tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=106,score_TalkTime=106] {"text":"<Lance> It's this machine that's causing all the problems. I don't see a switch on it..."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=118,score_TalkTime=118] {"text":"<Lance> We have no choice. We have to make all the Electrode faint."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=127,score_TalkTime=127] {"text":"<Lance> That should stop this machine from transmitting that strange signal."}
tellraw @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=137,score_TalkTime=137] ["",{"text":"<Lance> It's of no fault of the Pokémon, so it makes me feel guilty. "},{"selector":"@p[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=137,score_TalkTime=137]"},{"text":", let's split the job."}]

#tp Lance to the right side of Electrode
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ particle cloud -118 45 181 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ particle cloud -144 45 182 1 1 1 1 100
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ tp @e[x=-815,y=79,z=-236,dy=3,type=pixelmon:npc_chatting] -144 45 182
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ tp @e[x=-118,y=45,z=181,dy=3,type=pixelmon:npc_chatting] -815 80 -238

#tps in Electrode 1
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ tp @e[x=-92,y=45,z=186,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -146.0
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ execute @e[x=-92,y=45,z=186,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /pokespawn Electrode lvl:22 gr:7
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=186,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /entitydata @e[x=-92,y=45,z=186,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] {NoAI:1}
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=186,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /tp @e[x=-92,y=45,z=186,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] ~ ~ ~ 180 ~

#tps in Electrode 2
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ tp @e[x=-92,y=45,z=194,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -151.0
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ execute @e[x=-92,y=45,z=194,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /pokespawn Electrode lvl:22 gr:7
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=194,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /entitydata @e[x=-92,y=45,z=194,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] {NoAI:1}
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=194,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /tp @e[x=-92,y=45,z=194,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] ~ ~ ~ 180 ~

#tps in Electrode 3
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ tp @e[x=-92,y=45,z=202,dx=1,dy=2,dz=1,type=pixelmon:statue] -816.0 93 -156.0
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=147] ~ ~ ~ execute @e[x=-92,y=45,z=202,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /pokespawn Electrode lvl:22 gr:7
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=202,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /entitydata @e[x=-92,y=45,z=202,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] {NoAI:1}
execute @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=!Dialogue63,score_TalkTime_min=147,score_TalkTime=148] ~ ~ ~ execute @e[x=-92,y=45,z=202,dx=1,dy=5,dz=1,type=armor_stand] ~ ~-2 ~ /tp @e[x=-92,y=45,z=202,dx=1,dy=2,dz=1,type=pixelmon:pixelmon] ~ ~ ~ 180 ~

scoreboard players tag @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,score_TalkTime_min=148,tag=!Dialogue63] add Dialogue63
scoreboard players set @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,score_TalkTime_min=148,tag=Dialogue63] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=63,score_DialogueTrigger=63,tag=Dialogue63] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lance generator room final talk
#Activated when there are no more Pokémon found in the room:
#testfor @e[x=-149,y=44,z=177,dx=63,dy=5,dz=35,type=pixelmon:pixelmon]
#execute @a[x=-149,y=44,z=177,dx=63,dy=5,dz=35,score_TalkTime=0,tag=Dialogue63] ~ ~ ~ scoreboard players set @s[tag=!Dialogue64] DialogueTrigger 64

scoreboard players add @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64] TalkTime 1

#tp Lance near Electrode pads out
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-144,y=44,z=182,dy=3,type=pixelmon:npc_chatting] -815 80 -236
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -144 45 182 1 1 1 1 100

#tp center generator Lance in
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=79,z=-238,dy=3,type=pixelmon:npc_chatting] -118 45 181
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -118 45 181 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> That odd signal finally stopped."}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Lance> The Lake should be back to normal. You're the hero!"}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Lance> Let me thank you on behalf of all the Pokémon."}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Lance> Oh, yes. You should take this. I found it here, but I don't have any need for it."}
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ give @s pixelmon:hm9
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Lance> That's Whirlpool. Have it with you to get across wild water."}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=45,score_TalkTime=45] ["",{"text":"<Lance> "},{"selector":"@p[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=45,score_TalkTime=45]"},{"text":"..."}]
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Lance> The journey to becoming the Pokémon Master is long and difficult."}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=59,score_TalkTime=59] {"text":"<Lance> Knowing that, will you keep going?"}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Lance> ... I see. No you're right. If you would give up that easily, you would have never chased that dream in the first place."}
tellraw @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=79,score_TalkTime=79] {"text":"<Lance> I look forward to seeing you again!"}

execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=86,score_TalkTime=86] ~ ~ ~ particle cloud -118 45 181 1 1 1 1 100
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=86,score_TalkTime=86] ~ ~ ~ tp @e[x=-118,y=45,z=181,dy=3,type=pixelmon:npc_chatting] -815 80 -238
execute @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=!Dialogue64,score_TalkTime_min=86,score_TalkTime=86] ~ ~ ~ advancement grant @s only johto:rocket3

scoreboard players tag @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,score_TalkTime_min=86,tag=!Dialogue64] add Dialogue64
scoreboard players set @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,score_TalkTime_min=86,tag=Dialogue64] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=64,score_DialogueTrigger=64,tag=Dialogue64] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Admin Room gate
#execute @a[x=-107,y=33,z=181,dx=11,dy=5,dz=12,tag=Dialogue56] ~ ~ ~ /testfor @s[tag=Dialogue57]
#fill -105 37 187 -98 34 187 minecraft:air
#fill -105 37 187 -98 34 187 minecraft:iron_bars

#Generator Room Gate
#testfor @a[x=-124,y=44,z=168,dx=12,dy=5,dz=12,tag=Dialogue63,score_TalkTime=0]
#fill -122 45 175 -114 48 175 minecraft:air
#fill -122 45 175 -114 48 175 minecraft:iron_bars

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sets up Goldenrod City for takeover

#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-791,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 546 64 -350
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-785,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 495 64 -392
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-787,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 425 64 -380
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-789,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 420 64 -380
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue64] ~ ~ ~ execute @s[tag=!Dialogue72] ~ ~ ~ tp @e[x=-783,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 560 64 -352

#Lone guy outside Radio Tower all story
#execute @a[x=560,y=64,z=-352,r=100,tag=!Dialogue72] ~ ~ ~ tp @e[x=-783,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 560 64 -352


#Tps NPCs out after Takeover
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] ~ ~ ~ tp @e[x=546,y=63,z=-350,dy=3,type=pixelmon:npc_chatting] -791 93 -242
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] ~ ~ ~ tp @e[x=495,y=63,z=-392,dy=3,type=pixelmon:npc_chatting] -785 93 -242
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] ~ ~ ~ tp @e[x=425,y=63,z=-380,dy=3,type=pixelmon:npc_chatting] -787 93 -242
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] ~ ~ ~ tp @e[x=420,y=63,z=-380,dy=3,type=pixelmon:npc_chatting] -789 93 -242
#execute @a[x=349,y=63,z=-461,dx=239,dy=10,dz=194,tag=Dialogue72] ~ ~ ~ tp @e[x=560,y=63,z=-352,dy=3,type=pixelmon:npc_chatting] -783 93 -242

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Takeover Fake Director pre-battle
#scoreboard players set @a[x=520,y=54,z=-248,dx=11,dy=5,dz=14,score_TalkTime=0,tag=!Dialogue65] DialogueTrigger 65

scoreboard players add @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65] TalkTime 1
tellraw @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65,score_TalkTime_min=1,score_TalkTime=1] {"text":"<. . .> Y-you! You came to rescue me?"}
tellraw @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65,score_TalkTime_min=9,score_TalkTime=9] {"text":"<. . .> Is this what you were expecting? Wrong! I'm an imposter!"}
tellraw @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Rocket Executive> I pretended to be the real thing to prepare for our takeover."}
tellraw @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Rocket Executive> Do you want to know where we hid the real Director?"}
tellraw @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=!Dialogue65,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Rocket Executive> Sure, I'll tell you. But only if you can beat me!"}

scoreboard players tag @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,score_TalkTime_min=36,tag=!Dialogue65] add Dialogue65
scoreboard players set @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,score_TalkTime_min=36,tag=Dialogue65] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=65,score_DialogueTrigger=65,tag=Dialogue65] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Takeover fake director post-battle
#scoreboard players set @a[x=520,y=54,z=-248,dx=11,dy=5,dz=14,score_TalkTime=0,tag=!Dialogue66] DialogueTrigger 66 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=!Dialogue66] TalkTime 1
execute @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=!Dialogue66,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Rocket Executive> OK, OK. I'll tell you where he is."}
tellraw @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=!Dialogue66,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Rocket Executive> We stashed the real Director in the Underground Warehouse"}
tellraw @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=!Dialogue66,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Rocket Executive> It's at the far end of the Underground. But I'll doubt you'll get that far."}
execute @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=!Dialogue66,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ give @s minecraft:record_far 1 0 {display:{Name:"Basement Key",Lore:["A key that opens a door in","the Goldenrod Tunnel"]},HideFlags:36}

scoreboard players tag @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=17,tag=!Dialogue66] add Dialogue66
scoreboard players set @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,score_TalkTime_min=17,tag=Dialogue66] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=66,score_DialogueTrigger=66,tag=Dialogue66] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver in Goldenrod Underground pre-battle
#scoreboard players set @a[x=481,y=47,z=-305,r=7,score_TalkTime=0,tag=!Dialogue67] DialogueTrigger 67

#tp Silver in separately
#execute @a[x=481,y=47,z=-305,r=25,score_TalkTime=0,tag=!Dialogue68,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-766,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] 481 47 -305
#execute @a[x=481,y=47,z=-305,r=25,score_TalkTime=0,tag=!Dialogue68,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-766,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] 481 47 -305
#execute @a[x=481,y=47,z=-305,r=25,score_TalkTime=0,tag=!Dialogue68,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-766,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] 481 47 -305

scoreboard players add @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67] TalkTime 1
tellraw @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Hold it! What I told you before was to deceive you."}]
tellraw @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I thought it would let me tail you, and it would lead me to Lance."}]
tellraw @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67,score_TalkTime_min=20,score_TalkTime=20] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Well, he never showed up."}]
tellraw @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67,score_TalkTime_min=27,score_TalkTime=27] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...No matter. I was planning to beat you after Lance, but since you are here, I will repay my debts!"}]
execute @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=!Dialogue67,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,score_TalkTime_min=35,tag=!Dialogue67] add Dialogue67
scoreboard players set @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,score_TalkTime_min=35,tag=Dialogue67] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=67,score_DialogueTrigger=67,tag=Dialogue67] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver in Goldenrod Underground post-battle
#scoreboard players set @a[x=481,y=47,z=-305,r=20,tag=!Dialogue68] DialogueTrigger 68 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68] TalkTime 1
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Why... Why do I lose? I've assembled the toughest Pokémon."}]
tellraw @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I haven't eased up on the gas. So why do I lose?"}]
tellraw @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...I don't understand. Is what that Lance guy said true? That I don't treat Pokémon properly?"}]
tellraw @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=28,score_TalkTime=28] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Love.... Trust... Are they really what I lack? Are they keeping me from winning?"}]
tellraw @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=38,score_TalkTime=38] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I... I just don't understand. But it's not going to end here. Not now. Not because of this."}]

#tp Silver out
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ particle cloud 481 47 -305 1 1 1 1 100
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ tp @e[x=481,y=47,z=-305,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -766 93 -242
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ tp @e[x=481,y=47,z=-305,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -766 89 -242
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ tp @e[x=481,y=47,z=-305,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -766 85 -242
execute @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=!Dialogue68,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,score_TalkTime_min=48,tag=!Dialogue68] add Dialogue68
scoreboard players set @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,score_TalkTime_min=48,tag=Dialogue68] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=68,score_DialogueTrigger=68,tag=Dialogue68] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower director underground
#scoreboard players set @a[x=426,y=37,z=-304,r=5,tag=!Dialogue69] DialogueTrigger 69

#tps Director in
#execute @p[x=426,y=37,z=-304,r=25,tag=!Dialogue72] ~ ~ ~ tp @e[x=-779,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 426 38 -304

#tps Director out
#execute @p[x=426,y=37,z=-304,r=25,tag=Dialogue72] ~ ~ ~ tp @e[x=426,y=37,z=-304,dy=3,type=pixelmon:npc_chatting] -779 93 -242

scoreboard players add @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69] TalkTime 1
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Director> Who? What? You came to rescue me?"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Director> Thank you!"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Director> The Radio Tower! What's happening there?"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Director> Taken over by Team Rocket?"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Director> Here. Take this Card Key."}
execute @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=32,score_TalkTime=32] ~ ~ ~ give @s minecraft:record_stal 1 0 {display:{Name:"Card Key",Lore:["A card key that opens a shutter","in the Radio Tower."]},HideFlags:36}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Director> Use that to open the shutters on 3F"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Director> I'm beging you to help."}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Director> There's no telling what they'll do if they control the transmitter."}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=59,score_TalkTime=59] {"text":"<Director> They may even be able to control Pokémon using a special signal!"}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=68,score_TalkTime=68] {"text":"<Director> You're the only one I can call on."}
tellraw @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=!Dialogue69,score_TalkTime_min=75,score_TalkTime=75] {"text":"<Director> Please save the Radio Tower... And all the Pokémon nationwide!"}
#scoreboard players tag @s add CardKey

scoreboard players tag @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=75,tag=!Dialogue69] add Dialogue69
scoreboard players set @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,score_TalkTime_min=75,tag=Dialogue69] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=69,score_DialogueTrigger=69,tag=Dialogue69] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Ariana post-battle
#scoreboard players set @a[x=496,y=48,z=-248,dx=11,dy=5,dz=13,score_TalkTime=0,tag=!Dialogue70] DialogueTrigger 70 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=!Dialogue70] TalkTime 1
execute @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=!Dialogue70,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Ariana> "},{"selector":"@p[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=!Dialogue70,score_TalkTime_min=1,score_TalkTime=1]"},{"text":", isn't it?"}]
tellraw @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=!Dialogue70,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Ariana> A brat like you won't appreciate the magnificence of Team Rocket."}
tellraw @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=!Dialogue70,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Ariana> That's too bad. I really admire your power."}

scoreboard players tag @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,score_TalkTime_min=17,tag=!Dialogue70] add Dialogue70
scoreboard players set @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,score_TalkTime_min=17,tag=Dialogue70] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=70,score_DialogueTrigger=70,tag=Dialogue70] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Executive Archer pre-battle
#scoreboard players set @a[x=496,y=54,z=-248,dx=19,dy=5,dz=13,score_TalkTime=0,tag=!Dialogue71] DialogueTrigger 71

scoreboard players add @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71] TalkTime 1
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Archer> Oh, you managed to get this far?"}
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Archer> You must be quite the trainer."}
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Archer> We intend to take over this Radio Station and announce our comeback."}
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Archer> That should bring our boss Giovanni back from his solo training."}
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Archer> We are going to regain our former glory."}
tellraw @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=!Dialogue71,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Archer> I won't allow you to interfere with our plans."}

scoreboard players tag @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,score_TalkTime_min=40,tag=!Dialogue71] add Dialogue71
scoreboard players set @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,score_TalkTime_min=40,tag=Dialogue71] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=71,score_DialogueTrigger=71,tag=Dialogue71] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Archer post-battle
#scoreboard players set @a[x=496,y=54,z=-248,dx=19,dy=5,dz=13,score_TalkTime=0,tag=!Dialogue72] DialogueTrigger 72 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72] TalkTime 1
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72] ~ ~ ~ clear @s minecraft:netherbrick 0 1

tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Archer> How could this be?"}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Archer> Our dreams have come to naught. I wasn't up to the task after all."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Archer> Like Giovanni did before me, I will disband Team Rocket here today. Farewell."}

#tps player to non-taken over Radio Tower, tps in real Director
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ tp @s ~ ~ ~-26
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ tp @e[x=-781,y=92,z=-242,dy=3,type=pixelmon:npc_chatting] 503 55 -271

tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=35,score_TalkTime=35] ["",{"text":"<Director> "},{"selector":"@p[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=35,score_TalkTime=35]"},{"text":", thank you!"}]
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Director> Your courageous actions have saved Pokémon nationwide."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Director> I know it's not much, but please take this."}
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ give @s minecraft:prismarine_crystals 1 0 {display:{Name:"Rainbow Wing",Lore:["A strange, rainbow feather","that sparkles."]},ench:[{id:"2",lvl:"1"}],HideFlags:1}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=57,score_TalkTime=57] {"text":"<Director> There used to be a tower right here in Goldenrod City."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=65,score_TalkTime=65] {"text":"<Director> But it was old and creaky. So we replaced it with our Radio Tower."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=74,score_TalkTime=74] {"text":"<Director> We dug up that feather during construction."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=81,score_TalkTime=81] {"text":"<Director> I heard that all sorts of Pokémon lived in Goldenrod in the past."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=90,score_TalkTime=90] {"text":"<Director> Perhaps... That feather has some connection to the Tin Tower in Ecruteak City..."}
tellraw @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=100,score_TalkTime=100] {"text":"<Director> OK, I better go to my Office."}

#tp Director out
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=107,score_TalkTime=107] ~ ~ ~ particle cloud 503 55 -271 1 1 1 1 100
execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=107,score_TalkTime=107] ~ ~ ~ tp @e[x=503,y=54,z=-271,dy=3,type=pixelmon:npc_chatting] -781 93 -242

execute @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=!Dialogue72,score_TalkTime_min=107,score_TalkTime=107] ~ ~ ~ advancement grant @s only johto:rocket4

scoreboard players tag @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,score_TalkTime_min=107,tag=!Dialogue72] add Dialogue72
scoreboard players set @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,score_TalkTime_min=107,tag=Dialogue72] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=72,score_DialogueTrigger=72,tag=Dialogue72] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Takeover Shutter Gate
#testfor @a[x=498,y=42,z=-246,dx=9,dy=5,dz=10,tag=Dialogue69]
#fill 502 43 -244 502 46 -239 minecraft:air
#fill 502 43 -244 502 46 -239 minecraft:iron_bars


#Goldenrod Underground Gate
#testfor @a[x=480,y=54,z=-326,r=10,tag=Dialogue66]

#fill 481 55 -322 479 57 -321 air
#clone -724 66 -333 -723 64 -335 478 55 -324
#playsound entity.irongolem.death ambient @a[x=480,y=54,z=-326,r=20,score_GRUnderground_min=1] ~ ~ ~ 10 1 1

#clone -728 66 -333 -726 64 -334 479 55 -322
#fill 478 57 -322 479 55 -324 air

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mahogany Town Pryce opening dialogue
#scoreboard players set @a[x=-791,y=64,z=715,r=20,score_TalkTime=0,tag=!Dialogue73] DialogueTrigger 73

scoreboard players add @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73] TalkTime 1
tellraw @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Pryce> Pokémon have many experiences in their lives, just like we do. "}
tellraw @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Pryce> I, too, have seen and suffered much in my life."}
tellraw @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Pryce> Since I am your elder, let me show you what I mean."}
tellraw @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Pryce> I have been training Pokémon since before you were born. I do not lose easily."}
tellraw @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Pryce> I, Pryce - the Winter Trainer - shall demonstrate my power!"}
execute @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=!Dialogue73,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,score_TalkTime_min=37,tag=!Dialogue73] add Dialogue73
scoreboard players set @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,score_TalkTime_min=37,tag=Dialogue73] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=73,score_DialogueTrigger=73,tag=Dialogue73] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mahogany Town Pryce defeat dialogue
#scoreboard players set @a[x=-817,y=0,z=635,dx=58,dy=240,dz=101,score_TalkTime=0,tag=!Dialogue74] DialogueTrigger 74 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74] TalkTime 1
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74] ~ ~ ~ clear @s minecraft:netherbrick 0 1
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Pryce
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Pryce> I am impressed by your prowess."}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Pryce> With your strong will, I know you will overcome all life's obstacles."}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Pryce> You are worthy of this Badge!"}

#give badge
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:glacier_badge 1
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ advancement grant @s only johto:badge7

tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Pryce> And this... This is a gift from me! "}
execute @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=34,score_TalkTime=34] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:7}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=38,score_TalkTime=38] {"text":"<Pryce> That TM contains Hail."}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=45,score_TalkTime=45] {"text":"<Pryce> It summons a hailstorm that lasts for five turns."}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=53,score_TalkTime=53] {"text":"<Pryce> The hailstorm damages all types except Ice."}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=60,score_TalkTime=60] {"text":"<Pryce> When the ice and snow melt, spring arrives. "}
tellraw @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=!Dialogue74,score_TalkTime_min=68,score_TalkTime=68] {"text":"<Pryce> You and your Pokémon will be together for many years to come. Cherish your time together!"}

scoreboard players tag @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,score_TalkTime_min=68,tag=!Dialogue74] add Dialogue74
scoreboard players set @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,score_TalkTime_min=68,tag=Dialogue74] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=74,score_DialogueTrigger=74,tag=Dialogue74] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Post-Rocket Takeover gift
#execute @a[x=517,y=42,z=-267,r=5,score_TalkTime=0,tag=Dialogue72] ~ ~ ~ scoreboard players set @s[tag=!Dialogue75] DialogueTrigger 75

scoreboard players add @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,tag=!Dialogue75] TalkTime 1
tellraw @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,tag=!Dialogue75,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Worker> Thank you! You're my hero! This is a token of my appreciation."}
execute @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,tag=!Dialogue75,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:11}

scoreboard players tag @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_TalkTime_min=4,tag=!Dialogue75] add Dialogue75
scoreboard players set @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,score_TalkTime_min=4,tag=Dialogue75] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=75,score_DialogueTrigger=75,tag=Dialogue75] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Route 43 gate reward after beating Team Rocket in their HQ
#execute @a[x=-183,y=64,z=352,r=5,tag=Dialogue64] ~ ~ ~ scoreboard players set @s[tag=!Dialogue76] DialogueTrigger 76

scoreboard players add @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=!Dialogue76] TalkTime 1
tellraw @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=!Dialogue76,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Officer Jenny> I got chased from my post by these thugs in black."}
tellraw @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=!Dialogue76,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Officer Jenny> They left this behind. It makes me uncomfortable."}
tellraw @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=!Dialogue76,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Officer Jenny> Could you take it away?"}
execute @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=!Dialogue76,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:36}

scoreboard players tag @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,score_TalkTime_min=22,tag=!Dialogue76] add Dialogue76
scoreboard players set @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,score_TalkTime_min=22,tag=Dialogue76] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=76,score_DialogueTrigger=76,tag=Dialogue76] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blackthorn City Clair pre-battle
#scoreboard players set @a[x=-856,y=64,z=720,r=10,tag=!Dialogue77] DialogueTrigger 77

scoreboard players add @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=!Dialogue77] TalkTime 1
tellraw @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=!Dialogue77,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Clair> I am Clair. The world's best dragon master."}
tellraw @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=!Dialogue77,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Clair> I can hold my own against even the Pokémon League's Elite Four. Do you still want to take me on?"}
tellraw @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=!Dialogue77,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Clair> ...Fine. Let's do it! As a trainer, I will use my full power against any opponent!"}
execute @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=!Dialogue77,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,score_TalkTime_min=20,tag=!Dialogue77] add Dialogue77
scoreboard players set @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,score_TalkTime_min=20,tag=Dialogue77] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=77,score_DialogueTrigger=77,tag=Dialogue77] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blackthorn City Clair post-battle
#scoreboard players set @a[x=-883,y=0,z=637,dx=58,dy=240,dz=98,tag=!Dialogue78] DialogueTrigger 78 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78] TalkTime 1
execute @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78] ~ ~ ~ clear @s minecraft:netherbrick 0 1
execute @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Clair> I won't admit this."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Clair> I may have lost, but you're still not ready for the Pokémon League."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Clair> I know. You should take the dragon user challenge."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Clair> Behind this Gym is a place called Dragon's Den."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Clair> Go and bring me the Dragon Fang from deep inside the Den."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Clair> That is the test to be accepted as a true dragon user."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Clair> If you can do that, I will accept you as a worthy trainer."}
tellraw @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=!Dialogue78,score_TalkTime_min=58,score_TalkTime=58] {"text":"<Clair> Until then, I won't give you a Badge."}

scoreboard players tag @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,score_TalkTime_min=58,tag=!Dialogue78] add Dialogue78
scoreboard players set @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,score_TalkTime_min=58,tag=Dialogue78] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=78,score_DialogueTrigger=78,tag=Dialogue78] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Dragons Den Clair giving badge
#scoreboard players set @a[x=-744,y=69,z=507,dx=162,dy=70,dz=147,tag=!Dialogue79] DialogueTrigger 79 {Inventory:[{id:"pixelmon:dragon_fang"}]}

scoreboard players add @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79] TalkTime 1

#tp Clair in
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -688 74 540 1 1 1 1 100
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-703,y=78,z=-242,dy=3,type=pixelmon:npc_chatting] -688 74 540

tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=4,score_TalkTime=4] {"text":"<Clair> All right. I recognize your true power. This Badge is yours."}

#give badge
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ give @s pixelmon:rising_badge 1
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players tag @s add Clair
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=19,score_TalkTime=19] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=19,score_TalkTime=19] ~ ~ ~ advancement grant @s only johto:badge8

tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Clair> I also want you to have this TM."}
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:59}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Clair> That contains Dragon Pulse."}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Clair> If you don't want it, you don't have to take it."}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Clair> So, you've collected all the Badges."}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Clair> Your destination is the Pokémon League in Indigo Plateau. "}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=58,score_TalkTime=58] {"text":"<Clair> Do you know how to get there?"}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=65,score_TalkTime=65] {"text":"<Clair> From here, go to New Bark Town. Then surf east."}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=73,score_TalkTime=73] {"text":"<Clair> The route there is very tough."}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=80,score_TalkTime=80] {"text":"<Clair> Don't you dare lose at the Pokémon League!"}
tellraw @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=87,score_TalkTime=87] {"text":"<Clair> If you do, I'll feel even worse about having lost to you!"}

#tp Clair out
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=96,score_TalkTime=96] ~ ~ ~ tp @e[x=-688,y=73,z=540,dy=3,type=pixelmon:npc_chatting] -703 80 -242
execute @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=!Dialogue79,score_TalkTime_min=96,score_TalkTime=96] ~ ~ ~ particle cloud -688 74 540 1 1 1 1 100

scoreboard players tag @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=96,tag=!Dialogue79] add Dialogue79
scoreboard players set @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,score_TalkTime_min=96,tag=Dialogue79] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=79,score_DialogueTrigger=79,tag=Dialogue79] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elm calling about the Master Ball after leaving Dragons Den
#execute @a[x=-654,y=63,z=325,r=20,tag=!Dialogue81,score_TalkTime=0] ~ ~ ~ execute @s[tag=Clair] ~ ~ ~ scoreboard players set @s[tag=!Dialogue80] DialogueTrigger 80

scoreboard players add @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80] TalkTime 1
execute @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1

tellraw @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=4,score_TalkTime=4] ["",{"text":"<Professor Elm> Hello, "},{"selector":"@p[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=4,score_TalkTime=4]"},{"text":"?"}]
tellraw @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Professor Elm> I have something here for you. Could you swing by my Lab?"}
tellraw @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=!Dialogue80,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Professor Elm> See you later!"}

scoreboard players tag @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,score_TalkTime_min=20,tag=!Dialogue80] add Dialogue80
scoreboard players set @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,score_TalkTime_min=20,tag=Dialogue80] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=80,score_DialogueTrigger=80,tag=Dialogue80] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elm giving the Master Ball
#execute @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,score_TalkTime=0,tag=Clair] ~ ~ ~ scoreboard players set @s[tag=!Dialogue81] DialogueTrigger 81

scoreboard players add @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81] TalkTime 1
execute @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Professor Elm> Hi, "},{"selector":"@p[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"!"}]
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Professor Elm> Thanks to you, my research is going great!"}
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Professor Elm> Take this as a token of my appreciation."}
execute @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ give @s pixelmon:master_ball
#give @s pixelmon:Master_Ball 1 0 {display:{Lore:["The best Ball with the ultimate level","of performance. It will catch any","wild Pokémon without fail."]}}
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Professor Elm> The Master Ball is the best! It's the ultimate Ball!"}
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Professor Elm> It'll catch any Pokémon without fail."}
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=38,score_TalkTime=38] {"text":"<Professor Elm> It's given only to recognized Pokémon researchers."}
tellraw @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=46,score_TalkTime=46] ["",{"text":"<Professor Elm> I think you can make better use of it than I can, "},{"selector":"@p[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=!Dialogue81,score_TalkTime_min=46,score_TalkTime=46]"},{"text":"!"}]

scoreboard players tag @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,score_TalkTime_min=46,tag=!Dialogue81] add Dialogue81
scoreboard players set @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,score_TalkTime_min=46,tag=Dialogue81] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=81,score_DialogueTrigger=81,tag=Dialogue81] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Post-Falkner call from Elm
#execute @a[x=88,y=64,z=-67,r=20,score_TalkTime=0,tag=Falkner] ~ ~ ~ execute @s[tag=!Dialogue13] ~ ~ ~ scoreboard players set @s[tag=!Dialogue82] DialogueTrigger 82

scoreboard players add @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82] TalkTime 1
execute @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1

tellraw @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82,score_TalkTime_min=4,score_TalkTime=4] ["",{"text":"<Professor Elm> Hello, "},{"selector":"@p[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82,score_TalkTime_min=4,score_TalkTime=4]"},{"text":"? We discovered something about the Egg!"}]
tellraw @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=!Dialogue82,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Professor Elm> My assistant is at the Pokémon Center in Violet City. Could you talk to him?"}

scoreboard players tag @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,score_TalkTime_min=13,tag=!Dialogue82] add Dialogue82
scoreboard players set @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,score_TalkTime_min=13,tag=Dialogue82] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=82,score_DialogueTrigger=82,tag=Dialogue82] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Route 27 first steps into Kanto
#scoreboard players set @a[x=-878,y=63,z=-533,dx=14,dy=5,dz=7,score_TalkTime=0,tag=!Dialogue83] DialogueTrigger 83

scoreboard players add @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,tag=!Dialogue83] TalkTime 1
tellraw @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,tag=!Dialogue83,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Hiker> Hey! Do you know what you just did?"}
tellraw @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,tag=!Dialogue83,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Hiker> You've taken your first step into Kanto."}
tellraw @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,tag=!Dialogue83,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Hiker> Check your Town Map and see."}

scoreboard players tag @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,score_TalkTime_min=16,tag=!Dialogue83] add Dialogue83
scoreboard players set @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,score_TalkTime_min=16,tag=Dialogue83] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=83,score_DialogueTrigger=83,tag=Dialogue83] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver Victory Road pre-battle
#scoreboard players set @a[x=-1449,y=51,z=528,r=7,score_TalkTime=0,tag=!Dialogue84] DialogueTrigger 84

#tp Silver in
#execute @a[x=-1449,y=51,z=528,r=25,tag=!Dialogue85,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-768,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] -1449 51 528
#execute @a[x=-1449,y=51,z=528,r=25,tag=!Dialogue85,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-768,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] -1449 51 528
#execute @a[x=-1449,y=51,z=528,r=25,tag=!Dialogue85,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-768,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] -1449 51 528

scoreboard players add @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84] TalkTime 1
tellraw @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Hold it. ...Are you going to take the Pokémon League challenge?"}]
tellraw @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Don't make me laugh. You're so much weaker than I am."}]
tellraw @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=19,score_TalkTime=19] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm not like I was before."}]
tellraw @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=26,score_TalkTime=26] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I now have the best and strongest Pokémon with me."}]
tellraw @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=35,score_TalkTime=35] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm invincible! "},{"selector":"@p[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=35,score_TalkTime=35]"},{"text":"! I challenge you!"}]
execute @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=!Dialogue84,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,score_TalkTime_min=35,tag=!Dialogue84] add Dialogue84
scoreboard players set @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,score_TalkTime_min=35,tag=Dialogue84] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=84,score_DialogueTrigger=84,tag=Dialogue84] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Silver Victory Road post-battle
#scoreboard players set @a[x=-1449,y=51,z=528,r=25,score_TalkTime=0,tag=!Dialogue85] DialogueTrigger 85 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85] TalkTime 1
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...I couldn't win..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I gave it everything I had..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=16,score_TalkTime=16] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> What you possess, and what I lack..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm beginning to understand what that dragon master said to me..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=35,score_TalkTime=35] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...I haven't given up on becoming the greatest trainer..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=44,score_TalkTime=44] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I'm going to find out why I can't win and become stronger..."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=53,score_TalkTime=53] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> When I do, I will challenge you. And I'll beat you down with all my power."}]
tellraw @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=63,score_TalkTime=63] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ...Humph! You keep at it until then."}]

#tp Silver out
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ /particle cloud -1449 51 528 1 1 1 1 100
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ tp @e[x=-1449,y=51,z=528,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -768 93 -242
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ tp @e[x=-1449,y=51,z=528,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -768 89 -242
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ tp @e[x=-1449,y=51,z=528,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -768 85 -242
execute @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=!Dialogue85,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,score_TalkTime_min=70,tag=!Dialogue85] add Dialogue85
scoreboard players set @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,score_TalkTime_min=70,tag=Dialogue85] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=85,score_DialogueTrigger=85,tag=Dialogue85] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Will opening dialogue
#scoreboard players set @a[x=-1288,y=63,z=428,r=20,score_TalkTime=0,tag=!Dialogue86] DialogueTrigger 86
#scoreboard players set @a[x=-1341,y=63,z=428,r=20,score_TalkTime=0,tag=!Dialogue86] DialogueTrigger 86

scoreboard players add @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=!Dialogue86] TalkTime 1
tellraw @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=!Dialogue86,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Will> Welcome to Pokémon League! Allow me to introduce myself."}
tellraw @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=!Dialogue86,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Will> I am Will. I have trained all around the world, making my psychic Pokémon powerful."}
tellraw @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=!Dialogue86,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Will> And, at last, I've been accepted into the Elite Four. I can only keep getting better! "}
tellraw @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=!Dialogue86,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Will> Losing is not an option!"}

scoreboard players tag @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,score_TalkTime_min=35,tag=!Dialogue86] add Dialogue86
scoreboard players set @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,score_TalkTime_min=35,tag=Dialogue86] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=86,score_DialogueTrigger=86,tag=Dialogue86] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Will defeat dialogue
#scoreboard players set @a[x=-1288,y=63,z=428,r=20,score_TalkTime=0,tag=!Dialogue87] DialogueTrigger 87 {Inventory:[{id:"minecraft:netherbrick"}]}
#scoreboard players set @a[x=-1341,y=63,z=428,r=20,score_TalkTime=0,tag=!Dialogue87] DialogueTrigger 87 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,tag=!Dialogue87] TalkTime 1
execute @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,tag=!Dialogue87,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Will> Even though I was defeated, I won't change my course."}
tellraw @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,tag=!Dialogue87,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Will> I will continue battling until I stand above all Trainers!"}
tellraw @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,tag=!Dialogue87,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Will> Now, move on and experience the true ferocity of the Elite Four."}

scoreboard players tag @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,score_TalkTime_min=20,tag=!Dialogue87] add Dialogue87
scoreboard players set @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,score_TalkTime_min=20,tag=Dialogue87] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=87,score_DialogueTrigger=87,tag=Dialogue87] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Koga opening dialogue
#scoreboard players set @a[x=-1288,y=66,z=495,r=20,score_TalkTime=0,tag=!Dialogue88] DialogueTrigger 88
#scoreboard players set @a[x=-1341,y=66,z=495,r=20,score_TalkTime=0,tag=!Dialogue88] DialogueTrigger 88

scoreboard players add @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88] TalkTime 1
tellraw @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Koga> Fwahahahaha! I am Koga of the Elite Four. I live in shadows--a ninja!"}
tellraw @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Koga> My intricate style will confound and destroy you!"}
tellraw @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Koga> Confusion, sleep, poison..."}
tellraw @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Koga> Prepare to be the victim of my sinister techniques! Fwahahahaha!"}
tellraw @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=!Dialogue88,score_TalkTime_min=37,score_TalkTime=37]  {"text":"<Koga> Pokémon are not merely about brute force--you shall see soon enough!"}

scoreboard players tag @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,score_TalkTime_min=37,tag=!Dialogue88] add Dialogue88
scoreboard players set @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,score_TalkTime_min=37,tag=Dialogue88] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=88,score_DialogueTrigger=88,tag=Dialogue88] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Koga defeat dialogue
#scoreboard players set @a[x=-1313,y=0,z=447,dx=50,dy=240,dz=75,score_TalkTime=0,tag=!Dialogue89] DialogueTrigger 89 {Inventory:[{id:"minecraft:netherbrick"}]}
#scoreboard players set @a[x=-1366,y=0,z=447,dx=50,dy=240,dz=75,score_TalkTime=0,tag=!Dialogue89] DialogueTrigger 89 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,tag=!Dialogue89] TalkTime 1
execute @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,tag=!Dialogue89,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Koga> I subjected you to everything I could muster. But my efforts failed."}
tellraw @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,tag=!Dialogue89,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Koga> I must hone my skills. Go on to the next room, and put your abilities to the test!"}

scoreboard players tag @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,score_TalkTime_min=13,tag=!Dialogue89] add Dialogue89
scoreboard players set @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,score_TalkTime_min=13,tag=Dialogue89] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=89,score_DialogueTrigger=89,tag=Dialogue89] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Bruno opening dialogue
#scoreboard players set @a[x=-1288,y=66,z=580,r=20,score_TalkTime=0,tag=!Dialogue90] DialogueTrigger 90
#scoreboard players set @a[x=-1341,y=66,z=580,r=20,score_TalkTime=0,tag=!Dialogue90] DialogueTrigger 90

scoreboard players add @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90] TalkTime 1
tellraw @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Bruno> I am Bruno of the Elite Four."}
tellraw @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Bruno> I always train to the extreme because I believe in our potential."}
tellraw @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Bruno> That is how we became strong. Can you withstand our power?"}
tellraw @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Bruno> Hm? I see no fear in you. You look determined. Perfect for battle! "}
tellraw @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=!Dialogue90,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Bruno> Ready? You will bow down to our overwhelming power! Hoo hah!"}

scoreboard players tag @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,score_TalkTime_min=36,tag=!Dialogue90] add Dialogue90
scoreboard players set @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,score_TalkTime_min=36,tag=Dialogue90] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=90,score_DialogueTrigger=90,tag=Dialogue90] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Bruno defeat dialogue
#scoreboard players set @a[x=-1313,y=0,z=523,dx=50,dy=240,dz=76,score_TalkTime=0,tag=!Dialogue91] DialogueTrigger 91 {Inventory:[{id:"minecraft:netherbrick"}]}
#scoreboard players set @a[x=-1366,y=0,z=523,dx=50,dy=240,dz=76,score_TalkTime=0,tag=!Dialogue91] DialogueTrigger 91 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,tag=!Dialogue91] TalkTime 1
execute @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,tag=!Dialogue91,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Bruno> Having lost, I have no right to say anything… "}
tellraw @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,tag=!Dialogue91,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Bruno> Go face your next challenge!"}

scoreboard players tag @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,score_TalkTime_min=10,tag=!Dialogue91] add Dialogue91
scoreboard players set @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,score_TalkTime_min=10,tag=Dialogue91] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=91,score_DialogueTrigger=91,tag=Dialogue91] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Karen opening dialogue
#scoreboard players set @a[x=-1288,y=69,z=656,r=20,score_TalkTime=0,tag=!Dialogue92] DialogueTrigger 92
#scoreboard players set @a[x=-1341,y=69,z=656,r=20,score_TalkTime=0,tag=!Dialogue92] DialogueTrigger 92

scoreboard players add @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,tag=!Dialogue92] TalkTime 1
tellraw @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,tag=!Dialogue92,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Karen> I am Karen of the Elite Four. I love Dark-type Pokémon."}
tellraw @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,tag=!Dialogue92,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Karen> I'm known for my overpowering tactics. Think you can take them?"}
tellraw @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,tag=!Dialogue92,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Karen> Just try to entertain me. Let's go."}

scoreboard players tag @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,score_TalkTime_min=23,tag=!Dialogue92] add Dialogue92
scoreboard players set @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,score_TalkTime_min=23,tag=Dialogue92] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=92,score_DialogueTrigger=92,tag=Dialogue92] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Karen defeat dialogue
#scoreboard players set @a[x=-1313,y=0,z=600,dx=50,dy=240,dz=75,score_TalkTime=0,tag=!Dialogue93] DialogueTrigger 93 {Inventory:[{id:"minecraft:netherbrick"}]}
#scoreboard players set @a[x=-1366,y=0,z=600,dx=50,dy=240,dz=75,score_TalkTime=0,tag=!Dialogue93] DialogueTrigger 93 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=!Dialogue93] TalkTime 1
execute @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=!Dialogue93,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Karen> Strong Pokémon. Weak Pokémon. That is only the selfish perception of people."}
tellraw @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=!Dialogue93,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Karen> Truly skilled Trainers should try to win with the Pokémon they love best."}
tellraw @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=!Dialogue93,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Karen> I like your style. You understand what's important."}
tellraw @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=!Dialogue93,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Karen> Go on -- the Champion is waiting."}

scoreboard players tag @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,score_TalkTime_min=33,tag=!Dialogue93] add Dialogue93
scoreboard players set @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,score_TalkTime_min=33,tag=Dialogue93] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=93,score_DialogueTrigger=93,tag=Dialogue93] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Lance opening dialogue
#scoreboard players set @a[x=-1288,y=77,z=748,r=10,score_TalkTime=0,tag=!Dialogue94] DialogueTrigger 94
#scoreboard players set @a[x=-1341,y=77,z=748,r=10,score_TalkTime=0,tag=!Dialogue94] DialogueTrigger 94

scoreboard players add @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94] TalkTime 1
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> I’ve been waiting for you."}
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Lance> I knew that you, with your skills, would eventually reach me here."}
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Lance> There’s no need for words now."}
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Lance> We will battle to determine who is the stronger of the two of us."}
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Lance> As the most powerful Trainer and as the Pokémon League Champion…"}
tellraw @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=!Dialogue94,score_TalkTime_min=45,score_TalkTime=45] {"text":"<Lance> I, Lance the dragon master, accept your challenge!"}

scoreboard players tag @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=45,tag=!Dialogue94] add Dialogue94
scoreboard players set @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,score_TalkTime_min=45,tag=Dialogue94] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=94,score_DialogueTrigger=94,tag=Dialogue94] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elite Four Lance losing dialogue
#scoreboard players set @a[x=-1313,y=0,z=676,dx=50,dy=240,dz=74,score_TalkTime=0,tag=!Dialogue95] DialogueTrigger 95 {Inventory:[{id:"minecraft:netherbrick"}]}
#scoreboard players set @a[x=-1366,y=0,z=676,dx=50,dy=240,dz=74,score_TalkTime=0,tag=!Dialogue95] DialogueTrigger 95 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=!Dialogue95] TalkTime 1
execute @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=!Dialogue95,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> …Whew. You have become truly powerful."}
tellraw @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=!Dialogue95,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Lance> Your Pokémon have responded to your strong and upstanding nature."}
tellraw @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=!Dialogue95,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Lance> As a Trainer, you will continue to grow strong with your Pokémon."}
tellraw @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=!Dialogue95,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Lance> You have earned it. Walk through the door behind me to the Hall of Fame."}

scoreboard players tag @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,score_TalkTime_min=30,tag=!Dialogue95] add Dialogue95
scoreboard players set @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,score_TalkTime_min=30,tag=Dialogue95] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=95,score_DialogueTrigger=95,tag=Dialogue95] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame Lance opening dialogue
#scoreboard players set @a[x=-1300,y=77,z=751,dx=24,dy=10,dz=33,tag=!Dialogue96] DialogueTrigger 96

scoreboard players add @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96] TalkTime 1
execute @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> This is where we honor the League Champions for all eternity."}
tellraw @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Lance> Their courageous Pokémon are also inducted."}
tellraw @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Lance> Do you want to register you and your partners in the Hall of Fame?"}
tellraw @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 43"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 44"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=!Dialogue96,score_TalkTime_min=17,score_TalkTime=18] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,score_TalkTime_min=18,tag=!Dialogue96] add Dialogue96
scoreboard players set @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,score_TalkTime_min=18,tag=Dialogue96] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=96,score_DialogueTrigger=96,tag=Dialogue96] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame yes, generate statues & open space
#Dialogue97

scoreboard players add @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,tag=!Dialogue97] TalkTime 1
tellraw @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,tag=!Dialogue97,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lance> Excellent! To generate a statue of your Pokémon, simply throw them out of their Poke Ball!"}
tellraw @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,tag=!Dialogue97,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Lance> If your team is less than six, press the button near the healer when you are done!"}

scoreboard players tag @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,score_TalkTime_min=12,tag=!Dialogue97] add Dialogue97
scoreboard players set @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,score_TalkTime_min=12,tag=Dialogue97] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=97,score_DialogueTrigger=97,tag=Dialogue97] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hall of Fame Credits
#Dialogue98

scoreboard players add @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98] TalkTime 1
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s IP 1
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ advancement grant @s only johto:champion

tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=5,score_TalkTime=5] {"text":"Congratulations, you have completed the Indigo League!"}
tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=15,score_TalkTime=15] {"text":"You can now access the Kanto region!"}
tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=23,score_TalkTime=23] {"text":"Map Creator: Jond."}
tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=28,score_TalkTime=28] {"text":"Builders: Jond, MystcraftMC, PixelmonChampion, 123abc, Giggs_, gmng24, Mackwiggs."}
tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=38,score_TalkTime=38] {"text":"Map is based off of: Pokémon Crystal, Heartgold, Soulsilver and a splash of Let's Go."}
tellraw @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=48,score_TalkTime=48] ["",{"text":"Check out my other projects if you are interested!\nPixelmon Kalos: "},{"text":"curseforge.com/minecraft/worlds/pixelmon-kalos","color":"aqua","clickEvent":{"action":"run_command","value":"https://www.curseforge.com/minecraft/worlds/pixelmon-kalos"}}]

#tps out statues if generated
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1294,y=82,z=785,dy=2,type=pixelmon:statue] -868 65 -229
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1292,y=82,z=785,dy=2,type=pixelmon:statue] -866 65 -229
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1290,y=82,z=785,dy=2,type=pixelmon:statue] -864 65 -229
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1286,y=82,z=785,dy=2,type=pixelmon:statue] -862 65 -229
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1284,y=82,z=785,dy=2,type=pixelmon:statue] -860 65 -229
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=56,score_TalkTime=57] ~ ~ ~ execute @s[tag=Dialogue97] ~ ~ ~ tp @e[x=-1282,y=82,z=785,dy=2,type=pixelmon:statue] -858 65 -229

#tp to New Bark Town if no statues spawned
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ tp @s[tag=!Dialogue97] -721 69 -493

#tps player to Hall of Fame first if they spawned a statue (tps as close to the statues as you can)
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=0,score_HOFCount=0] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1019 65 -336 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=1,score_HOFCount=1] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1019 65 -324 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=2,score_HOFCount=2] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1019 65 -312 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=3,score_HOFCount=3] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1019 65 -300 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=4,score_HOFCount=4] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1019 65 -288 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=5,score_HOFCount=5] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1041 65 -336 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=6,score_HOFCount=6] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1041 65 -324 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=7,score_HOFCount=7] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1041 65 -312 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=8,score_HOFCount=8] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1041 65 -300 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=9,score_HOFCount=9] ~ ~ ~ /tp @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue97] -1041 65 -288 0 20
execute @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=!Dialogue98,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ scoreboard players set @s[tag=Dialogue97] DialogueTrigger 99

scoreboard players tag @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,score_TalkTime_min=59,tag=!Dialogue98] add Dialogue98
scoreboard players set @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,score_TalkTime_min=59,tag=Dialogue98] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=98,score_DialogueTrigger=98,tag=Dialogue98] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Continued if player places statues from Dialogue98
#Dialouge99

scoreboard players add @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99] TalkTime 1

#tps Statues in
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=0,score_HOFCount=0] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-156 ~1 ~-102
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=1,score_HOFCount=1] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-156 ~1 ~-90
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=2,score_HOFCount=2] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-156 ~1 ~-78
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=3,score_HOFCount=3] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-156 ~1 ~-66
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=4,score_HOFCount=4] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-156 ~1 ~-54
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=5,score_HOFCount=5] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-178 ~1 ~-102
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=6,score_HOFCount=6] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-178 ~1 ~-90
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=7,score_HOFCount=7] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-178 ~1 ~-78
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=8,score_HOFCount=8] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-178 ~1 ~-66
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=60,score_TalkTime=65] ~ ~ ~ execute @e[x=-803,y=64,z=-284,dy=3,type=armor_stand,score_HOFCount_min=9,score_HOFCount=9] ~ ~ ~ tp @e[x=-869,y=64,z=-231,dx=13,dy=2,dz=4] ~-178 ~1 ~-54
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=66,score_TalkTime=66] ~ ~ ~ scoreboard players add @e[x=-803,y=64,z=-284,dy=3,type=armor_stand] HOFCount 1
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=66,score_TalkTime=66] ~ ~ ~ scoreboard players set @e[x=-803,y=64,z=-284,dy=3,type=armor_stand] SpawnStatue 0

tellraw @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=66,score_TalkTime=66] ["",{"text":"Placing complete! Take a look at them at the Indigo Plateau!","color":"white","italic":true}]
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=67,score_TalkTime=67] ~ ~ ~ scoreboard players tag @s remove Dialogue97
execute @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=!Dialogue99,score_TalkTime_min=67,score_TalkTime=67] ~ ~ ~ tp @s -721 69 -493

scoreboard players tag @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,score_TalkTime_min=67,tag=!Dialogue99] add Dialogue99
scoreboard players set @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,score_TalkTime_min=67,tag=Dialogue99] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=99,score_DialogueTrigger=99,tag=Dialogue99] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Elm call after the Pokémon League
#scoreboard players set @a[x=-723,y=68,z=-492,r=20,score_IP_min=1,tag=!Dialogue100] DialogueTrigger 100

scoreboard players add @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100] TalkTime 1
execute @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ /playsound minecraft:block.note.bell ambient @s ~ ~ ~ 10 1 1

tellraw @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100,score_TalkTime_min=4,score_TalkTime=4] ["",{"text":"<Professor Elm> Hello, "},{"selector":"@p[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100,score_TalkTime_min=4,score_TalkTime=4]"},{"text":"? I have something here for you."}]
tellraw @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=!Dialogue100,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Professor Elm> Could you swing by my Lab? See you later!"}

scoreboard players tag @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,score_TalkTime_min=13,tag=!Dialogue100] add Dialogue100
scoreboard players set @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,score_TalkTime_min=13,tag=Dialogue100] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=100,score_DialogueTrigger=100,tag=Dialogue100] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Elm after the Elite Four, giving SS Ticket
#execute @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,score_DialogueTrigger=0,tag=Dialogue81] ~ ~ ~ scoreboard players set @s[tag=!Dialogue101] DialogueTrigger 101

scoreboard players add @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101] TalkTime 1
execute @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Professor Elm> "},{"selector":"@p[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! There you are!"}]
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Professor Elm> I called because I have something for you."}
execute @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ give @s minecraft:record_chirp 1 0 {display:{Name:"S.S. Ticket",Lore:["The ticket required for sailing on","the ferry S.S. Aqua in Olivine and","Vermilion City. It has a drawing","of a ship in it."]},HideFlags:36}
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Professor Elm> See? It's an S.S. Ticket. Now you can catch Pokémon in Kanto."}
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=26,score_TalkTime=26] ["",{"text":"<Professor Elm> The ship departs from Olivine City. But you knew that already, "},{"selector":"@p[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=26,score_TalkTime=26]"},{"text":"."}]
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Professor Elm> After all, you've traveled all over with your Pokémon."}
tellraw @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=!Dialogue101,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Professor Elm> Give my regards to Professor Oak in Kanto!"}

scoreboard players tag @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,score_TalkTime_min=47,tag=!Dialogue101] add Dialogue101
scoreboard players set @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,score_TalkTime_min=47,tag=Dialogue101] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=101,score_DialogueTrigger=101,tag=Dialogue101] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mr Pokémon giving an orb after the Elite Four
#execute @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,score_DialogueTrigger=0,score_IP_min=1] ~ ~ ~ scoreboard players set @s[tag=!Dialogue102] DialogueTrigger 102

scoreboard players add @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102] TalkTime 1
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Mr. Pokémon> Hi, "},{"selector":"@p[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! I have something I want you to have and was just about to send an email to Professor Oak."}]
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Mr. Pokémon> The thing is..."}
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Mr. Pokémon> A friend of mine from Hoenn came over to give this to me."}

#Rolls for which orb player gets
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng

execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=23,score_TalkTime=23,score_rng_min=0,score_rng=63] ~ ~ ~ give @s minecraft:iron_horse_armor 1 0 {display:{Lore:["A shiny blue orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]}}
execute @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=23,score_TalkTime=23,score_rng_min=64,score_rng=127] ~ ~ ~ give @s minecraft:golden_horse_armor 1 0 {display:{Lore:["A shiny red orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]}}

tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Mr. Pokémon> That Orb has something to do with the ancient ruins located past Cianwood City, called the Embedded Tower."}
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Mr. Pokémon> But only a handful of Trainers can reach there... That's where you come in."}
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Mr. Pokémon> Professor Oak thinks highly of you, and you are the proud Champion after all."}
tellraw @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=!Dialogue102,score_TalkTime_min=57,score_TalkTime=57] {"text":"<Mr. Pokémon> I'm sure you can solve the mystery of the Orb and the secret of the ruins."}

scoreboard players tag @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,score_TalkTime_min=57,tag=!Dialogue102] add Dialogue102
scoreboard players set @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,score_TalkTime_min=57,tag=Dialogue102] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=102,score_DialogueTrigger=102,tag=Dialogue102] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Whirl Islands Lugia Spawn
#scoreboard players set @a[x=1242,y=30,z=209,dx=14,dy=10,dz=8,score_LugiaCD=0,tag=!Dialogue103] DialogueTrigger 103 {Inventory:[{id:"minecraft:prismarine_shard"}]}

scoreboard players add @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103] TalkTime 1
execute @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103] ~ ~ ~ clear @s minecraft:prismarine_shard 0 1

execute @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound lugiaspawn record @s ~ ~ ~ 1000 1 1
tellraw @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103,score_TalkTime_min=1,score_TalkTime=1] {"text":"Your Silver Wing grew brighter!"}

execute @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ execute @e[x=1250,y=30,z=229,r=2,type=armor_stand,c=1] ~ ~ ~ /pokespawn Lugia lvl:45 gr:7
execute @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=!Dialogue103,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ playsound lugia record @s ~ ~ ~ 1000 1 1

scoreboard players tag @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,score_TalkTime_min=16,tag=!Dialogue103] add Dialogue103
scoreboard players set @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,score_TalkTime_min=16,tag=Dialogue103] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=103,score_DialogueTrigger=103,tag=Dialogue103] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Tin Tower Ho-Oh Spawn
#scoreboard players set @a[x=251,y=154,z=308,dx=11,dy=5,dz=11,score_HoohCD=0,tag=!Dialogue104] DialogueTrigger 104 {Inventory:[{id:"minecraft:prismarine_crystals"}]}

scoreboard players add @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104] TalkTime 1
execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104] ~ ~ ~ clear @s minecraft:prismarine_crystals 0 1

execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound block.portal.trigger ambient @s ~ ~ ~ 1 1 1
tellraw @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=1,score_TalkTime=1] {"text":"Your Rainbow Wing grew brighter!"}

#Enables Particles:
#/particle reddust 251 154 308 10 10 10 1 100
execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -861 64 -307 minecraft:redstone_block

execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ execute @e[x=253,y=157,z=317,r=2,type=armor_stand] ~ ~ ~ /pokespawn Ho-Oh lvl:45 gr:7
execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ playsound hooh hostile @s ~ ~ ~ 1000 1 1
execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ scoreboard players set @s click 1

#Disables Particles
execute @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=!Dialogue104,score_TalkTime_min=12,score_TalkTime=13] ~ ~ ~ setblock -861 64 -307 minecraft:iron_block


scoreboard players tag @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=13,tag=!Dialogue104] add Dialogue104
scoreboard players set @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,score_TalkTime_min=13,tag=Dialogue104] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=104,score_DialogueTrigger=104,tag=Dialogue104] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Whirl Islands Friday Lapras
#execute @a[x=1229,y=108,z=184,r=10,tag=!Dialogue105] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ scoreboard players set @a[x=1229,y=108,z=184,r=10,tag=!Dialogue105] DialogueTrigger 105

#tps Lapras in
#execute @a[x=1229,y=108,z=184,r=30,tag=!Dialogue105] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ tp @e[x=-785,y=78,z=-244,dy=3,type=pixelmon:statue] 1229 108.5 184

#tps Statue out if it's not Friday
#execute @a[x=1229,y=108,z=184,r=30,tag=!Dialogue105] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=4] ~ ~ ~ tp @e[x=1229,y=108,z=184,r=5,type=pixelmon:statue] -785 79 -244
#execute @a[x=1229,y=108,z=184,r=30,tag=!Dialogue105] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=1229,y=108,z=184,r=5,type=pixelmon:statue] -785 79 -244


scoreboard players add @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=!Dialogue105] TalkTime 1

execute @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=!Dialogue105,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 1229 107.5 184 1 1 1 1 100
execute @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=!Dialogue105,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @e[x=1229,y=108,z=184,r=5,type=pixelmon:statue] ~ ~ ~ /pokespawn Lapras lvl:25
execute @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=!Dialogue105,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=1229,y=108,z=184,r=5,type=pixelmon:statue] -785 79 -244
execute @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=!Dialogue105,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound lapras ambient @s ~ ~ ~ 1000 1 1

scoreboard players tag @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,score_TalkTime_min=2,tag=!Dialogue105] add Dialogue105
scoreboard players set @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,score_TalkTime_min=2,tag=Dialogue105] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=105,score_DialogueTrigger=105,tag=Dialogue105] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Obtaining the GS ball from Goldenrod City Poke Center
#scoreboard players set @a[x=498,y=64,z=-414,r=5,score_TalkTime=0,score_IP_min=1,tag=!Dialogue106] DialogueTrigger 106

scoreboard players add @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106] TalkTime 1
tellraw @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Nurse Joy> "},{"selector":"@p[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=1,score_TalkTime=1]"},{"text":", isn't it?"}]
tellraw @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Nurse Joy> Congratulations!"}
tellraw @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Nurse Joy> As a special deal, a GS Ball has been sent just for you!"}
tellraw @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Nurse Joy> Please accept it!"}
execute @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:gs_ball 1 0 {display:{Lore:["A mysterious Ball.","It seems to have some","connection to Ilex Forest."]}}
tellraw @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=!Dialogue106,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Nurse Joy> Please do come again!"}

scoreboard players tag @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,score_TalkTime_min=29,tag=!Dialogue106] add Dialogue106
scoreboard players set @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,score_TalkTime_min=29,tag=Dialogue106] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=106,score_DialogueTrigger=106,tag=Dialogue106] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Kurt inspecting the GS Ball
#scoreboard players set @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,tag=!Dialogue107] DialogueTrigger 107 {Inventory:[{id:"pixelmon:gs_ball"}]}

scoreboard players add @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,tag=!Dialogue107] TalkTime 1
execute @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107] ~ ~ ~ clear @s pixelmon:gs_ball 0 1
tellraw @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,tag=!Dialogue107,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Kurt> Wh-what is that? I've never seen one before."}
tellraw @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,tag=!Dialogue107,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Kurt> It looks a lot like a Poke Ball, but it appears to be something else."}
tellraw @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,tag=!Dialogue107,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Kurt> Let me check it for you. "}

scoreboard players tag @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,score_TalkTime_min=21,tag=!Dialogue107] add Dialogue107
scoreboard players set @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,score_TalkTime_min=21,tag=Dialogue107] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=107,score_DialogueTrigger=107,tag=Dialogue107] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Kurt after he's inspected the ball for a day (or until the daily commands run)
#execute @a[x=354,y=63,z=-704,dx=19,dy=5,dz=8,score_TalkTime=0,tag=Dialogue107] ~ ~ ~ execute @s[tag=GSBallReady] ~ ~ ~ scoreboard players set @s[tag=!Dialogue108] DialogueTrigger 108
#scoreboard players tag @a[tag=Dialogue107] add GSBallReady

scoreboard players add @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108] TalkTime 1
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Kurt> "},{"selector":"@p[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"!"}]
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=6,score_TalkTime=6] {"text":"<Kurt> This Ball started to shake while I was checking it."}
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Kurt> There must be something to this! "}
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Kurt> ...???"}
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Kurt> Ilex Forest is restless!"}
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Kurt> What is going on? ..."}
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=42,score_TalkTime=42] ["",{"text":"<Kurt> "},{"selector":"@p[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=42,score_TalkTime=42]"},{"text":", here's your GS Ball back!"}]
tellraw @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Kurt> Could you go see why Ilex Forest is so restless? "}

execute @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ give @s pixelmon:gs_ball 1 0 {display:{Lore:["A mysterious Ball.","It seems to have some","connection to Ilex Forest."]}}

#Enables particles in the Ilex Forest
execute @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=!Dialogue108,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ /setblock -861 64 -305 minecraft:redstone_block
#execute @a[x=617,y=66,z=-696,r=20,tag=Dialogue108,c=1] ~ ~ ~ particle reddust 617 66 -696.5 -1 1 0 1

scoreboard players tag @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,score_TalkTime_min=54,tag=!Dialogue108] add Dialogue108
scoreboard players set @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,score_TalkTime_min=54,tag=Dialogue108] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=108,score_DialogueTrigger=108,tag=Dialogue108] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ilex Forest Shrine when player can throw the GS ball into it
#execute @a[x=617,y=65,z=-696,r=10,score_TalkTime=0,tag=Dialogue108] ~ ~ ~ scoreboard players set @s[tag=!Dialogue109] DialogueTrigger 109

scoreboard players add @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=!Dialogue109] TalkTime 1
tellraw @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=!Dialogue109,score_TalkTime_min=1,score_TalkTime=1] {"text":"Ilex Forest Shrine.","italic":true}
tellraw @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=!Dialogue109,score_TalkTime_min=8,score_TalkTime=8] {"text":"It's in honor of the forest's protector.","italic":true}
tellraw @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=!Dialogue109,score_TalkTime_min=16,score_TalkTime=16] {"text":"Oh? What is this? It's a hole.","italic":true}
tellraw @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=!Dialogue109,score_TalkTime_min=24,score_TalkTime=24] {"text":"It looks like the GS Ball would fit inside it.","italic":true}

scoreboard players tag @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,score_TalkTime_min=24,tag=!Dialogue109] add Dialogue109
scoreboard players set @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,score_TalkTime_min=24,tag=Dialogue109] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=109,score_DialogueTrigger=109,tag=Dialogue109] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Summons Celebi
#execute @e[x=617,y=65,z=-697,dy=1,dz=2,type=item] ~ ~ ~ execute @p[tag=Dialogue109] ~ ~ ~ scoreboard players tag @e[x=617,y=65,z=-697,dy=1,dz=2] add GSBall {Item:{id:"pixelmon:gs_ball"}}
#execute @e[x=617,y=65,z=-697,dy=1,dz=2,tag=GSBall] ~ ~ ~ execute @p[tag=Dialogue109] ~ ~ ~ scoreboard players set @e[x=-803,y=64,z=-287,dy=3,type=armor_stand] DialogueTrigger 110
#tp @e[x=617,y=65,z=-697,dy=1,dz=2,type=item,tag=!GSBall] ~ ~ ~-3

scoreboard players add @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110] TalkTime 1
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @a[x=617,y=65,z=-696,r=30] {"text":"The shrine reacted with the GS Ball!"}
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ kill @e[x=617,y=65,z=-697,dy=1,dz=2,type=item]
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound block.portal.trigger ambient @a[x=617,y=65,z=-696,r=30] ~ ~ ~ 1000 1 1

execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ execute @e[x=617,y=63,z=-699,dy=3,type=armor_stand,c=1] ~ ~ ~ pokespawn celebi lvl:30
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ playsound celebi record @a[x=617,y=65,z=-696,r=30] ~ ~ ~ 1000 1 1
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ particle cloud 617 65 -697 1 1 1 1 100
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ tellraw @a[x=617,y=65,z=-696,r=30] {"text":"A Celebi has spawned in the Ilex Forest!"}

#Disables particles in the Ilex Forest
execute @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=!Dialogue110,score_TalkTime_min=9,score_TalkTime=10] ~ ~ ~ setblock -861 64 -305 minecraft:iron_block

scoreboard players tag @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,score_TalkTime_min=10,tag=!Dialogue110] add Dialogue110
scoreboard players set @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,score_TalkTime_min=10,tag=Dialogue110] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=110,score_DialogueTrigger=110,tag=Dialogue110] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Brock Pre-battle
#scoreboard players set @a[x=-955,y=64,z=687,r=20,score_TalkTime=0,tag=!Dialogue111] DialogueTrigger 111

scoreboard players add @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,tag=!Dialogue111] TalkTime 1
tellraw @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,tag=!Dialogue111,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Brock> Wow, it's not often that we get a challenger from Johto. I'm Brock, the Pewter Gym Leader."}
tellraw @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,tag=!Dialogue111,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Brock> I'm an expert on Rock-type Pokémon. My Pokémon are impervious to most physical attacks."}
tellraw @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,tag=!Dialogue111,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Brock> You'll have a hard time inflicting any damage. Come on!"}

scoreboard players tag @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,score_TalkTime_min=26,tag=!Dialogue111] add Dialogue111
scoreboard players set @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,score_TalkTime_min=26,tag=Dialogue111] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=111,score_DialogueTrigger=111,tag=Dialogue111] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Brock post-battle
#scoreboard players set @a[x=-979,y=0,z=636,dx=47,dy=240,dz=66,score_TalkTime=0,tag=!Dialogue112] DialogueTrigger 112 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112] TalkTime 1
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Brock> Your Pokémon's powerful attacks overcame my rock-hard defense..."}
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Brock> You're stronger than I expected... "}
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Brock> Go ahead--take this Badge."}

#give badge
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Brock
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:boulder_badge 1
execute @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=29,score_TalkTime=29] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Brock> I enjoyed battling you, even though I am a bit upset.
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=38,score_TalkTime=38] {"text":"<Brock> That BoulderBadge will make your Pokémon even more powerful."}
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Brock> The world is huge. There are still many strong trainers like you."}
tellraw @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=!Dialogue112,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Brock> Just wait and see. I'm going to become a lot stronger too."}


scoreboard players tag @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,score_TalkTime_min=56,tag=!Dialogue112] add Dialogue112
scoreboard players set @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,score_TalkTime_min=56,tag=Dialogue112] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=112,score_DialogueTrigger=112,tag=Dialogue112] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Misty near Bill's House
#execute @a[x=-3060,y=64,z=956,r=5,tag=Dialogue221] ~ ~ ~ scoreboard players set @s[tag=!Dialogue113] DialogueTrigger 113

#tp Misty and Co in separately
#execute @a[x=-3060,y=64,z=956,r=50,tag=!Dialogue113] ~ ~ ~ execute @s[tag=Dialogue221] ~ ~ ~ tp @e[x=-815,y=84,z=-240,dy=3,type=pixelmon:npc_chatting] -3060 64 956

scoreboard players add @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113] TalkTime 1
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Misty> Aww! Why did you have to show up and bug us now?"}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Misty> Do you know what they call people like you?"}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Misty> Pests! You heard me right, pest! ..."}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Misty> ...Oh! Those Badges you have... Are they Johto Gym Badges?"}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Misty> If you have eight, you must be good."}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=38,score_TalkTime=38] {"text":"<Misty> OK, then. Come to Cerulean Gym."}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=45,score_TalkTime=45] {"text":"<Misty> I'll be happy to take you on."}
tellraw @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Misty> I'm Misty, the Gym Leader in Cerulean. I will meet you there."}

#tp Misty Out
execute @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ particle cloud -3060 64 956 1 1 1 1 100
execute @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=!Dialogue113,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ tp @e[x=-3060,y=63,z=956,dy=3,type=pixelmon:npc_chatting] -815 85 -240

scoreboard players tag @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,score_TalkTime_min=60,tag=!Dialogue113] add Dialogue113
scoreboard players set @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,score_TalkTime_min=60,tag=Dialogue113] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=113,score_DialogueTrigger=113,tag=Dialogue113] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Misty pre-battle
#scoreboard players set @a[x=-1015,y=64,z=681,dx=22,dy=5,dz=9,score_TalkTime=0,tag=!Dialogue114] DialogueTrigger 114

scoreboard players add @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,tag=!Dialogue114] TalkTime 1
tellraw @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,tag=!Dialogue114,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Misty> I was expecting you, you pest!"}
tellraw @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,tag=!Dialogue114,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Misty> You may have a lot of Johto Gym Badges, but you'd better not take me too lightly."}
tellraw @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,tag=!Dialogue114,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Misty> My Water-type Pokémon are tough!"}

scoreboard players tag @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,score_TalkTime_min=20,tag=!Dialogue114] add Dialogue114
scoreboard players set @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,score_TalkTime_min=20,tag=Dialogue114] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=114,score_DialogueTrigger=114,tag=Dialogue114] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Misty post-battle
#scoreboard players set @a[x=-1026,y=0,z=636,dx=44,dy=240,dz=65,score_TalkTime=0,tag=!Dialogue115] DialogueTrigger 115 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115] TalkTime 1
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Misty> You really are good... I'll admit that you are skilled... "}
tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Misty> Here you go. It's the Cascade Badge."}

#give badge
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Misty
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ give @s pixelmon:cascade_badge 1
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ scoreboard players set @s click 1


tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Misty> Here is another memento from this battle. Take it!"}
execute @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:3}
tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Misty> It contains the move Water Pulse. It can sometimes confuse your foe."}
tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=43,score_TalkTime=43] {"text":"<Misty> You've managed to defeat Trainers all the way from Johto."}
tellraw @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=!Dialogue115,score_TalkTime_min=51,score_TalkTime=51] {"text":"<Misty> I'm sure you have a good use for it."}

scoreboard players tag @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,score_TalkTime_min=51,tag=!Dialogue115] add Dialogue115
scoreboard players set @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,score_TalkTime_min=51,tag=Dialogue115] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=115,score_DialogueTrigger=115,tag=Dialogue115] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Surge pre-battle
#scoreboard players set @a[x=-1051,y=63,z=705,r=20,score_TalkTime=0,tag=!Dialogue116] DialogueTrigger 116

scoreboard players add @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=!Dialogue116] TalkTime 1
tellraw @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=!Dialogue116,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Surge> Hey, you little tyke! It may not be very smart to challenge me, but it takes guts!"}
tellraw @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=!Dialogue116,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Surge> When it comes to Electric-type Pokémon, I'm number one! "}
tellraw @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=!Dialogue116,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Surge> I've never lost on the battlefield. "}
tellraw @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=!Dialogue116,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Surge> I'll zap you just like I do all my enemies in battle!"}

scoreboard players tag @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=30,tag=!Dialogue116] add Dialogue116
scoreboard players set @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,score_TalkTime_min=30,tag=Dialogue116] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=116,score_DialogueTrigger=116,tag=Dialogue116] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Surge post-battle
#scoreboard players set @a[x=-1072,y=0,z=636,dx=44,dy=240,dz=80,score_TalkTime=0,tag=!Dialogue117] DialogueTrigger 117 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117] TalkTime 1
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Surge> Aaargh! You are strong! OK, kid. You get the Thunder Badge!"}
tellraw @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Surge> That Thunder Badge suits those who've defeated me! Take good care of it, OK?"}

#give badge
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Surge
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ give @s pixelmon:thunder_badge 1
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ scoreboard players set @s click 1


tellraw @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Surge> There is something else. Here is a great TM for you!"}
execute @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:34}
tellraw @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Surge> That TM contains Shock Wave... Zzzap! Use it to go like lightning!"}
tellraw @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=!Dialogue117,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Surge> When you go north, you will see a big city called Saffron!"}

scoreboard players tag @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=44,tag=!Dialogue117] add Dialogue117
scoreboard players set @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,score_TalkTime_min=44,tag=Dialogue117] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=117,score_DialogueTrigger=117,tag=Dialogue117] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Erika pre-battle
#scoreboard players set @a[x=-1098,y=63,z=698,r=10,score_TalkTime=0,tag=!Dialogue118] DialogueTrigger 118

scoreboard players add @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118] TalkTime 1
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Erika> Hello... Lovely weather, isn't it? It's so pleasant..."}
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Erika> I'm afraid I might doze off..."}
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Erika> My name is Erika. I am the Leader of Celadon Gym."}
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Erika> ...Oh? You are from Johto, you say? How nice..."}
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Erika> Oh. I'm sorry, I didn't realize that you wished to challenge me. I know."}
tellraw @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=!Dialogue118,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Erika> I have been training myself on not only flower arrangement but also Pokémon battle. I shall not lose."}

scoreboard players tag @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,score_TalkTime_min=44,tag=!Dialogue118] add Dialogue118
scoreboard players set @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,score_TalkTime_min=44,tag=Dialogue118] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=118,score_DialogueTrigger=118,tag=Dialogue118] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Erika post-battle
#scoreboard players set @a[x=-1121,y=0,z=636,dx=46,dy=240,dz=80,score_TalkTime=0,tag=!Dialogue119] DialogueTrigger 119 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119] TalkTime 1
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Erika> Oh! I concede defeat... You are remarkably strong..."}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Erika> I shall give you the Rainbow Badge..."}

#give badge
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Erika
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ give @s pixelmon:rainbow_badge 1
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Erika> That was a delightful match. I felt inspired."}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Erika> Please, I wish you to have this TM134 as a special token."}
execute @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=34,score_TalkTime=34] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:19}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Erika> It is Giga Drain. It is a wonderful move that drains half the damage it inflicts to heal your Pokémon."}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Erika> It is indeed a horrifying move."}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=59,score_TalkTime=59] {"text":"<Erika> Losing leaves a bitter aftertaste..."}
tellraw @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=!Dialogue119,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Erika> But knowing that there are strong Trainers spurs me to do better..."}

scoreboard players tag @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,score_TalkTime_min=66,tag=!Dialogue119] add Dialogue119
scoreboard players set @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,score_TalkTime_min=66,tag=Dialogue119] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=119,score_DialogueTrigger=119,tag=Dialogue119] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Janine pre-battle
#scoreboard players set @a[x=-1150,y=63,z=672,dx=15,dy=5,dz=6,score_TalkTime=0,tag=!Dialogue120] DialogueTrigger 120

scoreboard players add @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,tag=!Dialogue120] TalkTime 1
tellraw @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,tag=!Dialogue120,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> Fufufufu... I'm sorry to disappoint you..."}
tellraw @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,tag=!Dialogue120,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Janine> I'm only joking! I'm the real deal!"}
tellraw @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,tag=!Dialogue120,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Janine> Janine of Fuchsia Gym, that's me!"}

scoreboard players tag @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,score_TalkTime_min=16,tag=!Dialogue120] add Dialogue120
scoreboard players set @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,score_TalkTime_min=16,tag=Dialogue120] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=120,score_DialogueTrigger=120,tag=Dialogue120] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Janine post-battle
#scoreboard players set @a[x=-1172,y=0,z=636,dx=50,dy=240,dz=80,score_TalkTime=0,tag=!Dialogue121] DialogueTrigger 121 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121] TalkTime 1
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Janine> I see... You have defeated Koga, my father and a member of the Elite Four, to come here."}
tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Janine> No wonder you are strong! You’ve definitely won... Here's the Soul Badge."}

#give badge
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Janine
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ give @s pixelmon:soul_badge 1
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Janine> You're so tough! I have a special gift!"}
execute @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:84}

tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Janine> It's Poison Jab, a powerful Poison-type move that may poison its victim."}
tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Janine> I'm going to really apply myself and improve my skills."}
tellraw @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=!Dialogue121,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Janine> I want to become much better than both my father and you!"}


scoreboard players tag @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,score_TalkTime_min=52,tag=!Dialogue121] add Dialogue121
scoreboard players set @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,score_TalkTime_min=52,tag=Dialogue121] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=121,score_DialogueTrigger=121,tag=Dialogue121] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sabrina pre-battle
#scoreboard players set @a[x=-978,y=64,z=758,dx=19,dy=5,dz=15,score_TalkTime=0,tag=!Dialogue122] DialogueTrigger 122

scoreboard players add @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122] TalkTime 1
tellraw @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Sabrina> I knew you were coming..."}
tellraw @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Sabrina> Three years ago I had a vision of your arrival."}
tellraw @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Sabrina> You’re after my Badge."}
tellraw @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Sabrina> I don’t enjoy battling, but it’s my duty as a Gym Leader to confer Badges on anyone who has proven him- or herself worthy."}
tellraw @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=!Dialogue122,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Sabrina> Since you wish it, I will show you my psychic powers!"}

scoreboard players tag @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,score_TalkTime_min=36,tag=!Dialogue122] add Dialogue122
scoreboard players set @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,score_TalkTime_min=36,tag=Dialogue122] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=122,score_DialogueTrigger=122,tag=Dialogue122] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sabrina post-battle
#scoreboard players set @a[x=-1006,y=0,z=732,dx=75,dy=240,dz=68,score_TalkTime=0,tag=!Dialogue123] DialogueTrigger 123 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123] TalkTime 1
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Sabrina> Your power... It far exceeds what I foresaw..."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Sabrina> Maybe it isn’t possible to fully predict what the future holds..."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Sabrina> OK, you win. You earned yourself the Marsh Badge."}

#give badge
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Sabrina
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ give @s pixelmon:marsh_badge 1
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Sabrina> I failed to accurately predict your power."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Sabrina> That means that your power is beyond my psychic ability."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=48,score_TalkTime=48] {"text":"<Sabrina> You deserve this. Please take this TM, too! It contains Skill Swap!"}
execute @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=51,score_TalkTime=51] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:48}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Sabrina> It swaps Abilities between the user and the target."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Sabrina> You will become a celebrated and beloved Champion!"}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=73,score_TalkTime=73] {"text":"<Sabrina> Your love for your Pokémon smashed my psychic abilities..."}
tellraw @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=!Dialogue123,score_TalkTime_min=81,score_TalkTime=81] {"text":"<Sabrina> The ability to love, I think, is some kind of psychic ability..."}

scoreboard players tag @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,score_TalkTime_min=81,tag=!Dialogue123] add Dialogue123
scoreboard players set @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,score_TalkTime_min=81,tag=Dialogue123] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=123,score_DialogueTrigger=123,tag=Dialogue123] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blaine pre-battle
#scoreboard players set @a[x=-1042,y=63,z=771,dx=20,dy=5,dz=18,score_TalkTime=0,tag=!Dialogue124] DialogueTrigger 124

scoreboard players add @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,tag=!Dialogue124] TalkTime 1
tellraw @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,tag=!Dialogue124,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Blaine> Hah! I'm Blaine! I am the Leader of Cinnabar Gym!"}
tellraw @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,tag=!Dialogue124,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Blaine> My fiery Pokémon will incinerate all challengers! Hah!"}
tellraw @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,tag=!Dialogue124,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Blaine> You better have Burn Heal!"}

scoreboard players tag @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,score_TalkTime_min=21,tag=!Dialogue124] add Dialogue124
scoreboard players set @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,score_TalkTime_min=21,tag=Dialogue124] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=124,score_DialogueTrigger=124,tag=Dialogue124] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blaine post-battle
#scoreboard players set @a[x=-1094,y=0,z=729,dx=79,dy=240,dz=67,score_TalkTime=0,tag=!Dialogue125] DialogueTrigger 125 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125] TalkTime 1
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Blaine> Awesome. I have burned out... Take this Volcano Badge!"}

#give badge
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Blaine
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ give @s pixelmon:volcano_badge 1
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Blaine> Here, I will give you this, too. It's called Overheat!"}
execute @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:50}
tellraw @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Blaine> It has a slight drawback, but it's powerful and well worth it!"}
tellraw @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Blaine> I did lose this time, but I'm going to win next time."}
tellraw @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=!Dialogue125,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Blaine> My Fire-type Pokémon will be even stronger! Just you watch!"}

scoreboard players tag @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,score_TalkTime_min=42,tag=!Dialogue125] add Dialogue125
scoreboard players set @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,score_TalkTime_min=42,tag=Dialogue125] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=125,score_DialogueTrigger=125,tag=Dialogue125] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blue pre-battle
#scoreboard players set @a[x=-1131,y=64,z=796,r=20,score_TalkTime=0,tag=!Dialogue126] DialogueTrigger 126

scoreboard players add @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=!Dialogue126] TalkTime 1
tellraw @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=!Dialogue126,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Blue> You're telling me you conquered all the Gyms in Johto? Hahaha! "}
tellraw @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=!Dialogue126,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Blue> Heh! Johto's Gyms are that pathetic?"}
tellraw @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=!Dialogue126,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Blue> Hey, don't worry about it."}
tellraw @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=!Dialogue126,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Blue> I'll know if you are good or not by battling you right now."}

scoreboard players tag @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,score_TalkTime_min=25,tag=!Dialogue126] add Dialogue126
scoreboard players set @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,score_TalkTime_min=25,tag=Dialogue126] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=126,score_DialogueTrigger=126,tag=Dialogue126] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Blue post-battle
#scoreboard players set @a[x=-1160,y=0,z=730,dx=55,dy=240,dz=85,score_TalkTime=0,tag=!Dialogue127] DialogueTrigger 127 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127] TalkTime 1
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Blue> No way! How the heck did I lose to you? … Tch, all right."}
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Blue> ... Here, take this. It's the Earth Badge."}

#give badge
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add Blue
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s add GymVictory
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ playsound badge ambient @s ~ ~ ~ 100 1 1 1
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ give @s pixelmon:earth_badge 1
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Blue> Here! Take this as well!"}
execute @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:92}
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Blue> It contains Trick Room! It allows slower Pokémon to move before faster Pokémon for a while."}
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Blue> It's a very tricky move, isn't it? Hence the name!"}
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=49,score_TalkTime=49] {"text":"<Blue> ... All right, I was wrong. You're the real deal. "}
tellraw @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=!Dialogue127,score_TalkTime_min=57,score_TalkTime=57] {"text":"<Blue> You are a good trainer. But I'm going to beat you someday. Don't you forget it!"}

scoreboard players tag @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=57,tag=!Dialogue127] add Dialogue127
scoreboard players set @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,score_TalkTime_min=57,tag=Dialogue127] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=127,score_DialogueTrigger=127,tag=Dialogue127] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Red Opening Dialogue
#scoreboard players set @a[x=-944,y=182,z=285,r=20,score_DialogueTrigger=0,tag=!Dialogue128] DialogueTrigger 128

scoreboard players add @a[score_DialogueTrigger_min=128,score_DialogueTrigger=128,tag=!Dialogue128] TalkTime 1
tellraw @a[score_DialogueTrigger_min=128,score_DialogueTrigger=128,tag=!Dialogue128,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Red> .................. .................."}

scoreboard players tag @a[score_DialogueTrigger_min=128,score_DialogueTrigger=128,score_TalkTime_min=3,tag=!Dialogue128] add Dialogue128
scoreboard players set @a[score_DialogueTrigger_min=128,score_DialogueTrigger=128,score_TalkTime_min=3,tag=Dialogue128] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=128,score_DialogueTrigger=128,tag=Dialogue128] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Red defeat Dialogue
#scoreboard players set @a[x=-944,y=182,z=285,r=20,score_TalkTime=0,tag=!Diaogue129] DialogueTrigger 129 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129] TalkTime 1
execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Red> ...!"}

execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=6,score_TalkTime=6] ~ ~ ~ playsound entity.enderdragon.death ambient @s ~ ~ ~ 1000 1 1
tellraw @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Red> .................. .................."}

#Blinds player
execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ effect @s minecraft:blindness 5 1 true

#Gives player Red tag for other events
execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=14,score_TalkTime=15] ~ ~ ~ scoreboard players tag @s add Red
execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=14,score_TalkTime=15] ~ ~ ~ advancement grant @s only johto:event7
execute @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=!Dialogue129,score_TalkTime_min=14,score_TalkTime=15] ~ ~ ~ scoreboard players set @s click 1

scoreboard players tag @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,score_TalkTime_min=15,tag=!Dialogue129] add Dialogue129
scoreboard players set @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,score_TalkTime_min=15,tag=Dialogue129] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=129,score_DialogueTrigger=129,tag=Dialogue129] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mt Moon Silver pre-battle
#scoreboard players set @a[x=-2200,y=64,z=800,r=7,score_TalkTime=0,tag=!Dialogue130] DialogueTrigger 130

scoreboard players add @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130] TalkTime 1
tellraw @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Hey, "},{"selector":"@p[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! You're here in Kanto, too?"}]
tellraw @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130,score_TalkTime_min=9,score_TalkTime=9] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Some of the Trainers here are tough, which makes it easy to train my Pokémon!"}]
tellraw @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130,score_TalkTime_min=20,score_TalkTime=20] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> "},{"selector":"@p[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=!Dialogue130,score_TalkTime_min=20,score_TalkTime=20]"},{"text":"! I know you are strong... But... I can't help but challenge you!"}]

scoreboard players tag @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,score_TalkTime_min=20,tag=!Dialogue130] add Dialogue130
scoreboard players set @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,score_TalkTime_min=20,tag=Dialogue130] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=130,score_DialogueTrigger=130,tag=Dialogue130] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mt Moon Silver post-battle
#scoreboard players set @a[x=-2200,y=64,z=800,r=25,score_TalkTime=0,tag=!Dialogue131] DialogueTrigger 131 {Inventory:[{id:"minecraft:netherbrick"}]}

#Tp Silver in
#execute @a[x=-2200,y=64,z=800,r=25,score_TalkTime=0,tag=!Dialogue131,score_StarterPick_min=1,score_StarterPick=1] ~ ~ ~ tp @e[x=-770,y=84,z=-242,dy=10,score_StarterPick_min=1,score_StarterPick=1] -2200 64 800
#execute @a[x=-2200,y=64,z=800,r=25,score_TalkTime=0,tag=!Dialogue131,score_StarterPick_min=2,score_StarterPick=2] ~ ~ ~ tp @e[x=-770,y=84,z=-242,dy=10,score_StarterPick_min=2,score_StarterPick=2] -2200 64 800
#execute @a[x=-2200,y=64,z=800,r=25,score_TalkTime=0,tag=!Dialogue131,score_StarterPick_min=3,score_StarterPick=3] ~ ~ ~ tp @e[x=-770,y=84,z=-242,dy=10,score_StarterPick_min=3,score_StarterPick=3] -2200 64 800

scoreboard players add @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131] TalkTime 1
execute @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Humph! I guess it can't be helped..."}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> My training's still not good enough...?"}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=15,score_TalkTime=15] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> My Pokémon are so weak, it makes me frustrated..."}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=24,score_TalkTime=24] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> But I can feel that they are getting better after each battle..."}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=34,score_TalkTime=34] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> ... ... ... Tch! They're still too weak!"}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=42,score_TalkTime=42] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I need to give them more training..."}]
tellraw @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=50,score_TalkTime=50] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> See ya, "},{"selector":"@p[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=50,score_TalkTime=50]"},{"text":"!"}]


#tp Silver out
execute @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ particle cloud -2200 64 800 1 1 1 1 100
execute @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=-2200,y=64,z=800,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=3,score_StarterPick=3] -770 85 -242
execute @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=-2200,y=64,z=800,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=2,score_StarterPick=2] -770 89 -242
execute @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=!Dialogue131,score_TalkTime_min=57,score_TalkTime=57] ~ ~ ~ tp @e[x=-2200,y=64,z=800,r=2,type=pixelmon:npc_trainer,score_StarterPick_min=1,score_StarterPick=1] -770 93 -242


scoreboard players tag @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=57,tag=!Dialogue131] add Dialogue131
scoreboard players set @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,score_TalkTime_min=57,tag=Dialogue131] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=131,score_DialogueTrigger=131,tag=Dialogue131] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Jirachi Give (Any Pokémon Center after all gyms are beaten)
#execute @e[type=armor_stand,name=Mystery_Gift] ~1 ~ ~4 execute @a[r=5,tag=AllGyms,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue132] DialogueTrigger 132

scoreboard players add @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,tag=!Dialogue132] TalkTime 1
tellraw @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,tag=!Dialogue132,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Shopkeeper> Good morning. I've received a gift for you!"}
execute @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,tag=!Dialogue132,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ pokegive @s Jirachi lvl:5 ball:cherishball
execute @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,tag=!Dialogue132,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ give @s pixelmon:gold_bottle_cap 1 0 {display:{Lore:["A beautiful bottle cap that gives off","a golden gleam. Some people are","happy to receive one."]}}

scoreboard players tag @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,score_TalkTime_min=4,tag=!Dialogue132] add Dialogue132
scoreboard players set @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,score_TalkTime_min=4,tag=Dialogue132] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=132,score_DialogueTrigger=132,tag=Dialogue132] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Copycat First Talk
#execute @a[x=-2725,y=69,z=368,dx=10,dy=5,dz=9,score_TalkTime=0,tag=Dialogue221] ~ ~ ~ scoreboard players set @a[tag=!Dialogue133] DialogueTrigger 133

scoreboard players add @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133] TalkTime 1
execute @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[x=-2722,y=69,z=372,r=1,type=pixelmon:npc_chatting] {CustomSteveTexture:"red.png"}
tellraw @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=3,score_TalkTime=3] ["",{"text":"<"},{"selector":"@p[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=3,score_TalkTime=3]"},{"text":"> Hi! I heard you lost your cherished Poké Doll."}]
tellraw @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"selector":"@p[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=10,score_TalkTime=10]"},{"text":"> If I find it, you'll give me a rail Pass?"}]
tellraw @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"<"},{"selector":"@p[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=18,score_TalkTime=18]"},{"text":"> I'll go find it for you. You think you lost it when you went to Vermilion City?"}]

#Rerolls Copycat skin
execute @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ setblock -860 64 -335 minecraft:redstone_block

tellraw @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Copycat> Pardon? I shouldn't decide what you should do?"}
tellraw @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=!Dialogue133,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Copycat> But I'm really worried... What if someone finds it?"}

scoreboard players tag @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,score_TalkTime_min=37,tag=!Dialogue133] add Dialogue133
scoreboard players set @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,score_TalkTime_min=37,tag=Dialogue133] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=133,score_DialogueTrigger=133,tag=Dialogue133] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Vermilion City Pokémon Fan after speaking with Copycat
#execute @a[x=-2696,y=64,z=-37,r=5,score_TalkTime=0,tag=Dialogue133] ~ ~ ~ scoreboard players set @s[tag=!Dialogue134] DialogueTrigger 134

#tps in Clefary Doll
#execute @a[x=-2697,y=65,z=-39,r=20,score_TalkTime=0,tag=!Dialogue133] ~ ~ ~ /tp @e[x=-738,y=75,z=-242,r=1,type=pixelmon:statue] -2697 65 -39

scoreboard players add @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134] TalkTime 1
tellraw @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Poke Fan> I love Clefairy, but I could never catch one."}
tellraw @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Poke Fan> So I'm making due with a Poke Doll that I found."}
tellraw @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Poke Fan> Oh, I see now. The girl who lost this Poke Doll is sad..."}
tellraw @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Poke Fan> OK. Could you take this Poke Doll back to that poor little girl?"}
execute @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ tp @e[x=-2697,y=65,z=-39,r=2,type=pixelmon:statue] -738 75 -242
execute @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ give @s minecraft:record_13 1 0 {display:{Name:"Clefairy Doll",Lore:["The Poké Doll lost by the Copycat."]},HideFlags:36}
tellraw @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=!Dialogue134,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Poke Fan> I'll befriend a real Clefairy on my own one day. No worries!"}

scoreboard players tag @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,score_TalkTime_min=36,tag=!Dialogue134] add Dialogue134
scoreboard players set @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,score_TalkTime_min=36,tag=Dialogue134] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=134,score_DialogueTrigger=134,tag=Dialogue134] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Saffron City Bringing Copycat her doll
#execute @a[x=-2725,y=69,z=368,dx=10,dy=5,dz=9,score_TalkTime=0,tag=Dialogue134] ~ ~ ~ /scoreboard players set @s[tag=!Dialogue135] DialogueTrigger 135 {Inventory:[{id:"minecraft:record_13"}]}

#tps Clefary Doll out in if player hasn't completed this dialogue
#execute @p[x=-2721,y=68,z=374,r=20,score_TalkTime=0,tag=!Dialogue135] ~ ~ ~ /tp @e[x=-2721,y=70,z=374,r=1,type=pixelmon:statue] -736 75 -242

scoreboard players add @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135] TalkTime 1
execute @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135] ~ ~ ~ clear @s minecraft:record_13 0 1
tellraw @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Copycat> Yay! That's my Clefairy Poké Doll!"}
tellraw @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Copycat> See the tear where the right arm is sewn on? That's proof!"}
execute @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ tp @e[x=-736,y=75,z=-242,r=1,type=pixelmon:statue] -2721 70 374
tellraw @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Copycat> OK. Here's the Magnet Train Pass like I promised!"}
execute @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ give @s minecraft:record_blocks 1 0 {display:{Name:"Magnet Train Pass",Lore:["A ticket required for riding the Magnet","Train. It allows you to ride whenever","and however much you'd like."]},HideFlags:36}
execute @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ scoreboard players tag @s add MagnetPass
tellraw @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Copycat> That's the Pass for the Magnet Train."}
tellraw @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=!Dialogue135,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Copycat> The rail company man gave me that when they tore down our old house for the Station."}

scoreboard players tag @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,score_TalkTime_min=34,tag=!Dialogue135] add Dialogue135
scoreboard players set @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,score_TalkTime_min=34,tag=Dialogue135] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=135,score_DialogueTrigger=135,tag=Dialogue135] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Vermilion Steven Latios/Latias Intro
#execute @a[x=-2710,y=64,z=-55,r=7,score_TalkTime=0,tag=Dialogue134] ~ ~ ~ scoreboard players set @s[tag=!Dialogue136] DialogueTrigger 136

#tp Steven in separately
#execute @a[x=-2710,y=64,z=-55,r=40,score_TalkTime=0,tag=Dialogue134] ~ ~ ~ execute @s[tag=!Dialogue136] ~ ~ ~ /tp @e[x=-734,y=90,z=-242,dy=2,type=pixelmon:npc_chatting] -2710 64 -55

scoreboard players add @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136] TalkTime 1
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Steven> Hi! My name is Steven. The Champion from the Hoenn region.","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=11,score_TalkTime=11] ["",{"text":"<Steven> Have we met...before?","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=18,score_TalkTime=18] ["",{"text":"<Steven> That's not possible. All the Trainers I have battled seem to have the same look, anyway.","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=28,score_TalkTime=28] ["",{"text":"<Steven> Especially the ones who gave me tough battles...","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=35,score_TalkTime=35] ["",{"text":"<Steven> By the way, have you heard of Pokémon called Latias and Latios?","color":"white"}]

tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=44,score_TalkTime=44] ["",{"text":"<Steven> I am investigating why Latias and Latios, Pokémon from Hoenn, decided to leave Hoenn to come here.","color":"white"}]
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ summon minecraft:item -2709 64.5 -56 {Item:{id:"pixelmon:pixelmon_sprite",Count:1,tag:{ndex:381s}},Age:-32768,PickupDelay:32767,NoGravity:1b}
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=55,score_TalkTime=55] ~ ~ ~ summon minecraft:item -2709 64.5 -54 {Item:{id:"pixelmon:pixelmon_sprite",Count:1,tag:{ndex:380s}},Age:-32768,PickupDelay:32767,NoGravity:1b}
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=55,score_TalkTime=55] ["",{"text":"<Steven> Latias and Latios are Pokémon that has a lot to do with Soul Dew, a gemlike Orb.","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=65,score_TalkTime=65] ["",{"text":"<Steven> Considering the fact that Latias and Latios are now in Kanto, it is possible to assume that this has to do with Soul Dew.","color":"white"}]
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=76,score_TalkTime=76] ["",{"text":"<Steven> Latias and Latios are Pokémon that travel a great distance.","color":"white"}]

execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ kill @e[x=-2710,y=64,z=-55,r=3,type=item]

tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=85,score_TalkTime=85] ["",{"text":"<Steven> But any Trainer will be drawn to them, won't they?","color":"white"}]

execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=90,score_TalkTime=90] ~ ~ ~ give @s pixelmon:latiasite
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=90,score_TalkTime=90] ~ ~ ~ give @s pixelmon:soul_dew 1 0 {display:{Lore:["A wondrous orb to be held by either","Latios or Latias. It raises the power","of Psychic- and Dragon-type moves."]}}
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=90,score_TalkTime=90] ~ ~ ~ give @s pixelmon:latiosite

tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=95,score_TalkTime=95] ["",{"text":"<Steven> I must go. May our journeys cross again.","color":"white"}]

#tp Steven out
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ tp @e[x=-2710,y=63,z=-55,dy=3,type=pixelmon:npc_chatting] -734 91 -242
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=103,score_TalkTime=103] ~ ~ ~ particle cloud -2710 64 -55 1 1 1 1 100

execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=106,score_TalkTime=106] ~ ~ ~ scoreboard players set @s EonEncounter 1
execute @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=106,score_TalkTime=106] ~ ~ ~ advancement grant @s only johto:event5
tellraw @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=!Dialogue136,score_TalkTime_min=106,score_TalkTime=106] {"text":"You can now find Latios and Latias anytime in the wild grass!","italic":true}

scoreboard players tag @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,score_TalkTime_min=106,tag=!Dialogue136] add Dialogue136
scoreboard players set @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,score_TalkTime_min=106,tag=Dialogue136] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=136,score_DialogueTrigger=136,tag=Dialogue136] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Saffron City Silph Co Steven Stone Hoenn Starters, Post Red
#execute @a[x=-2750,y=63,z=327,r=8,tag=Dialogue136] ~ ~ ~ execute @s[tag=Red] ~ ~ ~ scoreboard players set @s[tag=!Dialogue137] DialogueTrigger 137

#tp in separately
#execute @a[x=-2763,y=63,z=329,r=40,tag=Dialogue136] ~ ~ ~ execute @s[tag=!Dialogue137] ~ ~ ~ execute @s[tag=Red] ~ ~ ~ tp @e[x=-736,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] -2763 64 329
#execute @a[x=-2763,y=63,z=329,r=40,tag=Dialogue136] ~ ~ ~ execute @s[tag=!Dialogue137] ~ ~ ~ execute @s[tag=Red] ~ ~ ~ tp @e[x=-2763,y=63,z=329,dy=3,type=pixelmon:npc_trader] -732 91 -242


scoreboard players add @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137] TalkTime 1
tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Steven> Hello... You're breaking up... I think it depends on how my dad feels..."}
tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Steven> I see... I'll be on my way. See you soon."}

execute @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ execute @e[x=-2769,y=63,z=322,dx=41,dy=4,dz=32,type=pixelmon:npc_chatting,name=Steven] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,CustomName:"!",CustomNameVisible:1b}

tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Steven> You are... I remember your eyes."}

execute @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ execute @e[x=-2769,y=63,z=322,dx=41,dy=4,dz=32,type=pixelmon:npc_chatting,name=Steven] ~ ~ ~ /kill @e[r=2,type=armor_stand,name=!]

tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Steven> When I see a Trainer whose eyes twinkle, I always remember."}
tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Steven> You have a Pokédex! So you are also in search of Pokémon. Let me see..."}
tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=46,score_TalkTime=46] {"text":"<Steven> I think I can help you with that. Let's say that you have stones in front of you."}
tellraw @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=56,score_TalkTime=56] ["",{"text":"<Steven> Which color would you pick?\n\n["},{"text":"Green Stone","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 29"}},{"text":"]\n\n["},{"text":"Red Stone","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 30"}},{"text":"]\n\n["},{"text":"Blue Stone","color":"blue","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 31"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=!Dialogue137,score_TalkTime_min=55,score_TalkTime=56] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,score_TalkTime_min=56,tag=!Dialogue137] add Dialogue137
scoreboard players set @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,score_TalkTime_min=56,tag=Dialogue137] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=137,score_DialogueTrigger=137,tag=Dialogue137] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Steven after giving a Hoenn Starter
#execute @a[score_TriggerCommand_min=29,score_TriggerCommand=31] ~ ~ ~ scoreboard players set @s DialogueTrigger 138

scoreboard players add @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138] TalkTime 1
tellraw @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Steven> Take good care of it. Your caring for it will make me very happy."}
tellraw @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Steven> Oh, look at the time. I really must go. I'll be back soon though!"}
execute @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ scoreboard players set @s StevenCD 3

#tps Steven out
execute @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ particle cloud -2763 64 329 1 1 1 1 100
execute @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=!Dialogue138,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ tp @e[x=-2763,y=63,z=329,dy=3,type=pixelmon:npc_chatting] -736 91 -242

scoreboard players tag @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,score_TalkTime_min=26,tag=!Dialogue138] add Dialogue138
scoreboard players set @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,score_TalkTime_min=26,tag=Dialogue138] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=138,score_DialogueTrigger=138,tag=Dialogue138] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Steven Silph Co trader
#execute @a[x=-2763,y=63,z=329,r=7,score_TalkTime=0,score_StevenCD=0,tag=Dialogue138] ~ ~ ~ scoreboard players set @s[tag=!Dialouge139] DialogueTrigger 139

#tp in Trader
#execute @p[x=-2763,y=63,z=329,r=30,score_TalkTime=0,score_StevenCD=0,tag=Dialogue138] ~ ~ ~ /tp @e[x=-732,y=90,z=-242,dy=3,type=pixelmon:npc_trader] -2763 64 329
#execute @p[x=-2763,y=63,z=329,r=30,score_TalkTime=0,score_StevenCD=0,tag=Dialogue138] ~ ~ ~ /tp @e[x=-2763,y=63,z=329,dy=3,type=pixelmon:npc_chatting] -736 91 -242

scoreboard players add @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=!Dialogue139] TalkTime 1
tellraw @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=!Dialogue139,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Steven> We meet again! Have you been to Hoenn before?"}
tellraw @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=!Dialogue139,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Steven> It's such a beautiful place, with the clearest ocean you can imagine. You should visit sometime."}
tellraw @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=!Dialogue139,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Steven> Hey! Why don't we trade Pokémon?"}
tellraw @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=!Dialogue139,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Steven> I've been looking for Forretress. I can trade my Beldum for it."}

scoreboard players tag @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,score_TalkTime_min=26,tag=!Dialogue139] add Dialogue139
scoreboard players set @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,score_TalkTime_min=26,tag=Dialogue139] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=139,score_DialogueTrigger=139,tag=Dialogue139] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Manaphy Egg Sailor Event
#scoreboard players set @a[x=923,y=64,z=-73,r=10,score_TalkTime=0,score_IP_min=1,tag=!Dialogue140] DialogueTrigger 140


scoreboard players add @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=!Dialogue140] TalkTime 1
tellraw @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=!Dialogue140,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Sailor> The ocean is so beautiful, isn't it?"}
tellraw @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=!Dialogue140,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Sailor> You look like you have proven yourself as a trainer."}
tellraw @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=!Dialogue140,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Sailor> Please take this, and help preserve the beauty of the seas!"}
execute @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=!Dialogue140,score_TalkTime_min=31,score_TalkTime=31] ~ ~ ~ pokegive @s Manaphy egg lvl:5

scoreboard players tag @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_TalkTime_min=31,tag=!Dialogue140] add Dialogue140
scoreboard players set @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,score_TalkTime_min=31,tag=Dialogue140] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=140,score_DialogueTrigger=140,tag=Dialogue140] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Elm giving the Shiny Charm post-Red
#execute @a[x=-693,y=63,z=-490,dx=20,dy=5,dz=20,score_DialogueTrigger=0,tag=Dialogue101] ~ ~ ~ execute @s[tag=Red] ~ ~ ~ scoreboard players set @s[tag=!Dialogue141] DialogueTrigger 141

scoreboard players add @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141] TalkTime 1
execute @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Professor Elm> Hi "},{"selector":"@p[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! How is your Pokédex coming along?"}]
tellraw @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Professor Elm> You've been meeting new Pokémon at a great pace, haven't you?"}
tellraw @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Professor Elm> Here, take this as a little reward for all your hard work!"}

execute @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Professor Elm"}
execute @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ shinycharm @s
execute @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=25,score_TalkTime=26] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Pixelmon Johto"}


tellraw @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=!Dialogue141,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Professor Elm> Having a Shiny Charm will improve your chances of finding a Shiny Pokémon!"}

scoreboard players tag @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,score_TalkTime_min=32,tag=!Dialogue141] add Dialogue141
scoreboard players set @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,score_TalkTime_min=32,tag=Dialogue141] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=141,score_DialogueTrigger=141,tag=Dialogue141] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sleeping Snorlax in Kanto blocking the way
#Trigger within the Poke Flute radio commands
#execute @a[x=-2893,y=64,z=-53,r=25,score_TalkTime=0,tag=PokeFlute] ~ ~ ~ scoreboard players set @s[tag=!Dialogue142] DialogueTrigger 142

#tps Snorlax in
#execute @a[x=-2894,y=64,z=-53,r=50,score_TalkTime=0,tag=!Dialogue142] ~ ~ ~ /tp @e[x=-761,y=79,z=-244,r=2,type=pixelmon:statue] -2894 64 -53

scoreboard players add @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142] TalkTime 1

tellraw @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Snorlax> ..."}

tellraw @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Snorlax> ... ... ..."}

execute @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=43,score_TalkTime=43] ~ ~ ~ playsound snorlax hostile @s ~ ~ ~ 10 1 1
tellraw @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=43,score_TalkTime=43]  {"text":"Snorlax woke up!"}


#Spawns Snorlax
execute @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tp @e[x=-2894,y=64,z=-53,r=1,type=pixelmon:statue] -761 79 -244
execute @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ particle cloud -2894 66 -53 1 1 1 1 100
execute @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=!Dialogue142,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokebattle @s Snorlax,lvl:50,gr:7


scoreboard players tag @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,score_TalkTime_min=46,tag=!Dialogue142] add Dialogue142
scoreboard players set @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,score_TalkTime_min=46,tag=Dialogue142] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=142,score_DialogueTrigger=142,tag=Dialogue142] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mr. Pokémon after encounter with Kyogre or Groudon, depends on orb
#execute @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,score_TalkTime=0,score_DialogueTrigger=0,score_Groudon_min=1,tag=Dialogue102] ~ ~ ~ scoreboard players set @s[tag=!Dialogue143] DialogueTrigger 143
#execute @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,score_TalkTime=0,score_DialogueTrigger=0,score_Kyogre_min=1,tag=Dialogue102] ~ ~ ~ scoreboard players set @s[tag=!Dialogue143] DialogueTrigger 143

scoreboard players add @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143] TalkTime 1

#Give Kyogre Orb
tellraw @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=1,score_TalkTime=1,score_Groudon_min=1] {"text":"<Mr. Pokémon> Wow! That Red Orb summoned Groudon? Incredible!"}
tellraw @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=11,score_TalkTime=11,score_Groudon_min=1] {"text":"<Mr. Pokémon> So I suppose this Blue Orb summons Kyogre?"}
execute @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=15,score_TalkTime=15,score_Groudon_min=1] ~ ~ ~ give @s minecraft:iron_horse_armor 1 0 {display:{Lore:["A shiny blue orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]}}

#Give Groudon Orb
tellraw @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=1,score_TalkTime=1,score_Kyogre_min=1] {"text":"<Mr. Pokémon> Wow! That Blue Orb summoned Kyogre? Incredible!"}
tellraw @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=11,score_TalkTime=11,score_Kyogre_min=1] {"text":"<Mr. Pokémon> So I suppose this Red Orb summons Groudon?"}
execute @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=!Dialogue143,score_TalkTime_min=15,score_TalkTime=15,score_Kyogre_min=1] ~ ~ ~ give @s minecraft:golden_horse_armor 1 0 {display:{Lore:["A shiny red orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]}}

scoreboard players tag @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,score_TalkTime_min=15,tag=!Dialogue143] add Dialogue143
scoreboard players set @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,score_TalkTime_min=15,tag=Dialogue143] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=143,score_DialogueTrigger=143,tag=Dialogue143] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Mr. Pokémon after encountering both Kyogre and Groudon
#execute @a[x=-255,y=63,z=-198,dx=20,dy=5,dz=8,score_Groudon_min=1,score_Kyogre_min=1,tag=Dialogue143] ~ ~ ~ scoreboard players set @s[tag=!Dialogue144] DialogueTrigger 144

scoreboard players add @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=!Dialogue144] TalkTime 1
tellraw @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=!Dialogue144,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Mr. Pokémon> I am amazed!"}
tellraw @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=!Dialogue144,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Mr. Pokémon> So if each color is to a legendary Pokémon, this Green Orb would be to Rayquaza, right?"}
execute @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=!Dialogue144,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ give @s minecraft:diamond_horse_armor 1 0 {display:{Lore:["A shiny green orb that is said","to have a legend tied to it. It's","known to have a deep connection","with the Hoenn region."]}}
tellraw @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=!Dialogue144,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Mr. Pokémon> Fascinating! Thank you for doing all this."}

scoreboard players tag @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,score_TalkTime_min=19,tag=!Dialogue144] add Dialogue144
scoreboard players set @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,score_TalkTime_min=19,tag=Dialogue144] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=144,score_DialogueTrigger=144,tag=Dialogue144] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Chuck on the way to the Embedded Tower after talking with Mr. Pokémon
#execute @a[x=1317,y=64,z=-370,r=7,score_TalkTime=0,tag=Dialogue102] ~ ~ ~ scoreboard players set @s[tag=!Dialogue145] DialogueTrigger 145

#tp Chuck in
#execute @a[x=1317,y=64,z=-370,r=30,tag=Dialogue102] ~ ~ ~ execute @s[tag=!Dialogue145] ~ ~ ~ /tp @e[x=-718,y=90,z=-242,dy=3,type=pixelmon:npc_chatting] 1317 64 -370

scoreboard players add @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145] TalkTime 1
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Chuck> Hey, "},{"selector":"@p[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! Good to see you again!"}]
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Chuck> But I never expected to see you around here."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Chuck> Could it be... that you are on the way to the Embedded Tower?"}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Chuck> The Embedded Tower was a huge tower piercing the sky."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Chuck> It is said to have something to do with the mythical Pokémon that stretched the seas and that Pokémon that widened the lands."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Chuck> But the tower no longer is standing."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=51,score_TalkTime=51] {"text":"<Chuck> The way to the Embedded Tower is harder than you can imagine."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=60,score_TalkTime=60] {"text":"<Chuck> I see! So you've defeated all the Gym Leaders in Johto! Then there's nothing to worry about."}
tellraw @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Chuck> Believe in yourself and walk your path. Yahaha!"}

#tp Chuck out
execute @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=78,score_TalkTime=78] ~ ~ ~ particle cloud 1317 64 -370 1 1 1 1 100
execute @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=!Dialogue145,score_TalkTime_min=78,score_TalkTime=78] ~ ~ ~ tp @e[x=1317,y=63,z=-370,dy=3,type=pixelmon:npc_chatting] -718 91 -242

scoreboard players tag @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,score_TalkTime_min=78,tag=!Dialogue145] add Dialogue145
scoreboard players set @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,score_TalkTime_min=78,tag=Dialogue145] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=145,score_DialogueTrigger=145,tag=Dialogue145] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sidequest bringing a person a Pokémon sprite
#scoreboard players set @a[x=481,y=64,z=-267,r=3,score_Cooldown=0,score_TalkTime=0,tag=!Dialogue146] DialogueTrigger 146

scoreboard players add @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=!Dialogue146] TalkTime 1
tellraw @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=!Dialogue146,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Randy> Excuse me, guy! Can you do a guy a favor?"}
tellraw @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=!Dialogue146,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Randy> Can you take this Pokémon with a message to my friend? He's on Route 31."}
tellraw @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=!Dialogue146,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 48"}},{"text":"] \u0020 \u0020["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 49"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=!Dialogue146,score_TalkTime_min=9,score_TalkTime=10] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,score_TalkTime_min=10,tag=!Dialogue146] add Dialogue146
scoreboard players set @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,score_TalkTime_min=10,tag=Dialogue146] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=146,score_DialogueTrigger=146,tag=Dialogue146] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Accepting Spearow quest
#execute @a[score_TriggerCommand_min=48,score_TriggerCommand=48] ~ ~ ~ scoreboard players tag @s[tag=!Dialogue147] DialogueTrigger 147

scoreboard players add @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147] TalkTime 1
tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Randy> You will? Perfect! Thanks, guy!"}
tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Randy> My pal's a chubby guy who snoozes all the time."}
tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Randy> You'll recognize him right away!"}

execute @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=21,score_TalkTime=21] ~ ~ ~ /execute @s ~ ~ ~ /summon minecraft:item ~ ~ ~ {Item:{id:"pixelmon:pixelmon_sprite",Count:1,tag:{display:{Name:"Kenya",Lore:["OT: Randy","","Attached Mail: 'Dark Cave","leads to another road'"]},ndex:21s}}}



tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Randy> You can read it, but don't lose it!"}
tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Randy> Route 31! Oh, yeah. There was a weird tree blocking the road."}
tellraw @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=!Dialogue147,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Randy> I wonder if it's been cleared?"}

scoreboard players tag @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,score_TalkTime_min=41,tag=!Dialogue147] add Dialogue147
scoreboard players set @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,score_TalkTime_min=41,tag=Dialogue147] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=147,score_DialogueTrigger=147,tag=Dialogue147] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Route 31 guy after speaking with Randy
#execute @a[x=-130,y=64,z=-105,r=6,score_TalkTime=0,tag=Dialogue147] ~ ~ ~ scoreboard players set @s[tag=!Dialogue148] DialogueTrigger 148 {Inventory:[{tag:{display:{Name:"Kenya"}}}]}

scoreboard players add @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148] TalkTime 1
execute @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=1,score_TalkTime=90] ~ ~ ~ clear @s pixelmon:pixelmon_sprite 0 1 {display:{Name:"Kenya"}}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Randy's Friend> ...Zzzz... Huh? What's that? You have Mail for me?"}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=10,score_TalkTime=10] ["",{"selector":"@p[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=10,score_TalkTime=10]","italic":true,"color":"gray"},{"text":" handed over the Pokémon holding the Mail.","italic":true,"color":"gray"}]
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Randy's Friend> Let's see..."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=23,score_TalkTime=23] ["",{"text":"<Randy's Friend> \u201c"},{"text":"Thank you for your Mail. It was such an exciting adventure. I did not like Zubat, though...","italic":true},{"text":"\u201d"}]
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Randy's Friend> That's what it says. I went to a dark cave the other day with a friend."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Randy's Friend> That cave leads to another route."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=51,score_TalkTime=51] {"text":"<Randy's Friend> By the way, I must thank you for being so kind."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=59,score_TalkTime=59] {"text":"<Randy's Friend> I'd like to do something good in return."}
execute @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=62,score_TalkTime=62] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:44}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=65,score_TalkTime=65] {"text":"<Randy's Friend> TM44 is..."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Randy's Friend> ...Zzz... ..."}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=75,score_TalkTime=75] {"text":"<Randy's Friend> ...Umm... Rest!"}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=81,score_TalkTime=81] {"text":"<Randy's Friend> The phrase \u201crecover fast\u201d became shortened to \u201cRest,\u201d you see?"}
tellraw @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=!Dialogue148,score_TalkTime_min=90,score_TalkTime=90] {"text":"<Randy's Friend> This is a move to sleep and recover HP."}

scoreboard players tag @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,score_TalkTime_min=90,tag=!Dialogue148] add Dialogue148
scoreboard players set @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,score_TalkTime_min=90,tag=Dialogue148] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=148,score_DialogueTrigger=148,tag=Dialogue148] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Visiting Randy again after bringing Spearow
#execute @a[x=481,y=64,z=-267,r=5,score_TalkTime=0,tag=Dialogue148] ~ ~ ~ scoreboard players set @s[tag=!Dialogue149] DialogueTrigger 149

scoreboard players add @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149] TalkTime 1
tellraw @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Randy> Thank you for making the delivery!"}
tellraw @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Randy> ...What about a cave exploration?"}
tellraw @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Randy> Ah, you can go right through here."}
tellraw @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Randy> I want you to have this for your kindness!"}
execute @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=28,score_TalkTime=28] ~ ~ ~ give @s pixelmon:hp_up
tellraw @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=!Dialogue149,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Randy> My pal was snoozing, right? Heh, he's always sleeping."}

scoreboard players tag @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,score_TalkTime_min=34,tag=!Dialogue149] add Dialogue149
scoreboard players set @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,score_TalkTime_min=34,tag=Dialogue149] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=149,score_DialogueTrigger=149,tag=Dialogue149] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Kyogre Spawn
#execute @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,score_KyogreCD=0] TriggerCommand 50 {Inventory:[{id:"minecraft:iron_horse_armor"}]}
#execute @a[score_TriggerCommand_min=51,score_TriggerCommand=51] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 150

scoreboard players add @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150] TalkTime 1
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150] ~ ~ ~ clear @a[score_TriggerCommand_min=50,score_TriggerCommand=50] minecraft:iron_horse_armor
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=50,score_TriggerCommand=50] Kyogre 1
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @a[score_TriggerCommand_min=50,score_TriggerCommand=50] {"text":"Your Orb is reacting to the Tower!"}
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ advancement grant @s[score_TriggerCommand_min=50,score_TriggerCommand=50] only johto:event6
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=50,score_TriggerCommand=50] TriggerCommand 0

execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ summon minecraft:item -1173 64 -230 {Item:{id:"minecraft:iron_horse_armor",Count:1},Age:-32768,PickupDelay:32767,Tags:["Despawn"]}
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound block.portal.trigger ambient @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1

#Enables particles and motion
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:redstone_block

#execute @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] ~ ~ ~ /particle reddust ~ ~0.25 ~ 1 1 1 1
#entitydata @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] {Motion:[0.0,0.0,0.25]}

#Clones in red glass
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ clone -824 65 -177 -869 65 -222 -1195 63 -231 replace

execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 500
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ kill @e[x=-1173,y=63,z=-230,dy=2,dz=25,tag=Despawn,type=Item]

#Summons Kyogre
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~ ~ /pokespawn Kyogre lvl:50 gr:7
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ playsound kyogre hostile @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ entitydata @e[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,type=pixelmon:pixelmon,name=Kyogre] {Rotation:[179.99f,0.0f]}

#Disables motion and particles
execute @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=!Dialogue150,score_TalkTime_min=7,score_TalkTime=8] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:iron_block

scoreboard players tag @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,score_TalkTime_min=8,tag=!Dialogue150] add Dialogue150
scoreboard players set @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,score_TalkTime_min=8,tag=Dialogue150] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=150,score_DialogueTrigger=150,tag=Dialogue150] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Groudon Spawn
#execute @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,score_GroudonCD=0] TriggerCommand 51 {Inventory:[{id:"minecraft:golden_horse_armor"}]}
#execute @a[score_TriggerCommand_min=51,score_TriggerCommand=51] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 151

scoreboard players add @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151] TalkTime 1
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151] ~ ~ ~ clear @a[score_TriggerCommand_min=51,score_TriggerCommand=51] minecraft:golden_horse_armor
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=51,score_TriggerCommand=51] Groudon 1
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @a[score_TriggerCommand_min=51,score_TriggerCommand=51] {"text":"Your Orb is reacting to the Tower!"}
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ advancement grant @s[score_TriggerCommand_min=51,score_TriggerCommand=51] only johto:event6
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=51,score_TriggerCommand=51] TriggerCommand 0

execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ summon minecraft:item -1173 64 -230 {Item:{id:"minecraft:golden_horse_armor",Count:1},Age:-32768,PickupDelay:32767,Tags:["Despawn"]}
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound block.portal.trigger ambient @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1

#Enables particles and motion
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:redstone_block

#execute @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] ~ ~ ~ /particle reddust ~ ~0.25 ~ 1 1 1 1
#entitydata @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] {Motion:[0.0,0.0,0.25]}

#Clones in blue glass
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ clone -824 64 -177 -869 64 -222 -1195 63 -231 replace

execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~2 ~ particle cloud ~ ~ ~ 1 1 1 1 500
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ kill @e[x=-1173,y=63,z=-230,dy=2,dz=25,tag=Despawn,type=Item]

#Summons Groudon
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~2 ~ /pokespawn Groudon lvl:50
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ playsound groudon hostile @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ entitydata @e[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,type=pixelmon:pixelmon,name=Groudon] {Rotation:[179.99f,0.0f]}

#Disables motion and particles
execute @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=!Dialogue151,score_TalkTime_min=7,score_TalkTime=8] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:iron_block

scoreboard players tag @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,score_TalkTime_min=8,tag=!Dialogue151] add Dialogue151
scoreboard players set @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,score_TalkTime_min=8,tag=Dialogue151] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=151,score_DialogueTrigger=151,tag=Dialogue151] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rayquaza Spawn
#execute @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] ~ ~ ~ scoreboard players set @a[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,score_RayquazaCD=0] TriggerCommand 52 {Inventory:[{id:"minecraft:diamond_horse_armor"}]}
#execute @a[score_TriggerCommand_min=51,score_TriggerCommand=51] ~ ~ ~ scoreboard players set @e[x=-801,y=64,z=-287,dy=3,type=armor_stand,score_DialogueTrigger=0,score_TalkTime=0] DialogueTrigger 152

scoreboard players add @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152] TalkTime 1
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152] ~ ~ ~ clear @a[score_TriggerCommand_min=52,score_TriggerCommand=52] minecraft:diamond_horse_armor
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=52,score_TriggerCommand=52] Rayquaza 1
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @a[score_TriggerCommand_min=52,score_TriggerCommand=52] {"text":"Your Orb is reacting to the Tower!"}
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=52,score_TriggerCommand=52] TriggerCommand 0

execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ summon minecraft:item -1173 64 -230 {Item:{id:"minecraft:diamond_horse_armor",Count:1},Age:-32768,PickupDelay:32767,Tags:["Despawn"]}
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound block.portal.trigger ambient @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1

#Enables particles and motion
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:redstone_block

#execute @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] ~ ~ ~ /particle reddust ~ ~0.25 ~ 1 1 1 1
#entitydata @e[x=-1173,y=63,z=-230,dy=2,dz=22,type=Item] {Motion:[0.0,0.0,0.25]}

#Clones in yellow glass
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ clone -824 66 -177 -869 66 -222 -1196 63 -231 replace

execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~ ~ particle cloud ~ ~ ~ 1 1 1 1 500
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ kill @e[x=-1173,y=63,z=-230,dy=2,dz=25,tag=Despawn,type=Item]

#Summons Rayquaza
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ execute @e[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53,type=armor_stand] ~ ~ ~ /pokespawn Rayquaza lvl:50
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ playsound rayquaza hostile @a[x=-1196,y=63,z=-239,dx=46,dy=20,dz=53] ~ ~ ~ 1 1 1
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ entitydata @e[x=-1196,y=63,z=-230,dx=46,dy=20,dz=53,type=pixelmon:pixelmon,name=Rayquaza] {Rotation:[179.99f,0.0f]}

#Disables motion and particles
execute @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=!Dialogue152,score_TalkTime_min=7,score_TalkTime=8] ~ ~ ~ fill -861 64 -303 -861 65 -303 minecraft:iron_block

scoreboard players tag @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,score_TalkTime_min=8,tag=!Dialogue152] add Dialogue152
scoreboard players set @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,score_TalkTime_min=8,tag=Dialogue152] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=152,score_DialogueTrigger=152,tag=Dialogue152] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Oak giving Kanto Starters
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,tag=!Dialogue153] DialogueTrigger 153

scoreboard players add @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153] TalkTime 1
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Professor Oak> Hello, "},{"selector":"@p[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=1,score_TalkTime=1]"},{"text":". Good to see you."}]
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Professor Oak> I heard a lot about you. Your Pokédex must be close to complete?"}
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Professor Oak> For all your hard work, I would like to give you something."}
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Professor Oak> Haha! What's next to me..."}
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Professor Oak> You must have figured it out right away. Yes, it is a Pokémon!"}
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Professor Oak> You don't see them very often in Kanto."}
tellraw @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=!Dialogue153,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Professor Oak> Choose one and it'll be yours! ...Go ahead!"}

scoreboard players tag @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,score_TalkTime_min=50,tag=!Dialogue153] add Dialogue153
scoreboard players set @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,score_TalkTime_min=50,tag=Dialogue153] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=153,score_DialogueTrigger=153,tag=Dialogue153] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#After Professor Oak giving Kanto Starter, gives Mega Ring
#scoreboard players set @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,tag=!Dialogue154,score_KantoStarters_min=1] DialogueTrigger 154

scoreboard players add @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154] TalkTime 1
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=6,score_TalkTime=6] {"text":"<Professor Oak> There was another thing I wanted to give you!"}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=14,score_TalkTime=14,score_KantoStarters_min=3,score_KantoStarters=3] {"text":"<Professor Oak> I came across these stones that seem to increase its power in battle."}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=14,score_TalkTime=14,score_KantoStarters_min=1,score_KantoStarters=2] {"text":"<Professor Oak> I came this stone that seem to increase its power in battle."}

#give Mega Stone(s) depending on which KantoStarters they picked
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=17,score_TalkTime=17,score_KantoStarters_min=1,score_KantoStarters=1] ~ ~ ~ /give @s pixelmon:venusaurite
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=17,score_TalkTime=17,score_KantoStarters_min=2,score_KantoStarters=2] ~ ~ ~ /give @s pixelmon:blastoisinite
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=17,score_TalkTime=17,score_KantoStarters_min=3,score_KantoStarters=3] ~ ~ ~ /give @s pixelmon:charizardite_x
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=17,score_TalkTime=17,score_KantoStarters_min=3,score_KantoStarters=3] ~ ~ ~ /give @s pixelmon:charizardite_y

tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Professor Oak> After speaking with Professor Sycamore of the Kalos region, I think I might know what they are."}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Professor Oak> He provided me with this bracelet to study the stones, but I think you can make better use of it."}

execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=46,score_TalkTime=46] ~ ~ ~ megaring @s
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=45,score_TalkTime=46] ~ ~ ~ scoreboard players set @s MegaStones 1

tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=54,score_TalkTime=54] {"text":"<Professor Oak> You might be able to find more stones across Kanto and Johto."}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=63,score_TalkTime=63] {"text":"<Professor Oak> I found them while gathering data."}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Professor Oak> They appeared around sunset, and made a beautiful rainbow cloud around them! That's how I spotted them."}
tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=83,score_TalkTime=83] {"text":"<Professor Oak> Keep your eyes out for them!"}

#Unlocks Mega Stones around the map for player
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Beedrillite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Pidgeotite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Slowbronite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Alakazite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Gengarite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Kangaskhanite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Pinsirite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Gyaradosite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Aerodactylite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Mewtwonite_X 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Mewtwonite_Y 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Steelixite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Ampharosite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Scizorite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Heracronite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Houndoominite 0
execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ scoreboard players set @s Tyranitarite 0

execute @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=92,score_TalkTime=93] ~ ~ ~ /advancement grant @s only johto:event10

tellraw @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=!Dialogue154,score_TalkTime_min=93,score_TalkTime=93] {"text":"You can now find wild mega stones, scattered around Johto and Kanto!","italic":true,"color":"gray"}

scoreboard players tag @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_TalkTime_min=93,tag=!Dialogue154] add Dialogue154
scoreboard players set @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,score_TalkTime_min=93,tag=Dialogue154] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=154,score_DialogueTrigger=154,tag=Dialogue154] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rock Smash TM post-clearing Sudowoodo
#execute @a[x=247,y=63,z=-20,r=7,tag=Dialogue30] ~ ~ ~ scoreboard players set @s[tag=!Dialogue155] DialogueTrigger 155

scoreboard players add @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=!Dialogue155] TalkTime 1
tellraw @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=!Dialogue155,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Black Belt> Are you the one who took care of the odd tree in the way?"}
tellraw @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=!Dialogue155,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Black Belt> You're quite the Trainer! Take this!"}
execute @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=!Dialogue155,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:tm_gen2 1 0 {tm:8}
tellraw @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=!Dialogue155,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Black Belt> It contains make-'em-faint Rock Smash. Use it well!"}

scoreboard players tag @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_TalkTime_min=18,tag=!Dialogue155] add Dialogue155
scoreboard players set @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,score_TalkTime_min=18,tag=Dialogue155] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=155,score_DialogueTrigger=155,tag=Dialogue155] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hoenn Sounds
#DialogueTrigger 156

scoreboard players add @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156] TalkTime 1

#Pokémon are Listening
tellraw @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=25,score_TalkTime=25] {"text":"Pokémon are listening to your music...","italic":true}

#tps an armor stand up to roll for a Pokémon
execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=43,score_TalkTime=43] ~ ~ ~ tp @r[c=1,x=-867,y=68,z=-195,dy=2,type=armor_stand] ~ ~5 ~

#Zigzagoon
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Zigzagoon] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Zigzagoon lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Zigzagoon] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Zigzagoon] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Linoone
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Linoone] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Linoone lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Linoone] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Linoone] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Whismur
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Whismur] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Whismur lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Whismur] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Whismur] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Makuhita
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Makuhita] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Makuhita lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Makuhita] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Makuhita] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Plusle
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Plusle] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Plusle lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Plusle] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Plusle] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Minun
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Minun] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Minun lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Minun] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Minun] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Numel
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Numel] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Numel lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Numel] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Numel] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Spoink
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spoink] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Spoink lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spoink] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spoink] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Spinda
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spinda] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Spinda lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spinda] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Spinda] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD

#Absol
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Absol] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokespawn Absol lvl:10
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Absol] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ tellraw @s {"text":"A Pokémon from Hoenn jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-195,dy=2,type=armor_stand,name=Absol] ~ ~ ~ execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players tag @s add HoennSoundsCD


#tps armor stand down
execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=46,score_TalkTime=46] ~ ~ ~ tp @r[c=1,x=-867,y=72,z=-195,dy=2,type=armor_stand] ~ ~-4 ~



#Disables Dialogue if player stops listening to the music
execute @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=!Dialogue156,score_TalkTime_min=1,score_TalkTime=46,score_MusicCooldown=0] ~ ~ ~ scoreboard players tag @s add EndDialogue


scoreboard players tag @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_TalkTime_min=46,tag=!Dialogue156] add Dialogue156
scoreboard players set @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,score_TalkTime_min=46,tag=Dialogue156] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=156,score_DialogueTrigger=156,tag=Dialogue156] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sinnoh Sounds
#DialogueTrigger 156

scoreboard players add @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157] TalkTime 1

#Pokémon are Listening
tellraw @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=19,score_TalkTime=19] {"text":"Pokémon are listening to your music...","italic":true}

#tps an armor stand up to roll for a Pokémon
execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ tp @r[c=1,x=-867,y=68,z=-220,dy=2,type=armor_stand] ~ ~5 ~

#Meditite
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Meditite] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Meditite lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Meditite] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Meditite] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Bidoof
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bidoof] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Bidoof lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bidoof] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bidoof] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Shinx
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Shinx] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Shinx lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Shinx] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Shinx] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Budew
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Budew] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Budew lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Budew] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Budew] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Buizel
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Buizel] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Buizel lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Buizel] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Buizel] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Chingling
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chingling] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Chingling lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chingling] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chingling] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Bronzor
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bronzor] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Bronzor lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bronzor] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Bronzor] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Chatot
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chatot] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Chatot lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chatot] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Chatot] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD

#Carnivine
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Carnivine] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ pokespawn Carnivine lvl:10
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Carnivine] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tellraw @s {"text":"A Pokémon from Sinnoh jumped at you!","italic":true}
execute @e[x=-867,y=72,z=-220,dy=2,type=armor_stand,name=Carnivine] ~ ~ ~ execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s add SinnohSoundsCD


#tps armor stand down
execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ tp @r[c=1,x=-867,y=72,z=-220,dy=2,type=armor_stand] ~ ~-4 ~



#Disables Dialogue if player stops listening to the music
execute @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=!Dialogue157,score_TalkTime_min=1,score_TalkTime=40,score_MusicCooldown=0] ~ ~ ~ scoreboard players tag @s add EndDialogue


scoreboard players tag @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,score_TalkTime_min=40,tag=!Dialogue157] add Dialogue157
scoreboard players set @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,score_TalkTime_min=40,tag=Dialogue157] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=157,score_DialogueTrigger=157,tag=Dialogue157] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Articuno Spawn
#scoreboard players set @a[x=-2065,y=17,z=-847,dx=23,dy=3,dz=15,score_Articuno=0,score_ArticunoCD=0,score_TalkTime=0,tag=!Dialogue158] DialogueTrigger 158

#Tp return statue
#execute @a[x=-2054,y=19,z=-835,r=50,score_Articuno=0,score_ArticunoCD=0] ~ ~ ~ /tp @e[x=-767,y=79,z=-244,r=1,type=pixelmon:statue] -2054 19 -835

scoreboard players add @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158] TalkTime 1
execute @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound articuno hostile @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -2054 19 -835 1 1 1 1 500
execute @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[type=pixelmon:statue,x=-2054,y=19,z=-835,r=1] -767 79 -244
execute @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @e[type=armor_stand,x=-2054,y=19,z=-835,r=1] ~ ~ ~ /pokespawn Articuno gr:7 lvl:50
execute @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=!Dialogue158,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s Articuno 1

scoreboard players tag @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,score_TalkTime_min=2,tag=!Dialogue158] add Dialogue158
scoreboard players set @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,score_TalkTime_min=2,tag=Dialogue158] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=158,score_DialogueTrigger=158,tag=Dialogue158] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Zapdos Spawn
#execute @a[x=-3239,y=64,z=571,r=5,score_Zapdos=0,score_ZapdosCD=0,score_TalkTime=0,tag=AllGyms] ~ ~ ~ scoreboard players set @s[tag=!Dialogue159] DialogueTrigger 159

#tp return statue
#execute @a[x=-3239,y=64,z=571,r=50,score_Zapdos=0,score_ZapdosCD=0,score_TalkTime=0,tag=AllGyms] ~ ~ ~ tp @e[x=-773,y=79,z=-244,r=1,type=pixelmon:statue] -3239 64 571

scoreboard players add @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159] TalkTime 1
execute @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound zapdos hostile @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @e[type=pixelmon:statue,x=-3239,y=64,z=571,r=1] ~ ~ ~ /pokespawn Zapdos gr:7 lvl:50
execute @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -3239 64 571 1 1 1 0.15 1000
execute @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[type=pixelmon:statue,x=-3239,y=64,z=571,r=1] -773 79 -244
execute @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=!Dialogue159,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s Zapdos 1

scoreboard players tag @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=2,tag=!Dialogue159] add Dialogue159
scoreboard players set @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,score_TalkTime_min=2,tag=Dialogue159] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=159,score_DialogueTrigger=159,tag=Dialogue159] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Moltres Spawn
#scoreboard players set @a[x=-1388,y=50,z=510,dx=22,dy=5,dz=15,score_Moltres=0,score_MoltresCD=0,score_TalkTime=0,tag=!Dialogue160] DialogueTrigger 160

#tp return statue
#execute @a[x=-1379,y=51,z=522,r=50,score_Moltres=0,score_MoltresCD=0] ~ ~ ~ tp @e[x=-779,y=79,z=-244,r=1,type=pixelmon:statue] -1379 51 522

scoreboard players add @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160] TalkTime 1
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound moltres hostile @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -1379 51 522 1 1 1 0.15 1000
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[type=pixelmon:statue,x=-1379,y=51,z=522,r=1] -779 79 -244
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @e[type=armor_stand,x=-1379,y=51,z=522,r=1] ~ ~ ~ /pokespawn Moltres gr:7 lvl:50
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s Moltres 1
execute @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=!Dialogue160,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle flame -1379 51 522 0 0 0 1 10

scoreboard players tag @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=2,tag=!Dialogue160] add Dialogue160
scoreboard players set @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,score_TalkTime_min=2,tag=Dialogue160] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=160,score_DialogueTrigger=160,tag=Dialogue160] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Celebi Time Travel Event beginning prompt
#execute @e[x=617,y=64,z=-699,r=15,name=Celebi] ~ ~ ~ scoreboard players set @p[r=15,tag=!Dialogue161,score_Celebi_min=1] DialogueTrigger 161
#execute @e[x=617,y=64,z=-699,r=15,name=Celebi] ~ ~ ~ scoreboard players set @a[x=617,y=64,z=-699,r=15,tag=!Dialogue161,score_Celebi_min=1] DialogueTrigger 161

scoreboard players add @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,tag=!Dialogue161] TalkTime 1
tellraw @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,tag=!Dialogue161,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"Celebi is reacting to the energy of the shrine. Do you want to investigate?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 41"}},{"text":"]"}]
execute @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,tag=!Dialogue161,score_TalkTime_min=1,score_TalkTime=2] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,score_TalkTime_min=2,tag=!Dialogue161] add Dialogue161
scoreboard players set @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,score_TalkTime_min=2,tag=Dialogue161] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=161,score_DialogueTrigger=161,tag=Dialogue161] DialogueTrigger 0

#Celebi might be interested
#testfor @a[x=617,y=64,z=-699,r=15,score_Celebi_min=1,tag=!Dialogue161]
#tellraw @a[x=617,y=64,z=-699,r=15,score_Celebi_min=1,tag=!Dialogue161]  {"text":"Celebi seems interested to see the shrine.","italic":true}

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Celebi Time Travel Event beginning
#execute @a[score_TriggerCommand_min=41,score_TriggerCommand=41] ~ ~ ~ scoreboard players set @s DialogueTrigger 162

scoreboard players add @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162] TalkTime 1

#Prevents player from leaving
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @s[x=615,y=63,z=-711,dx=5,dy=10,dz=5] ~ ~ ~3
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @s[x=628,y=63,z=-703,dx=10,dy=10,dz=4] ~-3 ~ ~

#tp Lyra and Marill in
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-746,y=74,z=-242,dy=3,type=pixelmon:statue] 621 64 -700
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-725,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 621 64 -701
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 621 64 -701 1 1 1 1 100


tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=3,score_TalkTime=3] ["",{"text":"<Lyra> Hi, "},{"selector":"@p[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=3,score_TalkTime=3]"},{"text":". Have you heard the legend of the shrine?"}]
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Lyra> They say people disappear when they tamper with it."}

#Enables particles #1
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ setblock -861 64 -301 minecraft:redstone_block
#execute @e[x=617,y=64,z=-699,r=25,type=pixelmon:pixelmon,name=Celebi] ~ ~ ~ /particle enchantmenttable ~-2 ~-2 ~-2 4 4 4 1 50

#Disables particles #1
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ setblock -861 64 -301 minecraft:iron_block


execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ playsound celebi ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ effect @s minecraft:blindness 5 1 true

#tp Lyra out
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=24,score_TalkTime=25] ~ ~ ~ tp @e[x=621,y=63,z=-701,dy=3,type=pixelmon:npc_chatting] -725 71 -242

#tp Player out
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ tp @s 257 64 695
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=25,score_TalkTime=25] ~ ~ ~ scoreboard players set @s click 1

#tp Lyra in
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=26,score_TalkTime=27] ~ ~ ~ tp @e[x=-727,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 267 64 694

#Enables particles #2
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ setblock -861 65 -301 minecraft:redstone_block
#execute @e[x=148,y=60,z=613,dx=200,dy=30,dz=200,type=pixelmon:statue] ~ ~ ~ /particle enchantmenttable ~-2 ~-2 ~-2 4 4 4 1 50




tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Lyra> Where are we...?"}
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Lyra> Ilex Forest has disappeared!"}
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Lyra> ...That's not it. It's more like we have been transported somewhere else...?"}
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=49,score_TalkTime=49] ~ ~ ~ /replaceitem entity @e[x=267,y=63,z=694,dy=3,type=pixelmon:npc_chatting] slot.weapon.offhand minecraft:carrot_on_a_stick
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=60,score_TalkTime=60] ~ ~ ~ /replaceitem entity @e[x=267,y=63,z=694,dy=3,type=pixelmon:npc_chatting] slot.weapon.offhand air
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=54,score_TalkTime=54] {"text":"<Lyra> ... ... ..."}
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=59,score_TalkTime=59] ["",{"text":"<Lyra> "},{"selector":"@p[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=59,score_TalkTime=59]"},{"text":", something is strange! I heard the radio mentioning the date from 3 years ago!"}]
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=69,score_TalkTime=69] {"text":"<Lyra> Is that... What I am looking at..."}
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=74,score_TalkTime=74] ~ ~ ~ playsound celebi ambient @s ~ ~ ~ 100 1 1
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=79,score_TalkTime=79] {"text":"<Lyra> Celebi? That explains it! Celebi must have caused all this!"}

#tps Silver and Giovanni in, in distance
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=84,score_TalkTime=84] ~ ~ ~ tp @e[x=-731,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 278 64 726
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=84,score_TalkTime=84] ~ ~ ~ tp @e[x=-733,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 284 64 726
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=84,score_TalkTime=84] ~ ~ ~ particle cloud 278 64 726.0 1 1 1 1 100
execute @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=84,score_TalkTime=84] ~ ~ ~ particle cloud 284 64 726.0 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=87,score_TalkTime=87] {"text":"<Lyra> Celebi must have taken us back in time! Literally!"}
tellraw @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=95,score_TalkTime=95] ["",{"text":"<Lyra> "},{"selector":"@p[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=!Dialogue162,score_TalkTime_min=95,score_TalkTime=95]"},{"text":", there is someone else here besides us! Let's go find out who!"}]

scoreboard players tag @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,score_TalkTime_min=95,tag=!Dialogue162] add Dialogue162
scoreboard players set @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,score_TalkTime_min=95,tag=Dialogue162] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=162,score_DialogueTrigger=162,tag=Dialogue162] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Celebi Time Travel Giovanni and Silver
#execute @a[x=263,y=64,z=719,r=13,score_TalkTime=0,tag=Dialogue162] ~ ~ ~ scoreboard players set @a[tag=!Dialogue163] DialogueTrigger 163

scoreboard players add @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163] TalkTime 1
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> You told me... you were the number one in the world!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Are you gonna quit? What are you going to do now?"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=19,score_TalkTime=19] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> ... ... ... .....One must acknowledge one's defeat before he can move on..."}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=31,score_TalkTime=31] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> I will go solo...for now..."}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=38,score_TalkTime=38] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> So that one day I will form a stronger organization!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=46,score_TalkTime=46] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> What aspect of you was number one?"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=53,score_TalkTime=53] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> Gathering so many only to be defeated by a mere child!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=61,score_TalkTime=61] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> Putting together the potential of many is how you produce a huge power..."}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=71,score_TalkTime=71] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> That's what an organization is... That's the strength of an organization!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=81,score_TalkTime=81] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> I failed... to make the best use of my subordinates potential...!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=91,score_TalkTime=91] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> But you shall witness one day the revival of me and my Team Rocket!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=101,score_TalkTime=101] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I don't understand you! You don't make any sense!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=109,score_TalkTime=109] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> ... ... ..."}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=114,score_TalkTime=114] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> ... ... ... ... ..One day, you will understand."}]

#tp Giovanni out
execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=122,score_TalkTime=122] ~ ~ ~ particle cloud 284 64 726.0 1 1 1 1 100
execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=122,score_TalkTime=122] ~ ~ ~ tp @e[x=284,y=63,z=726,dy=3,type=pixelmon:npc_chatting] -733 71 -242

tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=125,score_TalkTime=125] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I don't want to understand you! I will never become someone like you."}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=135,score_TalkTime=135] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> A coward when you're alone and acting like a tyrant when you're in front of other cowards!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=147,score_TalkTime=147] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> I will become strong! I will become a stronger man all by myself!"}]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=156,score_TalkTime=156] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> "},{"text":"All by myself!","bold":true}]

execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=161,score_TalkTime=161] ~ ~ ~ execute @e[x=278,y=63,z=726,dy=3,type=pixelmon:npc_chatting,name=Silver] ~ ~ ~ /summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,CustomName:"!",CustomNameVisible:1b}
execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=164,score_TalkTime=164] ~ ~ ~ execute @e[x=278,y=63,z=726,dy=3,type=pixelmon:npc_chatting,name=Silver] ~ ~ ~ /kill @e[r=2,type=armor_stand,name=!]
tellraw @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=164,score_TalkTime=164] ["",{"text":"<"},{"text":"Silver","color":"red"},{"text":"> \u0020...What are you staring at?"}]

#tps Silver out
execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=172,score_TalkTime=172] ~ ~ ~ particle cloud 278 64 726.0 1 1 1 1 100
execute @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=!Dialogue163,score_TalkTime_min=172,score_TalkTime=172] ~ ~ ~ tp @e[x=278,y=63,z=726,dy=3,type=pixelmon:npc_chatting] -731 71 -242

scoreboard players tag @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,score_TalkTime_min=172,tag=!Dialogue163] add Dialogue163
scoreboard players set @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,score_TalkTime_min=172,tag=Dialogue163] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=163,score_DialogueTrigger=163,tag=Dialogue163] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lyra after hearing Silver/Giovanni story
#execute @a[x=267,y=64,z=694,r=10,tag=Dialogue163] ~ ~ ~ scoreboard players set @s[tag=!Dialogue164] DialogueTrigger 164

scoreboard players add @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164] TalkTime 1
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Lyra> Who does he think he is? That was unnecessary!"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Lyra> But what were they talking about? The revival of Team Rocket...?"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Lyra> They say Team Rocket was removed from the Kanto region by a child three years ago."}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Lyra> So this really is three years ago!"}

execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ playsound celebi ambient @s ~ ~ ~ 100 1 1
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=41,score_TalkTime=41] {"text":"<Lyra> Oh no! It's happening again...! It's Celebi's Time Travel!"}

#Blinds player
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ effect @s minecraft:blindness 10 1 true
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=46,score_TalkTime=46] ~ ~ ~ tp @s 108 54 738
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=46,score_TalkTime=46] ~ ~ ~ scoreboard players set @s click 1

#tp Giovanni in
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=47,score_TalkTime=48] ~ ~ ~ tp @e[x=-735,y=70,z=-242,dy=3,type=pixelmon:npc_trainer] 109 54 750

#tp Lyra in
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=47,score_TalkTime=48] ~ ~ ~ tp @e[x=-729,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 112 54 735


#Turns off particles #2
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=47,score_TalkTime=47] ~ ~ ~ setblock -861 65 -301 minecraft:iron_block

tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=53,score_TalkTime=53] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> ...I don't know why you have come here."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=60,score_TalkTime=60] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> Anyway, I have to warn you that this is not a place for kids like you."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=69,score_TalkTime=69] {"text":"<Lyra> Huh? That's the guy we just saw arguing with that boy!"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=78,score_TalkTime=78] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> You have a certain look..."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=85,score_TalkTime=85] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> It reminds me of the kid who stood in front of my three years ago..."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=95,score_TalkTime=95] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> You have the same eyes..."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=102,score_TalkTime=102] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> .... I'm on my way to Goldenrod City to answer the call and join my team."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=111,score_TalkTime=111] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> Are you going to get in my way?"}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=118,score_TalkTime=118] {"text":"<Lyra> Three years ago...? Goldenrod City...?"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=125,score_TalkTime=125] {"text":"<Lyra> Could this be the one that the radio was trying to reach?"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=134,score_TalkTime=134] ["",{"text":"<Lyra> Giovanni, their boss? Do you hear it, "},{"selector":"@p[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=134,score_TalkTime=134]"},{"text":"?"}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=142,score_TalkTime=142] {"text":"<Lyra> The radio is saying something strange!"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=150,score_TalkTime=150] {"text":"<Lyra> Team Rocket has occupied the Radio Tower at Goldenrod City!"}
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=160,score_TalkTime=160] ["",{"text":"<Lyra> It can't be! "},{"selector":"@p[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=160,score_TalkTime=160]"},{"text":", you solved this case already!"}]

#Plays Team Rocket music
execute @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=166,score_TalkTime=166] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=169,score_TalkTime=169] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<Team Rocket> ...This is the Radio Tower. This is the Radio Tower. We are pleased to declare Team Rocket's revival.","italic":true},{"text":"\u266a\u266b\u266c"}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=182,score_TalkTime=182] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<Team Rocket> ...Giovanni? ...Can you hear us? We have finally made it!...","italic":true},{"text":"\u266a\u266b\u266c"}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=192,score_TalkTime=192] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> My old associates need me..."}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=200,score_TalkTime=200] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> We will not repeat the failure of three years ago!"}]
tellraw @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=!Dialogue164,score_TalkTime_min=208,score_TalkTime=208] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> Team Rocket will be born again, and I will rule the world!"}]

scoreboard players tag @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,score_TalkTime_min=208,tag=!Dialogue164] add Dialogue164
scoreboard players set @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,score_TalkTime_min=208,tag=Dialogue164] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=164,score_DialogueTrigger=164,tag=Dialogue164] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Giovanni post-battle
#execute @a[x=87,y=50,z=719,dx=44,dy=20,dz=44,score_TalkTime=0,tag=Dialogue164] ~ ~ ~ scoreboard players set @s[tag=!Dialogue165] DialogueTrigger 165 {Inventory:[{id:"minecraft:netherbrick"}]}

#Giovanni respawn
#execute @a[x=87,y=50,z=719,dx=44,dy=20,dz=44.score_TalkTime=0,tag=Dialogue164] ~ ~ ~ execute @s[tag=!Dialogue165] ~ ~ ~ tp @e[x=-735,y=70,z=-242,dy=3,type=pixelmon:npc_trainer] 109 54 750

#Radio sparkle particle
#/execute @a[x=87,y=50,z=719,dx=44,dy=20,dz=44] ~ ~ ~ /particle fireworksSpark 106 53 751 0 2 0 0.1 0 normal @a[r=40]

scoreboard players add @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165] TalkTime 1
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165] ~ ~ ~ clear @s minecraft:netherbrick 0 1
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> How is this possible...?"}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> The past three years have been a waste...?"}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=16,score_TalkTime=16] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> How can a kid like you manage to destroy my team again?"}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<"},{"text":"Giovanni","color":"gray"},{"text":"> The precious dream of Team Rocket has become little more than an illusion..."}]

#tp Giovanni Out
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ particle cloud 109 54 750 1 1 1 0.15 100
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ tp @e[x=109,y=53,z=750,dy=3,type=pixelmon:npc_trainer] -735 71 -242

tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=34,score_TalkTime=34] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio: Pokémon Music] ","color":"aqua"},{"text":"<Team Rocket> ...Hey! Where has Giovanni gone? I wonder if he is listening to our broadcast... ...","italic":true},{"text":"\u266a\u266b\u266c"}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=43,score_TalkTime=43] {"text":"<Lyra> They keep calling for their boss. I feel sorry they don't know he's not coming."}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=53,score_TalkTime=53] ["",{"text":"<Lyra> After this, "},{"selector":"@p[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=53,score_TalkTime=53]"},{"text":", you will defeat them!"}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=60,score_TalkTime=60] ["",{"text":"<Lyra> ...Wait a second! "},{"selector":"@p[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=60,score_TalkTime=60]"},{"text":", you're still here. Then, who will defeat Team Rocket...?"}]

execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ playsound celebi ambient @s ~ ~ ~ 100 1 1

tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=73,score_TalkTime=73] {"text":"<Lyra> Not again...! I've had enough!"}

#Blinds and tps player
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=81,score_TalkTime=81] ~ ~ ~ effect @s minecraft:blindness 10 1 true
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=81,score_TalkTime=81] ~ ~ ~ tp @s 617 64 -700

#Enables Particles #3
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=70,score_TalkTime=70] ~ ~ ~ /setblock -861 66 -301 minecraft:redstone_block
#execute @e[x=87,y=50,z=719,dx=44,dy=20,dz=44,name=Celebi,type=pixelmon:pixelmon] ~ ~ ~ /particle enchantmenttable ~-2 ~-2 ~-2 4 4 4 1 50

#Disables Particles #3
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=82,score_TalkTime=82] ~ ~ ~ /setblock -861 66 -301 minecraft:iron_block

#turns back on keeping player near Lyra
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=81,score_TalkTime=158] ~ ~ ~ tp @s[x=628,y=63,z=-703,dx=10,dy=10,dz=4] ~-3 ~ ~
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=81,score_TalkTime=158] ~ ~ ~ tp @s[x=615,y=63,z=-711,dx=5,dy=10,dz=5] ~ ~ ~3

#re-tps Lyra in
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=83,score_TalkTime=84] ~ ~ ~ tp @e[x=-725,y=70,z=-242,dy=3,type=pixelmon:npc_chatting] 621 64 -701

tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=84,score_TalkTime=84] {"text":"<Lyra> Traveling through time sure doesn't feel good."}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=92,score_TalkTime=92] {"text":"<Lyra> Hey, my Marill!"}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=99,score_TalkTime=99] {"text":"<Lyra> I missed you so much! Wait a sec... So we must be back to our own time!"}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=109,score_TalkTime=109] {"text":"<Lyra> It was all so bizarre."}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=116,score_TalkTime=116] {"text":"<Lyra> But now that we are safely back to our time and Team Rocket's terrible design fell through, we can say..."}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=128,score_TalkTime=128] {"text":"<Lyra> All's well that ends well, right?"}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=135,score_TalkTime=135] ["",{"text":"<Lyra> "},{"selector":"@p[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=135,score_TalkTime=135]"},{"text":", you never cease to to inspire great adventures."}]
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=143,score_TalkTime=143] {"text":"<Lyra> It sure was an exhausting day, though. I better get going."}
tellraw @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=153,score_TalkTime=143] {"text":"<Lyra> See you!"}

#tp Lyra and Marill out
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=158,score_TalkTime=158] ~ ~ ~ particle cloud 620 64 -701 1 1 1 1 100
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=158,score_TalkTime=158] ~ ~ ~ tp @e[x=621,y=63,z=-700,dy=3,type=pixelmon:statue] -746 75 -242
execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=158,score_TalkTime=158] ~ ~ ~ tp @e[x=621,y=63,z=-701,dy=3,type=pixelmon:npc_chatting] -725 71 -242

execute @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=!Dialogue165,score_TalkTime_min=158,score_TalkTime=158] ~ ~ ~ advancement grant @s only johto:rocket5

scoreboard players tag @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,score_TalkTime_min=158,tag=!Dialogue165] add Dialogue165
scoreboard players set @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,score_TalkTime_min=158,tag=Dialogue165] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=165,score_DialogueTrigger=165,tag=Dialogue165] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Celebi's Return Home option:
#execute @a[x=105,y=54,z=731,r=3,tag=!Dialogue165] ~ ~ ~ testfor @s[tag=!Dialogue164] ~ ~ ~

#execute @a[x=105,y=54,z=731,r=3,tag=!Dialogue165] ~ ~ ~ execute @s[tag=!Dialogue164] ~ ~ ~ tellraw @s ["",{"text":"Would you like Celebi to take you to your time?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 42"}},{"text":"]"}]
#execute @a[x=105,y=54,z=731,r=10,tag=!Dialogue165] ~ ~ ~ execute @s[tag=!Dialogue164] ~ ~ ~ scoreboard players enable @s TriggerCommand

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Ruins of Alph post-red, spawning visual Azure Flute
#execute @a[x=160,y=60,z=-295,dx=121,dy=30,dz=205,score_TalkTime=0,tag=Red] ~ ~ ~ scoreboard players set @s[tag=!Dialogue166] DialogueTrigger 166

scoreboard players add @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166] TalkTime 1

#Toggles Lightning effect
execute @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ /setblock -861 64 -299 minecraft:redstone_block
execute @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ /setblock -861 64 -299 minecraft:iron_block
#/summon minecraft:lightning_bolt 176 64 -141


#Tps Archeologists around
execute @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166,score_TalkTime_min=6,score_TalkTime=10] ~ ~ ~ tp @e[x=178,y=64,z=-127,r=1,type=pixelmon:npc_chatting] -697 86 -242
execute @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166,score_TalkTime_min=6,score_TalkTime=10] ~ ~ ~ tp @e[x=-705,y=85,z=-242,dy=3,type=pixelmon:npc_chatting] 174 64 -141

#Summons visual-only Azure flute
execute @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=!Dialogue166,score_TalkTime_min=7,score_TalkTime=7] ~ ~ ~ summon minecraft:item 176 64 -141 {Item:{id:"pixelmon:azure_flute",Count:1,tag:{display:{Lore:["A flute that puts out echoing","sounds that do not seem to be of","this world. No one knows who made","it. It seems to call to the","highest mountains."]}}},Age:-32768,PickupDelay:32767}

scoreboard players tag @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,score_TalkTime_min=10,tag=!Dialogue166] add Dialogue166
scoreboard players set @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,score_TalkTime_min=10,tag=Dialogue166] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=166,score_DialogueTrigger=166,tag=Dialogue166] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Archeologist giving Azure Flute
#execute @a[x=174,y=64,z=-141,r=10,score_TalkTime=0,tag=Red] ~ ~ ~ scoreboard players set @s[tag=!Dialogue167] DialogueTrigger 167

scoreboard players add @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167] TalkTime 1
tellraw @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Archaeologist> Is that... the Azure Flute?"}
tellraw @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Archaeologist> I've heard legends of in Sinnoh, but.. what is it doing in Johto?"}
tellraw @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Archaeologist> You, Champion! Could you help me investigate this?"}

#Kill ground Flute
execute @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ kill @e[x=176,y=63,z=-141,dy=2,type=item]
execute @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=24,score_TalkTime=24] ~ ~ ~ give @s pixelmon:azure_flute 1 0 {display:{Lore:["A flute that puts out echoing","sounds that do not seem to be of","this world. No one knows who made","it. It seems to call to the","highest mountains."]}}

tellraw @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Archaeologist> The Flute is said to call upon the mythical Pokemon Arceus atop Mt. Coronet, but that is unreachable to us..."}
tellraw @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=!Dialogue167,score_TalkTime_min=38,score_TalkTime=38] {"text":"<Archaeologist> Is there a mountain in this region that may have a similar connection?"}

scoreboard players tag @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_TalkTime_min=38,tag=!Dialogue167] add Dialogue167
scoreboard players set @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,score_TalkTime_min=38,tag=Dialogue167] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=167,score_DialogueTrigger=167,tag=Dialogue167] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Post-catching Arceus
#execute @e[x=174,y=63,z=-141,r=20,type=pixelmon:pixelmon,name=Arceus] ~ ~ ~ execute @p[r=15,score_TalkTime=0,tag=Dialogue167,score_Arceus_min=1] ~ ~ ~ execute @s[tag=Red] ~ ~ ~ scoreboard players set @s[tag=!Dialogue168] DialogueTrigger 168

scoreboard players add @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168] TalkTime 1
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Archaeologist> No way! Could it be a Pokémon from Sinnoh... The one they call Arceus?"}
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Archaeologist> Oh, could it be...? Arceus causing all this...? I cannot explain it any other way..."}
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Archaeologist> Arceus may be the key to solving the mystery of the Unown and the Ruins of Alph...?"}
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Archaeologist> Can you come to the Ruins of Alph with me?"}
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=39,score_TalkTime=39] {"text":"<Archaeologist> Please! You must! I am trembling with excitement."}
tellraw @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=48,score_TalkTime=48] {"text":"<Archaeologist> I think something is about to happen!"}

#Enables Walking into portal
execute @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=!Dialogue168,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ setblock -689 90 -242 minecraft:redstone_block

scoreboard players tag @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,score_TalkTime_min=58,tag=!Dialogue168] add Dialogue168
scoreboard players set @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,score_TalkTime_min=58,tag=Dialogue168] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=168,score_DialogueTrigger=168,tag=Dialogue168] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Inside fake ruins, tps into Sinjoh Ruins
#scoreboard players set @a[x=-992,y=0,z=-172,dx=45,dy=70,dz=60,score_TalkTime=0] DialogueTrigger 169

scoreboard players add @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169] TalkTime 1
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Archaeologist> Hmm. I have been studying the ruins for many years, but something feels...different."}

#Enables Particles 1
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -691 91 -242 minecraft:redstone_block

tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Archaeologist> Wow! The Unown pictures on the wall... It feels like they're staring at me!"}

#Enables Particles 2
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ setblock -692 91 -242 minecraft:redstone_block
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ setblock -689 89 -270 minecraft:iron_block

tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Archaeologist> What is this? There is something eerie that is making my legs shiver. I can't stop them!"}

#Enables Particles 3
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ fill -693 91 -242 -694 91 -242 minecraft:redstone_block

execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ effect @s minecraft:blindness 7 1
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tp @s -1042 61 -181 -90 ~

#Disables particles
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ fill -694 91 -242 -691 91 -242 air

#tp Hiker in
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=39,score_TalkTime=40] ~ ~ ~ tp @e[x=-701,y=86,z=-242,r=1,c=1,type=pixelmon:npc_chatting] -1044 61 -181

tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Hiker> Well, hello! It's so freezing, isn't it? For a youngster like you to be interested in the Sinjoh Ruins is not something we see every day."}
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=32,score_TalkTime=42] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=54,score_TalkTime=54] {"text":"<Hiker> Take a look at them. From the design of the pillars at the Sinjoh Ruins, you can see that the cultures of Sinnoh and Johto have blended."}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Hiker> Oh, right! We don't need to be standing here."}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=74,score_TalkTime=74] {"text":"<Hiker> Why don't you come to the cabin around the corner for more discussion?"}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=83,score_TalkTime=83] {"text":"<Hiker> By the way, we happen to have a person at the cabin."}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=91,score_TalkTime=91] {"text":"<Hiker> Any Trainer should know who she is."}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=98,score_TalkTime=98] {"text":"<Hiker> The famous Trainer from Sinnoh!"}
tellraw @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=105,score_TalkTime=105] {"text":"<Hiker> She is traveling around to study myths and ancient ruins. Isn't that something?"}

#tps Hiker out
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=115,score_TalkTime=115] ~ ~ ~ tp @e[type=pixelmon:npc_chatting,x=-1044,y=61,z=-181,r=1,c=1] -701 86 -242
execute @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=!Dialogue169,score_TalkTime_min=115,score_TalkTime=115] ~ ~ ~ particle cloud -1044 61 -181 1 1 1 1 100

scoreboard players tag @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,score_TalkTime_min=115,tag=!Dialogue169] add Dialogue169
scoreboard players set @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,score_TalkTime_min=115,tag=Dialogue169] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=169,score_DialogueTrigger=169,tag=Dialogue169] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Hiker Continuation in the house
#execute @a[x=-1085,y=60,z=-230,dx=16,dy=5,dz=15,score_TalkTime=0,tag=Dialogue169] ~ ~ ~ scoreboard players set @s[tag=!Dialogue170] DialogueTrigger 170

scoreboard players add @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170] TalkTime 1
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Hiker> A long time ago, people used to draw life from Pokémon and also give their lives to those Pokémon..."}
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Hiker> That shows that people and Pokémon used to be more closely bonded with each other."}
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Hiker> When people moved from place to place, the myths and legends of Pokémon and their power would also be carried with those people. "}
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Hiker> That's how myths and legends from each region are blended with each other."}
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=45,score_TalkTime=45] {"text":"<Hiker> The ancient ruins here have inherited the legends from both the Ruins of Alph in Johto and the Spear Pillar in Sinnoh. "}
tellraw @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=!Dialogue170,score_TalkTime_min=58,score_TalkTime=58] {"text":"<Hiker> That is proof that people from Johto and Sinnoh blended together as a group."}

scoreboard players tag @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,score_TalkTime_min=58,tag=!Dialogue170] add Dialogue170
scoreboard players set @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,score_TalkTime_min=58,tag=Dialogue170] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=170,score_DialogueTrigger=170,tag=Dialogue170] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Cynthia introduction after Hiker finishes
#execute @a[x=-1081,y=62,z=-224,r=3,score_TalkTime=0,tag=Dialogue170] ~ ~ ~ scoreboard players set @s[tag=!Dialogue171] DialogueTrigger 171

#tp Cynthia in separately
#execute @a[x=-1081,y=62,z=-224,r=20,tag=!Dialogue171,score_TalkTime=0] ~ ~ ~ tp @e[x=-815,y=64,z=-235,dy=3,type=pixelmon:npc_chatting] -1081 61 -224

scoreboard players add @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171] TalkTime 1
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Cynthia> My name is Cynthia. I am a Pokémon Trainer."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Cynthia> The Sinjoh Ruins remind me of Sinnoh, where I come from."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Cynthia> Initially, I thought it was because it snows a lot here as well. But that was not it."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Cynthia> A long time ago...people came from Sinnoh to live here."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Cynthia> They must have built a temple here while longing for home."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Cynthia> That's why we call these the Sinjoh Ruins..."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Cynthia> You are...a Pokémon Trainer?"}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=59,score_TalkTime=59] {"text":"<Cynthia> I can sense strong power coming from your Poké Ball..."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=67,score_TalkTime=67] {"text":"<Cynthia> I feel a familiar presence..."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=74,score_TalkTime=74] {"text":"<Cynthia> The power of Dialga... Palkia... or could it be Giratina?"}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=84,score_TalkTime=84] {"text":"<Cynthia> It's similar, but not quite the same..."}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=91,score_TalkTime=91] {"text":"<Cynthia> Have you got time? Can you come to the Sinjoh Ruins with me?"}
tellraw @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=100,score_TalkTime=100] {"text":"<Cynthia> Call it a Trainer's intuition. When you and your Pokémon step onto that stage, something will happen."}

#tp Cynthia out
execute @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=110,score_TalkTime=110] ~ ~ ~ particle cloud -1081 61 -224 1 1 1 1 100
execute @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=!Dialogue171,score_TalkTime_min=110,score_TalkTime=110] ~ ~ ~ tp @e[x=-1081,y=61,z=-224,r=1,c=1,type=pixelmon:npc_chatting] -815 65 -235

scoreboard players tag @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,score_TalkTime_min=110,tag=!Dialogue171] add Dialogue171
scoreboard players set @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,score_TalkTime_min=110,tag=Dialogue171] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=171,score_DialogueTrigger=171,tag=Dialogue171] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sinjoh Altar Cynthia
#execute @a[x=-1056,y=47,z=-131,dx=33,dy=15,dz=69,score_TalkTime=0,tag=Dialogue171] ~ ~ ~ scoreboard players set @s[tag=!Dialogue172] DialogueTrigger 172

scoreboard players add @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172] TalkTime 1

#tp Cynthia in
#execute @a[x=-1046,y=48,z=-111,r=50,tag=Dialogue171] ~ ~ ~ execute @s[tag=!Dialogue172] ~ ~ ~ tp @e[x=-815,y=64,z=-233,dy=3,type=pixelmon:npc_chatting] -1046 48 -111

tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Cynthia> This is the Mystri Stage."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Cynthia> The mythical stage built to show respect for Arceus."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Cynthia> It is said that people used to celebrate its magnificent might with music and dance."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Cynthia> Some people in Johto still pass down this tradition."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=33,score_TalkTime=33] {"text":"<Cynthia> According to an ancient document, time, space, and antimatter, or what combined we call the world,"}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Cynthia> shall be born when Arceus stands on the Mystri Stage."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=52,score_TalkTime=52] {"text":"<Cynthia> This is where one might say, 'The lead enters the Mystri Stage at last.'"}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=62,score_TalkTime=62] {"text":"<Cynthia> All my study of ruins and Pokémon mythology in Sinnoh may have been to bring you up on this stage today..."}

execute @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=72,score_TalkTime=72] ~ ~ ~ tp @e[x=-1046,y=48,z=-111,r=1,type=pixelmon:npc_chatting,c=1] -1044 51 -93 180 ~0
execute @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=72,score_TalkTime=72] ~ ~ ~ particle cloud -1046 48 -111 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=74,score_TalkTime=74] {"text":"<Cynthia> Depicted on that Mystri Stage are the Pokémon that shaped this world."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=83,score_TalkTime=83] {"text":"<Cynthia> The circle in the middle is Arceus, the origin of it all..."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=92,score_TalkTime=92] {"text":"<Cynthia> The purple pattern represents Palkia, the master of space and dimensions..."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=102,score_TalkTime=102] {"text":"<Cynthia> The blue pattern represents Dialga, the guardian of time..."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=111,score_TalkTime=111] {"text":"<Cynthia> The red pattern represents Giratina, the ruler of the world that is on the opposite side of ours, the world of antimatter..."}

execute @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=122,score_TalkTime=122] ~ ~ ~ tp @e[x=-1044,y=51,z=-93,r=1,type=pixelmon:npc_chatting,c=1] -1046 48 -111
execute @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=122,score_TalkTime=122] ~ ~ ~ particle cloud -1044 51 -93 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=124,score_TalkTime=124] {"text":"<Cynthia> Arceus has accepted you as a Trainer."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=131,score_TalkTime=131] {"text":"<Cynthia> Arceus, having shaped the world, is said to show you a glimpse of its true power."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=142,score_TalkTime=142] {"text":"<Cynthia> The power of possibly making life appear out of nothing..."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=151,score_TalkTime=151] {"text":"<Cynthia> It seems that something will happen when you choose one of the circles with Arceus on the stage..."}
tellraw @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=!Dialogue172,score_TalkTime_min=163,score_TalkTime=163] {"text":"<Cynthia> You'll want to be well prepared."}

scoreboard players tag @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=170,tag=!Dialogue172] add Dialogue172
scoreboard players set @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,score_TalkTime_min=170,tag=Dialogue172] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=172,score_DialogueTrigger=172,tag=Dialogue172] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Dialga Spawn
#execute @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ scoreboard players set @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0] DialogueTrigger 173

#execute @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] ~ ~ ~ execute @a[x=-1038,y=50,z=-98,r=2,tag=Dialogue172] ~ ~ ~ testfor @s[tag=!SinnohLegend]
#execute @a[x=-1038,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ scoreboard players enable @s[tag=Dialogue172] TriggerCommand
#execute @a[x=-1038,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"<Cynthia> So you choose Dialga, the Guardian of Time?"}
#execute @a[x=-1038,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 12"}}


scoreboard players add @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173] TalkTime 1

#Tags Arceus for display
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ scoreboard players set @e[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,type=pixelmon:pixelmon] Arceus 1 {ndex:493s}

execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -702 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -701 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -713 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @a[score_TriggerCommand_min=12,score_TriggerCommand=12] record
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=12,score_TriggerCommand=12] MusicCooldown 740
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound azureflute ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:1}

execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -703 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -708 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -707 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ summon minecraft:item -1044 60 -93 {Item:{id:"minecraft:egg",Count:1},Age:-32768,PickupDelay:32767,NoGravity:1b}
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ playsound block.portal.travel ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1

#Gives player Pokemon
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ particle cloud -1044 51 -93 1 1 1 0.15 100
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ kill @e[x=-1044,y=50,z=-93,r=1,type=item]
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ playsound entity.generic.explode ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 10 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tellraw @a[score_TriggerCommand_min=12,score_TriggerCommand=12] {"text":"The mysterious round object took the shape of a Pokémon!"}
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ pokegive @a[score_TriggerCommand_min=12,score_TriggerCommand=12,tag=!SinnohLegend] Dialga lvl:1 gr:7
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players tag @a[score_TriggerCommand_min=12,score_TriggerCommand=12] add SinnohLegend

#Turns on motion data tp down item
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ setblock -712 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ setblock -710 94 -242 minecraft:redstone_block

#Spawns secondary Egg No 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ setblock -704 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ summon minecraft:item -1044 60 -85 {Item:{id:"pixelmon:Griseous_Orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Giratina"]}}},Age:-32768,NoGravity:1b}

#Spawns secondary Egg No 2
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ setblock -706 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ summon minecraft:item -1050 60 -98 {Item:{id:"pixelmon:lustrous_orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Palkia"]}}},Age:-32768,NoGravity:1b}

execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound block.portal.trigger ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=12,score_TriggerCommand=12] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ setblock -709 94 -242 minecraft:redstone_block

execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=12,score_TriggerCommand=12] VillagerClick 0
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ fill -701 94 -242 -713 94 -242 minecraft:iron_block

execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:0}
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=12,score_TriggerCommand=12] click 1
execute @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=!Dialogue173,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=12,score_TriggerCommand=12] TriggerCommand 0

scoreboard players tag @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_TalkTime_min=48,tag=!Dialogue173] add Dialogue173
scoreboard players set @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,score_TalkTime_min=48,tag=Dialogue173] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=173,score_DialogueTrigger=173,tag=Dialogue173] DialogueTrigger 0

#scoreboard players tag @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0,tag=Dialogue173] remove Dialogue173
#scoreboard players tag @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0,tag=Dialogue174] remove Dialogue174
#scoreboard players tag @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0,tag=Dialogue175] remove Dialogue175

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Palkia Spawn
#execute @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ scoreboard players set @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0] DialogueTrigger 174

#execute @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] ~ ~ ~ execute @a[x=-1050,y=50,z=-98,r=2,tag=Dialogue172] ~ ~ ~ testfor @s[tag=!SinnohLegend]
#execute @a[x=-1050,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ scoreboard players enable @s[tag=Dialogue172] TriggerCommand
#execute @a[x=-1050,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"<Cynthia> So you choose Palkia, the master of space and dimensions?"}
#execute @a[x=-1050,y=50,z=-98,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 13"}}


scoreboard players add @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174] TalkTime 1

#Tags Arceus for display
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ scoreboard players set @e[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,type=pixelmon:pixelmon] Arceus 1 {ndex:493s}

execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -702 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -701 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -713 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @a[score_TriggerCommand_min=13,score_TriggerCommand=13] record
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=13,score_TriggerCommand=13] MusicCooldown 740
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound azureflute ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:1}

execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -703 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -708 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -707 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ summon minecraft:item -1044 60 -93 {Item:{id:"minecraft:egg",Count:1},Age:-32768,PickupDelay:32767,NoGravity:1b}
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ playsound block.portal.travel ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1

#Gives player Pokemon
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ particle cloud -1044 51 -93 1 1 1 0.15 100
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ kill @e[x=-1044,y=50,z=-93,r=1,type=item]
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ playsound entity.generic.explode ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 10 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tellraw @a[score_TriggerCommand_min=13,score_TriggerCommand=13] {"text":"The mysterious round object took the shape of a Pokémon!"}
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ pokegive @a[score_TriggerCommand_min=13,score_TriggerCommand=13,tag=!SinnohLegend] Palkia lvl:1 gr:7
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players tag @a[score_TriggerCommand_min=13,score_TriggerCommand=13] add SinnohLegend

#Turns on motion data tp down item
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -711 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -710 94 -242 minecraft:redstone_block

#Spawns secondary Egg No 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -704 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /summon minecraft:item -1044 60 -85 {Item:{id:"pixelmon:Griseous_Orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Giratina"]}}},Age:-32768,NoGravity:1b}

#Spawns secondary Egg No 2
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ /setblock -705 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ /summon minecraft:item -1038 60 -98 {Item:{id:"pixelmon:adamant_orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Dialga"]}}},Age:-32768,NoGravity:1b}

execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound block.portal.trigger ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=13,score_TriggerCommand=13] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ setblock -709 94 -242 minecraft:redstone_block

execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=13,score_TriggerCommand=13] VillagerClick 0
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ fill -701 94 -242 -713 94 -242 minecraft:iron_block

execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:0}
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=13,score_TriggerCommand=13] click 1
execute @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=!Dialogue174,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=13,score_TriggerCommand=13] TriggerCommand 0

scoreboard players tag @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,score_TalkTime_min=48,tag=!Dialogue174] add Dialogue174
scoreboard players set @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,score_TalkTime_min=48,tag=Dialogue174] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=174,score_DialogueTrigger=174,tag=Dialogue174] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Giratina Spawn
#execute @a[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,tag=Dialogue172,score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ scoreboard players set @e[x=-799,y=64,z=-287,dy=3,type=armor_stand,score_TalkTime=0,score_DialogueTrigger=0] DialogueTrigger 175

#execute @e[x=-1059,y=50,z=-103,dx=30,dy=4,dz=30,type=pixelmon:pixelmon,name=Arceus] ~ ~ ~ execute @a[x=-1044,y=50,z=-85,r=2,tag=Dialogue172] ~ ~ ~ testfor @s[tag=!SinnohLegend]
#execute @a[x=-1044,y=50,z=-85,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ scoreboard players enable @s[tag=Dialogue172] TriggerCommand
#execute @a[x=-1044,y=50,z=-85,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"<Cynthia> So you choose Giratina, the ruler of the Distortion World?"}
#execute @a[x=-1044,y=50,z=-85,r=3,tag=!Dialogue176,score_TalkTime=0] ~ ~ ~ execute @s[tag=!SinnohLegend] ~ ~ ~ tellraw @s[tag=Dialogue172] {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 14"}}


scoreboard players add @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175] TalkTime 1

#Tags Arceus for display
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=3] ~ ~ ~ scoreboard players set @e[x=-1060,y=46,z=-143,dx=40,dy=15,dz=70,type=pixelmon:pixelmon] Arceus 1 {ndex:493s}

execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -702 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -701 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock -713 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @a[score_TriggerCommand_min=14,score_TriggerCommand=14] record
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=14,score_TriggerCommand=14] MusicCooldown 740
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound azureflute ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:1}

execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -703 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -708 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ setblock -707 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ summon minecraft:item -1044 60 -93 {Item:{id:"minecraft:egg",Count:1},Age:-32768,PickupDelay:32767,NoGravity:1b}
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ playsound block.portal.travel ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1

#Gives player Pokemon
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ particle cloud -1044 51 -93 1 1 1 0.15 100
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ kill @e[x=-1044,y=50,z=-93,r=1,type=item]
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ playsound entity.generic.explode ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 10 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tellraw @a[score_TriggerCommand_min=14,score_TriggerCommand=14] {"text":"The mysterious round object took the shape of a Pokémon!"}
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ pokegive @a[score_TriggerCommand_min=14,score_TriggerCommand=14,tag=!SinnohLegend] Giratina lvl:1 gr:7
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ scoreboard players tag @a[score_TriggerCommand_min=14,score_TriggerCommand=14] add SinnohLegend

#Turns on motion data tp down item
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -712 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -711 94 -242 minecraft:redstone_block

#Spawns secondary Egg No 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /setblock -705 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ /summon minecraft:item -1038 60 -98 {Item:{id:"pixelmon:adamant_orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Dialga"]}}},Age:-32768,NoGravity:1b}

#Spawns secondary Egg No 2
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ /setblock -706 94 -242 minecraft:redstone_block
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=35,score_TalkTime=35] ~ ~ ~ /summon minecraft:item -1050 60 -98 {Item:{id:"pixelmon:lustrous_orb",Count:1,tag:{display:{Lore:["A glowing orb containing","the essence of Palkia"]}}},Age:-32768,NoGravity:1b}

execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound block.portal.trigger ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound arceus ambient @a[score_TriggerCommand_min=14,score_TriggerCommand=14] ~ ~ ~ 100 1 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ setblock -709 94 -242 minecraft:redstone_block

execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=14,score_TriggerCommand=14] VillagerClick 0
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ fill -701 94 -242 -713 94 -242 minecraft:iron_block

execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ entitydata @e[score_Arceus_min=1,score_Arceus=1,type=pixelmon:pixelmon] {NoAI:0}
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=14,score_TriggerCommand=14] click 1
execute @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=!Dialogue175,score_TalkTime_min=48,score_TalkTime=48] ~ ~ ~ scoreboard players set @a[score_TriggerCommand_min=14,score_TriggerCommand=14] TriggerCommand 0

scoreboard players tag @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=48,tag=!Dialogue175] add Dialogue175
scoreboard players set @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,score_TalkTime_min=48,tag=Dialogue175] TalkTime 0
scoreboard players set @e[score_DialogueTrigger_min=175,score_DialogueTrigger=175,tag=Dialogue175] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sinjoh Cynthia after summoning a legendary
#execute @a[x=-1046,y=48,z=-111,r=5,score_TalkTime=0,tag=SinnohLegend] ~ ~ ~ scoreboard players set @s[tag=!Dialogue176] DialogueTrigger 176

scoreboard players add @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176] TalkTime 1
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Cynthia> That shining sphere..."}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Cynthia> Could it be... an Egg?"}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Cynthia> Did we just witness the very moment an Egg was brought into this world?"}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Cynthia> A moment no-one has ever seen?"}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Cynthia> An Egg is the cradle of every being."}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=39,score_TalkTime=39] {"text":"<Cynthia> This planet itself is an Egg in a sense..."}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=46,score_TalkTime=46] {"text":"<Cynthia> Life that comes from an Egg will come to an end in due course... to begin anew..."}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Cynthia> That may be what Arceus wanted to show us."}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=64,score_TalkTime=64] {"text":"<Cynthia> That was... We seem to be surrounded by that strong power again...!"}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=73,score_TalkTime=73] {"text":"<Cynthia> I must investigate this further!"}
tellraw @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=80,score_TalkTime=80] {"text":"<Cynthia> Thank you! This would have been impossible without you!"}

#tp Cynthia out
execute @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=88,score_TalkTime=88] ~ ~ ~ tp @e[x=-1046,y=48,z=-111,r=1,type=pixelmon:npc_chatting,c=1] -815 65 -233
execute @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=!Dialogue176,score_TalkTime_min=88,score_TalkTime=88] ~ ~ ~ particle cloud -1046 48 -111 1 1 1 1 100

scoreboard players tag @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=88,tag=!Dialogue176] add Dialogue176
scoreboard players set @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,score_TalkTime_min=88,tag=Dialogue176] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=176,score_DialogueTrigger=176,tag=Dialogue176] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Abra taking player home
#Dialogue177

scoreboard players add @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177] TalkTime 1

#Blinds player
execute @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ effect @s minecraft:blindness 5 1 true

#tps to real Ruins of Alph
execute @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189] 197 38 -118 -75 ~
execute @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ playsound flee ambient @a[x=-1099,y=0,z=-252,dx=102,dy=100,dz=189] ~ ~ ~ 1000 1 1

#tp Archeologist in
execute @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ tp @e[x=-699,y=86,z=-242,r=1,type=pixelmon:npc_chatting] 201 38 -118

tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=5,score_TalkTime=5] {"text":"<Archaeologist> Oh, are you all right?"}
tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Archaeologist> You disappeared right in front of me. I was so surprised!"}
tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Archaeologist> I see. The power of Arceus and Unown affected each other to create a huge energy, which sent you to the Sinjoh Ruins...?"}
tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Archaeologist> Unown, the Ruins of Alph, and Arceus... The mystery deepens... "}
tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=43,score_TalkTime=43] {"text":"<Archaeologist> It has made me even more inquisitive!"}
tellraw @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Archaeologist> I will one day solve all the mysteries!"}
execute @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=!Dialogue177,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ advancement grant @s only johto:event8

scoreboard players tag @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=50,tag=!Dialogue177] add Dialogue177
scoreboard players set @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,score_TalkTime_min=50,tag=Dialogue177] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=177,score_DialogueTrigger=177,tag=Dialogue177] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz prompt
#testfor @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,score_TalkTime=0,tag=!Dialogue179,score_Cooldown=0]
#tellraw @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,score_TalkTime=0,tag=!Dialogue179] {"text":"We have a special Quiz campaign! Answer five questions correctly in a row to win a Radio Card! When you load it into the Pokégear, you will be able to listen to the radio... anytime, anywhere! Would you like to try our Quiz?"}
#scoreboard players enable @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,score_TalkTime=0,tag=!Dialogue179] TriggerCommand
#tellraw @a[x=510,y=30,z=-274,dx=11,dy=4,dz=4,score_TalkTime=0,tag=!Dialogue179] {"text": "", "extra": [{"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 21"}}]}




#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz Incorrect Question
#Dialogue178


scoreboard players add @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178] TalkTime 1
tellraw @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] {"text":"Oh, dear. Sorry, but you got it wrong. Please try again!"}
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.player.burp ambient @s ~ ~ ~ 1 1 1

#Resets all previous answers
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue179
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue180
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue181
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue182
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue183
execute @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=!Dialogue178,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s Cooldown 20

scoreboard players tag @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=2,tag=!Dialogue178] add Dialogue178
scoreboard players set @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,score_TalkTime_min=2,tag=Dialogue178] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=178,score_DialogueTrigger=178,tag=Dialogue178] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz First Question

scoreboard players add @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179] TalkTime 1
tellraw @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> First question!"}

tellraw @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Radio Tower Clerk> Can a player can pick up a Town Map in Cherrygrove City?"}
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=6,score_TalkTime=7] ~ ~ ~ scoreboard players enable @s TriggerCommand
tellraw @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 16"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 15"}},{"text":"]"}]

#Resets all quiz dialogues
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue178
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue179
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue180
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue181
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue182
execute @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=!Dialogue179,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue183

scoreboard players tag @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,score_TalkTime_min=7,tag=!Dialogue179] add Dialogue179
scoreboard players set @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,score_TalkTime_min=7,tag=Dialogue179] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=179,score_DialogueTrigger=179,tag=Dialogue179] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz Second Question

scoreboard players add @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180] TalkTime 1
tellraw @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> Correct! Second question!"}
execute @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1

tellraw @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Radio Tower Clerk> Nidorina can only be female. True?"}
execute @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180,score_TalkTime_min=6,score_TalkTime=7] ~ ~ ~ scoreboard players enable @s TriggerCommand
tellraw @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=!Dialogue180,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 17"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 15"}},{"text":"]"}]

scoreboard players tag @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,score_TalkTime_min=7,tag=!Dialogue180] add Dialogue180
scoreboard players set @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,score_TalkTime_min=7,tag=Dialogue180] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=180,score_DialogueTrigger=180,tag=Dialogue180] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz Third Question

scoreboard players add @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181] TalkTime 1
tellraw @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> Correct! Third question!"}
execute @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1

tellraw @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Radio Tower Clerk> Kurt, the Poke Ball creator, uses apricots as ingredients?"}
execute @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181,score_TalkTime_min=6,score_TalkTime=7] ~ ~ ~ scoreboard players enable @s TriggerCommand
tellraw @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=!Dialogue181,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 15"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 18"}},{"text":"]"}]

scoreboard players tag @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,score_TalkTime_min=7,tag=!Dialogue181] add Dialogue181
scoreboard players set @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,score_TalkTime_min=7,tag=Dialogue181] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=181,score_DialogueTrigger=181,tag=Dialogue181] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz Fourth Question

scoreboard players add @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182] TalkTime 1
tellraw @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> Correct! Fourth question!"}
execute @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1

tellraw @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Radio Tower Clerk> It’s impossible to use a TM on Magikarp. True?"}
execute @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182,score_TalkTime_min=6,score_TalkTime=7] ~ ~ ~ scoreboard players enable @s TriggerCommand
tellraw @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=!Dialogue182,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 19"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 15"}},{"text":"]"}]

scoreboard players tag @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=7,tag=!Dialogue182] add Dialogue182
scoreboard players set @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,score_TalkTime_min=7,tag=Dialogue182] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=182,score_DialogueTrigger=182,tag=Dialogue182] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz Fifth Question

scoreboard players add @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183] TalkTime 1
tellraw @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> Correct! Final question!"}
execute @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1


tellraw @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183,score_TalkTime_min=7,score_TalkTime=7] {"text":"<Radio Tower Clerk> In our radio programs, do we have a host by the name of Whitney?"}
execute @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183,score_TalkTime_min=6,score_TalkTime=7] ~ ~ ~ scoreboard players enable @s TriggerCommand
tellraw @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=!Dialogue183,score_TalkTime_min=7,score_TalkTime=7] ["",{"text":"["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 15"}},{"text":"] \u0020 \u0020 ["},{"text":"No","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 20"}},{"text":"]"}]

scoreboard players tag @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,score_TalkTime_min=7,tag=!Dialogue183] add Dialogue183
scoreboard players set @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,score_TalkTime_min=7,tag=Dialogue183] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=183,score_DialogueTrigger=183,tag=Dialogue183] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Radio Tower Quiz all correct
#

scoreboard players add @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=!Dialogue184] TalkTime 1
tellraw @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=!Dialogue184,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Radio Tower Clerk> Bingo! You got it! Congratulations! Here's your prize, a Radio Card!"}
execute @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=!Dialogue184,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1


tellraw @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=!Dialogue184,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Radio Tower Clerk> Please tune in to our radio shows!"}
execute @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=!Dialogue184,score_TalkTime_min=9,score_TalkTime=10] ~ ~ ~ scoreboard players tag @s add RadioCard

scoreboard players tag @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=11,tag=!Dialogue184] add Dialogue184
scoreboard players set @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,score_TalkTime_min=11,tag=Dialogue184] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=184,score_DialogueTrigger=184,tag=Dialogue184] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lucky Number Show Roll
#execute @a[score_TriggerCommand_min=76,score_TriggerCommand=76] ~ ~ ~ scoreboard players set @s DialogueTrigger 185

scoreboard players add @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185] TalkTime 1
tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=1,score_TalkTime=1] {"text":"<DJ Reed> I need to run a check on this number to see if it matches any of your Pokémon's ID numbers. Please wait."}

#Rolls for an ID
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng


#Rolls for a random number (X/127):
#~50% nothing (0-63)
#~35% PP Up (65-108)
#~12.7% Exp Share (111-127)
#~2.3% Master Ball (64, 109-110)

#Nothing
tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=0,score_rng=63] {"text":"<DJ Reed> Nope, none of your ID numbers match. Try again tomorrow!"}

execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=64,score_rng=127] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 1 1 1

#PP Up
tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=65,score_rng=108] {"text":"<DJ Reed> Ooh, you've matched the last two numbers. You've won third prize, a PP Up."}
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=65,score_rng=108] ~ ~ ~ give @s pixelmon:pp_up 1 0 {display:{Lore:["A medicine that slightly raises","the maximum PP of a single selected","move that has been learned","by a Pokémon."]}}

#XP Share
tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=111,score_rng=127] {"text":"<DJ Reed> Hey! You've matched the last three numbers! You've won second prize, an Exp.Share!"}
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=111,score_rng=127] ~ ~ ~ give @s pixelmon:exp_share 1 0 {display:{Lore:["An item to be held by a Pokémon.","The holder gets a share of","Exp. points without having to battle."]}}

#Master Ball
tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=64,score_rng=64] {"text":"<DJ Reed> Wow! You have a perfect match of all five numbers! We have a grand prize winner! You have won a Master Ball!"}
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=64,score_rng=64] ~ ~ ~ give @s pixelmon:Master_Ball
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=64,score_rng=64] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1

tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=109,score_rng=110] {"text":"<DJ Reed> Wow! You have a perfect match of all five numbers! We have a grand prize winner! You have won a Master Ball!"}
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=109,score_rng=110] ~ ~ ~ give @s pixelmon:Master_Ball
execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14,score_rng_min=109,score_rng=110] ~ ~ ~ playsound minecraft:entity.firework.twinkle ambient @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ scoreboard players tag @s add LuckyNumberCD

tellraw @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=!Dialogue185,score_TalkTime_min=24,score_TalkTime=24] {"text":"<DJ Reed> Tune in again tomorrow and see me for another chance at a prize!"}

scoreboard players tag @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=24,tag=!Dialogue185] add Dialogue185
scoreboard players set @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,score_TalkTime_min=24,tag=Dialogue185] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=185,score_DialogueTrigger=185,tag=Dialogue185] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Beauty Salon Pamper
#execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] ~ ~ ~ scoreboard players set @p[r=15,tag=BeautySalon] DialogueTrigger 186

scoreboard players add @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186] TalkTime 1
tellraw @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Beauty Salon Clerk> Alright! Let's see what we can do for "},{"selector":"@e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon]"},{"text":"!"}]


#Executes particles on Pokemon
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=2,score_TalkTime=15] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] ~ ~ ~ particle fallingdust ~ ~1 ~ 1 1 1 1 10 normal @a 201

#Runs initial Friendship detect function
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=5,score_TalkTime=6] ~ ~ ~ function custom:friendshipdatatags

#Checks if Pokemon is already at max happiness, ends dialogue if so
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ tellraw @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Beauty Salon Clerk> Your Pokémon can't get any happier!"}
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Beauty Salon Clerk"}
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ givemoney @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] 500
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Pixelmon Johto"}
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ scoreboard players tag @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] remove BeautySalon
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ execute @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,score_Friendship_min=255,score_Friendship=255] ~ ~ ~ scoreboard players tag @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=9,score_TalkTime=9] add EndDialogue


#If not maxed, runs
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ function custom:increasefriendship

#Jumping animation
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=15,score_TalkTime=15] ~ ~ ~ entitydata @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] {Motion:[0.0,0.25,0.0]}
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=16,score_TalkTime=16] ~ ~ ~ entitydata @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] {Motion:[0.0,0.25,0.0]}
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ entitydata @e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon] {Motion:[0.0,0.25,0.0]}

tellraw @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=15,score_TalkTime=15] ["",{"text":"<Beauty Salon Clerk> Your "},{"selector":"@e[x=511,y=54,z=-344,dx=15,dy=6,dz=19,type=pixelmon:pixelmon]"},{"text":" looks delighted! Please come again!"}]

execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=15,score_TalkTime=15] ~ ~ ~ scoreboard players tag @s add BeautyCD
execute @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=!Dialogue186,score_TalkTime_min=15,score_TalkTime=15] ~ ~ ~ scoreboard players tag @s remove BeautySalon

scoreboard players tag @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,score_TalkTime_min=17,tag=!Dialogue186] add Dialogue186
scoreboard players set @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,score_TalkTime_min=17,tag=Dialogue186] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=186,score_DialogueTrigger=186,tag=Dialogue186] DialogueTrigger 0


#Prompt:
#testfor @a[x=513,y=54,z=-335,r=4,tag=!BeautyCD,score_TalkTime=0]
#scoreboard players enable @a[x=513,y=54,z=-335,r=10,tag=!BeautyCD,score_TalkTime=0] TriggerCommand
#tellraw @a[x=513,y=54,z=-335,r=4,tag=!BeautyCD,score_TalkTime=0] ["",{"text":"<Beauty Salon Clerk> Welcome! Would you like me to give your Pokemon a makeover?\n["},{"text":"Yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 40"}},{"text":"]"}]

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Monica - Route 40 (Monday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ scoreboard players set @a[x=913,y=63,z=-54,r=5,score_TalkTime=0,tag=!Dialogue187] DialogueTrigger 187

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ execute @a[x=913,y=63,z=-54,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-228,dy=3,type=pixelmon:npc_chatting] 913 64 -54

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=913,y=63,z=-54,dy=3,type=pixelmon:npc_chatting] -815 65 -228


scoreboard players add @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187] TalkTime 1
tellraw @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Monika> Glad to meet you. I'm Monica of Monday."}
tellraw @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Monika> As a token of our friendship, I have a gift for you!"}
execute @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:sharp_beak
tellraw @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Monika> It's an item that raises the power of Flying-type moves."}
tellraw @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=28,score_TalkTime=28] {"text":"<Monika> You should equip a bird Pokémon with that item."}
tellraw @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=!Dialogue187,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Monika> My brothers and sisters are all over the place. See if you could find them all!"}

scoreboard players tag @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,score_TalkTime_min=35,tag=!Dialogue187] add Dialogue187
scoreboard players set @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,score_TalkTime_min=35,tag=Dialogue187] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=187,score_DialogueTrigger=187,tag=Dialogue187] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Tuscany - Route 29 (Tuesday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ scoreboard players set @a[x=-482,y=63,z=-535,r=5,score_TalkTime=0,tag=!Dialogue188] DialogueTrigger 188

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=2,score_WeekdayTrack=2] ~ ~ ~ execute @a[x=-482,y=63,z=-535,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-226,dy=3,type=pixelmon:npc_chatting] -482 64 -535

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=1] ~ ~ ~ tp @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] -815 65 -226
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-482,y=63,z=-535,dy=3,type=pixelmon:npc_chatting] -815 65 -226

scoreboard players add @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188] TalkTime 1
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Tuscany> Please allow me to introduce myself. I am Tuscany of Tuesday."}
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Tuscany> By way of introduction please accept this gift, a TwistedSpoon."}
execute @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:twisted_spoon
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Tuscany> Wouldn't you agree that it is most adorable? It strengthens Psychic-type moves."}
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Tuscany> I am certain it will be of use."}
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Tuscany> Have you met Monica, my older sister?"}
tellraw @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=!Dialogue188,score_TalkTime_min=44,score_TalkTime=44] {"text":"<Tuscany> Or my younger brother, Wesley? I am the second of seven children."}

scoreboard players tag @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=44,tag=!Dialogue188] add Dialogue188
scoreboard players set @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,score_TalkTime_min=44,tag=Dialogue188] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=188,score_DialogueTrigger=188,tag=Dialogue188] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Wesley - Lake of Rage (Wednesday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ scoreboard players set @a[x=-56,y=63,z=722,r=5,score_TalkTime=0,tag=!Dialogue189] DialogueTrigger 189

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=3,score_WeekdayTrack=3] ~ ~ ~ execute @a[x=-56,y=63,z=722,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-224,dy=3,type=pixelmon:npc_chatting] -56 64 722

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=2] ~ ~ ~ tp @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] -815 65 -224
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-56,y=63,z=722,dy=3,type=pixelmon:npc_chatting] -815 65 -224

scoreboard players add @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189] TalkTime 1
tellraw @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Wesley> I'm Wesley of Wednesday. Pleased to meet you."}
tellraw @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Wesley> Please take a souvenir."}
execute @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:black_belt
tellraw @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Wesley> Black Belt beefs up the power of Fighting moves."}
tellraw @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Wesley> Since you found me, you must have met my brothers and sisters."}
tellraw @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=!Dialogue189,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Wesley> Or did you just get lucky?"}

scoreboard players tag @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=34,tag=!Dialogue189] add Dialogue189
scoreboard players set @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,score_TalkTime_min=34,tag=Dialogue189] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=189,score_DialogueTrigger=189,tag=Dialogue189] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Arthur - Route 36 (Thursday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ scoreboard players set @a[x=236,y=64,z=-6,r=5,score_TalkTime=0,tag=!Dialogue190] DialogueTrigger 190

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ execute @a[x=236,y=64,z=-6,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-222,dy=3,type=pixelmon:npc_chatting] 236 64 -6

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=3] ~ ~ ~ tp @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] -815 65 -222
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=236,y=63,z=-6,dy=3,type=pixelmon:npc_chatting] -815 65 -222

scoreboard players add @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=!Dialogue190] TalkTime 1
tellraw @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=!Dialogue190,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Arthur> Who are you? I'm Arthur of Thursday."}
tellraw @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=!Dialogue190,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Arthur> Here. You can have this."}
execute @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=!Dialogue190,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:hard_stone
tellraw @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=!Dialogue190,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Arthur> A Pokémon that uses Rock-type moves should hold on to that. It pumps up Rock-type attacks."}

scoreboard players tag @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=17,tag=!Dialogue190] add Dialogue190
scoreboard players set @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,score_TalkTime_min=17,tag=Dialogue190] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=190,score_DialogueTrigger=190,tag=Dialogue190] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Frieda - Route 32 (Friday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ scoreboard players set @a[x=127,y=63,z=-545,r=5,score_TalkTime=0,tag=!Dialogue191] DialogueTrigger 191

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=5,score_WeekdayTrack=5] ~ ~ ~ execute @a[x=127,y=63,z=-545,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-220,dy=3,type=pixelmon:npc_chatting] 127 64 -545

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=4] ~ ~ ~ tp @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] -815 65 -220
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=127,y=63,z=-545,dy=3,type=pixelmon:npc_chatting] -815 65 -220

scoreboard players add @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191] TalkTime 1
tellraw @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Frieda> Yahoo! It's Friday! I'm Frieda of Friday!"}
tellraw @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Frieda> Nice to meet you! Here's a Poison Barb for you!"}
execute @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:poison_barb
tellraw @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Frieda> Give it to a Pokémon that has Poison-type moves."}
tellraw @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=28,score_TalkTime=28] {"text":"<Frieda> Oh! It's wicked! You'll be shocked how good it makes Poison moves!"}
tellraw @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=!Dialogue191,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Frieda> I love Friday. No doubt about it! Don't you think it's great too?"}

scoreboard players tag @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=37,tag=!Dialogue191] add Dialogue191
scoreboard players set @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,score_TalkTime_min=37,tag=Dialogue191] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=191,score_DialogueTrigger=191,tag=Dialogue191] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Santos - Blackthorn City (Saturday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ scoreboard players set @a[x=-663,y=63,z=225,r=5,score_TalkTime=0,tag=!Dialogue192] DialogueTrigger 192

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ execute @a[x=-663,y=63,z=225,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-218,dy=3,type=pixelmon:npc_chatting] -663 64 225

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=5] ~ ~ ~ tp @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] -815 65 -218
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ tp @e[x=-663,y=63,z=225,dy=3,type=pixelmon:npc_chatting] -815 65 -218

scoreboard players add @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192] TalkTime 1
tellraw @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Santos> ...It's Saturday... I'm Santos of Saturday..."}
tellraw @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Santos> Take this... ... Soft Sand..."}
execute @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:soft_sand
tellraw @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Santos> Ground-type moves get stronger... It will startle you..."}
tellraw @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=!Dialogue192,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Santos> ... See you again on another Saturday..."}

scoreboard players tag @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=30,tag=!Dialogue192] add Dialogue192
scoreboard players set @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,score_TalkTime_min=30,tag=Dialogue192] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=192,score_DialogueTrigger=192,tag=Dialogue192] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Sunny - Route 37 (Sunday)
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ scoreboard players set @a[x=335,y=64,z=113,r=5,score_TalkTime=0,tag=!Dialogue193] DialogueTrigger 193

#tp in
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=7,score_WeekdayTrack=7] ~ ~ ~ execute @a[x=335,y=64,z=113,r=50] ~ ~ ~ tp @e[x=-815,y=64,z=-216,dy=3,type=pixelmon:npc_chatting] 335 64 113

#tp out
#execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=1,score_WeekdayTrack=6] ~ ~ ~ tp @e[x=335,y=64,z=113,dy=3,type=pixelmon:npc_chatting] -815 65 -216

scoreboard players add @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193] TalkTime 1
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Sunny> Hi! I'm Sunny of Sunday, meaning it's Sunday today!"}
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Sunny> I was told to give you this if I saw you!"}
execute @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=14,score_TalkTime=14] ~ ~ ~ give @s pixelmon:magnet
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Sunny> That thing... Um... ...What was it now..."}
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Sunny> ... Oh! I remember now!"}
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Sunny> A Pokémon that knows Electric moves should hold it."}
tellraw @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=!Dialogue193,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Sunny> My sis Monica said it powers up Electric-type moves!"}

scoreboard players tag @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,score_TalkTime_min=42,tag=!Dialogue193] add Dialogue193
scoreboard players set @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,score_TalkTime_min=42,tag=Dialogue193] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=193,score_DialogueTrigger=193,tag=Dialogue193] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Route 25 Trainers after beating all 6
#scoreboard players set @a[x=-2999,y=64,z=1005,r=10,score_TalkTime=0,tag=!Dialogue194] DialogueTrigger 194 {Inventory:[{id:"minecraft:paper",Count:6b}]}

scoreboard players add @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,tag=!Dialogue194] TalkTime 1
execute @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194] ~ ~ ~ clear @s minecraft:paper 0 6
tellraw @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,tag=!Dialogue194,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Ace Trainer Kevin> As promised, you win a prize! Would you like to battle one more time with me?"}

execute @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,tag=!Dialogue194,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ give @s pixelmon:nugget

scoreboard players tag @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=5,tag=!Dialogue194] add Dialogue194
scoreboard players set @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,score_TalkTime_min=5,tag=Dialogue194] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=194,score_DialogueTrigger=194,tag=Dialogue194] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bill's Grandfather housesitting opening dialogue
#scoreboard players set @a[x=-3072,y=63,z=1005,dx=21,dy=5,dz=12,score_TalkTime=0,tag=!Dialogue195] DialogueTrigger 195

scoreboard players add @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,tag=!Dialogue195] TalkTime 1
tellraw @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,tag=!Dialogue195,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Bill's Grandfather> Hm? You know Bill? He's my grandson."}
tellraw @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,tag=!Dialogue195,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Bill's Grandfather> He's in Johto. He does something with PCs, so I'm house-sitting."}
execute @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,tag=!Dialogue195,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ scoreboard players set @s BillGP 1

scoreboard players tag @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,score_TalkTime_min=20,tag=!Dialogue195] add Dialogue195
scoreboard players set @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,score_TalkTime_min=20,tag=Dialogue195] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=195,score_DialogueTrigger=195,tag=Dialogue195] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bill's Grandfather shown a correct Pokemon
#Repeatable
#scoreboard players set @a[x=-3072,y=63,z=1005,dx=21,dy=5,dz=12,score_TalkTime=0,tag=!Dialogue196] DialogueTrigger 196

scoreboard players add @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196] TalkTime 1
tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=1,score_TalkTime=1,score_BillGP_min=1,score_BillGP=1] {"text":"<Bill's Grandfather> Ah, so that is Lickitung? Isn't it cute!"}
tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=1,score_TalkTime=1,score_BillGP_min=2,score_BillGP=2] {"text":"<Bill's Grandfather> Ah, so that is Oddish? Isn't it cute!"}
tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=1,score_TalkTime=1,score_BillGP_min=3,score_BillGP=3] {"text":"<Bill's Grandfather> Ah, so that is Staryu? Isn't it cute!"}
tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=1,score_TalkTime=1,score_BillGP_min=4,score_BillGP=4] {"text":"<Bill's Grandfather> Ah, so that is Growlithe? Isn't it cute!"}
tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=1,score_TalkTime=1,score_BillGP_min=5,score_BillGP=5] {"text":"<Bill's Grandfather> Ah, so that is Pichu? Isn't it cute!"}


tellraw @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Bill's Grandfather> Thanks! This is a token of my appreciation."}

#Rewards
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=1,score_BillGP=1] ~ ~ ~ give @s pixelmon:ever_stone
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=2,score_BillGP=2] ~ ~ ~ give @s pixelmon:leaf_stone
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=3,score_BillGP=3] ~ ~ ~ give @s pixelmon:water_stone
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=4,score_BillGP=4] ~ ~ ~ give @s pixelmon:fire_stone
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=5,score_BillGP=5] ~ ~ ~ give @s pixelmon:thunder_stone

execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=1,score_BillGP=5] ~ ~ ~ scoreboard players add @s BillGP 1
execute @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=!Dialogue196,score_TalkTime_min=13,score_TalkTime=13,score_BillGP_min=1,score_BillGP=5] ~ ~ ~ scoreboard players set @s Cooldown 45

scoreboard players tag @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,score_TalkTime_min=13,tag=!Dialogue196] add Dialogue196
scoreboard players set @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,score_TalkTime_min=13,tag=Dialogue196] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=196,score_DialogueTrigger=196,tag=Dialogue196] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bug Catching Contest intro
#Dialogue198

scoreboard players add @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198] TalkTime 1
tellraw @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Park Worker> Remember, only Bug Pokemon caught in the Sport Ball are allowed to be judged!"}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ spawnpoint @s 477 64 61
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players tag @s remove Dialogue199
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ give @s pixelmon:sport_ball 45
tellraw @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Park Worker> You can check your IVs as you catch the Pokemon. Submit the highest total stats at the end!"}
tellraw @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Park Worker> You have 20 minutes from now until judging, or just come back and talk to me to start it early! Good luck!"}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ scoreboard players set @s BugContest 1

#Changes out Spawner data if Thursday
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 576 62 42 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 587 62 76 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 566 62 95 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 524 62 94 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 505 62 75 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 515 62 43 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 546 62 26 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 565 62 32 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 591 62 53 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 577 62 85 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 546 62 101 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 515 62 84 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 501 62 53 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=4,score_WeekdayTrack=4] ~ ~ ~ blockdata 528 62 31 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Dustox"},pokemonSpec5:{name:"Nincada"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Silcoon"},numPokemon:10s,pokemonSpec8:{name:"Kricketune"},pokemonSpec9:{name:"Combee"},pokemonSpec6:{name:"Volbeat"},pokemonSpec7:{name:"Kricketot"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:10s,rarity8:10s,rarity9:5s,aggression:0s,rarity3:10s,rarity4:5s,bossRatio:10000s,rarity5:20s,rarity6:10s,levelMax:18s,spawnRadius:10s,spawnTick:40}


#Changes out Spaner data if Saturday
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 576 62 42 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 587 62 76 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 566 62 95 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 524 62 94 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 505 62 75 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 515 62 43 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 546 62 26 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 565 62 32 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 591 62 53 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 577 62 85 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 546 62 101 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 515 62 84 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 501 62 53 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ execute @e[x=-799,y=64,z=-284,dy=3,type=armor_stand,score_WeekdayTrack_min=6,score_WeekdayTrack=6] ~ ~ ~ blockdata 528 62 31 {pokemonSpec0:{name:"Scyther"},pokemonSpec1:{name:"Pinsir"},spawnRandom:0b,pokemonSpec4:{name:"Kricketot"},pokemonSpec5:{name:"Kricketune"},fireOnTick:1b,pokemonSpec2:{name:"Wurmple"},maxSpawns:7s,pokemonSpec3:{name:"Nincada"},numPokemon:10s,pokemonSpec8:{name:"Cascoon"},pokemonSpec9:{name:"Illumise"},pokemonSpec6:{name:"Combee"},pokemonSpec7:{name:"Beautifly"},id:"pixelmon:pixelmon_spawner",levelMin:7s,spawnLocation:0s,rarity0:5s,rarity1:5s,rarity2:20s,rarity7:5s,rarity8:10s,rarity9:10s,aggression:0s,rarity3:20s,rarity4:10s,bossRatio:10000s,rarity5:10s,rarity6:5s,levelMax:18s,spawnRadius:10s,x:-859,y:65,z:-151,spawnTick:40}


#15 Minutes Remaining
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=429,score_TalkTime=429] ~ ~ ~ title @s title {"text":"15 Minutes Remain"}

#10 Minutes Remaining
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=858,score_TalkTime=858] ~ ~ ~ title @s title {"text":"10 Minutes Remain"}

#5 Minutes Remaining
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1287,score_TalkTime=1287] ~ ~ ~ title @s title {"text":"5 Minutes Remain"}

#1 Minute Remaining
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1629,score_TalkTime=1629] ~ ~ ~ title @s title {"text":"1 Minute Remains"}

#0 Minutes Remaining - 1714

tellraw @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1705,score_TalkTime=1705] {"text":"<Park Worker> Time is up! Let's begin judging!"}

#tps playet to judging building
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1714,score_TalkTime=1714] ~ ~ ~ effect @s minecraft:blindness 5 1 true
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1714,score_TalkTime=1714] ~ ~ ~ tp @s 476 64 61 0 0
tellraw @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1714,score_TalkTime=1714] {"text":"<Park Worker> Please send out which Pokemon you wish to be judged!"}
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1714,score_TalkTime=1714] ~ ~ ~ scoreboard players set @s BugPoints 0

execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1714,score_TalkTime=1714] ~ ~ ~ tp @s

#Tps in random trainers and statues
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1715,score_TalkTime=1715] ~ ~ ~ tp @r[x=-855,y=64,z=-153,dx=5,dy=2,dz=5,type=pixelmon:npc_chatting,c=1] 471 64 61
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1715,score_TalkTime=1715] ~ ~ ~ tp @r[x=-855,y=64,z=-153,dx=5,dy=2,dz=5,type=pixelmon:npc_chatting,c=1] 481 64 61
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1715,score_TalkTime=1715] ~ ~ ~ tp @r[x=-848,y=64,z=-153,dx=5,dy=2,dz=5,type=pixelmon:statue,c=1] 471 64 63
execute @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=!Dialogue198,score_TalkTime_min=1715,score_TalkTime=1715] ~ ~ ~ tp @r[x=-848,y=64,z=-153,dx=5,dy=2,dz=5,type=pixelmon:statue,c=1] 481 64 63

scoreboard players tag @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=1716,tag=!Dialogue198] add Dialogue198
scoreboard players set @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,score_TalkTime_min=1716,tag=Dialogue198] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=198,score_DialogueTrigger=198,tag=Dialogue198] DialogueTrigger 0



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bug Catching Contest Judging
#Dialogue199

scoreboard players add @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199] TalkTime 1


tellraw @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Park Worker> Scoring your Pokemon..."}

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s BugPoints 0
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ function custom:bugcontestivscore

tellraw @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Park Worker> Adding up points..."}

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ function custom:bugcontesttotal

tellraw @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=15,score_TalkTime=15] {"text":"<Park Worker> And today's winners are..."}

#Rolls for a random number
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng


#0-39 (Bug score) 70-99              100-129              130-159              160+
#2/9 2nd          3/9 1st            5/9 1st              7/9 1st              100% chance first
#7/9 3rd          3/9 2nd            3/9 2nd              2/9 2nd
#                 3/9 3rd            1/9 3rd


execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=0,score_BugPoints=39,score_rng_min=0,score_rng=28] ~ ~ ~ scoreboard players tag @s add Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=0,score_BugPoints=39,score_rng_min=29,score_rng=127] ~ ~ ~ scoreboard players tag @s add Third

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=40,score_BugPoints=69,score_rng_min=0,score_rng=14] ~ ~ ~ scoreboard players tag @s add First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=40,score_BugPoints=69,score_rng_min=15,score_rng=57] ~ ~ ~ scoreboard players tag @s add Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=40,score_BugPoints=69,score_rng_min=58,score_rng=127] ~ ~ ~ scoreboard players tag @s add Third

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=70,score_BugPoints=90,score_rng_min=0,score_rng=42] ~ ~ ~ scoreboard players tag @s add First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=70,score_BugPoints=90,score_rng_min=43,score_rng=85] ~ ~ ~ scoreboard players tag @s add Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=70,score_BugPoints=90,score_rng_min=86,score_rng=127] ~ ~ ~ scoreboard players tag @s add Third

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=100,score_BugPoints=129,score_rng_min=0,score_rng=71] ~ ~ ~ scoreboard players tag @s add First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=100,score_BugPoints=129,score_rng_min=72,score_rng=113] ~ ~ ~ scoreboard players tag @s add Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=100,score_BugPoints=129,score_rng_min=114,score_rng=127] ~ ~ ~ scoreboard players tag @s add Third

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=130,score_BugPoints=159,score_rng_min=0,score_rng=100] ~ ~ ~ scoreboard players tag @s add First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=130,score_BugPoints=159,score_rng_min=101,score_rng=128] ~ ~ ~ scoreboard players tag @s add Second

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=19,score_TalkTime=20,score_BugPoints_min=160,score_BugPoints=186] ~ ~ ~ scoreboard players tag @s add First

#First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ tellraw @s[tag=First] ["",{"text":"1st Place: "},{"selector":"@p[tag=First]"},{"text":"!\n2nd Place: Bug Catcher Ed\n3rd Place: Bug Catcher Don\n "}]

#Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ tellraw @s[tag=Second] ["",{"text":"1st Place: Bug Catcher Don\n2nd Place: "},{"selector":"@p[tag=Second]"},{"text":"!\n3rd Place: Bug Catcher Ed"}]

#3rd
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=22,score_TalkTime=22] ~ ~ ~ tellraw @s[tag=Third] ["",{"text":"1st Place: Bug Catcher Ed\n2nd Place: Bug Catcher Don\n3rd Place: "},{"selector":"@p[tag=Third]"},{"text":"!\n "}]


tellraw @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=30,score_TalkTime=30] ["",{"text":"<Park Worker> "},{"text":"Here is your prize! Congratulations to our contestants! We hope you'll visit again soon!","color":"white"}]
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ advancement grant @s only johto:event1

#Rolls again for a reward if 1st
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=29,score_TalkTime=29] ~ ~ ~ execute @s[tag=First] ~ ~ ~ /setblock -867 69 -210 minecraft:redstone_block
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=30,score_TalkTime=30] ~ ~ ~ execute @s[tag=First] ~ ~ ~ /setblock -867 69 -210 minecraft:iron_block

execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=33,score_TalkTime=33,score_rng_min=0,score_rng=32] ~ ~ ~ give @s[tag=First] pixelmon:sun_Stone
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=33,score_TalkTime=33,score_rng_min=33,score_rng=96] ~ ~ ~ give @s[tag=First] pixelmon:shiny_stone
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=33,score_TalkTime=33,score_rng_min=97,score_rng=127] ~ ~ ~ give @s[tag=First] pixelmon:oval_stone

#2nd Place Prize
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ give @s[tag=Second] pixelmon:Ever_Stone

#3rd Place Prize
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ give @s[tag=Third] pixelmon:shed_shell



#Clears Sport Ball stuff
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=34,score_TalkTime=35] ~ ~ ~ clear @s pixelmon:sport_ball_disc
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=34,score_TalkTime=35] ~ ~ ~ clear @s pixelmon:sport_ball_lid
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=34,score_TalkTime=35] ~ ~ ~ clear @s pixelmon:sport_ball


#Tps the NPCs and statues out
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ tp @e[x=481,y=63,z=61,dy=2,type=pixelmon:npc_chatting,c=1] -852 64 -151
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ tp @e[x=471,y=63,z=61,dy=2,type=pixelmon:npc_chatting,c=1] -852 64 -151
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ tp @e[x=471,y=63,z=63,dy=2,type=pixelmon:statue,c=1] -846 64 -151
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=37] ~ ~ ~ tp @e[x=481,y=63,z=63,dy=2,type=pixelmon:statue,c=1] -846 64 -151

#Cleans up scores
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players set @s BugPoints 0
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players set @s BugContest 0
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s remove First
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s remove Second
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s remove Third
execute @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=!Dialogue199,score_TalkTime_min=37,score_TalkTime=38] ~ ~ ~ scoreboard players tag @s remove Dialogue198


scoreboard players tag @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,score_TalkTime_min=38,tag=!Dialogue199] add Dialogue199
scoreboard players set @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,score_TalkTime_min=38,tag=Dialogue199] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=199,score_DialogueTrigger=199,tag=Dialogue199] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Odd Egg Rolls
#scoreboard players set @a[score_TalkTime=0] DialogueTrigger 200 {Inventory:[{id:"minecraft:egg"}]}

#Removes dialogue tag
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200] ~ ~ ~ scoreboard players tag @s remove Dialogue200


scoreboard players add @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200] TalkTime 1

#Rolls a Random Number for player
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng


#Ensures player is holding egg when egg give commands run
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ scoreboard players tag @s remove OddEggHave
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ scoreboard players tag @s add OddEggHave {Inventory:[{id:"minecraft:egg"}]}

execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=0,score_rng=9] ~ ~ ~ pokegive @s Elekid lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=10,score_rng=18] ~ ~ ~ pokegive @s Elekid lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=19,score_rng=27] ~ ~ ~ pokegive @s Smoochum lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=28,score_rng=36] ~ ~ ~ pokegive @s Smoochum lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=37,score_rng=45] ~ ~ ~ pokegive @s Igglybuff lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=46,score_rng=54] ~ ~ ~ pokegive @s Igglybuff lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=55,score_rng=63] ~ ~ ~ pokegive @s Cleffa lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=64,score_rng=72] ~ ~ ~ pokegive @s Cleffa lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=73,score_rng=81] ~ ~ ~ pokegive @s Tyrogue lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=82,score_rng=90] ~ ~ ~ pokegive @s Tyrogue lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=91,score_rng=99] ~ ~ ~ pokegive @s Magby lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=100,score_rng=108] ~ ~ ~ pokegive @s Magby lvl:5 !s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=109,score_rng=117] ~ ~ ~ pokegive @s Pichu lvl:5 s egg
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave,score_rng_min=118,score_rng=127] ~ ~ ~ pokegive @s Pichu lvl:5 !s egg

execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave] ~ ~ ~ clear @s minecraft:egg 0 1
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2,tag=OddEggHave] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 10 1 1

tellraw @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"You recieved an ","italic":true},{"text":"Odd Egg","italic":true,"color":"aqua","hoverEvent":{"action":"show_text","value":"A gift Egg. The Pokémon it hatches into has a higher-than-usual chance of being Shiny."}},{"text":"!","italic":true}]
execute @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=!Dialogue200,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ scoreboard players tag @s remove OddEggHave

scoreboard players tag @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,score_TalkTime_min=3,tag=!Dialogue200] add Dialogue200
scoreboard players set @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,score_TalkTime_min=3,tag=Dialogue200] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=200,score_DialogueTrigger=200,tag=Dialogue200] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Safari Zone clone in commands
#Dialogue201

scoreboard players add @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201] TalkTime 1

#Deducts balance of player
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Safari Clerk"}
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ execute @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] ~ ~ ~ /givemoney @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] -500
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ entitydata @e[x=-801,y=64,z=-284,dy=3,type=armor_stand] {CustomName:"Pixelmon Johto"}
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ setblock 1595 81 -129 minecraft:redstone_block


#Generating messages and timings
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=3,score_TalkTime=3] ["",{"text":"Now generating biome #1 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=20,score_TalkTime=20] ["",{"text":"Now generating biome #2 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=40,score_TalkTime=40] ["",{"text":"Now generating biome #3 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=60,score_TalkTime=60] ["",{"text":"Now generating biome #4 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=80,score_TalkTime=80] ["",{"text":"Now generating biome #5 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=100,score_TalkTime=100] ["",{"text":"Now generating biome #6 ...","italic":true}]

#tps Player Around
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @s 1715 74 55 180 -90
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ tp @s 1716 74 -41 180 -90
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=38,score_TalkTime=38] ~ ~ ~ tp @s 1591 74 -42 180 -90
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=58,score_TalkTime=58] ~ ~ ~ tp @s 1591 74 54 180 -90
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=78,score_TalkTime=78] ~ ~ ~ tp @s 1468 74 54 180 -90
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=98,score_TalkTime=98] ~ ~ ~ tp @s 1468 74 -41 180 -90

#Starts the Safari
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ spawnpoint @s 1591 84 -87
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ tp @s 1591 84 -87 -180 1
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ scoreboard players set @s SafariState 1
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ give @s pixelmon:safari_ball 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ setblock 1595 81 -129 minecraft:redstone_block
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ~ ~ ~ scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
tellraw @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=120,score_TalkTime=120] ["",{"text":"Enjoy your stay in the Safari Zone! Come back to the start when you are ready to leave."}]


#Generates biomes from the SafariSelect function
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=1,score_TalkTime=120] ~ ~ ~ function custom:safariselect


#Clears biome maps from inventory if present
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 242 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 243 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 244 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 241 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 239 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 246 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 248 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 238 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 240 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 247 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 245 64
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=!Dialogue201,score_TalkTime_min=119,score_TalkTime=119] ~ ~ ~ clear @s minecraft:filled_map 249 64


scoreboard players tag @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,score_TalkTime_min=121,tag=!Dialogue201] add Dialogue201
scoreboard players set @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,score_TalkTime_min=121,tag=Dialogue201] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=201,score_DialogueTrigger=201,tag=Dialogue201] DialogueTrigger 0



#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Safari Zone tear down commands
#Dialogue202

scoreboard players add @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202] TalkTime 1

tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=2,score_TalkTime=2] ["",{"text":"Now removing biome #1 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=13,score_TalkTime=13] ["",{"text":"Now removing biome #2 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=23,score_TalkTime=23] ["",{"text":"Now removing biome #3 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=33,score_TalkTime=33] ["",{"text":"Now removing biome #4 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=43,score_TalkTime=43] ["",{"text":"Now removing biome #5 ...","italic":true}]
tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=53,score_TalkTime=53] ["",{"text":"Now removing biome #6 ...","italic":true}]

execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @s 1715 74 55 180 -90
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ tp @s 1716 74 -41 180 -90
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=23,score_TalkTime=23] ~ ~ ~ tp @s 1591 74 54 180 -90
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ tp @s 1591 74 -42 180 -90
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=43,score_TalkTime=43] ~ ~ ~ tp @s 1468 74 54 180 -90
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=53,score_TalkTime=53] ~ ~ ~ tp @s 1468 74 -41 180 -90


#Removes Safari Select
execute @a[score_DialogueTrigger_min=201,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=1,score_TalkTime=65] ~ ~ ~ function custom:safariselect



#Final cleanup
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ clear @s pixelmon:safari_ball
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ clear @s pixelmon:safari_ball_disc
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ clear @s pixelmon:safari_ball_lid
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=64,score_TalkTime=65] ~ ~ ~ scoreboard players set @e[x=-879,y=64,z=-180,dy=5,dz=10,type=armor_stand] BiomeID 0
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ scoreboard players tag @e[x=-792,y=65,z=-284,dy=3,type=armor_stand] remove SafariActive
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ scoreboard players set @s SafariState 0
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ tp @s 1591 88 -111 180 4
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ spawnpoint @s 1591 88 -111

tellraw @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ["",{"text":"Thank you for visiting! Come again soon!"}]
execute @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=!Dialogue202,score_TalkTime_min=65,score_TalkTime=65] ~ ~ ~ advancement grant @s only johto:event2

scoreboard players tag @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,score_TalkTime_min=65,tag=!Dialogue202] add Dialogue202
scoreboard players set @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,score_TalkTime_min=65,tag=Dialogue202] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=202,score_DialogueTrigger=202,tag=Dialogue202] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#PokeManiac Kirk giving Shuckle, Cianwood City
#scoreboard players set @a[x=1221,y=63,z=-434,dx=19,dy=5,dz=8,score_TalkTime=0,tag=!Dialogue203] DialogueTrigger 203

scoreboard players add @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203] TalkTime 1
tellraw @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=2,score_TalkTime=2] {"text":"<PokéManiac Kirk> I, I'm in shock!"}
tellraw @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=9,score_TalkTime=9] {"text":"<PokéManiac Kirk> A guy about your age with piercing eyes and long hair came in."}
tellraw @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=18,score_TalkTime=18] {"text":"<PokéManiac Kirk> He scared me into giving him my prized Pokemon!"}
tellraw @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=26,score_TalkTime=26] {"text":"<PokéManiac Kirk> I still have one left, but what if he comes back?"}
tellraw @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=34,score_TalkTime=34] {"text":"<PokéManiac Kirk> You look strong. Could you look after my Pokemon for a while?"}
execute @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ pokegive @s Shuckle lvl:15
execute @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=!Dialogue203,score_TalkTime_min=40,score_TalkTime=40] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 10 1 1

scoreboard players tag @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,score_TalkTime_min=40,tag=!Dialogue203] add Dialogue203
scoreboard players set @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,score_TalkTime_min=40,tag=Dialogue203] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=203,score_DialogueTrigger=203,tag=Dialogue203] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bill in Ecruteak City Pokemon Center
#scoreboard players set @a[x=339,y=64,z=192,r=5,score_TalkTime=0,tag=!Dialogue204] DialogueTrigger 204

scoreboard players add @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204] TalkTime 1

#tp Bill in
execute @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud 337 64 191 1 1 1 1 100
execute @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=69,z=-235,dy=3,type=pixelmon:npc_chatting] 337 64 191

tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=4,score_TalkTime=4] {"text":"<Bill> Hi, I'm Bill. And who are you?"}
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=11,score_TalkTime=11] ["",{"text":"<Bill> Hmm, "},{"selector":"@p[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=11,score_TalkTime=11]"},{"text":", huh?"}]
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Bill> You know what? I'm the one who developed the system to transfer Pokémon."}
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Bill> But it couldn't have been done by me alone. For example, do you know the Hoenn region?"}
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Bill> This girl Lanette from Hoenn made the Pokémon Storage System easier to use."}
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=45,score_TalkTime=45] {"text":"<Bill> My friends all over the world are working together to improve the Pokémon trade and storage systems."}
tellraw @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=55,score_TalkTime=55] {"text":"<Bill> I have to hurry on back to Goldenrod and see my folks. Buh-bye!"}

#tp Bill out
execute @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=62,score_TalkTime=62] ~ ~ ~ particle cloud 337 64 191 1 1 1 1 100
execute @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=!Dialogue204,score_TalkTime_min=62,score_TalkTime=62] ~ ~ ~ tp @e[x=337,y=63,z=191,dy=3,type=pixelmon:npc_chatting] -815 70 -235

scoreboard players tag @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,score_TalkTime_min=62,tag=!Dialogue204] add Dialogue204
scoreboard players set @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,score_TalkTime_min=62,tag=Dialogue204] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=204,score_DialogueTrigger=204,tag=Dialogue204] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bill's house in Goldenrod City after talking with him in Ecruteak
#execute @a[x=541,y=63,z=-416,dx=11,dy=5,dz=11,score_TalkTime=0,tag=Dialogue204] ~ ~ ~ scoreboard players set @s[tag=!Dialogue205] DialogueTrigger 205

#tp Bill in separately
#execute @p[x=541,y=63,z=-416,r=15,tag=Dialogue204] ~ ~ ~ execute @s[tag=!Dialogue205] ~ ~ ~ tp @e[x=-815,y=69,z=-233,dy=3,type=pixelmon:npc_chatting] 549 64 -409

#Return
#execute @p[x=541,y=63,z=-416,r=15,tag=!Dialogue204] ~ ~ ~ execute @s[tag=!Dialogue205] ~ ~ ~ tp @e[x=549,y=63,z=-409,dy=3,type=pixelmon:npc_chatting] -815 70 -233

scoreboard players add @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205] TalkTime 1
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Bill> Hi, "},{"selector":"@p[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! Would you do something for me and take this Eevee?"}]
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Bill> It came over when I was adjusting Nintendo Wi-Fi Connection."}
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Bill> Someone has to take care of it, but I don't like being outside."}
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=28,score_TalkTime=28] {"text":"<Bill> I knew you'd come through! You're the real deal!"}
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Bill> Way to go! OK, I'm counting on you. Take good care of it!"}
execute @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ pokegive @s Eevee lvl:5
execute @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=45,score_TalkTime=45] ~ ~ ~ playsound egghatch ambient @s ~ ~ ~ 10 1 1
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=45,score_TalkTime=45] ["",{"selector":"@p[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=45,score_TalkTime=45]","italic":true,"color":"gray"},{"text":" received the Eevee!","italic":true,"color":"gray"}]
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=53,score_TalkTime=53] {"text":"<Bill> Professor Elm said Eevee can evolve into seven different kinds of Pokémon!"}
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=62,score_TalkTime=62] {"text":"<Bill> I used to do experiments on transferring things."}
tellraw @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=!Dialogue205,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Bill> Both the GTS and Nintendo Wi-Fi Connection were inspired by my machine that transfers things!"}

scoreboard players tag @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,score_TalkTime_min=70,tag=!Dialogue205] add Dialogue205
scoreboard players set @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,score_TalkTime_min=70,tag=Dialogue205] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=205,score_DialogueTrigger=205,tag=Dialogue205] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Battle Tower Win commands
#scoreboard players tag @a[x=875,y=99,z=50,dx=55,dy=20,dz=27,score_TalkTime=0,tag=Dialogue206] remove Dialogue206
#scoreboard players set @a[x=875,y=99,z=50,dx=55,dy=20,dz=27,score_TalkTime=0] DialogueTrigger 206 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206] TalkTime 1

execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206] ~ ~ ~ clear @s minecraft:netherbrick 0 1
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @s BattlePoints 1
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @s Battle_Streak 1
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ pokeheal @s
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @s 900 100 67.0 -90 -18


#Clear and activates Battle Streak hologram function
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ kill @e[x=903,z=100,z=77,r=5,type=armor_stand]
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ function custom:battlestreakhologram
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=3,score_TalkTime=3] ~ ~ ~ summon Armor_Stand 903.0 101 77 {CustomName:"Battle Streak",NoGravity:1b,Invisible:1b,CustomNameVisible:1b}

execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @s {"text":"Your Pokemon have been healed!"}

#Tp returns Trainers to group
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=1,score_Battle_Streak=1] 882 47 70
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=2,score_Battle_Streak=2] 887 47 70
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=3,score_Battle_Streak=3] 892 47 70
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ tp @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=4,score_Battle_Streak=4] 897 47 70

#Rolls for an RNG score
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @e[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players add @r[x=-867,y=69,z=-207,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players operation @s rng = @e[x=-867,y=69,z=-205,dy=3,type=armor_stand] rng


#Tps in new trainer depending on Battle_Streak score and rng score for some
#100% Group 1
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=0,score_Battle_Streak=20] ~ ~ ~ /tp @r[x=881,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#50% Group 1, 50% Group 2
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=21,score_Battle_Streak=40,score_rng_min=0,score_rng=63] ~ ~ ~ /tp @r[x=881,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=21,score_Battle_Streak=40,score_rng_min=64] ~ ~ ~ /tp @r[x=886,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#100% Group 2
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=41,score_Battle_Streak=60] ~ ~ ~ /tp @r[x=886,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#50% Group 2, 50% Group 3
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=61,score_Battle_Streak=80,score_rng_min=0,score_rng=63] ~ ~ ~ /tp @r[x=886,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=61,score_Battle_Streak=80,score_rng_min=64] ~ ~ ~ /tp @r[x=891,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#100% Group 3
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=81,score_Battle_Streak=100] ~ ~ ~ /tp @r[x=891,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#75% Group 3, 25% Group 4
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=101,score_rng_min=0,score_rng=102] ~ ~ ~ /tp @r[x=891,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=4,score_TalkTime=4,score_Battle_Streak_min=101,score_rng_min=103] ~ ~ ~ /tp @r[x=896,y=46,z=69,dx=2,dy=2,dz=2,type=pixelmon:npc_trainer,c=1] 910 100 67.0 90 ~

#Rotates npcs
execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ entitydata @e[x=910,y=99,z=66,dy=3,dz=1,type=pixelmon:npc_trainer] {TrainerRotation:90.0f}

#Debug saying Teams
#execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ execute @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=1,score_Battle_Streak=1] ~ ~ ~ say Group 1
#execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ execute @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=2,score_Battle_Streak=2] ~ ~ ~ say Group 2
#execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ execute @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=3,score_Battle_Streak=3] ~ ~ ~ say Group 3
#execute @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=!Dialogue206,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ execute @e[x=910,y=99,z=66,dy=2,dz=1,type=pixelmon:npc_trainer,score_Battle_Streak_min=4,score_Battle_Streak=4] ~ ~ ~ say Group 4

scoreboard players tag @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,score_TalkTime_min=5,tag=!Dialogue206] add Dialogue206
scoreboard players set @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,score_TalkTime_min=5,tag=Dialogue206] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=206,score_DialogueTrigger=206,tag=Dialogue206] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Magnet Train, Goldenrod to Saffron
#Dialogue207

scoreboard players add @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207] TalkTime 1
execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @s {"text":"Now boarding the Magnet Train!","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ effect @s minecraft:blindness 8 1 true

execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ tp @s -2673 73 410 0 ~

execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ title @s title {"text":"Saffron City","color":"white"}
execute @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=!Dialogue207,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ title @s subtitle {"text":"Shining Big City","italic":true}

scoreboard players tag @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,score_TalkTime_min=10,tag=!Dialogue207] add Dialogue207
scoreboard players set @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,score_TalkTime_min=10,tag=Dialogue207] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=207,score_DialogueTrigger=207,tag=Dialogue207] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Magnet Train, Saffron to Goldenrod
#Dialogue208

scoreboard players add @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208] TalkTime 1
execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @s {"text":"Now boarding the Magnet Train!","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ effect @s minecraft:blindness 8 1 true

execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=9,score_TalkTime=9] ~ ~ ~ tp @s 526 73 -337 0 ~

execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ title @s title {"text":"Goldenrod City","color":"white"}
execute @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=!Dialogue208,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ title @s subtitle {"text":"A Happening Big City","italic":true}

scoreboard players tag @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,score_TalkTime_min=10,tag=!Dialogue208] add Dialogue208
scoreboard players set @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,score_TalkTime_min=10,tag=Dialogue208] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=208,score_DialogueTrigger=208,tag=Dialogue208] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent first prompt
#execute @e[x=-270,y=63,z=-505,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ execute @a[r=5,tag=!GuideTour] ~ ~ ~ scoreboard players set @s[score_TalkTime=0,tag=!Dialogue209] DialogueTrigger 209

scoreboard players add @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209] TalkTime 1
tellraw @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> You're a trainer, aren't you? I can tell!"}
tellraw @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Guide Gent> That's OK! Everyone is a rookie at some point!"}
tellraw @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Guide Gent> If you'd like, I can teach you a few things."}
tellraw @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=17,score_TalkTime=17] {"text":"[Yes]","color":"green","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 10"}}
tellraw @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=17,score_TalkTime=17] {"text":"[No]","color":"red","clickEvent":{"action":"run_command","value":"/trigger TriggerCommand set 11"}}
execute @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=!Dialogue209,score_TalkTime_min=16,score_TalkTime=17] ~ ~ ~ scoreboard players enable @s TriggerCommand

scoreboard players tag @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=17,tag=!Dialogue209] add Dialogue209
scoreboard players set @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,score_TalkTime_min=17,tag=Dialogue209] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=209,score_DialogueTrigger=209,tag=Dialogue209] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent Tour
#execute @e[x=-256,y=63,z=-495,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ scoreboard players set @a[r=5,score_TalkTime=0,tag=!Dialogue210] DialogueTrigger 210

scoreboard players add @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=!Dialogue210] TalkTime 1
execute @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=!Dialogue210,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
tellraw @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=!Dialogue210,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> This is the Pokémon Center. They heal your Pokémon in no time at all!"}
tellraw @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=!Dialogue210,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Guide Gent> You'll be relying on them a lot, so you better learn about them."}
execute @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=!Dialogue210,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ fill -735 84 -242 -736 84 -242 minecraft:redstone_block

scoreboard players tag @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,score_TalkTime_min=20,tag=!Dialogue210] add Dialogue210
scoreboard players set @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,score_TalkTime_min=20,tag=Dialogue210] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=210,score_DialogueTrigger=210,tag=Dialogue210] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent Tour
#execute @e[x=-217,y=64,z=-495,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ scoreboard players set @a[r=5,score_TalkTime=0,tag=!Dialogue211] DialogueTrigger 211

scoreboard players add @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,tag=!Dialogue211] TalkTime 1
tellraw @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,tag=!Dialogue211,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> This is a Pokemon Mart."}
tellraw @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,tag=!Dialogue211,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Guide Gent> They sell Poke Balls for catching wild Pokemon and other useful items."}
execute @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,tag=!Dialogue211,score_TalkTime_min=18,score_TalkTime=18] ~ ~ ~ fill -738 84 -242 -739 84 -242 minecraft:redstone_block

scoreboard players tag @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,score_TalkTime_min=18,tag=!Dialogue211] add Dialogue211
scoreboard players set @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,score_TalkTime_min=18,tag=Dialogue211] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=211,score_DialogueTrigger=211,tag=Dialogue211] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent Tour
#execute @e[x=-184,y=64,z=-495,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ scoreboard players set @a[r=5,score_TalkTime=0,tag=!Dialogue212] DialogueTrigger 212

scoreboard players add @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,tag=!Dialogue212] TalkTime 1
tellraw @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,tag=!Dialogue212,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> Route 30 is out this way. Trainers will be battling their Pokemon there."}
tellraw @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,tag=!Dialogue212,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Guide Gent> If you go a little further, you'll see Mr. Pokemon's House."}
execute @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,tag=!Dialogue212,score_TalkTime_min=20,score_TalkTime=20] ~ ~ ~ fill -744 84 -242 -741 84 -242 minecraft:redstone_block

scoreboard players tag @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=20,tag=!Dialogue212] add Dialogue212
scoreboard players set @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,score_TalkTime_min=20,tag=Dialogue212] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=212,score_DialogueTrigger=212,tag=Dialogue212] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent Tour
#execute @e[x=-146,y=64,z=-517,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ scoreboard players set @a[r=5,score_TalkTime=0,tag=!Dialogue197] DialogueTrigger 197

scoreboard players add @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,tag=!Dialogue197] TalkTime 1
tellraw @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,tag=!Dialogue197,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> This is the sea, as you can see."}
tellraw @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,tag=!Dialogue197,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Guide Gent> Some Pokemon are only found in water."}
execute @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,tag=!Dialogue197,score_TalkTime_min=17,score_TalkTime=17] ~ ~ ~ fill -746 84 -242 -750 84 -242 minecraft:redstone_block

scoreboard players tag @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,score_TalkTime_min=17,tag=!Dialogue197] add Dialogue197
scoreboard players set @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,score_TalkTime_min=17,tag=Dialogue197] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=197,score_DialogueTrigger=197,tag=Dialogue197] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Guide Gent Tour
#execute @e[x=-230,y=64,z=-529,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ scoreboard players set @a[r=5,score_TalkTime=0,tag=!Dialogue213] DialogueTrigger 213

scoreboard players add @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213] TalkTime 1
tellraw @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Guide Gent> Here... It's my house!"}
tellraw @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Guide Gent> For your effort keeping up with me, I'll give you a Town Map!"}
execute @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=11,score_TalkTime=11] ~ ~ ~ give @s minecraft:filled_map 1 61 {display:{Name:"Town Map",Lore:["A map of the local area.","To view live location, place","in first item slot."]},ench:[{id:"2",lvl:"1"}],HideFlags:1}
tellraw @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Guide Gent> If you want it to show you where you are, be sure to put it in your first slot!"}
execute @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ fill -752 84 -242 -753 84 -242 minecraft:redstone_block
execute @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=!Dialogue213,score_TalkTime_min=26,score_TalkTime=26] ~ ~ ~ scoreboard players tag @s add GuideTour

scoreboard players tag @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=27,tag=!Dialogue213] add Dialogue213
scoreboard players set @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,score_TalkTime_min=27,tag=Dialogue213] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=213,score_DialogueTrigger=213,tag=Dialogue213] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#SS Aqua Voyage
#execute @a[x=744,y=73,z=-193,r=15,tag=Dialogue101,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue214
#execute @a[x=-2749,y=72,z=-159,r=15,tag=Dialogue101,score_TalkTime=0] ~ ~ ~ scoreboard players tag @s remove Dialogue214

#execute @a[x=744,y=73,z=-193,r=15,tag=Dialogue101,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 214
#execute @a[x=-2749,y=72,z=-159,r=15,tag=Dialogue101,score_TalkTime=0] ~ ~ ~ scoreboard players set @s DialogueTrigger 214

scoreboard players add @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214] TalkTime 1

#Tags player depending on their location of departure
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=10] ~ ~ ~ scoreboard players set @s[x=744,y=73,z=-193,r=15] SSState 1
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=10] ~ ~ ~ scoreboard players set @s[x=-2749,y=72,z=-159,r=15] SSState 2

#Tps player to ship
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=10] ~ ~ ~ tp @s[x=744,y=73,z=-193,r=15] 748 72 555 90 0
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=10] ~ ~ ~ tp @s[x=-2749,y=72,z=-159,r=15] 748 72 555 90 0

#TPs players in the water
execute @a[x=530,y=0,z=324,dx=442,dy=63,dz=471,score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=800] ~ ~ ~ tp @s 748 72 555 90 0

#Now Boarding messages
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=1,score_SSState_min=1,score_SSState=1] {"text":"Now boarding the S.S. Aqua voyage for Vermilion City!"}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=1,score_SSState_min=2,score_SSState=2] {"text":"Now boarding the S.S. Aqua voyage for Olivine City!"}
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ advancement grant @s only johto:event4
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s Sleeping 0



tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=80,score_TalkTime=80] {"text":"<Intercom> 9 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=160,score_TalkTime=160] {"text":"<Intercom> 8 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=240,score_TalkTime=240] {"text":"<Intercom> 7 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=320,score_TalkTime=320] {"text":"<Intercom> 6 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=400,score_TalkTime=400] {"text":"<Intercom> 5 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=480,score_TalkTime=480] {"text":"<Intercom> 4 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=560,score_TalkTime=560] {"text":"<Intercom> 3 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=640,score_TalkTime=640] {"text":"<Intercom> 2 minutes remain in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=720,score_TalkTime=720] {"text":"<Intercom> 1 minute remains in this voyage."}
tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=760,score_TalkTime=760] {"text":"<Intercom> SS Aqua now docking. Please stand by."}

tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=790,score_TalkTime=790,score_SSState_min=1,score_SSState=1] {"text":"The S.S. Aqua has docked in Vermilion City. Thank you for sailing with us!"}
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=797,score_TalkTime=797,score_SSState_min=1,score_SSState=1] ~ ~ ~ spawnpoint @s -2749 64 -129
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=797,score_TalkTime=797,score_SSState_min=1,score_SSState=1] ~ ~ ~ tp @s -2749 64 -129 0 ~

tellraw @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=790,score_TalkTime=790,score_SSState_min=2,score_SSState=2] {"text":"The S.S. Aqua has docked in Olivine City. Thank you for sailing with us!"}
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=797,score_TalkTime=797,score_SSState_min=2,score_SSState=2] ~ ~ ~ spawnpoint @s 758 64 -91
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=797,score_TalkTime=797,score_SSState_min=2,score_SSState=2] ~ ~ ~ tp @s 758 64 -91 0 ~

#State Reset
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=799,score_TalkTime=799] ~ ~ ~ scoreboard players set @s SSState 0
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=799,score_TalkTime=799] ~ ~ ~ scoreboard players set @s click 1


#If the player sleeps during the voyage
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=750] ~ ~ ~ scoreboard players tag @s add Sleeping {Sleeping:1b}
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=750,tag=Sleeping] ~ ~ ~ scoreboard players set @s TalkTime 750
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=750,tag=Sleeping] ~ ~ ~ tellraw @s ["",{"text":"<"},{"selector":"@p[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=750,tag=Sleeping]"},{"text":"> "},{"text":"zzz.....","italic":true,"color":"gray"}]
execute @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=!Dialogue214,score_TalkTime_min=1,score_TalkTime=750,tag=Sleeping] ~ ~ ~ scoreboard players tag @s remove Sleeping


scoreboard players tag @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=800,tag=!Dialogue214] add Dialogue214
scoreboard players set @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,score_TalkTime_min=800,tag=Dialogue214] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=214,score_DialogueTrigger=214,tag=Dialogue214] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Power Plant Manager before finding the part
#scoreboard players set @a[x=-3117,y=48,z=589,r=5,tag=!Dialogue215,score_TalkTime=0] DialogueTrigger 215

scoreboard players add @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,tag=!Dialogue215] TalkTime 1
tellraw @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,tag=!Dialogue215,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Power Plant Manager> I-I-I'm ready to blast something!"}
tellraw @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,tag=!Dialogue215,score_TalkTime_min=9,score_TalkTime=9] {"text":"<Power Plant Manager> Who would dare steal a part from the generator? I spent so much time fixing it!"}
tellraw @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,tag=!Dialogue215,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Power Plant Manager> If I catch him, he's going to see what I can do with my Charge Beam!"}

scoreboard players tag @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,score_TalkTime_min=19,tag=!Dialogue215] add Dialogue215
scoreboard players set @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,score_TalkTime_min=19,tag=Dialogue215] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=215,score_DialogueTrigger=215,tag=Dialogue215] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Power Plant police officer after speaking with the manager
#execute @a[x=-3111,y=44,z=565,r=7,tag=Dialogue215,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue216] DialogueTrigger 216

scoreboard players add @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,tag=!Dialogue216] TalkTime 1
tellraw @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,tag=!Dialogue216,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> I just got word from Cerulean."}]
tellraw @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,tag=!Dialogue216,score_TalkTime_min=8,score_TalkTime=8] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> It appears that a shady character has been loitering around."}]
tellraw @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,tag=!Dialogue216,score_TalkTime_min=17,score_TalkTime=17] ["",{"text":"<"},{"text":"Policeman","color":"aqua"},{"text":"> Could I ask for your cooperation? The shady character was hanging around the Cerulean Gym..."}]

scoreboard players tag @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,score_TalkTime_min=17,tag=!Dialogue216] add Dialogue216
scoreboard players set @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,score_TalkTime_min=17,tag=Dialogue216] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=216,score_DialogueTrigger=216,tag=Dialogue216] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Grunt in Cerulean Gym
#execute @a[x=-1185,y=65,z=743,r=10,score_TalkTime=0,tag=Dialogue216] ~ ~ ~ scoreboard players set @s[tag=!Dialogue217] DialogueTrigger 217

scoreboard players add @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217] TalkTime 1

#tp Grunt in
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -1185 65 743 1 1 1 1 100
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=74,z=-235,dy=3,type=pixelmon:npc_chatting] -1185 65 743

tellraw @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Rocket Grunt> I very busy. No time for talking with you. Not good for me if seen by somebody."}

#Summon exclamation
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=10,score_TalkTime=12] ~ ~ ~ execute @e[x=-1185,y=64,z=743,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,CustomName:"!",CustomNameVisible:1b}
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ execute @e[x=-1185,y=64,z=743,dy=3,type=pixelmon:npc_chatting] ~ ~ ~ kill @e[r=2,type=armor_stand,name=!]

tellraw @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=12,score_TalkTime=12] {"text":"<Rocket Grunt> Oh no! You seen me already! I make big mistake!"}
tellraw @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Rocket Grunt> Hey, you! Forget you see me, OK?"}
tellraw @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=27,score_TalkTime=27] {"text":"<Rocket Grunt> You seen, heard, known nothing, OK? Bye! Bye-bye a go-go!"}

#tp Grunt out
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ particle cloud -1185 65 743 1 1 1 1 100
execute @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=!Dialogue217,score_TalkTime_min=36,score_TalkTime=36] ~ ~ ~ tp @e[x=-1185,y=64,z=743,dy=3,type=pixelmon:npc_chatting] -815 75 -235

scoreboard players tag @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=37,tag=!Dialogue217] add Dialogue217
scoreboard players set @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,score_TalkTime_min=37,tag=Dialogue217] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=217,score_DialogueTrigger=217,tag=Dialogue217] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#https://youtu.be/IXZ95n5MmZo?list=PL961810F87071AC37&t=373
#Team Rocket Grunt on Golden Bridge
#execute @a[x=-2748,y=66,z=870,r=7,score_TalkTime=0,tag=Dialogue217] ~ ~ ~ scoreboard players set @s[tag=!Dialogue218] DialogueTrigger 218

#tp Grunt in separately
#execute @a[x=-2748,y=66,z=870,r=20,tag=Dialogue217,score_TalkTime=0] ~ ~ ~ execute @s[tag=!Dialogue219] ~ ~ ~ tp @e[x=-815,y=74,z=-233,dy=3,type=pixelmon:npc_trainer] -2743 66 870

scoreboard players add @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218] TalkTime 1
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Rocket Grunt> Oh no! Hiding I was, but you did me found in no time!"}
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Rocket Grunt> ... Me only one from another country. Yet! No big business, OK?"}
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Rocket Grunt> Think I did, if stop the energy, be big panic and unlucky for here people!"}
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=31,score_TalkTime=31] {"text":"<Rocket Grunt> Secret it is my mission, so tell you I not!"}
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Rocket Grunt> But! If win you do versus me, a man I be and mine secret to you tell."}
tellraw @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=!Dialogue218,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Rocket Grunt> You understand? Battle begin we do!"}

scoreboard players tag @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,score_TalkTime_min=50,tag=!Dialogue218] add Dialogue218
scoreboard players set @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,score_TalkTime_min=50,tag=Dialogue218] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=218,score_DialogueTrigger=218,tag=Dialogue218] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rocket Grunt post-battle
#scoreboard players set @a[x=-2748,y=66,z=870,r=20,score_TalkTime=0,tag=!Dialogue219] DialogueTrigger 219 {Inventory:[{id:"minecraft:netherbrick"}]}

scoreboard players add @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219] TalkTime 1
execute @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219] ~ ~ ~ clear @s minecraft:netherbrick
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Rocket Grunt> OK. Tell you mine secret will I. Machine Part steal by me."}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Rocket Grunt> Hide it I did in Gym of the Cerulean."}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Rocket Grunt> At bottom of pool put it I did. Look for Gym at."}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=26,score_TalkTime=26] {"text":"<Rocket Grunt> But you forget me not! Beat you for sure will Team Rocket."}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=35,score_TalkTime=35] {"text":"<Rocket Grunt> Come from Johto will they, mine allies, yes. Will revenge they are."}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Rocket Grunt> ... You say what? Team Rocket bye-bye a go-go?"}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Rocket Grunt> Broken up it is says you? Oh, no!"}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=64,score_TalkTime=64] {"text":"<Rocket Grunt> Should I do what now on from, me?"}
tellraw @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=72,score_TalkTime=72] {"text":"<Rocket Grunt> ...OK. I my country go home. Make Team Rocket I will. Good-bye! So long!"}

#tp Grunt out
execute @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ particle cloud -2743 66 870 1 1 1 1 100
execute @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=!Dialogue219,score_TalkTime_min=80,score_TalkTime=80] ~ ~ ~ tp @e[x=-2743,y=65,z=870,dy=3,type=pixelmon:npc_trainer] -815 75 -233

scoreboard players tag @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,score_TalkTime_min=80,tag=!Dialogue219] add Dialogue219
scoreboard players set @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,score_TalkTime_min=80,tag=Dialogue219] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=219,score_DialogueTrigger=219,tag=Dialogue219] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Power Plant machine part in Cerulean Gym
#execute @a[x=-1180,y=59,z=773,r=30,score_TalkTime=0,tag=Dialogue219] ~ ~ ~ execute @s[tag=!Dialogue220] ~ ~ ~ execute @e[x=-1180,y=59,z=773,dy=3,type=armor_stand] ~ ~ ~ scoreboard players set @a[r=5] DialogueTrigger 220
#execute @a[x=-1180,y=59,z=773,r=30,score_TalkTime=0,tag=Dialogue219] ~ ~ ~ execute @s[tag=!Dialogue220] ~ ~ ~ execute @e[x=-1180,y=59,z=773,dy=3,type=armor_stand] ~ ~ ~ particle fireworksSpark ~ ~ ~ 1 2 1 0.1 2 normal @a[tag=!Dialogue220]

scoreboard players add @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,tag=!Dialogue220] TalkTime 1
execute @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,tag=!Dialogue220,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tellraw @s {"text":"You found a Machine Part!","italic":true,"color":"gray"}
execute @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,tag=!Dialogue220,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ give @s minecraft:record_mall 1 0 {display:{Name:"Machine Part",Lore:["An important part of a machine","that was stolen from the Power Plant."]},HideFlags:36}
execute @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,tag=!Dialogue220,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 10 1 1

scoreboard players tag @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,score_TalkTime_min=2,tag=!Dialogue220] add Dialogue220
scoreboard players set @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,score_TalkTime_min=2,tag=Dialogue220] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=220,score_DialogueTrigger=220,tag=Dialogue220] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Bringing Power Plant manager the part back
#execute @a[x=-3117,y=48,z=589,r=5,score_TalkTime=0,tag=Dialogue220] ~ ~ ~ scoreboard players set @s[tag=!Dialogue221,score_TalkTime=0] DialogueTrigger 221 {Inventory:[{id:"minecraft:record_mall"}]}

scoreboard players add @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221] TalkTime 1
execute @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221] ~ ~ ~ clear @s minecraft:record_mall
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Power Plant Manager> Ah! Yeah! The thing you have..."}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Power Plant Manager> Is that the part that was stolen from my beloved generator?"}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=16,score_TalkTime=16] {"text":"<Power Plant Manager> You found it? Thank you so much! Now, all I have to do is..."}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=25,score_TalkTime=25] {"text":"<Power Plant Manager> attach this part here..."}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Power Plant Manager> Whirrrrrr! Yes, it's running! Whirrr, whirrr!"}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=40,score_TalkTime=40] {"text":"<Power Plant Manager> Wahah! Thanks! Here! Go ahead and take this TM as a reward!"}
execute @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=43,score_TalkTime=43] ~ ~ ~ give @s pixelmon:tm_gen4 1 0 {tm:57}
tellraw @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Power Plant Manager> TM57 is my Charge Beam! It will shoot beams, and it can also sometimes raise Special Attack!"}
execute @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=!Dialogue221,score_TalkTime_min=50,score_TalkTime=50] ~ ~ ~ /advancement grant @s only johto:event9

scoreboard players tag @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,score_TalkTime_min=50,tag=!Dialogue221] add Dialogue221
scoreboard players set @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,score_TalkTime_min=50,tag=Dialogue221] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=221,score_DialogueTrigger=221,tag=Dialogue221] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Professor Oak giving access to Mt. Silver after you obtain all the badges
#Dialogue222
#execute @a[x=-1726,y=63,z=-319,dx=23,dy=5,dz=25,tag=Dialogue154] ~ ~ ~ execute @s[tag=AllGyms] ~ ~ ~ scoreboard players set @s[tag=!Dialogue222] DialogueTrigger 222

scoreboard players add @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222] TalkTime 1
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=1,score_TalkTime=1] {"text":"<Professor Oak> Those Badges are... Wow!"}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=8,score_TalkTime=8] {"text":"<Professor Oak> You have not only become the Johto Champion, but you've collected all the Kanto Badges!"}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Professor Oak> Well done! Hmm... No wonder I sensed something in you when we met."}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=27,score_TalkTime=27] ["",{"text":"<Professor Oak> Tell you what, "},{"selector":"@p[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=27,score_TalkTime=27]"},{"text":"."}]
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Professor Oak> I'll make arrangements so that you can go to Mt. Silver."}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Professor Oak> Mt. Silver is a big mountain that is home to many wild Pokémon."}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Professor Oak> It's too dangerous for your average Trainer, so it's off limits."}
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=58,score_TalkTime=58] ["",{"text":"<Professor Oak> But we can make an exception in your case, "},{"selector":"@p[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=58,score_TalkTime=58]"},{"text":"."}]
tellraw @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=!Dialogue222,score_TalkTime_min=67,score_TalkTime=67] {"text":"<Professor Oak> Go to the Pokémon League Reception Gate. You can reach Mt. Silver from there."}

scoreboard players tag @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,score_TalkTime_min=67,tag=!Dialogue222] add Dialogue222
scoreboard players set @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,score_TalkTime_min=67,tag=Dialogue222] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=222,score_DialogueTrigger=222,tag=Dialogue222] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Lavendar Town Radio Director after Power Plant
#execute @a[x=-3312,y=64,z=381,r=5,tag=Dialogue221] ~ ~ ~ scoreboard players set @s[tag=!Dialogue223] DialogueTrigger 223

scoreboard players add @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223] TalkTime 1
tellraw @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Radio Director> Ah! So you're the "},{"selector":"@p[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=1,score_TalkTime=1]"},{"text":" who solved the Power Plant's problem?"}]
tellraw @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Radio Director> Thanks to you, I never lost my job."}
tellraw @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=18,score_TalkTime=18] {"text":"<Radio Director> I tell you, you're a real lifesaver! Please take this as my thanks."}
tellraw @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=27,score_TalkTime=27] ["",{"text":"The Director loaded the EXPN Card on ","italic":true,"color":"gray"},{"selector":"@p[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=27,score_TalkTime=27]","italic":true,"color":"gray"},{"text":"'s Radio!","italic":true,"color":"gray"}]
execute @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ playsound pixelmon:pixelmon.block.pokelootobtained ambient @s ~ ~ ~ 10 1 1
execute @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ scoreboard players tag @s add EXPNCard
tellraw @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=!Dialogue223,score_TalkTime_min=36,score_TalkTime=36] {"text":"<Radio Director> With that thing, you can tune in to even more radio programs here in Kanto. Gahahahaha!"}

scoreboard players tag @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,score_TalkTime_min=36,tag=!Dialogue223] add Dialogue223
scoreboard players set @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,score_TalkTime_min=36,tag=Dialogue223] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=223,score_DialogueTrigger=223,tag=Dialogue223] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Team Rocket's Announcement when Radio Tower is occupied, overwrites existing radio shows
#Dialogue224
#Applied by the RadioStations function, removed by fiveminutecommands function

scoreboard players add @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,tag=!Dialogue224] TalkTime 1

tellraw @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,tag=!Dialogue224,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio] ","color":"aqua"},{"text":"<Team Rocket> ...This is the Radio Tower. This is the Radio Tower.","italic":true},{"text":"\u266a\u266b\u266c"}]
tellraw @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,tag=!Dialogue224,score_TalkTime_min=10,score_TalkTime=10] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio] ","color":"aqua"},{"text":"<Team Rocket> We are pleased to declare Team Rocket's revival.","italic":true},{"text":"\u266a\u266b\u266c"}]
tellraw @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,tag=!Dialogue224,score_TalkTime_min=20,score_TalkTime=20] ["",{"text":"\u266a\u266b\u266c "},{"text":"[Radio] ","color":"aqua"},{"text":"<Team Rocket> ...Giovanni? ...Can you hear us? We have finally made it!...","italic":true},{"text":"\u266a\u266b\u266c"}]

scoreboard players tag @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,score_TalkTime_min=20,tag=!Dialogue224] add Dialogue224
scoreboard players set @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,score_TalkTime_min=20,tag=Dialogue224] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=224,score_DialogueTrigger=224,tag=Dialogue224] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Buena's Password Item
#execute @a[x=502,y=48,z=-274,dx=6,dy=5,dz=5,tag=BuenasPasswordDaily,score_TalkTime=0] ~ ~ ~ scoreboard players set @s[tag=!Dialogue225] DialogueTrigger 225

scoreboard players add @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225] TalkTime 1

tellraw @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=1,score_TalkTime=1] {"text":"<DJ Buena> YIPPEE! That's the password!"}
tellraw @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=7,score_TalkTime=7] {"text":"<DJ Buena> You did tune in! I'm so happy!"}

#Rolls RNG Score
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players set @e[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 0
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 1
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 2
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 4
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 8
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 16
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 32
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players add @r[x=-864,y=69,z=-202,dy=4,dz=2,type=armor_stand] rng 64

execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=12,score_TalkTime=12] ~ ~ ~ scoreboard players operation @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225] rng = @e[x=-864,y=69,z=-200,dy=3] rng

#Gives prize:
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=0,score_rng=15] ~ ~ ~ give @s pixelmon:poke_ball
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=16,score_rng=31] ~ ~ ~ give @s pixelmon:full_restore
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=32,score_rng=47] ~ ~ ~ give @s pixelmon:protein
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=48,score_rng=63] ~ ~ ~ give @s pixelmon:iron
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=64,score_rng=79] ~ ~ ~ give @s pixelmon:carbos
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=80,score_rng=95] ~ ~ ~ give @s pixelmon:nugget
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=96,score_rng=111] ~ ~ ~ give @s pixelmon:rare_candy
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13,score_rng_min=112,score_rng=127] ~ ~ ~ give @s pixelmon:hp_up

tellraw @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13] {"text":"<DJ Buena> Here's a prize! Congrats!"}

execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ scoreboard players tag @s remove BuenasPasswordTalk
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ scoreboard players tag @s remove BuenasPasswordDaily
execute @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=13,score_TalkTime=13] ~ ~ ~ scoreboard players tag @s add BuenasPasswordCD

tellraw @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=!Dialogue225,score_TalkTime_min=20,score_TalkTime=20] {"text":"<DJ Buena> My drawings are daily! Tune in and come back tomorrow for another prize!"}

scoreboard players tag @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,score_TalkTime_min=20,tag=!Dialogue225] add Dialogue225
scoreboard players set @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,score_TalkTime_min=20,tag=Dialogue225] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=225,score_DialogueTrigger=225,tag=Dialogue225] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Eusine Burned Tower first dialogue
#scoreboard players set @a[x=445,y=64,z=304,r=5,score_DogEncounter_min=1,tag=!Dialogue226] DialogueTrigger 226

#tps Eusine in
#execute @a[x=445,y=64,z=304,r=10,score_DogEncounter_min=1,tag=!Dialogue226] ~ ~ ~ tp @e[x=-815,y=74,z=-228,dy=3,type=pixelmon:npc_chatting] 445 64 304

scoreboard players add @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226] TalkTime 1

tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=1,score_TalkTime=1] {"text":"<...> Did you see it? Suicune raced by like a blur, right in front of my eyes!"}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=10,score_TalkTime=10] {"text":"<..> I have been chasing Suicune for almost ten years, but I have never been this close! I'm all choked up!"}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=20,score_TalkTime=20] {"text":"<Eusine> Oh? My name is Eusine. I'm on the trail of a Pokémon named Suicune. And you are...?"}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=29,score_TalkTime=29] ["",{"text":"<Eusine> "},{"selector":"@p[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=29,score_TalkTime=29]"},{"text":"? Glad to meet you. I heard rumors that Suicune is here, so I came to look."}]
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=39,score_TalkTime=39] {"text":"<Eusine> By the way... It was clear to me that Suicune took notice of your presence."}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=48,score_TalkTime=48] {"text":"<Eusine> Ecruteak's legendary Pokémon are said to come to people only when they recognize their talents."}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=58,score_TalkTime=58] {"text":"<Eusine> Perhaps I should be more aggressive toward Suicune..."}
tellraw @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=66,score_TalkTime=66] ["",{"text":"<Eusine> Anyway, "},{"selector":"@p[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=66,score_TalkTime=66]"},{"text":", we will meet again!"}]

#tp out
execute @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=73,score_TalkTime=73] ~ ~ ~ particle cloud 445 64 304 1 1 1 1 100
execute @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=!Dialogue226,score_TalkTime_min=73,score_TalkTime=73] ~ ~ ~ tp @e[x=445,y=63,z=304,dy=3,type=pixelmon:npc_chatting] -815 75 -228


scoreboard players tag @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,score_TalkTime_min=73,tag=!Dialogue226] add Dialogue226
scoreboard players set @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,score_TalkTime_min=73,tag=Dialogue226] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=226,score_DialogueTrigger=226,tag=Dialogue226] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Second Encounter Cianwood City pre-battle
#execute @a[x=1249,y=63,z=-300,dx=9,dy=5,dz=10,tag=Dialogue226] ~ ~ ~ scoreboard players set @s[tag=!Dialogue227] DialogueTrigger 227

#tp in Suicune to find:
#execute @a[x=1256,y=64,z=-296,r=50,score_DogEncounter_min=1,score_TalkTime=0,tag=Dialogue226] ~ ~ ~ execute @s[tag=!Dialogue227] ~ ~ ~ tp @e[x=-817,y=80,z=-171,dy=3,type=pixelmon:statue] 1256 64 -296

scoreboard players add @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227] TalkTime 1

#Suicune
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s MusicCooldown 100
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ particle cloud 1256 64 -296 1 1 1 1 100
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ tp @e[x=1256,y=64,z=-296,r=3,type=pixelmon:statue] -817 81 -171

execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ tp @e[x=-815,y=74,z=-226,dy=3,type=pixelmon:npc_trainer] 1251 64 -307
execute @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ particle cloud 1251 64 -307 1 1 1 1 100


tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=14,score_TalkTime=14] ["",{"text":"<Eusine> Yo, "},{"selector":"@p[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=14,score_TalkTime=14]"},{"text":". Wasn't that Suicune just now?"}]
tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=22,score_TalkTime=22] {"text":"<Eusine> I only caught a quick glimpse, but I thought I saw Suicune running on the waves."}
tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=32,score_TalkTime=32] {"text":"<Eusine> Suicune is beautiful and grand. And it races through towns and roads at simply awesome speeds."}
tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=42,score_TalkTime=42] {"text":"<Eusine> It's wonderful... I want to see Suicune up close..."}
tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=50,score_TalkTime=50] {"text":"<Eusine> I've decided. I'll battle you as a Trainer to earn Suicune's respect!"}
tellraw @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=59,score_TalkTime=59] ["",{"text":"<Eusine> Come on, "},{"selector":"@p[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=!Dialogue227,score_TalkTime_min=59,score_TalkTime=59]"},{"text":". Let's battle now!"}]


scoreboard players tag @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,score_TalkTime_min=59,tag=!Dialogue227] add Dialogue227
scoreboard players set @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,score_TalkTime_min=59,tag=Dialogue227] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=227,score_DialogueTrigger=227,tag=Dialogue227] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Second Encounter Cianwood City post-battle
#scoreboard players set @a[x=1256,y=64,z=-296,r=20,score_TalkTime=0,tag=!Dialogue228] DialogueTrigger 228 {Inventory:[{id:"minecraft:netherbrick"}]}

#Tp in if needed
#execute @a[x=1251,y=64,z=-307,r=20,score_TalkTime=0,tag=Dialogue227] ~ ~ ~ execute @s[tag=!Dialogue228] ~ ~ ~ tp @e[x=-815,y=74,z=-226,dy=3,type=pixelmon:npc_trainer] 1251 64 -307

scoreboard players add @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228] TalkTime 1
execute @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228] ~ ~ ~ clear @s minecraft:netherbrick

tellraw @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=1,score_TalkTime=1] ["",{"text":"<Eusine> You're amazing, "},{"selector":"@p[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=1,score_TalkTime=1]"},{"text":"! I'm starting to understand why Suicune was keeping an eye on you."}]
tellraw @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Eusine> I'm going to keep searching for Suicune."}
tellraw @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Eusine> I have a feeling we'll see each other again. See you around!"}

#tp out
execute @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ particle cloud 1251 64 -307 1 1 1 1 100
execute @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=!Dialogue228,score_TalkTime_min=27,score_TalkTime=27] ~ ~ ~ tp @e[x=1251,y=63,z=-307,dy=3,type=pixelmon:npc_trainer] -815 75 -226


scoreboard players tag @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,score_TalkTime_min=27,tag=!Dialogue228] add Dialogue228
scoreboard players set @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,score_TalkTime_min=27,tag=Dialogue228] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=228,score_DialogueTrigger=228,tag=Dialogue228] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Mt. Mortar encounter
#execute @a[x=80,y=64,z=152,r=5,score_TalkTime=0,tag=Dialogue228] ~ ~ ~ scoreboard players set @s[tag=!Dialogue229] DialogueTrigger 229

#tp in Suicune to find:
#execute @a[x=80,y=64,z=152,r=50,score_TalkTime=0,tag=Dialogue228] ~ ~ ~ execute @s[tag=!Dialogue229] ~ ~ ~ tp @e[x=-817,y=80,z=-165,dy=3,type=pixelmon:statue] 80 64 152

scoreboard players add @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229] TalkTime 1

#Suicune
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s MusicCooldown 100
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ particle cloud 80 64 152 1 1 1 1 100
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ tp @e[x=80,y=64,z=152,r=3,type=pixelmon:statue] -817 81 -165

execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ tp @e[x=-815,y=74,z=-224,dy=3,type=pixelmon:npc_chatting] 94 64 153
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ particle cloud 94 64 153 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=14,score_TalkTime=14] {"text":"<Eusine> Suicune... How brave it is!"}
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=21,score_TalkTime=21] {"text":"<Eusine> How refreshing it is! How beautiful it is!"}
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Eusine> And how quickly it moves!"}
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=37,score_TalkTime=37] ["",{"text":"<Eusine> "},{"selector":"@p[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=37,score_TalkTime=37]"},{"text":"! You seem to be around where Suicune would appear."}]
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=47,score_TalkTime=47] {"text":"<Eusine> Well, that's OK. My desire to search for Suicune is far beyond yours.."}
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=56,score_TalkTime=56] {"text":"<Eusine> My grandpa was...quite into myths. I've heard so many stories about Suicune from him."}
tellraw @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=66,score_TalkTime=66] {"text":"<Eusine> Suicune... I won't stop following you until I've found out what you're after... You hear me!"}

#tp out
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ particle cloud 94 64 153 1 1 1 1 100
execute @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=!Dialogue229,score_TalkTime_min=76,score_TalkTime=76] ~ ~ ~ tp @e[x=94,y=63,z=153,dy=3,type=pixelmon:npc_chatting] -815 75 -224

scoreboard players tag @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,score_TalkTime_min=76,tag=!Dialogue229] add Dialogue229
scoreboard players set @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,score_TalkTime_min=76,tag=Dialogue229] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=229,score_DialogueTrigger=229,tag=Dialogue229] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Vermilion Port encounter
#Dialogue230
#execute @a[x=-2823,y=64,z=-96,r=10,score_TalkTime=0,tag=Dialogue229] ~ ~ ~ scoreboard players set @s[tag=!Dialogue230] DialogueTrigger 230

#tp in Suicune to find:
#execute @a[x=-2823,y=64,z=-96,r=50,score_TalkTime=0,tag=Dialogue229] ~ ~ ~ execute @s[tag=!Dialogue230] ~ ~ ~ tp @e[x=-817,y=80,z=-159,dy=3,type=pixelmon:statue] -2823 64 -96

scoreboard players add @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230] TalkTime 1

execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=74,z=-222,dy=3,type=pixelmon:npc_chatting] -2816 65 -89
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -2816 65 -89 1 1 1 1 100


#Suicune
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ scoreboard players set @s MusicCooldown 100
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=4,score_TalkTime=4] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ particle cloud -2823 64 -96 1 1 1 1 100
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=8,score_TalkTime=8] ~ ~ ~ tp @e[x=-2823,y=65,z=-96,r=3,type=pixelmon:statue] -817 81 -159



tellraw @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=13,score_TalkTime=13] {"text":"<Eusine> That was so close! I thought I could corner it by ambushing it here..."}
tellraw @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=23,score_TalkTime=23] {"text":"<Eusine> But running on the water... is beyond me."}
tellraw @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=30,score_TalkTime=30] {"text":"<Eusine> Still, I am starting to see a pattern. Suicune prefers water! That means..."}
tellraw @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=40,score_TalkTime=40] ["",{"text":"<Eusine> Sorry, "},{"selector":"@p[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=40,score_TalkTime=40]"},{"text":"! I've got to go!"}]

#tp Eusine out
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=47,score_TalkTime=47] ~ ~ ~ particle cloud -2816 65 -89 1 1 1 1 100
execute @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=!Dialogue230,score_TalkTime_min=47,score_TalkTime=47] ~ ~ ~ tp @e[x=-2816,y=63,z=-89,dy=3,type=pixelmon:npc_chatting] -815 75 -222


scoreboard players tag @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,score_TalkTime_min=47,tag=!Dialogue230] add Dialogue230
scoreboard players set @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,score_TalkTime_min=47,tag=Dialogue230] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=230,score_DialogueTrigger=230,tag=Dialogue230] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Route 14 encounter
#Dialogue231
#execute @a[x=-2971,y=64,z=-470,r=10,score_TalkTime=0,tag=Dialogue230] ~ ~ ~ scoreboard players set @s[tag=!Dialogue231] DialogueTrigger 231

#tp in Suicune to find:
#execute @a[x=-2981,y=64,z=-470,r=50,score_TalkTime=0,tag=Dialogue230] ~ ~ ~ execute @s[tag=!Dialogue231] ~ ~ ~ tp @e[x=-817,y=80,z=-153,dy=3,type=pixelmon:statue] -2981 64 -470

scoreboard players add @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231] TalkTime 1

#Suicune
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ stopsound @s record
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s MusicCooldown 100
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ playsound flee ambient @s ~ ~ ~ 100 1 1
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ particle cloud -2981 64 -470 1 1 1 1 100
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=5,score_TalkTime=5] ~ ~ ~ tp @e[x=-2981,y=64,z=-470,r=3,type=pixelmon:statue] -817 81 -153

execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ tp @e[x=-815,y=74,z=-220,dy=3,type=pixelmon:npc_chatting] -2963 64 -463
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=10,score_TalkTime=10] ~ ~ ~ particle cloud -2963 64 -463 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=14,score_TalkTime=14] ["",{"text":"<Eusine> "},{"selector":"@p[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=14,score_TalkTime=14]"},{"text":"! Not again! I'll be there first next time!"}]
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=24,score_TalkTime=24] {"text":"<Eusine> Having followed it here, I'm starting to understand what Suicune is after."}
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=34,score_TalkTime=34] {"text":"<Eusine> To be honest, I would like to keep this information to myself."}
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=43,score_TalkTime=43] {"text":"<Eusine> But I want to be an honest Trainer in front of Suicune! That's why I am sharing a clue with you."}
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=53,score_TalkTime=53] {"text":"<Eusine> It seems that... ...Suicune prefers a hilly place near water... ...Somewhere north."}
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=63,score_TalkTime=63] {"text":"<Eusine> I don't know exactly where, yet. It will be just you and me!"}
tellraw @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=70,score_TalkTime=70] {"text":"<Eusine> Who'll find it first? I challenge you!"}

#tp Eusine out
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=77,score_TalkTime=77] ~ ~ ~ particle cloud -2963 64 -463 1 1 1 1 100
execute @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=!Dialogue231,score_TalkTime_min=77,score_TalkTime=77] ~ ~ ~ tp @e[x=-2963,y=63,z=-463,dy=3,type=pixelmon:npc_chatting] -815 75 -220

scoreboard players tag @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,score_TalkTime_min=77,tag=!Dialogue231] add Dialogue231
scoreboard players set @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,score_TalkTime_min=77,tag=Dialogue231] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=231,score_DialogueTrigger=231,tag=Dialogue231] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Route 25 encounter pre-catch
#execute @a[x=-3094,y=64,z=989,r=10,tag=!Dialogue232] ~ ~ ~ scoreboard players set @s[tag=Dialogue231] DialogueTrigger 232

#tp in Suicune to find:
#execute @a[x=-3094,y=64,z=989,r=50,score_TalkTime=0,tag=Dialogue231] ~ ~ ~ execute @s[tag=!Dialogue233] ~ ~ ~ tp @e[x=-817,y=80,z=-147,dy=3,type=pixelmon:statue] -3111 64 989

scoreboard players add @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232] TalkTime 1

#Tp Eusine in
execute @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=74,z=-218,dy=3,type=pixelmon:npc_chatting] -3094 64 989
execute @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -3094 64 989 1 1 1 1 100

tellraw @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=3,score_TalkTime=3] {"text":"<Eusine> Puff, puff... I am...no match for you. ...As I predicted."}
tellraw @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=11,score_TalkTime=11] {"text":"<Eusine> .................. ...Go ahead."}
tellraw @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=19,score_TalkTime=19] {"text":"<Eusine> Since I met you in the Burned Tower at Ecruteak City, I've sort of known that Suicune would choose you."}
tellraw @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=29,score_TalkTime=29] {"text":"<Eusine> Take a look at it! Suicune is waiting for you!"}
tellraw @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=!Dialogue232,score_TalkTime_min=37,score_TalkTime=37] {"text":"<Eusine> It has been waiting for a battle with a worthy Trainer to whom it can entrust itself!"}


scoreboard players tag @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,score_TalkTime_min=45,tag=!Dialogue232] add Dialogue232
scoreboard players set @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,score_TalkTime_min=45,tag=Dialogue232] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=232,score_DialogueTrigger=232,tag=Dialogue232] DialogueTrigger 0


#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Spawn after Eusine talk
#execute @a[x=-3111,y=64,z=989,r=5,score_TalkTime=0,tag=!Dialogue233] ~ ~ ~ scoreboard players set @s[tag=Dialogue232] DialogueTrigger 233

scoreboard players add @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233] TalkTime 1
execute @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ pokebattle @s Suicune,lvl:40,gr:7
execute @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233,score_TalkTime_min=2,score_TalkTime=2] ~ ~ ~ scoreboard players set @s click 1
execute @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ playsound suicune hostile @s ~ ~ ~ 1 1 1

execute @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ particle cloud -3111 64 989 1 1 1 1 100
execute @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=!Dialogue233,score_TalkTime_min=1,score_TalkTime=2] ~ ~ ~ tp @e[x=-3111,y=64,z=989,r=3,type=pixelmon:statue] -817 81 -147


scoreboard players tag @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,score_TalkTime_min=2,tag=!Dialogue233] add Dialogue233
scoreboard players set @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,score_TalkTime_min=2,tag=Dialogue233] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=233,score_DialogueTrigger=233,tag=Dialogue233] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Suicune Route 25 encounter post-catch
#Activated from the Suicune catch function
#Dialogue234

scoreboard players add @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234] TalkTime 1

execute @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ tp @e[x=-815,y=74,z=-218,dy=3,type=pixelmon:npc_chatting] -3094 64 989
execute @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=1,score_TalkTime=1] ~ ~ ~ scoreboard players set @s click 1

tellraw @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=3,score_TalkTime=3] ["",{"text":"<Eusine> "},{"selector":"@p[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=3,score_TalkTime=3]"},{"text":"... You two are truly amazing..."}]
tellraw @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=10,score_TalkTime=10] {"text":"<Eusine> I have never seen a battle this intense!"}
tellraw @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=17,score_TalkTime=17] {"text":"<Eusine> I have no regrets... Farewell, Suicune!"}
tellraw @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=25,score_TalkTime=25] ["",{"text":"<Eusine> Farewell..."},{"selector":"@p[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=25,score_TalkTime=25]"},{"text":"!"}]

#tp Eusine out
execute @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ particle cloud -3094 64 989 1 1 1 1 100
execute @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=!Dialogue234,score_TalkTime_min=33,score_TalkTime=33] ~ ~ ~ tp @e[x=-3094,y=63,z=989,dy=3,type=pixelmon:npc_chatting] -815 75 -218


scoreboard players tag @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,score_TalkTime_min=33,tag=!Dialogue234] add Dialogue234
scoreboard players set @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,score_TalkTime_min=33,tag=Dialogue234] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=234,score_DialogueTrigger=234,tag=Dialogue234] DialogueTrigger 0

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Use for timing tests
#Test Timing Dialogue
#Dialogue1000

scoreboard players tag @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=Dialogue1000] remove Dialogue1000

scoreboard players add @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000] TalkTime 1

tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=1,score_TalkTime=1] {"text":"1"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=2,score_TalkTime=2] {"text":"2"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=3,score_TalkTime=3] {"text":"3"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=4,score_TalkTime=4] {"text":"4"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=5,score_TalkTime=5] {"text":"5"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=6,score_TalkTime=6] {"text":"6"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=7,score_TalkTime=7] {"text":"7"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=8,score_TalkTime=8] {"text":"8"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=9,score_TalkTime=9] {"text":"9"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=10,score_TalkTime=10] {"text":"10"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=11,score_TalkTime=11] {"text":"11"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=12,score_TalkTime=12] {"text":"12"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=13,score_TalkTime=13] {"text":"13"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=14,score_TalkTime=14] {"text":"14"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=15,score_TalkTime=15] {"text":"15"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=16,score_TalkTime=16] {"text":"16"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=17,score_TalkTime=17] {"text":"17"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=18,score_TalkTime=18] {"text":"18"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=19,score_TalkTime=19] {"text":"19"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=20,score_TalkTime=20] {"text":"20"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=21,score_TalkTime=21] {"text":"21"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=22,score_TalkTime=22] {"text":"22"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=23,score_TalkTime=23] {"text":"23"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=24,score_TalkTime=24] {"text":"24"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=25,score_TalkTime=25] {"text":"25"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=26,score_TalkTime=26] {"text":"26"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=27,score_TalkTime=27] {"text":"27"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=28,score_TalkTime=28] {"text":"28"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=29,score_TalkTime=29] {"text":"29"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=30,score_TalkTime=30] {"text":"30"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=31,score_TalkTime=31] {"text":"31"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=32,score_TalkTime=32] {"text":"32"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=33,score_TalkTime=33] {"text":"33"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=34,score_TalkTime=34] {"text":"34"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=35,score_TalkTime=35] {"text":"35"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=36,score_TalkTime=36] {"text":"36"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=37,score_TalkTime=37] {"text":"37"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=38,score_TalkTime=38] {"text":"38"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=39,score_TalkTime=39] {"text":"39"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=40,score_TalkTime=40] {"text":"40"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=41,score_TalkTime=41] {"text":"41"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=42,score_TalkTime=42] {"text":"42"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=43,score_TalkTime=43] {"text":"43"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=44,score_TalkTime=44] {"text":"44"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=45,score_TalkTime=45] {"text":"45"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=46,score_TalkTime=46] {"text":"46"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=47,score_TalkTime=47] {"text":"47"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=48,score_TalkTime=48] {"text":"48"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=49,score_TalkTime=49] {"text":"49"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=50,score_TalkTime=50] {"text":"50"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=51,score_TalkTime=51] {"text":"51"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=52,score_TalkTime=52] {"text":"52"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=53,score_TalkTime=53] {"text":"53"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=54,score_TalkTime=54] {"text":"54"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=55,score_TalkTime=55] {"text":"55"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=56,score_TalkTime=56] {"text":"56"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=57,score_TalkTime=57] {"text":"57"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=58,score_TalkTime=58] {"text":"58"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=59,score_TalkTime=59] {"text":"59"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=60,score_TalkTime=60] {"text":"60"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=61,score_TalkTime=61] {"text":"61"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=62,score_TalkTime=62] {"text":"62"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=63,score_TalkTime=63] {"text":"63"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=64,score_TalkTime=64] {"text":"64"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=65,score_TalkTime=65] {"text":"65"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=66,score_TalkTime=66] {"text":"66"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=67,score_TalkTime=67] {"text":"67"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=68,score_TalkTime=68] {"text":"68"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=69,score_TalkTime=69] {"text":"69"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=70,score_TalkTime=70] {"text":"70"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=71,score_TalkTime=71] {"text":"71"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=72,score_TalkTime=72] {"text":"72"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=73,score_TalkTime=73] {"text":"73"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=74,score_TalkTime=74] {"text":"74"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=75,score_TalkTime=75] {"text":"75"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=76,score_TalkTime=76] {"text":"76"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=77,score_TalkTime=77] {"text":"77"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=78,score_TalkTime=78] {"text":"78"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=79,score_TalkTime=79] {"text":"79"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=80,score_TalkTime=80] {"text":"80"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=81,score_TalkTime=81] {"text":"81"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=82,score_TalkTime=82] {"text":"82"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=83,score_TalkTime=83] {"text":"83"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=84,score_TalkTime=84] {"text":"84"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=85,score_TalkTime=85] {"text":"85"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=86,score_TalkTime=86] {"text":"86"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=87,score_TalkTime=87] {"text":"87"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=88,score_TalkTime=88] {"text":"88"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=89,score_TalkTime=89] {"text":"89"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=90,score_TalkTime=90] {"text":"90"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=91,score_TalkTime=91] {"text":"91"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=92,score_TalkTime=92] {"text":"92"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=93,score_TalkTime=93] {"text":"93"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=94,score_TalkTime=94] {"text":"94"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=95,score_TalkTime=95] {"text":"95"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=96,score_TalkTime=96] {"text":"96"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=97,score_TalkTime=97] {"text":"97"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=98,score_TalkTime=98] {"text":"98"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=99,score_TalkTime=99] {"text":"99"}
tellraw @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=!Dialogue1000,score_TalkTime_min=100,score_TalkTime=100] {"text":"100"}

scoreboard players tag @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,score_TalkTime_min=100,tag=!Dialogue1000] add Dialogue1000
scoreboard players set @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,score_TalkTime_min=100,tag=Dialogue1000] TalkTime 0
scoreboard players set @a[score_DialogueTrigger_min=1000,score_DialogueTrigger=1000,tag=Dialogue1000] DialogueTrigger 0







#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#EndDialogue tag, ends a dialogue without finishing. Trigger may take over again as tag is not given

scoreboard players set @a[score_DialogueTrigger_min=1,tag=EndDialogue] DialogueTrigger 0
scoreboard players set @a[score_TalkTime_min=1,tag=EndDialogue] TalkTime 0
scoreboard players tag @a[tag=EndDialogue] remove EndDialogue
