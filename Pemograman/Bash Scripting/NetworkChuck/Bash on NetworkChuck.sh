#!/bin/bash 
echo "<---------------------------------------------------------- GETTING STARTED / BASH 101] [EPS 1] --------------------------------------------------------->"
# Time 
sleep 3
echo "Hello World !!!"
echo "We're AXV !!!"
sleep 3
echo "<------------------------------------------------------------ VARIABLES AND ARGUMENTS [EPS 2] ----------------------------------------------------------->"
# Challenge 
echo "Good morning AXV!!"
echo "You're looking good today AXV!!"
echo "You have the best beard I've ever seen AXV!!"
sleep 3

# Variables
name="AXV"
place="World"
echo "Hello $place !!!"
echo "We're $name !!!"
sleep 3

# Read Variables
echo "What's youre name?"
read name2
echo "Where are you from?"
read place2
echo "Hi $name2, You're from $place2 right? Welcome!"
sleep 3

# Arguments
name3=$1
place3=$2
echo "Hi $name3 !, Welcome to $place3 Nyaa~"
sleep 3

#Command Argument
user=$(whoami)
location=$(pwd)
date=$(date)
echo "
Your currently login as $user.
Your current directory on $location.
Date: $date. 
"
echo "<------------------------------------------------------------------- $\RANDOM [EPS 3] ------------------------------------------------------------------->"
sleep 3
# Challenge
echo "Give me your name bro!"
read name4
echo "Give me your age too!"
read age
echo "Hello $name4, you're $age years old."
sleep 3

# Built-in Variable
echo "
Your currently login as $USER.
Your Hostname $HOSTNAME
Your current directory on $PWD.
Your Terminal: $SHELL. 
Your first num $RANDOM.
Your second num $RANDOM.
"
sleep 3

# Arithmetic Expression
echo $((10 + 20))
echo $((5 * 6))
echo $((150 / 5))
echo $((10 % 3))
sleep 3

# TASK
echo "Input your name!!!"
read name5
echo "Input youre age now !!!"
read age2
echo "[Calculating...]"
sleep 1
echo "[..........]"
sleep 1
echo "[*.........]"
sleep 1
echo "[**........]"
sleep 1
echo "[***.......]"
sleep 1
echo "[****......]"
sleep 1
echo "[*****.....]"
sleep 1
echo "[******....]"
sleep 1
echo "[*******...]"
sleep 1
echo "[********..]"
sleep 1
echo "[*********.]"
sleep 1
echo "[**********]"
getrich=$((($RANDOM % 15) + age2))
echo "$name5, you will become a millionare on $getrich years old!"
echo "<------------------------------------------------------------------- CONDITIONALS [EPS 4] ------------------------------------------------------------------->"
sleep 3
# Case Statements/A Switcher
# Pick Char
echo "Pick Youre Character Now !
[1] Artur
[2] Archer Queen
[3] Anos
[4] Rimuru
[5] Pala Bafack Kau
"
echo "Answer:"
read character

case $character in
    1)
        type="Artur"
        hp=100
        attack=100
        magic=20
        ;;
    2)
        type="Archer Queen"
        hp=100
        attack=90
        magic=30
        ;;
    3)
        type="Anos"
        hp=1000
        attack=1000
        magic=5000
        ;;
    4)
        type="Rimuru"
        hp=500
        attack=500
        magic=500
        ;;
    5)
        type="Pala Bafack Kau"
        hp=1000000000
        attack=1000000000
        magic=1000000000
        ;;
    *)
        echo "Please Select your character with number from [1-5]!"
        ;;
esac
if [[ -n $type ]]; then
    echo "You have choose $type character.
    Your HP: $hp
    Your ATK: $attack
    Your MGC: $magic
    "
else
    exit 1
fi
# Chall
echo "You Died"
# IF statements
echo "Hey, do you want to join us? (y/n)"
read answer
if [[ $answer == "y" ]]; 
then
    echo "Thankyou! This your Fomulir.."
else 
    echo "Okay! I hope you join on another day.."
fi
# Used Operation Logic
# First Enemy
beast=$(($RANDOM % 2))
echo "Enemy spawn! Pick a number (0/1) ?"
read player
if [[ $beast == $player && 2 > 1 ]]; then 
    echo "You Win!"
else
    echo "You Died!"
    exit 1
fi
sleep 2
# Nested IF statements
#Boss Enemy
margit=$(($RANDOM % 10))
echo "Boss spawn! Pick a number (0-9) ?"
read player
if [[ $margit == $player || $player == "ez" ]]; then
    if [[ $USER == "root" ]]; then
        echo "You Win!"
else
    echo "You Died!"
    fi
fi
#Elif Statement
#King Enemny
pou=$(($RANDOM % 100))
echo "Boss spawn! Pick a number (0-99) ?"
read player
if [[ $pou == $player || $player == "ez" ]]; then
    if [[ $USER == "root" ]]; then
        echo "You Win!"
elif [[ $USER == "axv" ]]; then
    echo "Oh no Youre Cheater! You Win!"
else 
    echo "You Died!"
    fi
fi

echo "<------------------------------------------------------------------- BASH LOOPS [EPS 5] ------------------------------------------------------------------->"
#While Loops
do=1
while [[ $do -le 100 ]]; do
    echo "I did $do of my work !"
    (( do ++ ))
done
# While loops use read
homework=1
while [[ $homework -le 100 ]]; do
    read -p "I did $homework of my work!"
    (( homework ++ ))
done
echo "Congrats, you complete it!"
# While to read a file 
read=1
while read -r line; do
    echo "Line $read $line"
    (( read ++ ))
done < book
# While true/forever loops
while true; do
    echo "Spam it for $spam!"
    (( spam ++ ))
done
# Until Loops
until [[ $squad == "AXV" ]]; do
    echo "What name of your squad?"
    read squad
done
echo "I want to join there!"
# For Loops
for laps in 1 2 3 4 5 6 7 8 9 10; do
    echo "Now you on $laps lap!"
done
# For Loops range
for speeds in {1..10}; do
    echo "Speed now on $speeds"
done
# For Loop Ping Domain
for i in google.com kusonime.com otakudesu.cloud youtube.com; do
    if ping -q -c 2 -W 1 $i > /dev/null; then
        echo "Web $i is up"
    else
        echo "Web $i is down"
    fi
done
#  For Loop Check Weather
for x in $(cat list.txt); do
    weather=$(curl -s http://wttr.in/$x)
    echo "The weather for today $weather"
done
# Looping Back
# Break
echo "Input domain or IP Address for checking.."
read target
while true; do
    echo "Checking..."
    if ping -q -c 2 -W 1 $target > /dev/null; then
        echo "The url up!"
        break
    else 
        echo "$target is down!"
    fi
    sleep 2
done
# Continue
echo "Welcome to our Villa!"
sleep 1
echo "Going Up"
sleep
for y in {1..20}; do 
    if [[ $y == 4 || $y == 13 || $y == 17 ]]; then
        Continue
    fi
    echo  "Floor $x"
    sleep 1
done