NB. convert char to RPS.
NB. x is a char array
NB. A/X = 0, B/Y = 1, C/Z = 2
C =: {{ N - 88 65 {~ 88 > N=.a.i.y }}

NB. score
NB. x = their choice, y = my choice
S =: {{ (y + 3*x) { (4 8 3 1 5 9 7 2 6) }}

NB. parse the input data
NB. x boxed path
NB. (LF=s) <;.2 ] s
getData =: {{ {{C 0 2 { y}} each (LF=s) <;.2 s =.1!:1 y }}

sample_path =: <'/home/peter/src/JProjects/aoc22/data/d2/input_sample.txt'
input_path =: <'/home/peter/src/JProjects/aoc22/data/d2/input.txt'
ut_path =: <'/home/peter/src/JProjects/aoc22/data/d2/unit_test.txt'

] SolutionA =. +/{{(0{y) S (1{y)}}&> getData input_path

NB. Solution B
sample_b_path =: <'/home/peter/src/JProjects/aoc22/data/d2/input_sample_b.txt'

NB. fix the results
NB. take the input (Theirs, Result) and output (Theirs, InputToProduceDesiredResult)
F =:  dyad define
 theirs=. x
	yours=. (y + 3*x) { (2 0 1 0 1 2 1 2 0)
	theirs, yours
)

NB. preprocess the input data with F (fix) and calculate the result the same way
NB. as in Solution A
] SolutionB =. +/{{(0{y) S (1{y)}}&> {{< (0{y) F (1{y)}}&> getData input_path
