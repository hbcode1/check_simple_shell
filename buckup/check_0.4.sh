#!/bin/bash
function run_check()
{
    echo "-->" $1
    chars1=$(wc -m < 1a2b3c4d5e6f7g8h9i)
    chars2=$(wc -m < 1a2b3c4d5e6f7g8h9b)
    if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null && [ "$chars1" == "$chars2" ]; then
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
command1=$(echo "ls" | ./hsh)
command2=$(echo "ls" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "ls" command"
command1=$(echo "/bin/ls" | ./hsh)
command2=$(echo "/bin/ls" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "/bin/ls""
command1=$(echo "/bin/ls -l" | ./hsh)
command2=$(echo "/bin/ls -l" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "ls" command with "-l" option"
command1=$(echo "/bin/ls -l /tmp" | ./hsh)
command2=$(echo "/bin/ls -l /tmp" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "ls" command with "-l" and "/tmp" option"
command1=$(echo "echo /bin/ls" | ./hsh)
command2=$(echo "echo /bin/ls" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "echo" command"
# Test case for "cat" command
echo -e "This is a\n text" > impossible_name.abcd
command1=$(echo "cat impossible_name.abcd" | ./hsh)
command2=$(echo "cat impossible_name.abcd" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
run_check "Test case for "cat" command"
rm -f impossible_name.abcd
# Test case for "exit" command
echo -e "This is a\n text" > impossible_name.abcd
command1=$(echo "cat text" | ./hsh)
command2=$(echo "cat text" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
rm -f impossible_name.abcd
run_check "# Test case for "exit" command"

