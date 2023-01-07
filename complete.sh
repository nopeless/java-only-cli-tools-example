print_dashes() {
  yes "$1" | head -n "$2" | tr -d "\n"
  echo
}

line() {
  print_dashes '-' 80
}

line
echo "Purging lib"
if [[ -f "lib" ]]; then
  echo "lib is a file; remove it and try again"
  exit 1
fi;
rm -r lib
if [[ ! -d "lib" ]]; then
  echo "lib/ directory not found. Creating it."
  mkdir lib
fi

echo "Starting compilation"

# Compile uwufier
echo "Compiling uwufier"

rm -rf classes
javac --module-path lib -d classes src/pink.nope.uwufier/module-info.java src/pink.nope.uwufier/pink/nope/uwufier/UWUFormatter.java

echo "Creating jar file"
jar --create --file lib/pink-nope-uwufier.jar -C classes .

line

# Compile the main module
echo "Compiling main module"

rm -rf classes
javac --module-path lib -d classes src/pink.nope.hello/module-info.java src/pink.nope.hello/pink/nope/hello/Main.java

echo "Creating jar file"
jar --create --file ./lib/pink-nope-hello.jar -C classes .

line

# Finally, run the main module
echo "Running main"

java --module-path lib --module pink.nope.hello/pink.nope.hello.Main "$@"

line

echo "Exited successfully"