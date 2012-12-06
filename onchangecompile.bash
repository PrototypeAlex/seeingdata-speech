while true; do
  change=$(inotifywait -e close_write,moved_to,create .)
  change=${change#./ * }
  echo "I am running"
  ./compile.sh
done