program multiply
	! This is similar to Perl's 'use strict' or gcc -Werror.
	! Use it always. It disallows implicit variable declaration.
	implicit none
	
	! Declare all your variables at the beggining of your code.
	! integer type is 32 bits by default on my machines.
	! Other types include 'real', which is a float type,
	! 'double', and 'character' which is used both for
	! characters and strings.
	integer :: a, b, c
	
	! This reads from stdin, converting what it gets to integers
	! because the compiler knows 'a' and 'b' are meant to be
	! integers.
	! The asterisks mean "default". What we're defaulting here
	! is where to read from (first asterisk) and what format
	! the input will be in (similar to a sprintf format string).
	Read (*,*) a,b
	
	! This should be self-exmplanatory
	c = a * b
	
	! Write. Again, we default to stdout and whichever format
	! the compiler likes given the types of the values passed
	! to Write.
	Write (*,*) "a:", a, "b: ", b, "a*b: ", c
	
	! This is optional. Think of it like a 'return 0' of sorts.
	stop
end program multiply
