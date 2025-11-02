#!/bin/bash
# guessinggame.sh - devine le nombre de fichiers dans le répertoire courant

count_files() {
  ls -1A | wc -l
}

print_prompt() {
  echo -n "Combien de fichiers y a-t-il dans le répertoire courant ? "
}

target=$(count_files)

while true; do
  print_prompt
  read -r guess

  if ! [[ $guess =~ ^[0-9]+$ ]]; then
    echo "Entrez un nombre entier, s'il vous plaît."
    continue
  fi

  if (( guess < target )); then
    echo "Trop petit — réessayez."
  elif (( guess > target )); then
    echo "Trop grand — réessayez."
  else
    echo "Félicitations — c'est exact !"
    break
  fi
done
