find ./avroomdownloads/ -maxdepth 1 -iname "*2160p*" -type d | xargs -t -I '{}' /storage/mover.sh '{}'

