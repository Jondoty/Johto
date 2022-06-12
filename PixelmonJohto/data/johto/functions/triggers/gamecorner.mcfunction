#Player presses a slot machine, is assigned a number if player has an emerald in their Inventory
#Number corresponds to slot player pressed, will animate different slot depending on number
#RNG number is rolled, will determine which frame the machine lands on
#RNG score picked is copied to a reference armor stand for each slot (so as to not conflict if another player presses mid-animation)
#Slot machine animation counts up at 20tps, playing animation frames
#Animation frames slow at the end
#Lands on a frame determined on the RNG, deducts or rewards emerald


#Odds (want them to be so the player wins not most of the time but comes out on top after a long while of trying)
#1/128 - triple emerald, player wins jackpot, +100 emeralds
#5/128 - triple diamond, player wins big, +20
#15/128 - triple gold, player wins medium, +5 emeralds
#40/128 - triple iron, player wins roll, +1
#67/128 - No wins



#Iron win
#clone 481 61 -410 481 62 -408

#Gold Win
#clone 481 57 -410 481 58 -408

#Diamond Win
#clone 481 51 -410 481 52 -408

#Emerald Win
#clone 481 47 -410 481 48 -408



#-----------------------------------------------------------------------------------------------------------------------------------------
#If player does not have an emerald on them
tag @s[tag=Emeralds] remove Emeralds
tag @s[nbt={Inventory:[{id:"minecraft:emerald"}]}] add Emeralds
tellraw @s[tag=!Emeralds] {"text":"You need an emerald for the slot machines!","italic":true,"color":"gray"}
playsound minecraft:entity.player.burp ambient @s[tag=!Emeralds] ~ ~ ~ 1 1 1
tag @s[tag=!Emeralds] add EndSlots

#-----------------------------------------------------------------------------------------------------------------------------------------

scoreboard players add @s[tag=Emeralds] TalkTime 1

#Rolls RNG Score

execute as @s[scores={TalkTime=1}] run scoreboard players set @e[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 0
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 1
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 2
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 4
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 8
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 16
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 32
execute as @s[scores={TalkTime=1}] run scoreboard players add @r[x=-867,y=69,z=-197,dy=4,dz=2,limit=1] rng 64

#Clones rng roll to respective slot player is assigned to
execute as @s[scores={TalkTime=1,SlotRolled=1}] run scoreboard players operation @s[x=507,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=2}] run scoreboard players operation @s[x=505,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=3}] run scoreboard players operation @s[x=503,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=4}] run scoreboard players operation @s[x=501,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=5}] run scoreboard players operation @s[x=499,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=6}] run scoreboard players operation @s[x=497,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=7}] run scoreboard players operation @s[x=495,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=8}] run scoreboard players operation @s[x=493,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=9}] run scoreboard players operation @s[x=491,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=10}] run scoreboard players operation @s[x=489,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=11}] run scoreboard players operation @s[x=487,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng
execute as @s[scores={TalkTime=1,SlotRolled=12}] run scoreboard players operation @s[x=485,y=59,z=-370,dy=3] rng = @e[x=-867,y=69,z=-197,dy=3] rng

#-----------------------------------------------------------------------------------------------------------------------------------------











































#-----------------------------------------------------------------------------------------------------------------------------------------

#Ends slots if player does not have emeralds
scoreboard players set @s[tag=EndSlots] SlotRolled 0
scoreboard players set @s[tag=EndSlots] TalkTime 0
tag @s[tag=EndSlots] remove EndSlots




#
