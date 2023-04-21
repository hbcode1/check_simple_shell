#!/bin/bash
# Test case for "Ctrl+D" command
command1=$(echo -e "\n" | ./hsh)
command2=$(echo -e "\n" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"
echo "************************************"
# Test case for "ls" command
command1=$(echo "ls" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b > /dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"
echo "************************************"
# Test case for "/bin/ls" command with no arguments
command1=$(echo "/bin/ls" | ./hsh)
command2=$(echo "/bin/ls" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"
echo "************************************"
# Test case for "/bin/ls" command with "-l" option
command1=$(echo "/bin/ls -l" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"
echo "************************************"
# Test case for "exit" command
command1=$(echo "exit" | ./hsh)
command2=$(echo "./hsh: No such file or directory")
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"


