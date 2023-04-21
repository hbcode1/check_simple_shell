## Simple shell Test suite
##### A collection of tests for The simple shell project
This repository contains ongoing developent of test suite for simple shell project.

### Updates

*April 21, 2023*
- Show test title
- Fix bug: diff ignore newline
- Reduce code: adding run_check function
- Change error output to look more like checker
- Add character counter (wc)
- Highlight error output

### Usage

To run the test suite on your code, You can Simply follow this steps.

- You can either clone the repo in your local machine or download a specific script file
- Copy the script file in your project root folder
- Make the script executable

```sh
chmod u+x check_0.2.sh
```
- Finnaly run the script

```sh
./check_0.2.sh
```
or
```sh
bash check_0.2.sh
```
| :question: *you can modify the path inside the script if you want to run in from other location*
| :exclamation: your program name must be hsh 

```sh
gcc -Wall -Werror -Wextra -pedantic -std=gnu89 *.c -o hsh
```

### Tests

#### 1. Simple shell 0.1
---
Your Shell should:
*	Display a prompt and wait for the user to type a command. A command line always ends with a new line.
*	The prompt is displayed again each time a command has been executed.
*	The command lines are simple, no semicolons, no pipes, no redirections or any other advanced features.
*	The command lines are made only of one word. No arguments will be passed to programs.
*	If an executable cannot be found, print an error message and display the prompt again.
Handle errors.
*	You have to handle the “end of file” condition ( Ctrl+D )

File: [Check 0.1](check_0.1.sh)

#### 2. Simple shell 0.2
---
*	Handle command lines with arguments
	
File: [Check 0.2](check_0.2.sh)

#### 3. Simple shell 0.3
---
*	Handle the PATH
*	fork must not be called if the command doesn’t exist

File: [Check 0.3](check_0.3.sh)

#### 4. Simple shell 0.4
---
*	Implement the exit built-in, that exits the shell
*	Usage: exit
*	You don’t have to handle any argument to the built-in exit

File: [Check 0.4](check_0.4.sh)