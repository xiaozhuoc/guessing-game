function guessing {
answer=$(ls | wc -l)

echo "Please guess how many files are in the current directory." 
read input

while [[ ! $input -eq $answer ]]
do
	if [[ $input -gt $answer ]]
	then
		echo "Your guess is too high. Please guess again."
		read input
	elif [[ $input -lt $answer ]]
	then
		echo "Your guess is too low. Please guess again."
		read input
	fi
done

echo "Congrats! Your guess is correct."
}

guessing
