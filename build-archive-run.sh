print_dashes() {
  yes "$1" | head -n "$2" | tr -d "\n"
  echo
}

line() {
  print_dashes '-' 80
}

line
./build.sh
line
./archive.sh
line
# shellcheck disable=SC2048
# shellcheck disable=SC2086
./run.sh $*
line
echo "Finished running all scripts"