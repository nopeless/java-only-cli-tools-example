# Java without an IDE + Java 9 module system

This is a simple project to show how to use Java without an IDE

All scripts are in bash. For Windows users, you can type `bash` in the command prompt to run bash scripts. (I recommend using git's bash as it automatically appends .exe to the java file. for wsl users, if you are still clueless after Googling, make an issue and I'll put resources)

Most Java commands will work without modification

Following this video: https://youtu.be/MGX-JfMl9-Y

## How to use

```sh
# build the class files to classes/
$ ./build.sh

# Create a .jar file at lib/
$ ./create-jar.sh

# Run the .jar file
$ ./run.sh
```

To run all 3 commands at once

```sh
$ .\build-archive-run.sh <args>
```

> You can also pass in arguments for `String[] args` in the `main` method
