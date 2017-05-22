program multiply
	! This is similar to Perl's 'use strict' or gcc's -Werror.
	! Use it always. It disallows implicit variable declaration.
	implicit none
	
	! Declare all your variables at the beggining of your code.
	! integer type is 32 bits by default on my machine.
	! Other types include 'real', which is a float type,
	! 'double' (a double precision float), and 'character'
	! which is used both for characters and strings.
	integer :: a, b, c
	
	! Read reads from stdin, converting what it gets to integers
	! because the compiler knows 'a' and 'b' are meant to be
	! integers.
	! The asterisks mean "default". What we're defaulting here
	! is where to read from (first asterisk) and what format
	! the input will be in (similar to a sprintf format string).
	Read (*,*) a,b
	
	! This should be self-exmplanatory
	c = a * b
	
	! Write. Again, we default to stdout but this time we do
	! specify a format string.
	!
	! '2x' means 'two spaces' and it doesn't 'eat up any of the
	! arguments passed to the write function.
	!
	! 'a2' means 'string of length two', it eats up our first string.
	!
	! 'i5' means 'integer with five digits'. This one also eats up
	! one of our arguments.
	!
	! '/' signals an EOL ('\n' in C-inspired languages).
	Write (*,'(2x,a2,5x,i5/2x,a2,5x,i5/a4,i10)') "a:", a, "b:", b, "a*b:", c
	
	! This is optional. Think of it like a 'return 0' of sorts.
	stop
end program multiply
