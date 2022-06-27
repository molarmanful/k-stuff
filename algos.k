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
e9:{`prng@0;
  {
    `0:$[;
      x=a:`I$1:`;" "/("Guessed the secret number";$x;"after";$y;$[y=1;"try!";"tries!"])
      x<a;"Too big!";"Too small!"]
    $[x=a;;o[x;y+1]]
  }[*1?x;0]}
/ e9 100

/ Next 20 leap years
e10:20#(2!+/0=4 100 400!\:)#(_1970+`t[]%31556952000000.43)+!99
/ e10

/ Pi approximation
e11:4*+/{(*/(x+1)#-1)%-1+2*x}'1+!1000000

/ max
l1:|/
/ l1 7 1 5 2 3 6 4 8

/ reverse
l2:|
/ l2 7 1 5 2 3 6 4 8

/ find
l3:~^?
/ l3[7 1 5 2 3 6 4 8;5]
/ l3[7 1 5 2 3 6 4 8;9]

/ odd indices
l4: :/'0N 2#
/ l4 7 1 5 2 3 6 4 8

/ running sum
l5:+\
/ l5 7 1 5 2 3 6 4 8

/ palindrome test
l6:{x~|x}
/ l6 "racecar"
/ l6 "speeder"

/ different sums
l7:+/
l7:*(1<#:){(+/2#x),2_x}/
l7:{$[#x;o[1_x]+*x;0]}
/ l7 7 1 5 2 3 6 4 8

/ first 20 perfect squares
l8:{x*x}'!20
/ l8

/ concat lists
l9:,
/ l9[7 1 5 2;3 6 4 8]

/ alternate lists
l10:,/,'
/ l10[7 1 5 2;3 6 4 8]

/ merge sorted lists
l11:@/1<:\,
l11:,/{@[x;x',y;,;y]}/
/ l11[7 1 5 2;3 6 4 8]

/ rotate list
l12:{y(#y)!x+!#y}
/ l12[3;7 1 5 2 3 6 4 8]

/ first n Fibonacci numbers
l13:{x{x,+/-2#x}/1 1}
/ l13 50