This is a self-study lab of CMU university. This lab is a part of the course CS-15213.
## Learning Objective:-> 
1. x86-64 assembly language
1. gdb
## Answers available in answers.txt

# Notes 
1. use objdump -D (capital D) to disassemble all the text area. This also includes the area which may not hold the instructions.
Some addresses which may not be visible through -d flag or in gdb are also visible using this command.
1. use gdb to go through the code.
Useful commands : p,x, disas, break, s, info, until. 

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
## Level 6
Level 5 very easy relatively. The answer is permutation of the integers in a given range.
This level forces you to learn gdb. Difficult to maintain state of registers and stack on the paper or in the mind. Better go through a tutorial or a cheatsheet of gdb.

