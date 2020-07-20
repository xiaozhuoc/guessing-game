VAR := $(shell sh -c "wc -l guessinggame.sh | egrep -o "[0-9]+"")

readme:
	touch README.md
	echo "## Project: guessing-game" > README.md
	date >> README.md
	echo "<br/>" >> README.md
	echo $(VAR) "lines in guessinggame.sh" >> README.md


clean:
	rm README.md
