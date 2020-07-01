This is an x86-64 bomb for self-study students. 
1. use objdump -D (capital D) to disassemble all the text area. This also includes the area which may not hold the instructions.
Some addresses which may not be visible through -d flag or in gdb are also visible using this command.
1. use gdb to go through the code.
# Hints

## Level 1
ASCII string available within the address space.
## Level 2
Numeric calculations
## Level 3
Combines the concepts introduced in Level 1, Level 2, and little endianness. Not a unique answer.
## Level 4
Similar to level 3. Another function call inside phase\_4 besides sscanf. Not bothering now to  find multiple answers.
## Level 5
Multiple answers possible. Quite difficult. See the last byte of every character in the answer.  

