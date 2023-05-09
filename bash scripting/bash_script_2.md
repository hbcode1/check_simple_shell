# Bash scriptting notes

11. comparison ops

|OP|Syntax|OP|Syntax|
|--|------|--|------|
|=|-eq|!=|-ne|
|>|-gt|<|-lt|
|>=|-ge|<=|-le|

12. if-elif-else-fi

Syntax

```
if [ condition ]
then
    statement
elif [ condition ]
then
    statement
else
    statement
fi
```

13. logical ops

|OP|Syntax|
|--|------|
|AND|-a|
|OR|-o|

14. for loop

```sh
#!/usr/bin/bash
for i in {1..8}
do
    echo $i
done
```

>*  Output:
>>1\
2\
3\
4\
5\
6\
7\
8

14. loop words in string

```sh
#!/usr/bin/bash
for x in "I'm learning bash script"
do
    echo $x
done
```

>*  Output: I'm learning bash script

15. Replace extension

for f in *.sh; do mv -- "$f" "${f%.sh}.bash"; done
