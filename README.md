## Simple shell Test suite
##### A collection of tests for The simple shell project
This repository contains ongoing developent of test suite for simple shell project.

### The script check.sh
This script: 
- Compile your project with the following command line :
```sh
gcc -Wall -Werror -Wextra -pedantic -std=gnu89 *.c -o hsh
```
- Compares your shell output to `sh` output
- Runs Betty style check on your `c` and `h` files
- Runs Betty Documentation check on your `c` and `h` files
- Clears the generated files.
### Updates

*April 24, 2023*
Last updates
- Added test for EOF
- Make test run continuosly
- Added env test
- combine all the available test
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
./check_0.2.sh | less -r
```
or
```sh
bash check_0.2.sh | less -r
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

#### 2. Simple shell 0.2
---
*	Handle command lines with arguments

#### 3. Simple shell 0.3
---
*	Handle the PATH
*	fork must not be called if the command doesn’t exist

#### 4. Simple shell 0.4
---
*	Implement the exit built-in, that exits the shell
*	Usage: exit
*	You don’t have to handle any argument to the built-in exit

#### 5. Simple shell 1.0
---
*   Implement the env built-in, that prints the current environment