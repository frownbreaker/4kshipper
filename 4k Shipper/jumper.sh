find /var/media/10TB/complete/ -maxdepth 1 -iname "*2160p*" -type d | xargs -t -I '{}' /storage/jumpdir.sh '{}'
find /var/media/10TB/complete/ -mindepth 1 -maxdepth 1 -iname "*" -type d | xargs -t -I '{}' /storage/jumpfiles.sh '{}'

