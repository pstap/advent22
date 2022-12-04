NB. Advent of Code 2022 Day 4

NB. TODO: this is really messy and lazy. fix it

input         =: '/home/peter/src/JProjects/advent22/data/d4'
sample_path   =: < input,'/input_sample.txt'
input_path    =: < input,'/input.txt'


parseRange =. monad define
	split =. ".;._1 '-', y
	s =. 0 { split
	e =. 1 { split
	s+i.>:e-s
)

NB. parse the input data
NB. convert the input into numbers using C above
NB. x is a boxed path
getData =: monad define
 s =. 1!:1 y
	
 NB. seperate lines
 entries =. <;._2 s

 NB. seperate the entries within a line
 entries =. {{<;._1 ',',y}} each entries

 NB. parse X-Y into array x y (where x y are numbers)
 {{ parseRange each y}} each entries
)

NB. Part 1

NB. compare
C =: monad define 
 f =. > 0 { y
 s =. > 1 { y

	NB. intersection
 i =. (s e. f) # s
 (f-:i)+.(s-:i)
)

] Solution1 =: +/ ; C each getData input_path

NB. Part 2
C2 =: monad define 
 f =. > 0 { y
 s =. > 1 { y
 * # (s e. f) # s
)

] Solution2 =: +/ ; C2 each getData input_path
