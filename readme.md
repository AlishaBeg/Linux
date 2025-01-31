
# root@linux

_write shell scripting program for better control_

---

project
|
- src
|	|
|	-- SERVICE
|	|
|	-- SECURE
|	|	|
|	|	-- confirm
|	|	|
|	|	-- isFolderExist
|	|	|
|	|	-- isFileExist
|	|	|
|	|	-- isRootAccess
|	|
|	-- app
|
-- index
|
-- readme


---


## rules

__arithmetic expression__

$((1+0))

__relational expression__

-eq 	equal to
-ne		not equal to
-lt 	less than
-le		less than or equal to
-gt		greater than
-ge		greater than or equal to


__string expression__

!=
==
-z 	return true if empty string
-n	return true if not empty string

text="in world"

echo ${text:3:5}	// after 3 return 5 letter
echo ${#text}		// length
echo ${text/in/at}	// at world

__logical expression__

&& (and) return true if both is true

|| (or)	return true if once is true


true && execute

false || execute

&	execute second command in background

|	execute multiple command together


> redirect or overwrite

>> append


__file expression__

-e 	TRUE if file exist
-f 	TRUE if the file is a regular file
-d 	TRUE if the file is directory
-r	TRUE if the file is readable
-w	TRUE if the file is writable
-x	TRUE if the file is executable
-s	TRUE if the file exist and has non-zero size
-L	TRUE if the file ia a symbolic link
-o 	TRUE
-G 	TRUE
-t 	TRUE

__parentheses group__

{ group_expression }

__command__

$(command)

__threesome__

command && true || false

[[ string == patter ]]

== 	match the pattern with string * ?
!= 	does not match the pattern
=~ 	match against a regular expression

