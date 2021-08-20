
README.md:
	echo "The name of this project is GuessingGame"  > README.md
	echo "The make was run at " >> README.md
	date >> README.md
	echo "The number of lines of code contained in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
