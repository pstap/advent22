NB. input files
input         =: '/home/peter/src/JProjects/advent22/data/d3'
sample_path   =: < input,'/input_sample.txt'
input_path    =: < input,'/input.txt'

NB. a christmas miracle
getData =: {{ <;._2 ] 1!:1 y }}

NB. prioritize
P =: ([: >: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'&i.)

NB. Part 1

NB. compartmentalize
NB. split y in 2
C =: (([: (-:,:-:) #) <;._3 ])

NB. find the matching character in 2 strings
M =: monad define 
	fst =. > 0 { y
	snd =. > 1 { y
	({. I. +/ fst =/ snd) { snd
)

] SolutionA =: +/ ; ([: P [: M C) each data


NB. Part 2

NB. group by 3s
G3 =: ((3 ,: 3) <;._3 ])

NB. just find the 1 intersecting character in 3 strings