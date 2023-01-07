echo "Archiving into Jar file"

if [[ -f "lib" ]]; then
  echo "lib is a file; remove it and try again"
  exit 1
fi;

if [[ ! -d "lib" ]]; then
  echo "lib/ directory not found. Creating it."
  mkdir lib
fi

COMMAND="jar --create --file ./lib/hello.jar -C classes ."
echo "$ $COMMAND"
$COMMAND

COMMAND="jar tvf ./lib/hello.jar"
echo "$ $COMMAND"
$COMMAND

COMMAND="jar --file ./lib/hello.jar --describe-module"
echo "$ $COMMAND"
$COMMAND

echo "Finished creating jar file. The output is in lib/"