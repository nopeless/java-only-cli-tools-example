echo "Executing jar file"

COMMAND="java --module-path lib --module pink.nope.hello/pink.nope.hello.Main $*"
echo "command is: $COMMAND"
$COMMAND
