README.md:guessinggame.sh
	touch README.md
	echo "# Project: My Guessing Game" >> README.md
	date >> README.md
	echo "### Number of lines in guessinggame.sh is " >> README.md 
	cat guessinggame.sh | grep . -c >> README.md
