NB. Advent of Code 2022 Day 3

NB. input files
input         =: '/home/peter/src/JProjects/advent22/data/d3'
sample_path   =: < input,'/input_sample.txt'
input_path    =: < input,'/input.txt'

NB. a christmas miracle
getData =: {{ <;._2 ] 1!:1 y }}

NB. prioritize
NB. get an item's 'priority'
P =: [: >: 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'&i.

NB. Part 1

NB. compartmentalize
NB. split string into 2 even sized strings down the middle
NB. returns array of 2 boxed strings
C =: (-:&#) ({.;}.) ]

NB. set intersection
NB. thank you J wiki!
SI =: (e. # [)

NB. match
NB. find the matching characters in an array of boxed strings
M =:  {{ ~. > (SI&.:>)/ y }}

NB. compartmentalize, find the matches, prioritize, and sum
] SolutionA =: +/ ; ([: P [: M C) each getData input_path


NB. Part 2

NB. group 3
NB. group array into arrays of 3
G3 =: ((3 ,: 3) <;._3 ])

NB. group by 3, find the matches, prioritize, and sum
] SolutionB =: +/ P ; M each G3 getData input_path
