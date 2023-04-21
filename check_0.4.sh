#!/bin/bash

# Test case for "ls" command
command1=$(echo "ls" | ./hsh)
command2=$(echo "ls" | sh)
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
# Test case for "/bin/ls"
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
# Test case for "ls" command with "-l" option
command1=$(echo "/bin/ls -l" | ./hsh)
command2=$(echo "/bin/ls -l" | sh)
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
# Test case for "ls" command with "-l" and "/tmp" option
command1=$(echo "/bin/ls -l /tmp" | ./hsh)
command2=$(echo "/bin/ls -l /tmp" | sh)
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
# Test case for "echo" command
command1=$(echo "echo /bin/ls" | ./hsh)
command2=$(echo "echo /bin/ls" | sh)
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
# Test case for "cat" command
echo "This is a\n text" > impossible_name.abcd
command1=$(echo "cat text" | ./hsh)
command2=$(echo "cat text" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm -f impossible_name.abcd
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"
# Test case for "exit" command
echo -e "This is a\n text" > impossible_name.abcd
command1=$(echo "cat text" | ./hsh)
command2=$(echo "cat text" | sh)
echo "$command1" > 1a2b3c4d5e6f7g8h9i
echo "$command2" > 1a2b3c4d5e6f7g8h9b
if diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b >/dev/null; then
    echo -e "\e[32mSuccess\e[0m"
else
    echo -e "\e[31mFailed\e[0m"
    diff 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b
fi
rm -f impossible_name.abcd
rm 1a2b3c4d5e6f7g8h9i 1a2b3c4d5e6f7g8h9b;
read -p "Next?"

