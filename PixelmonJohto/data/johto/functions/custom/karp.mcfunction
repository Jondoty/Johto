#Runs function
#execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] ~ ~ ~ execute @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0}] ~ ~ ~ function custom:karp


#Prompt when player's Karp Cooldown =0
#testfor @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,scores={KarpCD=0}]
#tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Do you have a Karp for me?"}

#Prompt after player has a KarpCD score, and Cooldown=0
#testfor @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD_min=1,score_Cooldown=0]
#tellraw @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD_min=1,score_Cooldown=0] {"text":"<Fishing Guru> You'll have to show me another Karp some other time!"}


#Scans and Marks the Magikarp based on size:
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:0b}] KarpCD 0
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:1b}] KarpCD 1
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:2b}] KarpCD 2
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:3b}] KarpCD 3
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:4b}] KarpCD 4
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:5b}] KarpCD 5
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:6b}] KarpCD 6
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:7b}] KarpCD 7
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,nbt={ndex:129s,Growth:8b}] KarpCD 8




#Executes message depending on Karp's size
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=0}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Hmm. That Magikarp is a pygmy! I need one that's bigger!"}
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=1}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Hmm. That Magikarp is a runt! I need one that's bigger!"}
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=2}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Hmm. That Magikarp is small! I need one that's bigger!"}
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=3}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Hmm. That Magikarp is only average. I need one that's bigger!"}
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=4}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Hmm. That Magikarp is only above average. I need one that's bigger!"}
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=7}] run tellraw @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] {"text":"<Fishing Guru> Wow! That is outstanding! I tip my hat to you! Take this as a memento!"}



#Gives player a prize if the Karp is big enough
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=5}] run give @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] pixelmon:ether 1 0
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=7}] run give @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] pixelmon:elixir 1 0

execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=5..7}] run scoreboard players set @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] Cooldown 15
execute at @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,scores={KarpCD=5..7}] run scoreboard players set @a[x=-188,y=64,z=573,distance=..25,scores={KarpCD=0}] KarpCD 29


data merge entity @e[limit=1,x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] {Dimension:1}










#
