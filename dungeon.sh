#!/bin/sh

# Declare data
weapon_names=("Fists", "Knive")
weapon_damages=(1, 2)

monster_names=("Spider")
monster_healths=(10) # This will be multiplied by the dificulty
monster_damages=(1) # This will be multiplied by the dificulty

wait_user(){
	read -n 1 -s -r -p "Press any key to continue: "
}



# Welcome screen
echo "Welcome to BASH Dungeon!"
echo "A fun dungeon crawler made with bash code."
wait_user

# Create variables
monster_level=0
monster_name=""
monster_health=0
monster_damage=0

# Setup game stats
score=0
dificulty=0
weapons=('Fists')

next_room(){
	clear

	print_score
	echo Dificulty of room is $dificulty
	echo ""

	get_monster

	echo There is a level $monster_level $monster_name!

	promt_attack
}

print_score(){
	echo Current score is $score.
}

get_monster(){
	monster=$($RANDOM % ${#monster_names[@]})
	monster_name=${monster_names[monster]}
}

promt_attack(){
	echo Select a weapon "(by number)": $weapons
}

next_room