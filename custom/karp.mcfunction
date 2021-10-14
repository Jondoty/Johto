#Runs function
#execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] ~ ~ ~ execute @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD=0] ~ ~ ~ function custom:karp


#Prompt when player's Karp Cooldown =0
#testfor @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD=0]
#tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Do you have a Karp for me?"}

#Prompt after player has a KarpCD score, and Cooldown=0
#testfor @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD_min=1,score_Cooldown=0]
#tellraw @a[x=-197,y=63,z=568,dx=18,dy=5,dz=8,score_KarpCD_min=1,score_Cooldown=0] {"text":"<Fishing Guru> You'll have to show me another Karp some other time!"}


#Scans and Marks the Magikarp based on size:
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 0 {ndex:129s,Growth:0b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 1 {ndex:129s,Growth:1b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 2 {ndex:129s,Growth:2b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 3 {ndex:129s,Growth:3b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 4 {ndex:129s,Growth:4b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 5 {ndex:129s,Growth:5b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 6 {ndex:129s,Growth:6b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 7 {ndex:129s,Growth:7b}
scoreboard players set @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] KarpCD 8 {ndex:129s,Growth:8b}




#Executes message depending on Karp's size
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=0,score_KarpCD=0] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Hmm. That Magikarp is a pygmy! I need one that's bigger!"}
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=1,score_KarpCD=1] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Hmm. That Magikarp is a runt! I need one that's bigger!"}
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=2,score_KarpCD=2] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Hmm. That Magikarp is small! I need one that's bigger!"}
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=3,score_KarpCD=3] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Hmm. That Magikarp is only average. I need one that's bigger!"}
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=4,score_KarpCD=4] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Hmm. That Magikarp is only above average. I need one that's bigger!"}
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=5,score_KarpCD=7] ~ ~ ~ tellraw @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] {"text":"<Fishing Guru> Wow! That is outstanding! I tip my hat to you! Take this as a memento!"}



#Gives player a prize if the Karp is big enough
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=5,score_KarpCD=5] ~ ~ ~ give @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] pixelmon:ether 1 0
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=6,score_KarpCD=7] ~ ~ ~ give @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] pixelmon:elixir 1 0

execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=5,score_KarpCD=7] ~ ~ ~ scoreboard players set @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] Cooldown 15
execute @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp,score_KarpCD_min=5,score_KarpCD=7] ~ ~ ~ scoreboard players set @a[x=-188,y=64,z=573,r=25,score_KarpCD=0] KarpCD 29


entitydata @e[x=-197,y=63,z=568,dx=18,dy=5,dz=8,type=pixelmon:pixelmon,name=Magikarp] {Dimension:1}










#
