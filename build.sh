echo "Building Java files"

if [[ -f "classes" ]]; then
  echo "classes is a file; remove it and try again"
  exit 1
fi;

if [[ ! -d "classes" ]]; then
  echo "classes/ directory not found. Creating it."
  mkdir classes
fi

# The below command was the legacy way of compiling java files.
# Now, we can use modules
#COMMAND="javac ./src/pink/nope/hello/Main.java -d classes"
COMMAND="javac -d classes src/module-info.java"

echo "$ $COMMAND"
$COMMAND

COMMAND="javap classes/module-info.class"
echo "$ $COMMAND"
$COMMAND

echo "Finished compiling java files. Their respective .class files are in classes/"