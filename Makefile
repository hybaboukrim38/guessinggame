.PHONY: all
all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Généré le : $(shell date '+%Y-%m-%d %H:%M:%S')" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh : $(shell wc -l < guessinggame.sh)" >> README.md
