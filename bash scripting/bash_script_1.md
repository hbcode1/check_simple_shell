# Bash scriptting notes

### 1. Bash script starts with shebang

```sh
#!/bin/bash
```

### 2. Create script file

```
touch script.sh
```

### 3. Find shebang

```
which bash
```
>*  output: /usr/bin/bash

### 4. Hello wrold

```sh
#!/usr/bin/bash
echo "Hello World"
```

### 4. Give execution permission to user

```
chmod u+x script.sh
```

### 5. Run script

```
./script.sh
```

or

```
bash script.sh
```

>*  Output: Hello World

### 6. Define variable

```sh
#!/usr/bin/bash
age=20
name=Joe
echo "I'm $name, and I'm $age years old."
```

>*  Output:I'm Joe, and I'm 20 years old.

### 7. Arithmetics

| OP |Use|OP |Use|
|----|----|----|----|
|+|add|/|div|
|-|sub|**|exp|
|*|mult|%|mod|

### 8. Calcuation

>*  Syntax: var=$((expression))

```sh
#!/usr/bin/bash
var=$((5+10))
echo $var
```

>*  Output: 15

### 8. Decimal calculation

use bc command to get decimal output and scale for precision

```sh
#!/usr/bin/bash
var=$((5+10/3))
echo "scale=3;$var" | bc
```

>*  output: 3.750

### 9. Read user input

>*  Syntax: read var_name

```sh
#!/usr/bin/bash
read var
echo $var
```

### 10. Read with prompt

>*  Syntax: read -p prompt var_name

```sh
#!/usr/bin/bash
read -p "Enter var value" var
echo $var
```

