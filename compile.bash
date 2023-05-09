#!/bin/bash

##############################################################
# Read and execute commands from config.sh in the current shell
##############################################################
source config.sh
##############################################################
# Read and execute commands from msg.sh in the current shell
##############################################################
source msg.sh
##############################################################
# compile function
############################################################## 
function compile(){
# store error output length in compilation variable
    compilation=`$GCC -Wall -Werror -Wextra -pedantic -std=gnu89 *.c -o hsh 2>&1 | $WC -c`
# if error exist print error msg
    if [ "$compilation" ]; then
        compile_err
        exit $1
    fi
}
