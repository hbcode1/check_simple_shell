## Simple shell Test suite
##### A collection of tests for The simple shell project

### 1. Simple shell 0.1
---
Your Shell should:
*	Display a prompt and wait for the user to type a command. A command line always ends with a new line.
*	The prompt is displayed again each time a command has been executed.
*	The command lines are simple, no semicolons, no pipes, no redirections or any other advanced features.
*	The command lines are made only of one word. No arguments will be passed to programs.
*	If an executable cannot be found, print an error message and display the prompt again.
Handle errors.
*	You have to handle the “end of file” condition ( Ctrl+D )

### 2. Simple shell 0.2
---
*	Handle command lines with arguments

### 3. Simple shell 0.3
---
*	Handle the PATH
*	fork must not be called if the command doesn’t exist

### 4. Simple shell 0.4
---
*	Implement the exit built-in, that exits the shell
*	Usage: exit
*	You don’t have to handle any argument to the built-in exit
