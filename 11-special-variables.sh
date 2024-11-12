#!/bin/bash

# Here are some special variables in shell:

# - "$1" - represent the first argument passed to function
# - $0 - the filename of the current script.
# - $n - the Nth argument passed to script was invoked or function was called.
# - $# - the number of argument passed to script of function.
# - $@ - all arguments passed to script or function.
# - $* - all arguments passed to script of function.
# - $$ - the process ID of the current shell. For shell scripts, this is the process ID under which they are executing.
# - $! - the process number of the last background command.

# Examples
echo "--- Example 1 ---"
echo "Script Name: $0"
function func {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}
func We are argument

echo
echo "--- Example 2 ---"
function func {
    echo "--- \"\$*\""
    for ARG in "$*"
    do
        echo $ARG
    done

    echo "--- \"\$@\""
    for ARG in "$@"
    do
        echo $ARG
    done
}
func We are argument