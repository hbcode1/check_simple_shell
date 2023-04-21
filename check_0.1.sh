#!/bin/bash
function run_check()
{
    echo "-->" $1
    chars1=$(wc -m < 1a2b3c4d5e6f7g8h9i)
    chars2=$(wc -m < 1a2b3c4d5e6f7g8h9b)
    if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null || [ "$chars1" == "$chars2" ]; then
        echo -e "\e[32mSuccess\e[0m"
    else
        echo -e "\e[31mFailed\e[0m"
        echo -e "\e[0m[Got]\e[31m"
        cat 1a2b3c4d5e6f7g8h9i
        echo -e "\e[0m[" $chars1 "Chars]\e[31m"
        echo -e "\e[0m[Expected]\e[31m"
        cat 1a2b3c4d5e6f7g8h9b
        echo -e "\e[0m[" $chars2 "Chars]\e[0m"
    fi
    rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
    echo "************************************"
    read -p "Next?"
}
# Test case for "Ctrl+D"
command1=$(echo -e "\n" | ./hsh)
command2=$(echo -e "\n" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "Ctrl+D" command"
echo "************************************"
# Test case for "ls" command
command1=$(echo "ls" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "ls" command"
echo "************************************"
# Test case for "/bin/ls" command with no arguments
command1=$(echo "/bin/ls" | ./hsh)
command2=$(echo "/bin/ls" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "/bin/ls" command with no arguments"
echo "************************************"
# Test case for "/bin/ls" command with "-l" option
command1=$(echo "/bin/ls -l" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "/bin/ls" command with "-l" option"
echo "************************************"
# Test case for "exit" command
command1=$(echo "exit" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "exit" command"