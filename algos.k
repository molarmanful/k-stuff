/ Hello world
e1:"Hello World";
/ e1

/ Hello [input]
e2:"Hello ",
/ e2 "Bob"

/ Hello [input] only if Bob or Alice
e3:(~^($`Bob`Alice)?)("Hello ",)/
/ e3 "Bob"
/ e3 "Alice"
/ e3 "James"

/ Range sum
e4:+/1+!:
/ e4 10

/ Range sum with only multiples of 3 or 5
e5:+/?(2/~3 5!\:)#1+!:
/ e5 10

/ Range sum/product
e6:{x/1+!y}
/ e6[+;10]
/ e6[*;10]

/ Multiplication table
e7:*\:/2#,1+!12
/ e7

/ Primes
e8:&0,2=+/0={x!\:x}1+!:
/ e8 1000

/ Guessing game
e9:

/ Next 20 leap years
e10:20#(2!+/0=4 100 400!\:)#(_1970+`t[]%31556952000000.43)+!99
/ e10

/ Pi approximation
e11:4*+/{(*/(x+1)#-1)%-1+2*x}'1+!1000000