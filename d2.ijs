NB. input files
input         =: '/home/peter/src/JProjects/advent22/data/d2'
sample_path   =: < input,'/input_sample.txt'
input_path    =: < input,'/input.txt'
ut_path       =: < input,'/unit_test.txt'
sample_b_path =: < input,'/input_sample_b.txt'

NB. convert char to RPS.
NB. x is a char array of 'ABCXYZ'
NB. convert chars into numbered equiv.
NB. 0,1,2 were chosen to fit J's indexing scheme
NB. so I could just use a lookup table.
NB. A,X = Rock     = 0
NB. B,Y = Paper    = 1
NB. C,Z = Scissors = 2
C =: {{ N - 88 65 {~ 88 > N=.a.i.y }}

NB. parse the input data
NB. convert the input into numbers using C above
NB. x is a boxed path
getData =: {{ ([: C (0 2)&{)&.> (LF=s) <;.2 s =.1!:1 y }}

NB. score
NB. calculate score for a single round
NB. y = array of length 2. (their choice, my choice)
NB. lookup the score in scoring
scoring =: 3 3 $ 4 8 3 1 5 9 7 2 6
S =: (scoring&({::~))

NB. Part A

NB. Score each round and sum up the total
] SolutionA =. +/S&> getData input_path

NB. Part B

NB. fix the results.
NB. convert from (their choice, result) to (their choice, my choice)
NB. where my choice would produce the given result
NB. 0 = Loss
NB. 1 = Tie
NB. 2 = Win
fixings =: 3 3 $ 2 0 1 0 1 2 1 2 0  NB. no turkey
F =: ((0&{),(fixings&({::~)))

NB. preprocess the input data with F (fix) and calculate the result the same way
NB. as in Solution A.
] SolutionB =. +/S&> F&.> getData input_path
